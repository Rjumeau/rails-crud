class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :delete]

  def index
    # Récupérer les restaurants dans la DB
    @restaurants = Restaurant.all
  end

  def show
    # Trouver le restaurant par rapport à l'ID passé dans l'url (params)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    # Créer un restaurant avec les informations passées dans le form
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    # redirect_to restaurant_path(id: @restaurant.id)
    # Same as
    redirect_to restaurant_path(@restaurant)
  end

  def edit
    # Trouver le restaurant par rapport à l'ID passé dans l'url (params)
  end

  def update
    # Trouver le restaurant par rapport à l'ID passé dans l'url (params)
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    # Trouver le restaurant par rapport à l'ID passé dans l'url (params)
    @restaurant.destroy
    redirect_to restaurants_path, status: :see_other
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
