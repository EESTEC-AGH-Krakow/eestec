require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  setup do
    @news = articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post :create, article: {  }
    end

    assert_redirected_to article_path(assigns(:news))
  end

  test "should show article" do
    get :show, id: @news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news
    assert_response :success
  end

  test "should update article" do
    patch :update, id: @news, article: {  }
    assert_redirected_to article_path(assigns(:news))
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete :destroy, id: @news
    end

    assert_redirected_to articles_path
  end
end
