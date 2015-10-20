class UsersController < ApplicationController
	respond_to :js, :html

	def index
		if params[:search]
			@users = User.search(params[:search])
		else
			@users = User.all
		end

		respond_with @users
	
	end


end