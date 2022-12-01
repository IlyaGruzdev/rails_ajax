class Palindrom < ApplicationRecord
  validates :value, presence: true, numericality: { greater_than_or_equal_to: 2, less_than: 10000 }

  before_create :set_total!

  private

  def set_total!
    self.total = ((1..value.to_i).select { |el| (el**2).to_s.reverse.to_i == el**2}).to_s
  end
end
