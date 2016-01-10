require 'test_helper'

class AUserCanCreateANewAlbumTest < ActionDispatch::IntegrationTest
  test "a user can create a new album" do
    visit albums_path

    click_link_or_button "Add New Album"

    fill_in "Name", with: "Something"
    fill_in "Year", with: "2016"
    click_button "Create Album"


    assert_equal albums_path, current_path
    assert page.has_content?("Something")
  end
end
