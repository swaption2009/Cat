class BreedsController < ApplicationController
  before_action :set_breed, only: [:show, :update, :destroy]

  # GET /breeds
  def index
    @breeds = Breed.all

    render 'index.json'
  end

  # GET /breeds/1
  def show
    render 'show.json'
  end

  # POST /breeds
  def create
    @breed = Breed.new(breed_params)

    if @breed.save
      render json: @breed, status: :created, location: @breed
    else
      render json: @breed.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /breeds/1
  def update
    if @breed.update(breed_params)
      render json: @breed
    else
      render json: @breed.errors, status: :unprocessable_entity
    end
  end

  # DELETE /breeds/1
  def destroy
    @breed.destroy
  end

  def stats
    @breeds = Breed.includes(:tags).all
    render 'stats.json'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_breed
      @breed = Breed.includes(:tags).find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def breed_params
      params.fetch(:breed, {}).permit(:name,
                                      tag_ids: [],
                                      tags_attributes: [:trait]
      )
    end
end
