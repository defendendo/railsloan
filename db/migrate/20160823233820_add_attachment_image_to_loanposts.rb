class AddAttachmentImageToLoanposts < ActiveRecord::Migration
  def self.up
    change_table :loanposts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :loanposts, :image
  end
end
