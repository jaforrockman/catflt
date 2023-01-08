class IvNumsController < ApplicationController
  before_action :set_iv_num, only: %i[ show edit update destroy ]

  # GET /iv_nums or /iv_nums.json
  def index
    @iv_nums = IvNum.all
  end

  # GET /iv_nums/1 or /iv_nums/1.json
  def show
  end

  # GET /iv_nums/new
  def new
    @iv_num = IvNum.new
  end

  # GET /iv_nums/1/edit
  def edit
  end

  # POST /iv_nums or /iv_nums.json
  def create
    @iv_num = IvNum.new(iv_num_params)

    respond_to do |format|
      if @iv_num.save
        format.html { redirect_to iv_num_url(@iv_num), notice: "Iv num was successfully created." }
        format.json { render :show, status: :created, location: @iv_num }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @iv_num.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iv_nums/1 or /iv_nums/1.json
  def update
    respond_to do |format|
      if @iv_num.update(iv_num_params)
        format.html { redirect_to iv_num_url(@iv_num), notice: "Iv num was successfully updated." }
        format.json { render :show, status: :ok, location: @iv_num }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @iv_num.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iv_nums/1 or /iv_nums/1.json
  def destroy
    @iv_num.destroy

    respond_to do |format|
      format.html { redirect_to iv_nums_url, notice: "Iv num was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iv_num
      @iv_num = IvNum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def iv_num_params
      params.require(:iv_num).permit(:i_num)
    end
end
