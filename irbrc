class Object
  def m
    self.public_methods - Object.public_methods
  end
end
