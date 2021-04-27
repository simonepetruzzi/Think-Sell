require 'test_helper'

class InsertionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insertion = insertions(:one)
  end

  test "should get index" do
    get insertions_url
    assert_response :success
  end

  test "should get new" do
    get new_insertion_url
    assert_response :success
  end

  test "should create insertion" do
    assert_difference('Insertion.count') do
      post insertions_url, params: { insertion: { title: @insertion.title, user_id: @insertion.user_id, views: @insertion.views } }
    end

    assert_redirected_to insertion_url(Insertion.last)
  end

  test "should show insertion" do
    get insertion_url(@insertion)
    assert_response :success
  end

  test "should get edit" do
    get edit_insertion_url(@insertion)
    assert_response :success
  end

  test "should update insertion" do
    patch insertion_url(@insertion), params: { insertion: { title: @insertion.title, user_id: @insertion.user_id, views: @insertion.views } }
    assert_redirected_to insertion_url(@insertion)
  end

  test "should destroy insertion" do
    assert_difference('Insertion.count', -1) do
      delete insertion_url(@insertion)
    end

    assert_redirected_to insertions_url
  end
end
