require 'spec_helper'

describe Speaker do
  it { should validate_presence_of :name }
  it { should have_and_belong_to_many :events }
  it { should have_many(:talks).dependent(:destroy) }
  it { should allow_value("jonh+doe@example.org").for(:email) }
end
