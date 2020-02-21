class FoodstuffsController < ApplicationController

  def index
    @foodstuffs = Foodstuff.all
  end

  def new
    @fooodstuff = Foodstuff.new
  end

  def create

  end
end
