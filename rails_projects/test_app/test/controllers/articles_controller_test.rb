require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    obj = articles(:one)
  end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post articles_url, params: {obj: {description: obj.description, title: obj.title } }
    end

    assert_redirected_to article_url(Article.last)
  end

  test "should show article" do
    get article_url(obj)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(obj)
    assert_response :success
  end

  test "should update article" do
    patch article_url(obj), params: {obj: {description: obj.description, title: obj.title } }
    assert_redirected_to article_url(obj)
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete article_url(obj)
    end

    assert_redirected_to articles_url
  end
end
