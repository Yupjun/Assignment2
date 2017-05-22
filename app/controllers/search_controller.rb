class SearchController < ApplicationController
  def index
    @contents = Content.all
    @@meta = params[:search]
    if params[:search] == "title"
      @contents = Content.where("title like ?", "%#{params[:content]}%")
    elsif params[:search] == "content"
      @contents = Content.where("content like ?", "%#{params[:content]}%")
    elsif params[:search] == "campus"
      @contents = Content.where("campus like ?", "%#{params[:content]}%")
    else
      @contents = Content.where("nickname like ?", "%#{params[:content]}%")
    # @result = Article.search(params[:search])
   
    #@meta = params[:search]
    #@result = Content.find(params[:search])
    #redirect_to  'search#index'
   end
  end
  
  def show
  
  end
  
  def new
    
  end
  def find
  
  end
end
 private
def search_params
  params.require(:search).permit(:search, :content)
end