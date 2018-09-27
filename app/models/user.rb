class User < ApplicationRecord
  before_save { self.email.downcase! }
  validates :name,presence: true, length:{ muximum: 50 }
  validates :email,presence: true, length: { muximum:255 },
                  format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                  uniqueness: { case_sensitive: false }
  has_sequre_password
end
