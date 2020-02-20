class FoodstuffsController < ApplicationController

  def index
    @foodstuffs = Foodstuff.all
  end

  def new

  end

  def create

  end
end
