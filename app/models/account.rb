class Account < ApplicationRecord
  belongs_to :user
  belongs_to :bank
  has_many :movements

  validates :user, presence: true
  validates :bank, presence: true
  validates :number, presence: true
  validates :name, presence: true
  validates :account_type, presence: true

  enum :account_type, [ :cash, :debit_card, :credit_card, :savings ]
end
