require "application_system_test_case"

class EvenCategoriesTest < ApplicationSystemTestCase
  setup do
    @even_category = even_categories(:one)
  end

  test "visiting the index" do
    visit even_categories_url
    assert_selector "h1", text: "Even Categories"
  end

  test "creating a Even category" do
    visit even_categories_url
    click_on "New Even Category"

    fill_in "Categeory", with: @even_category.categeory_id
    fill_in "Event", with: @even_category.event_id
    click_on "Create Even category"

    assert_text "Even category was successfully created"
    click_on "Back"
  end

  test "updating a Even category" do
    visit even_categories_url
    click_on "Edit", match: :first

    fill_in "Categeory", with: @even_category.categeory_id
    fill_in "Event", with: @even_category.event_id
    click_on "Update Even category"

    assert_text "Even category was successfully updated"
    click_on "Back"
  end

  test "destroying a Even category" do
    visit even_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Even category was successfully destroyed"
  end
end
