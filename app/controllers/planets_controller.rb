class PlanetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show, :edit, :update, :tabs, :telluric, :gas ]
  before_action :set_planet, only: [:show, :edit, :update]

  def index
    @planets = Planet.all.order(size: :asc )
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @planet.update(planet_params)
        format.html { redirect_to @planet, notice: "The planet was successfully updated." }
        # format.json { render :show, status: :ok, location: @planet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        # format.json { render json: @planet.errors, status: :unprocessable_entity }
      end
    end
  end

  def tabs;  end

  def telluric; end

  def gas; end

  private

  def set_planet
    @planet = Planet.find(params[:id])
  end

  def planet_params
    params.require(:planet).permit(:name, :size)
  end
end
