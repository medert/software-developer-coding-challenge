class CreateAuctions < ActiveRecord::Migration[5.2]
  def change
    create_table :auctions do |t|
      t.string    :title
      t.string    :make
      t.datetime  :end_date
      t.float     :current_price, default: 10.0
      t.integer   :user_id

      t.timestamps
    end
  end
end
