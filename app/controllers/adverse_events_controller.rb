class AdverseEventsController < ApplicationController
  before_action :set_adverse_event, only: [:show, :edit, :update, :destroy]
  # GET /adverse_events
  # GET /adverse_events.json
  def index
    @adverse_events = AdverseEvent.all
    @patients = Patient.all
    @branch_offices = BranchOffice.all
    @event_categories = EventCategory.all
    @events = Event.all 
  end

  # GET /adverse_events/1
  # GET /adverse_events/1.json
  def show
    @patients = Patient.all
    @branch_offices = BranchOffice.all
    @event_categories = EventCategory.all
    @events = Event.all 
    @ae_drugs = AeDrug.all
  end

  # GET /adverse_events/new
  def new
    @adverse_event = AdverseEvent.new
    unless params[:patient_id].nil?
      @patient = Patient.find(params[:patient_id])
    end
  end

  # GET /adverse_events/1/edit
  def edit
  end

  # POST /adverse_events
  # POST /adverse_events.json
  def create
    @adverse_event = AdverseEvent.new(adverse_event_params)

    respond_to do |format|
      if @adverse_event.save
        format.html { redirect_to @adverse_event, notice: 'Adverse event was successfully created.' }
        format.json { render :show, status: :created, location: @adverse_event }
      else
        format.html { render :new }
        format.json { render json: @adverse_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adverse_events/1
  # PATCH/PUT /adverse_events/1.json
  def update
    respond_to do |format|
      if @adverse_event.update(adverse_event_params)
        flash[:success] = "Woohoo!"
        format.html { redirect_to @adverse_event }
        format.json { render :show, status: :ok, location: @adverse_event }
      else
        format.html { render :edit }
        format.json { render json: @adverse_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adverse_events/1
  # DELETE /adverse_events/1.json
  def destroy
    @adverse_event.destroy
    respond_to do |format|
      format.html { redirect_to adverse_events_url, notice: 'Adverse event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adverse_event
      @adverse_event = AdverseEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adverse_event_params
      params.require(:adverse_event).permit(:time, :reason_admission, :description, :pregnant, :event_id, :patient_id, :branch_office_id)
    end
end
