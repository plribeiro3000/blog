require 'spec_helper'
require 'shoulda-matchers'

describe Entry do
  context "associations" do
    it { should belong_to(:user) }
  end
end
