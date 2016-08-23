class CreateLoanposts < ActiveRecord::Migration
  def change
    create_table :loanposts do |t|
      t.string :name
      t.string :email
      t.string :gender
      t.integer :phone
      t.string :occupation
      t.string :income
      t.string :homephone
      t.string :facebook

      t.timestamps null: false
    end
  end
end
