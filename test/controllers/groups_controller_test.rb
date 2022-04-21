require 'test_helper'

class GroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group = groups(:one)
  end

  test 'should get index' do
    get groups_url
    assert_response :success
  end

  test 'should get new' do
    get new_group_url
    assert_response :success
  end

  test 'should create group' do
    assert_difference('Group.count') do
      post groups_url,
           params: { group: { icon: @group.icon, name: @group.name, user_id: @group.user_id } }
    end

    assert_redirected_to Group_url(Group.last)
  end

  test 'should show group' do
    get group_url(@group)
    assert_response :success
  end
end
