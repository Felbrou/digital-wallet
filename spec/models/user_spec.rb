# frozen_string_literal: true

require 'rails_helper'
  
RSpec.describe User, type: :model do  # method rspec for User class models/concerns/user.rb
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_presence_of(:email) }
    it { should have_many :orders }
  end
end
  