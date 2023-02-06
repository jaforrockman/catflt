class CollVcrsController < ApplicationController
  before_action :set_coll_vcr, only: %i[ show edit update destroy ]

  # GET /coll_vcrs or /coll_vcrs.json
  def index
    @coll_vcrs = CollVcr.all
    @items = Item.all

  end

  # GET /coll_vcrs/1 or /coll_vcrs/1.json
  def show
    @coll_vcr = CollVcr.find(params[:id])
    @collections = @coll_vcr.collections
  end

  # GET /coll_vcrs/new
  def new
    @coll_vcr = CollVcr.new
    @items = Item.all
    @coll_vcr.collections.build
  end

  # GET /coll_vcrs/1/edit
  def edit
    @items = Item.all
  end

  # POST /coll_vcrs or /coll_vcrs.json
  def create
    @coll_vcr = CollVcr.new(coll_vcr_params)
    @collection = @coll_vcr

    respond_to do |format|
      if @coll_vcr.save
        format.html { redirect_to coll_vcr_url(@coll_vcr), notice: "Coll vcr was successfully created." }
        format.json { render :show, status: :created, location: @coll_vcr }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coll_vcr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coll_vcrs/1 or /coll_vcrs/1.json
  def update
    respond_to do |format|
      if @coll_vcr.update(coll_vcr_params)
        format.html { redirect_to coll_vcr_url(@coll_vcr), notice: "Coll vcr was successfully updated." }
        format.json { render :show, status: :ok, location: @coll_vcr }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coll_vcr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coll_vcrs/1 or /coll_vcrs/1.json
  def destroy
    @coll_vcr.destroy

    respond_to do |format|
      format.html { redirect_to coll_vcrs_url, notice: "Coll vcr was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coll_vcr
      @coll_vcr = CollVcr.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coll_vcr_params
<<<<<<< HEAD
      params.require(:coll_vcr).permit(:company_id, :coll_date, :invoice_num, :ext_rv, collections_attributes: [:item_id, :qty, :coll_vcr_id])
=======
      params.require(:coll_vcr).permit(:company_id, :coll_date, :invoice_num, :ext_rv, :catering_id, :references, collections_attributes: [:item_id, :qty, :coll_vcr_id])
>>>>>>> ff9fa4288ea21eff91f5e459b353f2e4b07899e0
    end
end
