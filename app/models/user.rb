class User < ApplicationRecord
  belongs_to :jobs
  has_secure_password
end
