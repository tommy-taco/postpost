require 'spec_helper'

describe Organization do

  before do
    @organization = Organization.new(name: "Example Group")
  end
  

  subject { @organization }

  it { should respond_to(:name) }
  it { should respond_to(:users) }

  it { should be_valid }

end