require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get articles_url
    assert_response :success
  end

  # to pass authentication the following block of code is neede but I do not where

  # request.headers['Authorization'] = ActionController::HttpAuthentication::Basic.
  #   encode_credentials('dhh', 'secret')

  test "should create article" do
    assert_difference('Article.count') do
      post articles_url, params: { article: { body: 'Rails is awesome!', title: 'Hello Rails' } }
  end

    assert_redirected_to article_path(Article.last)
  end


  test "should update article" do
    article = articles(:one)

    patch article_url(article), params: { article: { title: "updated" } }

    assert_redirected_to article_path(article)
    # Reload association to fetch updated data and assert that title is updated.
    article.reload
    assert_equal "updated", article.title
  end

end
