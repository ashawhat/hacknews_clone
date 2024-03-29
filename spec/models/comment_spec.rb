require 'spec_helper'

describe Comment do
  it { should belong_to :post }
  it { should validate_presence_of :comment }
  it { should validate_presence_of :post_id }
end
