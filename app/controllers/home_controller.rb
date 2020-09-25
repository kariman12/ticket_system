class HomeController < ApplicationController

  before_action :authenticate_user, {only: [:top]}
  before_action :forbid_login_user, {only: [:about]}

  def top
    # 全チケット数の指定
    @all_tickets = 100.0
    # 請求済チケット数
    @request_tickets = Ticket.where(status: "配布待ち").count
    # 配布済チケット数
    @get_tickets = Ticket.where(status: "配布済").count
    # 販売完了済チケット数
    @sold_tickets = Ticket.where(status: "販売完了").count
    # 請求状況円グラフ
    @data_request = {'請求済' => @request_tickets + @get_tickets + @sold_tickets, '未請求' => @all_tickets - @request_tickets - @get_tickets - @sold_tickets}
    # 販売状況円グラフ
    @data_sold = {'販売完了済' => @sold_tickets, '未販売' => @all_tickets - @sold_tickets}
  end

  def about
  end
end
