class NflController < ApplicationController
  def index
    @nfl = Team.all
  end
end
