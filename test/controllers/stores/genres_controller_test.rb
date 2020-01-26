require 'test_helper'

class Stores::GenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stores_genres_index_url
    assert_response :success
  end

  test "should get edit" do
    get stores_genres_edit_url
    assert_response :success
  end

end
