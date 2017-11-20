require 'test_helper'

class BooksControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get user_id:int" do
    get books_controller_user_id:int_url
    assert_response :success
  end

  test "should get workshop_id:int" do
    get books_controller_workshop_id:int_url
    assert_response :success
  end

  test "should get start_date:datetime" do
    get books_controller_start_date:datetime_url
    assert_response :success
  end

  test "should get end_date:datetime" do
    get books_controller_end_date:datetime_url
    assert_response :success
  end

end
