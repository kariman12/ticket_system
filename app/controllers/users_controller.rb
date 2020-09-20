class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:userName], generation: params[:generation], part: params[:part])
    if @user.save
      flash[:notice] = "ユーザ登録が完了しました"
      redirect_to("/")
    else
      render("/users/new")
    end
  end
end
