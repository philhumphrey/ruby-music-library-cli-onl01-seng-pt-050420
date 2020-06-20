class Artist
extend Concerns::Findable
    attr_accessor :name 
    attr_reader :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def self.all
        @@all
    end

def self.destroy_all
    all.clear
    end

def save
    @@all << self
    end

def self.create(name)
    artist = new(name)
    artist.save
    artist
    end

def add_song(song)
    song.artist = self unless song.artist
    songs.push song unless songs.include?(song)
    # save if self.completed == true

    def genres
    songs.map(&:genre).uniq
    end
end
end





