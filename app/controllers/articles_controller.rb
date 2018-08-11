class ArticlesController < ApplicationController
	http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def new #when adding a new action view editing file a new view needs to be created too
		@article = Article.new
	end

	def edit
		@article = Article.find(params[:id])
	end

	def create
  		@article = Article.new(article_params)
 
  		if @article.save
  			redirect_to @article # will tell the browser to issue another request
  		else
  			render 'new' #object is passed back to the new template when it is rendered
  		end
	end
 
	def update
		@article = Article.find(params[:id])

		if @article.update(article_params)
			redirect_to @article
		else
			render 'edit'
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to articles_path
	end

	private
  		def article_params
    		params.require(:article).permit(:title, :text)
  	end
end
