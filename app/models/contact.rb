class Contact < ActiveRecord::Base
  validates :Name, presence: true, length: { minimum: 1, maximum: 30 }
  validates :Email, presence: true, length: { maximum: 30 },
            format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create,
                    message: "is not real!" }
  validates :Phone, presence: true, format: { with: /^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$/i, on: :create},
                  length: { maximum: 30 }
  validates :Address, length: { maximum: 30 }
  attr_accessible :Address, :Email, :Name, :Phone
end
