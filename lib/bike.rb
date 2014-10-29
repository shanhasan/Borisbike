class Bike
  def initialize
    @broken = false
    @avaliable = true
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

  def avaliable
    @avaliable
  end

  def rented!
    @avaliable = false
  end

  def Fine
    @avaliable = true
  end

  def Broken
    @avaliable = false
  end

end