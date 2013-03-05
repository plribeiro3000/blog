require 'spec_helper'
require_relative './interface_helper'

include InterfaceHelper

describe User do
  context "associations" do
    it { should have_many(:entries) }
  end
end
