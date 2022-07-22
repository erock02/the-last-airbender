class SearchController < ApplicationController
  def index
    @members = MembersFacade.all_members_of_a_nation(params[:nation])
  end
end
