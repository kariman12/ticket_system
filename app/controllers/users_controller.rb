class UsersController < ApplicationController

  before_action :forbid_login_user, {only: [:new, :create, :login_form, :login]}

  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:userName], generation: params[:generation], part: params[:part], password: params[:password])
    if @user.save
      flash[:notice] = "ユーザ登録が完了しました"
      redirect_to("/login")
    else
      render("/users/new")
    end
  end

  def login_form
    @user = User.new
  end

  def login
    @user = User.find_by( name: params[:userName],
                          part: params[:part],
                          generation: params[:generation],
                          password: params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/top")
    else
      @error_message = "入力が正しくありません"
      render("users/login_form")
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/login")
  end

end
