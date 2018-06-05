require 'test_helper'

class TestCommentsControllerTest < ActionController::TestCase
  setup do
    @test_comment = test_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_comment" do
    assert_difference('TestComment.count') do
      post :create, test_comment: {  }
    end

    assert_redirected_to test_comment_path(assigns(:test_comment))
  end

  test "should show test_comment" do
    get :show, id: @test_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_comment
    assert_response :success
  end

  test "should update test_comment" do
    patch :update, id: @test_comment, test_comment: {  }
    assert_redirected_to test_comment_path(assigns(:test_comment))
  end

  test "should destroy test_comment" do
    assert_difference('TestComment.count', -1) do
      delete :destroy, id: @test_comment
    end

    assert_redirected_to test_comments_path
  end
end
