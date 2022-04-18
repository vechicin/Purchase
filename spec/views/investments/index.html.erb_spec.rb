require 'rails_helper'

RSpec.describe "investments/index", type: :view do
  before(:each) do
    assign(:investments, [
      Investment.create!(),
      Investment.create!()
    ])
  end

  it "renders a list of investments" do
    render
  end
end
