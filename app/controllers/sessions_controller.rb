class SessionsController < ApplicationController
  def new
  end
  
  def create
    if user = User.find_by(email: params[:email])
      user = User.find_by(email: params[:email])
    elsif user = User.find_by(nickname: params[:email])
      user = User.find_by(nickname: params[:email])
    else
      user = nil
    end
    
    ## user = User.find_by(email: params[:email]) || User.find_by(nickname: params[:email])
    
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to contents_path
      #로그인이 성공
    else
      #로그인 실패
      flash[:alert] = '아이디나 비밀번호가 잘못되었습니다.'
      render 'new'
    end
  end
  
  def destroy
    session.delete(:user_id)
    @current_user = nil
    
    redirect_to contents_path
  end
end
