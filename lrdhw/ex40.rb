class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing()
    @lyrics.each {|line| puts line }
  end
end

happy = Song.new(["Happy birthday to you",
           "I don't want to get sued",
           "So I'll stop right there"])

happy.sing
