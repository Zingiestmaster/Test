class Simalation
  TOPICS = (0..21).to_a
  N = 1_000_000

  def call( k )
    success = 0
    N.times do
      success += 1 if sample.any?{ |e| e < k }
    end
    success.to_f / N
  end

  def sample
    TOPICS.shuffle.first( 8 )
  end
end
sumulation = Simalation.new
(1..22).each{ |k| puts '%2s: %s' % [k, sumulation.( k )] }