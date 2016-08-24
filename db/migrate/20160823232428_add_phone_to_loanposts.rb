class AddPhoneToLoanposts < ActiveRecord::Migration
  def change
  	add_column :loanposts, :phone, :string
  end
end
