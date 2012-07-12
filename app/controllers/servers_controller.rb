class ServersController < ApplicationController
	def show
		@server = Server.find(params[:id])
		@title = @server.firstnamed
	end

	def new
		@server = Server.new
		@title = "New Admin"
	end

	def create
		#raise params[:server].inspect
		@server = Server.new(params[:admin])
		if @server.save
			redirect_to root_path, :flash => {:success => "New server has been created!"}
		else
			@title = "New server"
			render 'new'
		end
	end  
end
