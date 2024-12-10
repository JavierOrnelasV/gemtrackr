class Account < ApplicationRecord
  belongs_to :user
  belongs_to :bank

  validates :user, presence: true
  validates :bank, presence: true
  validates :number, presence: true
  validates :name, presence: true
  validates :type, presence: true

  enum type: [ :cash, :debit_card, :credit_card, :savings ]
end
