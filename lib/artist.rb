require "pry"

class Artist
  attr_accessor :name, :songs
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = Array.new
  end

  def add_song(song)
    @@song_count += 1
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song_name)
    add_song(Song.new(song_name))
    song_name
  end

  def self.song_count
    @@song_count
  end

end
