class Dog
  attr_reader :name
  attr_accessor :owner, :mood

  @@all = []

  def initialize(name,owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    @owner.dogs << self
  end

  def self.all
    @@all
  end

    # def mood
    #   @mood = "nervous"
    # end
     # code goes here

    attr_accessor :mood

    def initialize(name)
      @name = name
      @mood = "nervous"
    end  # code goes here
end
