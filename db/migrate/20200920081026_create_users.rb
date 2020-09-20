class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :generation
      t.string :part

      t.timestamps
    end
  end
end
