class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :status
      t.string :request_dates
      t.string :get_dates
      t.string :sold_dates

      t.timestamps
    end
  end
end
