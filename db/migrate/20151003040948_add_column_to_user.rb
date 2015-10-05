class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :lname, :string, after: :fname
    
  end
end
