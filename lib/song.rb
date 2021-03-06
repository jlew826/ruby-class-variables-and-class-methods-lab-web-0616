class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist

  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end


  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    # genre_count = Hash.new(0)
    # @@genres.each {|x| genre_count[x] += 1}

    #[@@genres.collect{|genre| [genre, genre.count]}]
    @@genres.inject(Hash.new(0)) {|total, e| total[e] +=1 ;total}

  end

  def self.artist_count
    @@artists.inject(Hash.new(0)) {|total, e| total[e] +=1 ;total}
  end



end
