class AddTitleToSurvey < ActiveRecord::Migration
  def change
    add_column :surveys, :title, :string
  end
end
