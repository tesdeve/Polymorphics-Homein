class DetallespersonasController < ApplicationController
  #before_action :set_detallespersona, only: [:show, :edit, :update, :destroy]

  # GET /detallespersonas
  # GET /detallespersonas.json
  #def index
  #  @detallespersonas = Detallespersona.all
  #end

  # GET /detallespersonas/1
  # GET /detallespersonas/1.json
  #def show
  #end

  # GET /detallespersonas/new
  def new
    @detallespersona = @personable.detallespersonas.new
  end

  # GET /detallespersonas/1/edit
  #def edit
  #end

  # POST /detallespersonas
  # POST /detallespersonas.json
  def create

    @detallespersona = @personable.detallespersonas.new(detallespersona_params)   
    @personable.save
    redirect_to @personable, notice: 'Detallespersona was successfully created.'


    #@detallespersona = Detallespersona.new(detallespersona_params)
    #respond_to do |format|
    #  if @detallespersona.save
    #    format.html { redirect_to @detallespersona, notice: 'Detallespersona was successfully created.' }
    #    format.json { render :show, status: :created, location: @detallespersona }
    #  else
    #    format.html { render :new }
    #    format.json { render json: @detallespersona.errors, status: :unprocessable_entity }
    #  end
    #end
  end

  # PATCH/PUT /detallespersonas/1
  # PATCH/PUT /detallespersonas/1.json
  #def update
  #  respond_to do |format|
  #    if @detallespersona.update(detallespersona_params)
  #      format.html { redirect_to @detallespersona, notice: 'Detallespersona was successfully updated.' }
  #      format.json { render :show, status: :ok, location: @detallespersona }
  #    else
  #      format.html { render :edit }
  #      format.json { render json: @detallespersona.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end
#
  ## DELETE /detallespersonas/1
  ## DELETE /detallespersonas/1.json
  #def destroy
  #  @detallespersona.destroy
  #  respond_to do |format|
  #    format.html { redirect_to detallespersonas_url, notice: 'Detallespersona was successfully destroyed.' }
  #    format.json { head :no_content }
  #  end
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    #def set_detallespersona
    #  @detallespersona = Detallespersona.find(params[:id])
    #end

    # Only allow a list of trusted parameters through.
    def detallespersona_params
      params.require(:detallespersona).permit(:personable_id, :personable_type, :apellido, :edad, :cedula, :huella_digital)
    end
end
