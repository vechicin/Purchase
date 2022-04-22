require_relative '../rails_helper'

RSpec.describe 'The categories index page', type: :feature do
  describe 'after logging in' do
    before :each do
      @user1 = User.create(first_name: 'User', last_name: 'User', email: 'test@gmail.com', password: '123456')

      @group1 = Category.create(name: 'Test 1', icon: 'wwww.testicon.com', user_id: @user1.id)

      @group2 = Category.create(name: 'Test 2', icon: 'wwww.testicon.com', user_id: @user1.id)

      @expense1 = @category1.expenses.create(name: 'Test Expense', amount: 10, user_id: @user1.id)

      @expense2 = @category1.expenses.create(name: 'Test Expense 2', amount: 10, user_id: @user1.id)

      visit new_user_session_path
      fill_in 'Email', with: 'test@testmail.com'
      fill_in 'Password', with: '123456'
      click_on 'Log in'
    end

    it 'displays a list of all categories' do
      visit groups_path
      expect(page).to have_content 'Groups'
      expect(page).to have_content 'Test 1'
      expect(page).to have_content 'Test 2'
    end

    it 'displays the total expenses for each category' do
      visit groups_path
      expect(page).to have_content 'Total Amount: $20.0'
    end

    it 'has a button to create new category' do
      visit groups_path
      expect(page).to have_content 'ADD GROUP'
    end

    it 'takes you to all transactions for current category when clicking on a category item' do
      visit groups_path
      click_on 'Test Category 2'
      expect(current_path).to eql "/groups/#{@group2.id}/investments"
    end
  end
end