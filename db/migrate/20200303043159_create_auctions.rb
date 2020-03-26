class CreateAuctions < ActiveRecord::Migration[5.2]
  def change
    create_table :auctions do |t|
      t.string    :title
      t.string    :make
      t.float     :starting_price, default: 10.0
      t.float     :realized_price, default: 0.00
      t.integer   :user_id

      t.timestamps
    end
  end
end
