class StaticController < ApplicationController

	def home
		render :home
	end	

	def contacts
		render :contacts
	end

	def hello
		@name = params[:name]
	end
	
end