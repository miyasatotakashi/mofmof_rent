class PropertsController < ApplicationController
  before_action :set_propert, only: %i[ show edit update destroy ]

  def index
    @properts = Propert.all
  end

  def show
    @stations = @propert.stations
  end

  def new
    @propert = Propert.new
    2.times { @propert.stations.build }
  end

  def edit
    @propert.stations.build
  end

  def create
    @propert = Propert.new(propert_params)

    respond_to do |format|
      if @propert.save
        format.html { redirect_to @propert, notice: "Propert was successfully created." }
        format.json { render :show, status: :created, location: @propert }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @propert.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @propert.update(propert_params)
        format.html { redirect_to @propert, notice: "Propert was successfully updated." }
        format.json { render :show, status: :ok, location: @propert }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @propert.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @propert.destroy
    respond_to do |format|
      format.html { redirect_to properts_url, notice: "Propert was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_propert
      @propert = Propert.find(params[:id])
    end

    def propert_params
      params.require(:propert).permit(:title, :rent, :address, :ago, :remarks, stations_attributes: [:route, :name, :minutes])
    end
end
