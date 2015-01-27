class HospitalizationDaysController < ApplicationController
  before_action :set_hospitalization_day, only: [:show, :edit, :update, :destroy]
  before_action :set_adverse_event

  # GET /hospitalization_days
  # GET /hospitalization_days.json
  def index
    @hospitalization_days = HospitalizationDay.all
  end

  # GET /hospitalization_days/1
  # GET /hospitalization_days/1.json
  def show
  end

  # GET /hospitalization_days/new
  def new
    @hospitalization_day = @adverse_event.hospitalization_days.build
  end

  # GET /hospitalization_days/1/edit
  def edit
  end

  # POST /hospitalization_days
  # POST /hospitalization_days.json
  def create
    @hospitalization_day = @adverse_event.hospitalization_days.create(hospitalization_day_params)

    respond_to do |format|
      if @hospitalization_day.save
        format.html { redirect_to adverse_event_path(@adverse_event), notice: 'Hospitalization day was successfully created.' }
        format.json { render :show, status: :created, location: @hospitalization_day }
      else
        format.html { render :new }
        format.json { render json: @hospitalization_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hospitalization_days/1
  # PATCH/PUT /hospitalization_days/1.json
  def update
    respond_to do |format|
      if @hospitalization_day.update(hospitalization_day_params)
        format.html { redirect_to adverse_event_path(@adverse_event), notice: 'Hospitalization day was successfully updated.' }
        format.json { render :show, status: :ok, location: @hospitalization_day }
      else
        format.html { render :edit }
        format.json { render json: @hospitalization_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospitalization_days/1
  # DELETE /hospitalization_days/1.json
  def destroy
    @hospitalization_day.destroy
    respond_to do |format|
      format.html { redirect_to hospitalization_days_url, notice: 'Hospitalization day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hospitalization_day
      @hospitalization_day = HospitalizationDay.find(params[:id])
    end

    def set_adverse_event
      @adverse_event = AdverseEvent.find(params[:adverse_event_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hospitalization_day_params
      params.require(:hospitalization_day).permit(:qty, :price, :subtotal, :date, :adverse_event_id, :service_id)
    end
end
