require "application_system_test_case"

module PhcdevworksPress
  class Article::CategoriesTest < ApplicationSystemTestCase
    setup do
      @article_category = phcdevworks_press_article_categories(:one)
    end

    test "visiting the index" do
      visit article_categories_url
      assert_selector "h1", text: "Article/Categories"
    end

    test "creating a Category" do
      visit article_categories_url
      click_on "New Article/Category"

      click_on "Create Category"

      assert_text "Category was successfully created"
      click_on "Back"
    end

    test "updating a Category" do
      visit article_categories_url
      click_on "Edit", match: :first

      click_on "Update Category"

      assert_text "Category was successfully updated"
      click_on "Back"
    end

    test "destroying a Category" do
      visit article_categories_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Category was successfully destroyed"
    end
  end
end