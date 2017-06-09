class Artist

  attr_accessor :songs
  attr_reader :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name).tap do |song|
      self.add_song(song)
    end
  end

  def self.song_count
    @@song_count
  end
end
