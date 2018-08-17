require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "should not save comment without title" do
    article = Comment.new
    assert_not article.save, "Saved the article without a title"
  end
end
