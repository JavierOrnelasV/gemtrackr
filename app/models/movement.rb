class Movement < ApplicationRecord
  belongs_to :account

  validates :amount, presence: true
  validates :category, presence: true

  validate :category_matches_type?

  enum :movement_type, {
    income: 1,
    expense: 2
  }, prefix: :is

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
    videogames: 115,
    books: 116,
    education: 117,
    travel: 118,
    vacation: 119,
    gifts: 120,
    donations: 121,
    investments: 122,
    savings: 123,
    other: 999
  }, suffix: true

  def self.income_categories
    categories.select { |category_name, category_value| category_value / 100 == 0 }
  end

  def self.expense_categories
    categories.select { |category_name, category_value| category_value / 100 != 0 }
  end

  def category_matches_type?
      return true if is_income? && is_income_category?

      return true if is_expense? && is_expense_category?

      errors.add(:category, "is not a valid category")
  end

  private

  def is_income_category?
    Movement.categories[category] / 100 == 0
  end

  def is_expense_category?
    Movement.categories[category] / 100 != 0
  end
end
