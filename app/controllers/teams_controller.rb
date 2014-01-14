class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      flash[:success] = "Welcome to the Touchdown Club!"
      redirect_to @team
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @team = Team.find(params[:id])
    if @team.update_attributes(team_params)
      flash[:success] = "Team updated"
      redirect_to @team
    else
      render 'edit'
    end
  end

  def destroy
    Team.find(params[:id]).destroy
    flash[:success] = "Team deleted"
    redirect_to teams_url
  end

  private

    def team_params
      params.require(:team).permit(:abbr, :team, :mascot, :conference, :division)
    end
end
