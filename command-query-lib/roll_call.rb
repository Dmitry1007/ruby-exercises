class RollCall 

  def initialize
    @longest_name = []
  end

  def <<(name)
    @longest_name << name 
  end

  def longest_name
    @longest_name.empty? ? nil : @longest_name.max_by { |name| name.length }
  end
end