require 'test_helper'

class BadwordsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:badwords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create badwords" do
    assert_difference('Badwords.count') do
      post :create, :badwords => { }
    end

    assert_redirected_to badwords_path(assigns(:badwords))
  end

  test "should show badwords" do
    get :show, :id => badwords(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => badwords(:one).id
    assert_response :success
  end

  test "should update badwords" do
    put :update, :id => badwords(:one).id, :badwords => { }
    assert_redirected_to badwords_path(assigns(:badwords))
  end

  test "should destroy badwords" do
    assert_difference('Badwords.count', -1) do
      delete :destroy, :id => badwords(:one).id
    end

    assert_redirected_to badwords_path
  end
end
