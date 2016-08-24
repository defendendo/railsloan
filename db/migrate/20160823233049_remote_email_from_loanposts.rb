class RemoteEmailFromLoanposts < ActiveRecord::Migration
  def change
  	remove_column :loanposts, :email
  end
end
