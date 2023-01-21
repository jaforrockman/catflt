class MessesController < ApplicationController
  before_action :set_mess, only: %i[ show edit update destroy ]

  # GET /messes or /messes.json
  def index
    @messes = Mess.all
  end

  # GET /messes/1 or /messes/1.json
  def show
    @vouchers = Mess.find(params[:id]).vouchers
  end

  # GET /messes/new
  def new
    @mess = Mess.new
  end

  # GET /messes/1/edit
  def edit
  end

  # POST /messes or /messes.json
  def create
    @mess = Mess.new(mess_params)

    respond_to do |format|
      if @mess.save
        format.html { redirect_to mess_url(@mess), notice: "Mess was successfully created." }
        format.json { render :show, status: :created, location: @mess }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messes/1 or /messes/1.json
  def update
    respond_to do |format|
      if @mess.update(mess_params)
        format.html { redirect_to mess_url(@mess), notice: "Mess was successfully updated." }
        format.json { render :show, status: :ok, location: @mess }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messes/1 or /messes/1.json
  def destroy
    @mess.destroy

    respond_to do |format|
      format.html { redirect_to messes_url, notice: "Mess was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mess
      @mess = Mess.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mess_params
      params.require(:mess).permit(:name, :mess_type_id)
    end
end
