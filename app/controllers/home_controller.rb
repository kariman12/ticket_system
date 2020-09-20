class HomeController < ApplicationController

  before_action :authenticate_user, {only: [:top]}
  before_action :forbid_login_user, {only: [:about]}

  def top
  end

  def about
  end
end
