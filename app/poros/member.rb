class Member
  attr_reader :name,
              :allies,
              :affiliation,
              :photo_url

  def initialize(member_data)
    @name = member_data[:name]
    @allies = member_data[:allies]
    @affiliation = member_data[:affiliation]
    @photo_url = member_data[:photo_url]
  end
end
