class ArticlesController < ApplicationController
    
    def new
        @article = Article.new
    end
    
    def create
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = "Article successfully saved"
            redirect_to article_path(@article)
        else
            flash[:alert] = "Article unable to save"
            render 'new'
        end
    end
    
    def show
       @article = Article.find(params[:id])
       
        
    end
    
    
    
    
    private
    def article_params
        params.require(:article).permit(:title, :description)
    end
    
end