class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create 
   song = Song.new 
    song.save 
    song 
  end 
  
  def self.new_by_name(name)
    song = self.new 
    song.name = name 
    song 
  end 

def self.create_by_name(name)
  song = self.create 
  song.name = name 
  song 
end 

def self.find_by_name(name)
  self.all.find {|n| n.name == name}
end 

def self.find_or_create_by_name(name)
  self.all.find do |n|
    if n.name == name 
      name

end
