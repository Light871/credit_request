class LoanRequest < ApplicationRecord
  before_save :set_score, :set_approved

  validates :amount, :age, :gender, :salary, :history_available, presence: true
  validates :gender, inclusion: { in: %w(male female)}

  private

  def set_score
    self.score = 0

    if age >= 21 && age < 40
      self.score += 10
    elsif age >= 40
      self.score += 20
    end

    if gender == 'female'
      self.score += 10
    end

    if salary >= 20001 && salary < 40000
      self.score += 10
    elsif salary >= 40000
      self.score += 20
    end

    if history_available
      self.score += 20
    end

    if amount <= 20000
      self.score += 20
    elsif amount > 20000 && amount < 40000
      self.score += 10
    end
  end

  def set_approved
    self.approved = score >= 50
  end
end
