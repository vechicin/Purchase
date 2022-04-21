require 'application _system_test_case'

class InvestmentsTest < ApplicationSystemTestCase
  setup do
    @investment = investments(:one)
  end

  test 'should create investment' do
    visit investments_url
    click_on 'ADD TRANSACTION'

    fill_in 'Name', with: @investment.name
    fill_in 'Amount', with: @investment.amount
    click_on 'Add transaction'

    assert_text 'Investment was successfully created'
    click_on 'Back to group'
  end
end