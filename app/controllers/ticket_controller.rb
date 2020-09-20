class TicketController < ApplicationController
  def req

  end

  def mypage
    @tickets = ["販売完了✨", "配布済🌟", "配布待ち🐰"]
  end
end
