class ServicesController < ApplicationController
  def index
    @sectionText = "Services"
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    if params[:service][:passwd] === 'hhMSPfh394Om00Rw'
      @service = Service.new(service_params)

      if @service.save
        redirect_to @service
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    if params[:service][:passwd] === 'hhMSPfh394Om00Rw'
      @service = Service.find(params[:id])

      if @service.update(service_params)
        redirect_to @service
      else
        render :eid, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def service_params
      params.require(:service).permit(:title, :image, :summary)
    end
end
