require 'test_helper'

class EvenCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @even_category = even_categories(:one)
  end

  test "should get index" do
    get even_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_even_category_url
    assert_response :success
  end

  test "should create even_category" do
    assert_difference('EvenCategory.count') do
      post even_categories_url, params: { even_category: { categeory_id: @even_category.categeory_id, event_id: @even_category.event_id } }
    end

    assert_redirected_to even_category_url(EvenCategory.last)
  end

  test "should show even_category" do
    get even_category_url(@even_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_even_category_url(@even_category)
    assert_response :success
  end

  test "should update even_category" do
    patch even_category_url(@even_category), params: { even_category: { categeory_id: @even_category.categeory_id, event_id: @even_category.event_id } }
    assert_redirected_to even_category_url(@even_category)
  end

  test "should destroy even_category" do
    assert_difference('EvenCategory.count', -1) do
      delete even_category_url(@even_category)
    end

    assert_redirected_to even_categories_url
  end
end
