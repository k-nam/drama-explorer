class CreateUserIps < ActiveRecord::Migration[5.1]
  def change
    create_table :user_ips do |t|
      t.string :ip
      t.decimal :num_total_view

      t.timestamps
    end
  end
end
