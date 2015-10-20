class UsersController < ApplicationController

	def index
		if params[:user]
			@users = User.search(params[:user])
		else
			@users = User.all
		end
	end


end