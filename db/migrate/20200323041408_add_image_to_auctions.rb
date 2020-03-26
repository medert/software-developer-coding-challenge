class AddImageToAuctions < ActiveRecord::Migration[5.2]
  def change
    add_column :auctions, :image, :text
  end
end
