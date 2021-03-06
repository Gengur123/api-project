class DetailsController < ApplicationController

  def index
    animal = Animal.find(params[:animal_id])
    @details = animal.details
    json_response(@details)
  end

  def show
    @animal = Animal.find(params[:animal_id])
    @detail = Detail.find(params[:id])
    if @detail.animal_id == @animal.id
      json_response(@detail)
    else
      render status: 404, json: {
        message: "An animal with that id does not match the animal id."
      }
    end
  end

  def create
    @detail = Detail.create(detail_params)
    if @detail.update!(detail_params)
      render status: 200, json: {
        message: "This detail has been updated successfully."
        }
    end
  end

  def update
    @detail = Detail.find(params[:id])
    @detail.update(detail_params)
  end

  def destroy
    @detail = Detail.find(params[:id])
    @detail.destroy
  end
  
  def random
    ids = Animal.pluck(:id)
    @random_animal = Animal.find(ids.sample)
    @random_detail = @random_animal.details.sample
    json_response(@random_detail)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def detail_params
    params.permit(:name, :breed, :gender, :age, :weight, :bio, :animal_id)
  end
end