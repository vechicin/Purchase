require_relative '../rails_helper'

RSpec.describe Group, type: :model do
  subject { Group.new(name: 'Test', icon: 'www.sampleicon.com') }

  before(:each) { subject.save }

  it 'name should be required' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'icon should be required' do
    subject.icon = nil
    expect(subject).to_not be_valid
  end
end
