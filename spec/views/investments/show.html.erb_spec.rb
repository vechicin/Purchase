require 'rails_helper'

RSpec.describe "investments/show", type: :view do
  before(:each) do
    @investment = assign(:investment, Investment.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
