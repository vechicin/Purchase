require_relative '../rails_helper'

RSpec.describe Investment, type: :model do
  subject { Investment.new(name: 'Test', amount: 10.50) }

  before(:each) { subject.save }

  it 'name should be required' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'amount should be required' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end