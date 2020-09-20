class TicketController < ApplicationController
  def req

  end

  def mypage
    @tickets = Ticket.all()
  end
end
