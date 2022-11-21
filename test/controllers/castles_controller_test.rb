require "test_helper"

class CastlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get castles_index_url
    assert_response :success
  end

  test "should get show" do
    get castles_show_url
    assert_response :success
  end

  test "should get new" do
    get castles_new_url
    assert_response :success
  end

  test "should get create" do
    get castles_create_url
    assert_response :success
  end
end
