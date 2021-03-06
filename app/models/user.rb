class User < ActiveRecord::Base
has_secure_password
  validates(:email,    { :uniqueness   => { case_sensitive: false }})
  validates(:password, { :length       => { :minimum => 8, :maximum => 16 },
                         :presence     => true,
                         :confirmation => true }) # must enter confirmation password
end
