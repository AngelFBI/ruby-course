# frozen_string_literal: true

class Throw
  GRAVITY = 9.81

  def initialize(speed, angle)
    @speed = speed
    @angle = angle * Math::PI / 180
  end

  def to_s
    "max height: #{max_height.round}, max range: #{max_range.round}"
  end

  private

  def speed2
    @speed**2
  end

  def sin2
    Math.sin(@angle)**2
  end

  def max_height
    (speed2 * sin2) / (GRAVITY * 2)
  end

  def max_range
    (speed2 * Math.sin(@angle * 2)) / GRAVITY
  end
end

throw1 = Throw.new(10, 45)

puts throw1
