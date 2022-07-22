class Member
  attr_reader :name,
              :allies,
              :enemies

  def initialize(data)
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @photo = data[:photoUrl]
  end
end