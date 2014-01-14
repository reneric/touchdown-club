class ConferencesController < ApplicationController
  def to_param
    name
  end
  def new
  end

  def create
    @conference = Conference.new(conference_params)
    if @conference.save
      flash[:success] = "Conference created."
      redirect_to @conference
    else
      render 'new'
    end
  end

  def index
    @conferences = Conference.all
  end

  def show
    @conference = Conference.find(params[:id])
  end

  private
    def conference_params
      params.require(:conference).permit(:name, :division_id)
    end
end
