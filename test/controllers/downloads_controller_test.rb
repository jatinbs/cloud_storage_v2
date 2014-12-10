require 'test_helper'

class DownloadsControllerTest < ActionController::TestCase
  test "should get download_page" do
    get :download_page
    assert_response :success
  end

end
