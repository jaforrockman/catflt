class VoucherTypesController < ApplicationController
  before_action :set_voucher_type, only: %i[ show edit update destroy ]

  # GET /voucher_types or /voucher_types.json
  def index
    @voucher_types = VoucherType.all
  end

  # GET /voucher_types/1 or /voucher_types/1.json
  def show
  end

  # GET /voucher_types/new
  def new
    @voucher_type = VoucherType.new
  end

  # GET /voucher_types/1/edit
  def edit
  end

  # POST /voucher_types or /voucher_types.json
  def create
    @voucher_type = VoucherType.new(voucher_type_params)

    respond_to do |format|
      if @voucher_type.save
        format.html { redirect_to voucher_type_url(@voucher_type), notice: "Voucher type was successfully created." }
        format.json { render :show, status: :created, location: @voucher_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @voucher_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voucher_types/1 or /voucher_types/1.json
  def update
    respond_to do |format|
      if @voucher_type.update(voucher_type_params)
        format.html { redirect_to voucher_type_url(@voucher_type), notice: "Voucher type was successfully updated." }
        format.json { render :show, status: :ok, location: @voucher_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @voucher_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voucher_types/1 or /voucher_types/1.json
  def destroy
    @voucher_type.destroy

    respond_to do |format|
      format.html { redirect_to voucher_types_url, notice: "Voucher type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voucher_type
      @voucher_type = VoucherType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def voucher_type_params
      params.require(:voucher_type).permit(:name)
    end
end
