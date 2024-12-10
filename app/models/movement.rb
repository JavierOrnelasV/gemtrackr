class Movement < ApplicationRecord
  belongs_to :account

  validates :amount, presence: true
  validates :category, presence: true

  enum type: {
    income: 1,
    expense: 2
  }

  enum category: {
    salary: 1,
    rent: 2,
    food: 3,
    transport: 4,
    entertainment: 5,
    other: 6
  }
end
