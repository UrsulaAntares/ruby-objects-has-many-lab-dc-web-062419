class Song

    attr_accessor :artist 
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        # @artist = artist 
        self.class.all << self
    end

    def self.all 
        @@all
    end

    def artist_name
        @artist != nil ? @artist.name : nil
    end

end