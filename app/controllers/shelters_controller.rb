class SheltersController < ApplicationController

  def index
    @shelters = Shelter.all
  end

  def details
    @shelter = Shelter.find(params[:id])
  end
end
