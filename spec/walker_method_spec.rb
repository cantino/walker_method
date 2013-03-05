require 'spec_helper'
describe WalkerMethod do
  it "should work with two arrays" do
    sampler = WalkerMethod.new(%w[hello world], [8, 2])
    samples = Hash.new(0.0)
    10_000.times do
      samples[sampler.random] += 1
    end
    (samples["hello"] / samples["world"]).should be_within(0.2).of(4.0)
  end
end
