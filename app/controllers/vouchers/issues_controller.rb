class Vouchers::IssuesController < ApplicationController
  before_action :set_voucher, except: [:index, :show]
  before_action :set_issue, except: [:new, :create]
  # GET /issues or /issues.json
  def index
    @issues = Issue.all
  end

  # GET /issues/1 or /issues/1.json
  def show
  end

  # GET /issues/new
  def new
    @issue = Issue.new
    
    
  end

  # GET /issues/1/edit
  def edit
  end

  # POST /issues or /issues.json
  def create
    @issue = Issue.new(issue_params)
    @issue.voucher = @voucher

    respond_to do |format|
      if @issue.save
        format.html { redirect_to (@voucher), notice: "Issue was successfully created." }
        format.json { render :show, status: :created, location: @voucher }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @voucher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /issues/1 or /issues/1.json
  def update

    respond_to do |format|
      if @issue.update(issue_params)
        format.html { redirect_to (@voucher), notice: "Issue was successfully updated." }
        format.json { render :show, status: :ok, location: @issue }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issues/1 or /issues/1.json
  def destroy
    title = Item.find(@issue.item_id).name

    if @issue.destroy
      flash[:notice] = "#{title}  was deteted successfully"
      redirect_to @voucher
    else
      flash[:error] = "there was an error deleting the issue"
    

    #respond_to do |format|
     # format.html { redirect_to issues_url, notice: "Issue was successfully destroyed." }
      #format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue
      @issue = Issue.find(params[:id])
    end
    def set_voucher
      @voucher = Voucher.find(params[:voucher_id])
    # Only allow a list of trusted parameters through.
    end
    def issue_params
      params.require(:issue).permit(:item_id, :qty, :voucher_id)
    end
end
