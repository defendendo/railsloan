class AddAttachmentImage2ToLoanposts < ActiveRecord::Migration
  def self.up
    change_table :loanposts do |t|
      t.attachment :image2
    end
  end

  def self.down
    remove_attachment :loanposts, :image2
  end
end
