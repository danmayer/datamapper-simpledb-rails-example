require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
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
      post :create, :article => {:title => 'MyString', :body => 'MyText'}
    end

    assert_redirected_to article_path(assigns(:article))
  end

  test "should show article" do
    one = Article.create(:title => 'MyString', :body => 'MyText')
    get :show, :id => one.id
    assert_response :success
  end

  test "should get edit" do
    one = Article.create(:title => 'MyString', :body => 'MyText')
    get :edit, :id => one.id
    assert_response :success
  end

  test "should update article" do
    one = Article.create(:title => 'MyString', :body => 'MyText')
    put :update, :id => one.id, :article => { }
    assert_redirected_to article_path(assigns(:article))
  end

  test "should destroy article" do
    one = Article.create(:title => 'MyString', :body => 'MyText')
    assert_difference('Article.count', -1) do
      delete :destroy, :id => one.id
    end

    assert_redirected_to articles_path
  end
end
