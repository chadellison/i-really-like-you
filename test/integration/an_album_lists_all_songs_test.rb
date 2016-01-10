require 'test_helper'

class AnAlbumListsAllSongsTest < ActionDispatch::IntegrationTest
  test "an album has all of its songs" do
    album = Album.create(name: "Emotion", year: 2015)
    song_1 = Song.create(name: "Run Away With Me", album_id: album.id)
    song_2 = Song.create(name: "E MO TION", album_id: album.id)
    song_3 = Song.create(name: "I Really Like You", album_id: album.id)
    song_4 = Song.create(name: "Gimmie Love", album_id: album.id)
    song_5 = Song.create(name: "All That", album_id: album.id)
    song_6 = Song.create(name: "Boy Problems", album_id: album.id)
    song_7 = Song.create(name: "Making the Most of the Night", album_id: album.id)
    song_8 = Song.create(name: "Your Type", album_id: album.id)
    song_9 = Song.create(name: "Let's Get Lost", album_id: album.id)

    visit album_path(album)

    assert page.has_content?("Run Away With Me")
    assert page.has_content?("I Really Like You")
    assert page.has_content?("Boy Problems")
  end


end
