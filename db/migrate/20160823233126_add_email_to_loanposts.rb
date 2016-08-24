class AddEmailToLoanposts < ActiveRecord::Migration
  def change
  	add_column :loanposts, :email, :string
  end
end
