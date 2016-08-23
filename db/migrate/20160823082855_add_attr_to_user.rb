class AddAttrToUser < ActiveRecord::Migration
  def change
  	add_column :users, :gender, :string
  	add_column :users, :name, :string
  end
end
