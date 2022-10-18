class PortfoliosController < ApplicationController
  def index
    @sectionText = "Portfolio"
    @portfolios = Portfolio.all
  end

  def show
    @portfolio = Portfolio.find(params[:id])
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    if params[:portfolio][:passwd] === 'hhMSPfh394Om00Rw'
      @portfolio = Portfolio.new(portfolio_params)

      if @portfolio.save
        redirect_to @portfolio
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def edit
    @portfolio = Portfolio.find(params[:id])
  end

  def update
    if params[:portfolio][:passwd] === 'hhMSPfh394Om00Rw'
      @portfolio = Portfolio.find(params[:id])
  
      if @portfolio.update(portfolio_params)
        redirect_to @portfolio
      else
        render :eid, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @portfolio = Portfolio.find(params[:id])
    @portfolio.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def portfolio_params
      params.require(:portfolio).permit(:title, :image, :summary)
    end
end
