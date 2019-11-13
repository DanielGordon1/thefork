class Admin::RestaurantsController < ApplicationController
  def index
    # -> here we are actually displaying all the resto's
    @restaurant = Restaurant.all
  end
end
