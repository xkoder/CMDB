class ApplicsController < ApplicationController
  def home
  	@apps = Applic.find(:all)
  end
  def show
  	@app = Applic.find(params[:id])
  	@title = @app.name
  end
end
