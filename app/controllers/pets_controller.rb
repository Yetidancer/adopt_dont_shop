class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
  end

  def create
    pet = Shelter.create({
      name: params[:name],
      age: params[:age],
      sex: params[:sex],
      })

    pet.save

    redirect_to '/pets'
  end
end
