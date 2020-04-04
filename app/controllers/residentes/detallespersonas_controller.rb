class Residentes::DetallespersonasController < DetallespersonasController

  before_action :set_personable

  private

    def set_personable
      @personable = Residente.find(params[:residente_id])
    end

end