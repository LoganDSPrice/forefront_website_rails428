class TeamController < ApplicationController
  def index
    @team_members = TeamMember.all
  end

  def show
    @team_member = TeamMember.find_by(id: params[:id])
  end
end
