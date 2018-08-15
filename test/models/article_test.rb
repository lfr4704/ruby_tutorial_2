require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "should not save article without title" do
    article = Article.new
    assert_not article.save, "Saved the article without a title"
  end

  test "should report error" do
    #some_undefined_variable is not defined elsewhere in the test case
    assert_raises(NameError) do # this line make the next line to pass the test
    some_undefined_variable
    assert true
    end
  end

end
