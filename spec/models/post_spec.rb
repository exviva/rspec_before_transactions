require 'spec_helper'

describe Post do
  it 'executes config.before within the transaction' do
    Post.count.should eq(1)
    Post.create!
    Post.count.should eq(2)
  end

  it 'executes config.before within the transaction the second time' do
    Post.count.should eq(1)
    Post.create!
    Post.count.should eq(2)
  end
end
