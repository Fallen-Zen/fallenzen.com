class AddAttachmentAttachmentToNews < ActiveRecord::Migration
  def self.up
    change_table :news do |t|
      t.attachment :attachment
    end
  end

  def self.down
    drop_attached_file :news, :attachment
  end
end
