class AeDrugsController < ApplicationController
  before_action :set_ae_drug, only: [:show, :edit, :update, :destroy]
  before_action :set_adverse_event

  # GET /ae_drugs
  # GET /ae_drugs.json
  def index
    @ae_drugs = AeDrug.all
  end

  # GET /ae_drugs/1
  # GET /ae_drugs/1.json
  def show
  end

  # GET /ae_drugs/new
  def new
    @ae_drug = @adverse_event.ae_drugs.build
  end

  # GET /ae_drugs/1/edit
  def edit
  end

  # POST /ae_drugs
  # POST /ae_drugs.json
  def create
    @ae_drug = @adverse_event.ae_drugs.create(ae_drug_params)

    respond_to do |format|
      if @ae_drug.save
        format.html { redirect_to adverse_event_path(@adverse_event), notice: 'Medicamento suministrado, ingresado satisfactoriamente.' }
        format.json { render :show, status: :created, location: @ae_drug }
      else
        format.html { render :new }
        format.json { render json: @ae_drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ae_drugs/1
  # PATCH/PUT /ae_drugs/1.json
  def update
    respond_to do |format|
      if @ae_drug.update(ae_drug_params)
        format.html { redirect_to adverse_event_path(@adverse_event), notice: 'Medicamento suministrado, actualizado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @ae_drug }
      else
        format.html { render :edit }
        format.json { render json: @ae_drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ae_drugs/1
  # DELETE /ae_drugs/1.json
  def destroy
    @ae_drug.destroy
    respond_to do |format|
      format.html { redirect_to ae_drugs_url, notice: 'Medicamento suministrado, eliminado satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ae_drug
      @ae_drug = AeDrug.find(params[:id])
    end

    def set_adverse_event
      @adverse_event = AdverseEvent.find(params[:adverse_event_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ae_drug_params
      params.require(:ae_drug).permit(:drug_price, :drug_subtotal, :drug_time, :qty, :adverse_event_id, :drug_id, :service_id, :charge_id)
    end
end
