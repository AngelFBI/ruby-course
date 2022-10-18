# frozen_string_literal: true

def bonus(days)
  bonus = 0
  days -= 32
  if days.positive?
    if days <= 8
      bonus += days * 365
    else
      bonus += 8 * 365
      days -= 8
      if days <= 8
        bonus += days * 525
      else
        bonus += 8 * 525
        days -= 8
        bonus += days * 625
      end
    end
  end
  bonus
end

puts bonus(44)
