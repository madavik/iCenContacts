class Contact < ActiveRecord::Base
  validates :Name, presence: true,
                      length: { minimum: 1 }
  validates :Email, presence: true
  validates :Phone, presence: true,
                      length: { minimum: 5 }
  validates :Address, presence: true,
                      length: { minimum: 5 }
  attr_accessible :Address, :Email, :Name, :Phone
end
