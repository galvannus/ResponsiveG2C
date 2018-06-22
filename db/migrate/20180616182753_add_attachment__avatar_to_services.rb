class AddAttachmentAvatarToServices < ActiveRecord::Migration[5.1]
  def change
  	add_attachment :services, :avatar
  end
end
