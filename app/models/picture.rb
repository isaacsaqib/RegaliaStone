class Picture < ActiveRecord::Base
 has_attached_file :image

  belongs_to :quarts
  belongs_to :tiles
  belongs_to :mosaics

  do_not_validate_attachment_file_type :image

end