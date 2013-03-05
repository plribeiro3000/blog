require 'spec_helper'
require 'shoulda-matchers'

describe User do
  context "associations" do
    it { should have_many(:entries) }
  end
end
