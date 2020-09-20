class HomeController < ApplicationController

  before_action :authenticate_user, {only: [:top]}
  before_action :forbid_login_user, {only: [:about]}

  def top
    @all_tickets = Ticket.all.count
    @request_tickets = Ticket.where(status: "配布待ち").count
    @get_tickets = Ticket.where(status: "配布済").count
    @sold_tickets = Ticket.where(status: "販売完了").count
  end

  def about
  end
end
