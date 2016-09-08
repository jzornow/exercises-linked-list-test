require 'benchmark'
require_relative 'lib/list'

def real_time_for
  Benchmark.measure{ yield }.real
end

list = List.new(*(0..50000))

# repeat a few times, then average together for a better metric
run_ratios = (1..500).map do |_index|
  slow_time = real_time_for { list.slow_middle }
  fast_time = real_time_for { list.fast_middle }
  fast_time/slow_time
end

average_run_ratio = run_ratios.inject(0, :+)/run_ratios.length

puts "---\nFast Middle took only #{(average_run_ratio * 100).round(2)}\% of the time " \
     "required by Slow Middle"
