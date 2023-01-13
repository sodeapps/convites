class ConfirmarsController < ApplicationController
  before_action :set_confirmar, only: %i[ show edit update destroy ]

  # GET /confirmars or /confirmars.json
  def index
    @confirmars = Confirmar.all
  end
  
  # GET /confirmars/1 or /confirmars/1.json
  def show
  end

  # GET /confirmars/new
  def new
    @confirmar = Confirmar.new
  end

  # GET /confirmars/1/edit
  def edit
  end

  # POST /confirmars or /confirmars.json
  def create
    @confirmar = Confirmar.new(confirmar_params)

    respond_to do |format|
      if @confirmar.save
        format.html { redirect_to confirmar_url(@confirmar), notice: "Confirmar was successfully created." }
        format.json { render :show, status: :created, location: @confirmar }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @confirmar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /confirmars/1 or /confirmars/1.json
  def update
    respond_to do |format|
      if @confirmar.update(confirmar_params)
        format.html { redirect_to confirmar_url(@confirmar), notice: "Confirmar was successfully updated." }
        format.json { render :show, status: :ok, location: @confirmar }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @confirmar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /confirmars/1 or /confirmars/1.json
  def destroy
    @confirmar.destroy

    respond_to do |format|
      format.html { redirect_to confirmars_url, notice: "Confirmar was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_confirmar
      @confirmar = Confirmar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def confirmar_params
      params.require(:confirmar).permit(:nome, :telefone, :idade)
    end
end
