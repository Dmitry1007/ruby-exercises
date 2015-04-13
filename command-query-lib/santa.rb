class Santa

  def initialize
    @fits = 0
  end

  def fits?
    @fits
  end

  def eats_cookies
    @fits += 1
    if @fits > 2
      @fits = false
    end
  end

end