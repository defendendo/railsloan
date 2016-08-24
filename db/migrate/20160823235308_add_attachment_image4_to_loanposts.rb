class AddAttachmentImage4ToLoanposts < ActiveRecord::Migration
  def self.up
    change_table :loanposts do |t|
      t.attachment :image4
    end
  end

  def self.down
    remove_attachment :loanposts, :image4
  end
end
