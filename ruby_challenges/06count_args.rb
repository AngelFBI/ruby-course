# frozen_string_literal: true

def count_args(*args, **kargs)
  args.length + kargs.length
end

puts count_args(1, 2, 3, 4, { one: 1, two: 2 }, { one: 1, two: 2 })
