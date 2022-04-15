# frozen_string_literal: true

require 'rails_helper'
  
RSpec.describe User do  # method rspec for User class models/concerns/user.rb
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:password) }
  end
end
  