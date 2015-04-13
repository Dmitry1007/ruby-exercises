class Student

  def initialize
    @grade = ['A','B','C','D','F']
    @index = 2
  end

  def grade
    @grade[@index]
  end

  def study
    @grade[@index-=1]

    if @index <= 0
      @index = 0
    end
  end

  def slack_off
    @grade[@index+=1]

    if @index >= 4
      @index = 4
    end
  end

end