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
    # chart用
    @term_tickets = [{}, {}, {}]
    @term_tickets[0]["name"] = "請求済チケット数"
    @term_tickets[1]["name"] = "配布済チケット数"
    @term_tickets[2]["name"] = "販売済チケット数"
    @term_tickets[0]["tickets"] = Ticket.where(status: "配布待ち").or(Ticket.where(status: "配布済").or(Ticket.where(status: "販売完了")))
    @term_tickets[1]["tickets"] = Ticket.where(status: "配布済").or(Ticket.where(status: "販売完了"))
    @term_tickets[2]["tickets"] = Ticket.where(status: "販売完了")
  end

  def about
  end
end
