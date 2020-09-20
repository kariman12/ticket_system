class TicketController < ApplicationController
  def req

  end

  def create
    ticket_num = params[:ticketNum].to_i
    for i in 1..ticket_num
      @ticket = Ticket.new(status:"配布待ち", request_dates:"2020/09/01", get_dates:"", sold_dates:"")
      @ticket.save
    end
    redirect_to("/mypage")
  end

  def mypage
    @tickets = Ticket.all()
  end
end
