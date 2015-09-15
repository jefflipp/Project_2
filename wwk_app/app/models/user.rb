class User < ActiveRecord::Base
	has_many :kids
	has_secure_password
end
