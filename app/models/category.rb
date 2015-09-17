class Category < ActiveRecord::Base
  belongs_to :kid
  belongs_to :user
  has_many :websites
end
