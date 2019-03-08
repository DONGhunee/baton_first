class MainController < ApplicationController
  def index
  end
  
  def yang
  end
  
  def place
    
    @p = Place.new
    @p.content = params[:place]
    @p.save
    redirect_to '/'
  end
  
  
  def back
    redirect_to :back
  end
 
  def pick
    @pi = Pick.new
    @pi.post_id_id = params[:post_id]
    @pi.user_id_id = current_user.id
    @pi.save
    
    redirect_to '/'

  end
  
  def search
    @all = Post.all
    #pagination
    # @all = Post.page params[:page]
    # 검색 기능
    @search = Post.where('location LIKE :search',search: "%#{params[:place_search]}%").first
    @search_all = Post.where('location LIKE :search',search: "%#{params[:place_search]}%")
    # @search_all = Post.page params[:page]
    
    @something = params[:place_search]
  end
  
  def create
    Post.create(title: params[:title], content: params[:content], image: params[:image])
    redirect_to :back
  end
  
  def test
    @all = Post.all
  end
  
  def my_page
    @mypost = Post.where(:user_id => current_user.id)
    @pick = Pick.where(:user_id_id => current_user.id)
    @user = User.where(:id => current_user.id)
    
   
    
  end

end
