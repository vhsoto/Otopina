class HumResAssistancesController < ApplicationController
  before_action :set_hum_res_assistance, only: [:show, :edit, :update, :destroy]
  before_action :set_adverse_event

  # GET /hum_res_assistances
  # GET /hum_res_assistances.json
  def index
    @hum_res_assistances = HumResAssistance.all
  end

  # GET /hum_res_assistances/1
  # GET /hum_res_assistances/1.json
  def show
  end

  # GET /hum_res_assistances/new
  def new
    @hum_res_assistance = @adverse_event.hum_res_assistances.build 
  end

  # GET /hum_res_assistances/1/edit
  def edit
  end

  # POST /hum_res_assistances
  # POST /hum_res_assistances.json
  def create
    @hum_res_assistance = @adverse_event.hum_res_assistances.create(hum_res_assistance_params)

    respond_to do |format|
      if @hum_res_assistance.save
        format.html { redirect_to adverse_event(@adverse_event), notice: 'Hum res assistance was successfully created.' }
        format.json { render :show, status: :created, location: @hum_res_assistance }
      else
        format.html { render :new }
        format.json { render json: @hum_res_assistance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hum_res_assistances/1
  # PATCH/PUT /hum_res_assistances/1.json
  def update
    respond_to do |format|
      if @hum_res_assistance.update(hum_res_assistance_params)
        format.html { redirect_to adverse_event_path(@adverse_event), notice: 'Hum res assistance was successfully updated.' }
        format.json { render :show, status: :ok, location: @hum_res_assistance }
      else
        format.html { render :edit }
        format.json { render json: @hum_res_assistance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hum_res_assistances/1
  # DELETE /hum_res_assistances/1.json
  def destroy
    @hum_res_assistance.destroy
    respond_to do |format|
      format.html { redirect_to hum_res_assistances_url, notice: 'Hum res assistance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hum_res_assistance
      @hum_res_assistance = HumResAssistance.find(params[:id])
    end

    def set_adverse_event
      @adverse_event = AdverseEvent.find(params[:adverse_event_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hum_res_assistance_params
      params.require(:hum_res_assistance).permit(:name, :qty, :price, :time, :subtotal, :adverse_event_id, :service_id)
    end
end
