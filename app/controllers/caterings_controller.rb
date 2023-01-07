class CateringsController < ApplicationController
  before_action :set_catering, only: %i[ show edit update destroy ]

  # GET /caterings or /caterings.json
  def index
    @caterings = Catering.all
  end

  # GET /caterings/1 or /caterings/1.json
  def show
  end

  # GET /caterings/new
  def new
    @catering = Catering.new
  end

  # GET /caterings/1/edit
  def edit
  end

  # POST /caterings or /caterings.json
  def create
    @catering = Catering.new(catering_params)

    respond_to do |format|
      if @catering.save
        format.html { redirect_to catering_url(@catering), notice: "Catering was successfully created." }
        format.json { render :show, status: :created, location: @catering }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @catering.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caterings/1 or /caterings/1.json
  def update
    respond_to do |format|
      if @catering.update(catering_params)
        format.html { redirect_to catering_url(@catering), notice: "Catering was successfully updated." }
        format.json { render :show, status: :ok, location: @catering }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @catering.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caterings/1 or /caterings/1.json
  def destroy
    @catering.destroy

    respond_to do |format|
      format.html { redirect_to caterings_url, notice: "Catering was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catering
      @catering = Catering.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def catering_params
      params.require(:catering).permit(:name, :short_name)
    end
end
