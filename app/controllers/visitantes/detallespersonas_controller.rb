class Visitantes::DetallespersonasController < DetallespersonasController

  before_action :set_personable

  private

    def set_personable
      @personable = Visitante.find(params[:visitante_id])
    end

end
