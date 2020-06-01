class ConjuntosController < ApplicationController
  before_action :set_conjunto, only: [:show, :edit, :update, :destroy]

  # GET /conjuntos
  # GET /conjuntos.json
  def index
    @conjuntos = Conjunto.all
  end

  # GET /conjuntos/1
  # GET /conjuntos/1.json
  def show
  end

  # GET /conjuntos/new
  def new
    @conjunto = Conjunto.new
  end

  # GET /conjuntos/1/edit
  def edit
  end

  # POST /conjuntos
  # POST /conjuntos.json
  def create
    @conjunto = Conjunto.new(conjunto_params)

    respond_to do |format|
      if @conjunto.save
        format.html { redirect_to @conjunto, notice: 'Conjunto was successfully created.' }
        format.json { render :show, status: :created, location: @conjunto }
      else
        format.html { render :new }
        format.json { render json: @conjunto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conjuntos/1
  # PATCH/PUT /conjuntos/1.json
  def update
    respond_to do |format|
      if @conjunto.update(conjunto_params)
        format.html { redirect_to @conjunto, notice: 'Conjunto was successfully updated.' }
        format.json { render :show, status: :ok, location: @conjunto }
      else
        format.html { render :edit }
        format.json { render json: @conjunto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conjuntos/1
  # DELETE /conjuntos/1.json
  def destroy
    @conjunto.destroy
    respond_to do |format|
      format.html { redirect_to conjuntos_url, notice: 'Conjunto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conjunto
      @conjunto = Conjunto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def conjunto_params
      params.require(:conjunto).permit(:nombre)
    end
end
