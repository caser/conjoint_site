class ChangeFullFactorialDesignColumnName < ActiveRecord::Migration
  def change
    rename_column :experiments, :full_factorial_design, :design_matrix
  end
end
