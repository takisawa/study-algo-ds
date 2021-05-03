
def show(x)
  if x == '-'
    return '-'
  end

  if x > 1000_000_000_000_000_000_000
    '-'
  else
    x.to_i
  end
end

puts "n,log2(n),sqrt(n),n*log2(n),n*sqrt(n),n^2,n^3,2^n,n!"
[1,2,3,5,10,20,50,100,1000,10_000,100_000,1_000_000,10_000_000,100_000_000,1000_000_000].each.with_index do |n, i|
  puts [
    n,
    Math.log(n, 2),
    Math.sqrt(n),
    n * Math.log(n, 2),
    n * Math.sqrt(n),
    n ** 2,
    n ** 3,
    (i < 10) ? 2 ** n : '-',
    (i < 10) ? (1..n).inject(1,:*) : '-',
  ].map {|x| show(x) }.join(',')
end
