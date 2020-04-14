class Residentes::ContactosController < ContactosController

  before_action :set_contactable

  private

    def set_personable
      @contactable = Residente.find(params[:residente_id])
    end

end