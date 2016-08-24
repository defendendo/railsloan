class AddAttachmentImage3ToLoanposts < ActiveRecord::Migration
  def self.up
    change_table :loanposts do |t|
      t.attachment :image3
    end
  end

  def self.down
    remove_attachment :loanposts, :image3
  end
end
