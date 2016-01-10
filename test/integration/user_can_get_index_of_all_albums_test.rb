require 'test_helper'

class UserCanGetIndexOfAllAlbumsTest < ActionDispatch::IntegrationTest
  test "all albums can be viewed on the index page" do

    album_1 = Album.create(name: "Tug of War", year: 2008)
    album_2 = Album.create(name: "Kiss", year: 2012)
    album_3 = Album.create(name: "Emotion", year: 2015)

    visit albums_path

    assert page.has_content?("Tug of War")
    assert page.has_content?("Kiss")
    assert page.has_content?("Emotion")
  end

end
