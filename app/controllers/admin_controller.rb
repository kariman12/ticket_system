class AdminController < ApplicationController

  before_action :admin_user

  def distribute
    @tickets = Ticket.all
    @users = []
    for t in @tickets
      user = User.find_by(id: t.user_id)
      @users.append(user.name)
    end
  end

  def update
    @ticket = Ticket.find_by(id: params[:id])
    @ticket.status = "配布済"
    @ticket.get_dates = Date.today
    @ticket.save
    redirect_to("/admin/distribute")
  end

  def users
    @users = User.all
    @request_tickets = []
    @distribution_tickets = []
    @sold_tickets = []
    for u in @users
      @request_tickets.append(Ticket.where(user_id: u.id, status: "配布待ち").count)
      @distribution_tickets.append(Ticket.where(user_id: u.id, status: "配布済").count)
      @sold_tickets.append(Ticket.where(user_id: u.id, status: "販売完了").count)
    end
  end

  private
    def admin_user
      redirect_to("/top") unless @current_user.admin?
    end
end
