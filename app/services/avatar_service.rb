class AvatarService
  def members_by_nation(nation)
    response = conn.get("characters?affiliation=#{nation.gsub(/_/, '+')}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com/api/v1/')
  end
end
