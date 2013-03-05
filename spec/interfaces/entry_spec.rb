require 'spec_helper'
require_relative './interface_helper'

include InterfaceHelper

describe Entry do
  context "associations" do
    it { should belong_to(:user) }
  end
end
