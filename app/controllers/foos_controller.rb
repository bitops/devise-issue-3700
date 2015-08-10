class FoosController < AuthenticatedController
  
  skip_before_filter :authenticate_staff!, only: [:index]

  def index
  end

  def show
    @name = params[:id]
  end
  
end
