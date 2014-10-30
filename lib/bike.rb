class Bike

  def initialize
    @fix
    # @avaliable = true
  end

  def broken?
    @broken
  end

  def break!
    @broken = true
  end

  def fix!
    @broken = false
  end

end