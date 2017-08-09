module Api
	module V1
		class ArticlesController < ApplicationController
			protect_from_forgery prepend: true, with: :exception
			def index
				articles = Article.order('created_at DESC');
				render json: {status: 'hoho Sukses', message: 'Loader article', data:articles}, status: :ok
			end
			def show
				article = Article.find(params[:id])
				render json: {status: 'hoho Sukses', message: 'Loader article', data:article}, status: :ok
			end
			def create
        article = Article.new(article_params)

        if article.save
          render json: {status: 'SUCCESS', message:'Saved article', data:article},status: :ok
        else
          render json: {status: 'ERROR', message:'Article not saved', data:article.errors},status: :unprocessable_entity
        end
      end
			private
			def article_params
	      params.require(:article).permit(:title, :body)
	    end
		end
	end
end