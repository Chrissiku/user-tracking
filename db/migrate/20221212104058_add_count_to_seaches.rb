class AddCountToSeaches < ActiveRecord::Migration[7.0]
  def change
    add_column :searches, :count, :integer, default: 1
  end
end
