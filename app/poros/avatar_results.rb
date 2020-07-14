class AvatarResults
  def members_by_nation(nation)
    json = AvatarService.new.members_by_nation(nation)
    json.map { |member_data| Member.new(member_data) }
  end
end
