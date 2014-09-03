class AddTitleToFactors < ActiveRecord::Migration
  def change
    add_column :factors, :title, :string
  end
end
