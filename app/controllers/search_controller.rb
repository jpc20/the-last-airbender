class SearchController < ApplicationController
  def index
    @nation = params[:nation]
    @members = AvatarResults.new.members_by_nation(@nation)
  end
end
