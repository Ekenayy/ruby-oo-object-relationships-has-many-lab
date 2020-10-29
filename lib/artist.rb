class Artist
attr_accessor :name, :song

    @@song_count = []
    
    def initialize(name)
        @name = name
    end 

    def add_song(song)
        song.artist = self
        #@@song_count << song
    end 

    def songs
      Song.all.select {|song| song.artist == self}
      #@@song_count << songs.join(', ')
      #songs
        #binding.pry 
    end 

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self 
        #@@song_count << song
    end 

    def self.song_count
       
        Song.all.select {|songs| songs.artist}.length
        #binding.pry
    end 

end 