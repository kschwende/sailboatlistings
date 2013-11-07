class SailboatsController < ApplicationController
  before_action :set_sailboat, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:create, :destroy, :update, :edit, :new]

  # GET /sailboats
  # GET /sailboats.json
  def index
    @search = Sailboat.search do
      fulltext params[:search]
      facet(:manufacturer)
      with(:manufacturer, params[:manufacturer]) if params[:manufacturer].present?
    end
    @sailboats = @search.results
  end

  def featured
    #@sailboats = Sailboat.where(:featured => true)
    @search = Sailboat.search do
      fulltext params[:search]
      with(:featured, 'true')
      with(:featured_end_date).greater_than(Time.now)
    end
    @sailboats = @search.results
  end

  # GET /sailboats/1
  # GET /sailboats/1.json
  def show
  end

  # GET /sailboats/new
  def new
    @sailboat = Sailboat.new
  end

  # GET /sailboats/1/edit
  def edit
  end

  # POST /sailboats
  # POST /sailboats.json
  def create
    @sailboat = current_user.sailboats.new(sailboat_params)

    respond_to do |format|
      if @sailboat.save
        format.html { redirect_to @sailboat, notice: 'Sailboat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sailboat }
      else
        format.html { render action: 'new' }
        format.json { render json: @sailboat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sailboats/1
  # PATCH/PUT /sailboats/1.json
  def update
    respond_to do |format|
      if @sailboat.update(sailboat_params)
        format.html { redirect_to @sailboat, notice: 'Sailboat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sailboat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sailboats/1
  # DELETE /sailboats/1.json
  def destroy
    @sailboat.destroy
    respond_to do |format|
      format.html { redirect_to sailboats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sailboat
      @sailboat = Sailboat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sailboat_params
      params.require(:sailboat).permit(:manufacturer, :model, :description, :equipment, :year, :length, :beam, :draft, :material, :hull, :displacement, :boat_type, :rigging, :births, :cabins, :heads, :showers, :engines, :engine_type, :fuel_type, :hours, :horsepower, :boat_location_general, :boat_location_city, :boat_location_state, :boat_location_zip, :condition, :price, :create_date, :update_date, :photo)
    end
end



