class RemotePhoneFromLoanposts < ActiveRecord::Migration
  def change
  	remove_column :loanposts, :phone
  end
end
