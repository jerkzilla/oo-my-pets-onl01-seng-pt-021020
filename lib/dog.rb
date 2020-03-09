class Dog
  attr_reader :name
<<<<<<< HEAD
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
=======
    attr_accessor :mood

    def initialize(name)
      @name = name
      @mood = "nervous"
    end  # code goes here
>>>>>>> ce0ed20cdb552337632a2e08e9d76586bea4e61e
end
