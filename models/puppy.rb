class Puppy
  attr_accessor :name, :breed, :months_old

  def initialize(puppy_info)
    puppy_info.each do |k, v|
      self.send(("#{k}="), v)
    end
  end
end