class ArticlesController < ApplicationController

 
	def new
		@article = Article.new
	end

	def create 
     
     @article = Article.new(article_params)
     if @article.save
     	flash[:notice] = "Article was successfully created"
     	redirect_to @article 
     else
     	render 'new'
     end
	end 


	private 

	def article_params
		params.require(:article).permit(:title,:description)
	end
end
