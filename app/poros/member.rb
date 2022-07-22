class Member
  attr_reader :name,
              :allies,
              :enemies,
              :photo,
              :affiliations

  def initialize(data)
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @photo = data[:photoUrl]
    @affiliations = data[:affiliation]
  end
end
