# this is the first example for an integration test using plain minitest syntax
# with capybara.

require "test_helper"

class ForumIndexTest < ActionDispatch::IntegrationTest
  test "has the right header" do
    visit forums_path
    #save_and_open_page
    assert page.has_content?('Listing forums')
  end
end


class ForumSiteShowsPosts < ActionDispatch::IntegrationTest
  setup do
    @forum = Forum.create!(title: "Beispielforum")
    @p1 = @forum.posts.create(title: "Post 1")
    @p2 = @forum.posts.create(title: "Post 2")
  end

  test "shows all posts on forum page" do
    visit forum_path(@forum.id)
    #save_and_open_page
    assert page.has_content?("Post 1")
    assert page.has_content?("Post 2")
  end

end
