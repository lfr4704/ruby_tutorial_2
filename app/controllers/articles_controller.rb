class ArticlesController < ApplicationController
	def new #when adding a new action view editing file a new view needs to be created too
	end

	def create
		render plain: params[:article].inspect # this is a response to submission 
	end
end
