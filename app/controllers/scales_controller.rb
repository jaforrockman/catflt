class ScalesController < ApplicationController
  before_action :set_scale, only: %i[ show edit update destroy ]

  # GET /scales or /scales.json
  def index
    @scales = Scale.all
  end

  # GET /scales/1 or /scales/1.json
  def show
  end

  # GET /scales/new
  def new
    @scale = Scale.new
  end

  # GET /scales/1/edit
  def edit
  end

  # POST /scales or /scales.json
  def create
    @scale = Scale.new(scale_params)

    respond_to do |format|
      if @scale.save
        format.html { redirect_to scale_url(@scale), notice: "Scale was successfully created." }
        format.json { render :show, status: :created, location: @scale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @scale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scales/1 or /scales/1.json
  def update
    respond_to do |format|
      if @scale.update(scale_params)
        format.html { redirect_to scale_url(@scale), notice: "Scale was successfully updated." }
        format.json { render :show, status: :ok, location: @scale }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @scale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scales/1 or /scales/1.json
  def destroy
    @scale.destroy

    respond_to do |format|
      format.html { redirect_to scales_url, notice: "Scale was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scale
      @scale = Scale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scale_params
      params.require(:scale).permit(:scale_type, :qty, :item_id)
    end
end
