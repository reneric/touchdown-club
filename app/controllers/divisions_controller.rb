class DivisionsController < ApplicationController
  def new
    @conferences = Conference.all
  end
end
