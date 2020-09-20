class TicketController < ApplicationController
  def req

  end

  def create
    
  end

  def mypage
    @tickets = Ticket.all()
  end
end
