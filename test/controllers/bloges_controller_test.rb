require "test_helper"

class BlogesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bloges_index_url
    assert_response :success
  end

  test "should get show" do
    get bloges_show_url
    assert_response :success
  end

  test "should get create" do
    get bloges_create_url
    assert_response :success
  end

  test "should get edit" do
    get bloges_edit_url
    assert_response :success
  end

  test "should get delete" do
    get bloges_delete_url
    assert_response :success
  end
end
