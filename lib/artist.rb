require 'pry'

class Artist 
  attr_accessor :name, :songs
  
  
  def initialize(name)
    @name = name
    @songs = [] 
    @@artists_all << self 
  end
  
  @@artists_all = []
  
  @@songs_all = {}
  
  def songs 
    @songs
  end
  
  def add_song(new_song)
    #song = Song.new(new_song.title) 
    #song_title = new_song.title
    new_song.artist = self
    @songs << new_song 
    @@songs_all[self.name] ||= [] 
    @@songs_all[self.name] << new_song
  end  
  
  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    add_song(new_song)
 #   binding.pry
  end
  
  #binding.pry
  
  def self.song_count
    total_song_tally = 0
    # @@songs_all.length
    @@songs_all.each { |repertoire| total_song_tally += repertoire.length }
    total_song_tally
  end
  
end

artist = Artist.new("Trevor")
artist.songs

