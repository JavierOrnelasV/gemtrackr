class Movement < ApplicationRecord
  belongs_to :account

  validates :amount, presence: true
  validates :category, presence: true

  enum :movement_type, {
    income: 1,
    expense: 2
  }

  enum :category, {
    salary: 1,
    bonus: 2,
    sell: 3,
    food: 101,
    drinks: 102,
    dessert: 103,
    expenses: 104,
    transportation: 105,
    housing: 106,
    electronics: 107,
    medical: 108,
    shopping: 109,
    entertainment: 110,
    movies: 111,
    music: 112,
    sports: 113,
    games: 114,
    videoganes: 115,
    books: 116,
    education: 117,
    travel: 118,
    vacation: 119,
    gifts: 120,
    donations: 121,
    investments: 122,
    savings: 123,
    other: 999
  }

  def self.income_categories
    categories.select { |k, v| v / 100 == 0 }
  end

  def self.expense_categories
    categories.select { |k, v| v / 100 != 0 }
  end
end
