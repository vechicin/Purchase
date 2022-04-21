require 'test_helper'

class InvestmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @investment = investments(:one)
  end

  test 'should get index' do
    get investments_url
    assert_response :success
  end

  test 'should get new' do
    get new_investment_url
    assert_response :success
  end

  test 'should create investment' do
    assert_difference('Investment.count') do
      post investments_url,
           params: { investment: { amount: @investment.amount, name: @investment.name, user_id: @investment.user_id } }
    end

    assert_redirected_to investment_url(Investment.last)
  end

  test 'should show investment' do
    get investment_url(@investment)
    assert_response :success
  end
end