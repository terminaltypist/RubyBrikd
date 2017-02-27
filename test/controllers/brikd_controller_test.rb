require 'test_helper'

class BrikdControllerTest < ActionDispatch::IntegrationTest
  test "should get blog" do
    get brikd_blog_url
    assert_response :success
  end

end
