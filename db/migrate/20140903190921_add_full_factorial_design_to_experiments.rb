class AddFullFactorialDesignToExperiments < ActiveRecord::Migration
  def change
    add_column :experiments, :full_factorial_design, :text
  end
end
