require 'test_helper'

class CreateAnAlbumTest < ActionDispatch::IntegrationTest
  test "an album can be created" do
    visit albums_path

    click_link "Create Album"

    fill_in "Name", with: "Blah"
    fill_in "Year", with: "2016"
    click_link_or_button "Create Album"

    assert_equal albums_path, current_path
    assert page.has_content?("Blah")
  end
end
