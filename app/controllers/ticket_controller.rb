class TicketController < ApplicationController

  before_action :authenticate_user, {only: [:req, :create, :update, :destroy, :mypage]}

  def req

  end

  def create
    ticket_num = params[:ticketNum].to_i
    for i in 1..ticket_num
      @ticket = Ticket.new(status:"配布待ち", request_dates:Date.today, get_dates:"", sold_dates:"", user_id:@current_user.id)
      @ticket.save
    end
    redirect_to("/mypage")
  end

  def update
    @ticket = Ticket.find_by(id: params[:id])
    @ticket.status = "販売完了"
    @ticket.sold_dates = Date.today
    @ticket.save
    redirect_to("/mypage")
  end

  def destroy
    @ticket = Ticket.find_by(id: params[:id])
    @ticket.destroy
    flash[:notice] = "1枚のチケット請求を取り消しました"
    redirect_to("/mypage")
  end

  def mypage
    @tickets = Ticket.where(user_id: @current_user.id)
    @sold_tickets = Ticket.where(user_id: @current_user.id, status: "販売完了")
  end
end
