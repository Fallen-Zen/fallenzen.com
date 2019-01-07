class AddAttachmentAttachmentToWorks < ActiveRecord::Migration
  def self.up
    change_table :works do |t|
      t.attachment :attachment
    end
  end

  def self.down
    drop_attached_file :works, :attachment
  end
end
