class AddAttachmentPhotoToSailboats < ActiveRecord::Migration
  def self.up
    change_table :sailboats do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :sailboats, :photo
  end
end
