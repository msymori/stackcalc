class UsersController < ApplicationController
  before_action :require_user_logged_in, only: [:index, :show]
  
  def index
#    @users = User.all
  end

  def show
#    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      flash[:success] = 'ユーザーを登録しました。'
      redirect_to login_path
    else
      flash.now[:danger] = 'ユーザーの登録に失敗しました。'
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
