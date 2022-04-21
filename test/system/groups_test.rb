require 'application _system_test_case'

class GroupsTest < ApplicationSystemTestCase
  setup do
    @group = groups(:one)
  end

  test 'visiting the index' do
    visit groups_url
    assert_selector 'h2', text: 'Groups'
  end

  test 'should create group' do
    visit groups_url
    click_on 'ADD GROUP'

    fill_in "Paste group icon's link here", with: @group.icon
    fill_in 'Group name', with: @group.name
    click_on 'Add group'

    assert_text 'Group was successfully created'
    click_on 'Back to groups'
  end
end
