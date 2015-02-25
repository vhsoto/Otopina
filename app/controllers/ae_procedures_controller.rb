class AeProceduresController < ApplicationController
  before_action :set_ae_procedure, only: [:show, :edit, :update, :destroy]
  before_action :set_adverse_event

  # GET /ae_procedures
  # GET /ae_procedures.json
  def index
    @ae_procedures = AeProcedure.all
  end

  # GET /ae_procedures/1
  # GET /ae_procedures/1.json
  def show
  end

  # GET /ae_procedures/new
  def new
    @ae_procedure = @adverse_event.ae_procedures.build
  end

  # GET /ae_procedures/1/edit
  def edit
  end

  # POST /ae_procedures
  # POST /ae_procedures.json
  def create
    @ae_procedure = @adverse_event.ae_procedures.create(ae_procedure_params)

    respond_to do |format|
      if @ae_procedure.save
        format.html { redirect_to adverse_event_path(@adverse_event), notice: 'Procedimiento realizado, ingresado satisfactoriamente.' }
        format.json { render :show, status: :created, location: @ae_procedure }
      else
        format.html { render :new }
        format.json { render json: @ae_procedure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ae_procedures/1
  # PATCH/PUT /ae_procedures/1.json
  def update
    respond_to do |format|
      if @ae_procedure.update(ae_procedure_params)
        format.html { redirect_to adverse_event_path(@adverse_event), notice: 'Procedimiento realizado, actualizado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @ae_procedure }
      else
        format.html { render :edit }
        format.json { render json: @ae_procedure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ae_procedures/1
  # DELETE /ae_procedures/1.json
  def destroy
    @ae_procedure.destroy
    respond_to do |format|
      format.html { redirect_to ae_procedures_url, notice: 'Procedimiento realizado, eliminado satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ae_procedure
      @ae_procedure = AeProcedure.find(params[:id])
    end

    def set_adverse_event
      @adverse_event = AdverseEvent.find(params[:adverse_event_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ae_procedure_params
      params.require(:ae_procedure).permit(:procedure_price, :procedure_subtotal, :procedure_time, :procedure_id, :service_id, :adverse_event_id, :charge_id)
    end
end
