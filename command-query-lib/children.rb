class Children < Array

  def eldest
    self.max_by { |child| child.age }
  end

end

