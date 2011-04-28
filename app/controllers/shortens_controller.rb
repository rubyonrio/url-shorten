class ShortensController < ApplicationController

  def index
    @shortens = Shorten.all
    @short = Shorten.new
    
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def create
    @short = Shorten.new(params[:shorten])
    
    if @short.save
      @short.short = @short.make_short
      
      @short.save
      flash[:notice] = 'Encurtado!'
    else
      flash[:notice] = "Entre com uma url valida!"
    end
    redirect_to shortens_path
  end
end
