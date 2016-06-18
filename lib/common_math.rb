require_relative '../ext/common_math/common_math'
require 'common_math/rb_math'
require 'benchmark'

module CommonMath
  def self.measure
    iterations = 10_000
    number = 20

    Benchmark.bm do |bm|
      bm.report('rb') do
        iterations.times { RbMath.new.fibonacci(number) }
      end

      bm.report('rb-tail') do
        iterations.times { RbMath.new.fibonacci_tail(number) }
      end

      bm.report('cr') do
        iterations.times { CrMath.new.fibonacci(number) }
      end

      bm.report('cr-tail') do
        iterations.times { CrMath.new.fibonacci_tail(number) }
      end
    end

    return
  end
end
