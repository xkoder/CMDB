class AdminsController < ApplicationController
	def show
		@admin = Admin.find(params[:id])
		@title = @admin.firstnamed
	end

	def new
		@admin = Admin.new
		@title = "New Admin"
	end

	def create
		#raise params[:admin].inspect
		@admin = Admin.new(params[:admin])
		if @admin.save
			redirect_to root_path, :flash => {:success => "New administrator has been created!"}
		else
			@title = "New Admin"
			render 'new'
		end
	end
end
