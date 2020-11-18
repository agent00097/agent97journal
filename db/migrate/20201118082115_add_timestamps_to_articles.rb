class AddTimestampsToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :journals, :created_at, :datetime
    add_column :journals, :updated_at, :datetime
  end
end
