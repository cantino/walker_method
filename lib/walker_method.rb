require "walker_method/version"

class WalkerMethod
  attr_accessor :prob, :inx, :keys, :weights, :sumw, :length

  def initialize(keys, weights)
    self.keys = keys
    self.weights = weights
    self.sumw = weights.reduce(&:+).to_f
    self.prob = []
    self.inx = []
    self.length = weights.length
    short = []
    long = []
    weights.each do |w|
      inx << -1
      prob << w * length / sumw
    end

    prob.each.with_index do |p, index|
      short << index if p < 1
      long << index if p > 1
    end

    while short.length > 0 && long.length > 0
      j = short.pop
      k = long[-1]
      inx[j] = k
      prob[k] -= (1 - prob[j])
      if prob[k] < 1
        short << k
        long.pop
      end
    end

    def random
      u = rand
      j = (rand * length).to_i
      if u <= prob[j]
        keys[j]
      else
        keys[inx[j]]
      end
    end
  end
end

