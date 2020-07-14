class Member
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :photo_url

  def initialize(member_data)
    @name = member_data[:name]
    @allies = member_data[:allies]
    @enemies = member_data[:enemies]
    @affiliation = member_data[:affiliation]
    @photo_url = member_data[:photoUrl]
  end
end
