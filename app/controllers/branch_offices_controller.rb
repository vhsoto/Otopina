class BranchOfficesController < ApplicationController
  before_action :set_branch_office, only: [:show, :edit, :update, :destroy]

  # GET /branch_offices
  # GET /branch_offices.json
  def index
    @branch_offices = BranchOffice.all
  end

  # GET /branch_offices/1
  # GET /branch_offices/1.json
  def show
  end

  # GET /branch_offices/new
  def new
    @branch_office = BranchOffice.new
  end

  # GET /branch_offices/1/edit
  def edit
  end

  # POST /branch_offices
  # POST /branch_offices.json
  def create
    @branch_office = BranchOffice.new(branch_office_params)

    respond_to do |format|
      if @branch_office.save
        format.html { redirect_to @branch_office, notice: 'Sede ingresada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @branch_office }
      else
        format.html { render :new }
        format.json { render json: @branch_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /branch_offices/1
  # PATCH/PUT /branch_offices/1.json
  def update
    respond_to do |format|
      if @branch_office.update(branch_office_params)
        format.html { redirect_to @branch_office, notice: 'Sede actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @branch_office }
      else
        format.html { render :edit }
        format.json { render json: @branch_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /branch_offices/1
  # DELETE /branch_offices/1.json
  def destroy
    @branch_office.destroy
    respond_to do |format|
      format.html { redirect_to branch_offices_url, notice: 'Sede eliminada satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_branch_office
      @branch_office = BranchOffice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def branch_office_params
      params.require(:branch_office).permit(:name, :city)
    end
end
