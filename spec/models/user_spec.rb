# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User do
  describe 'validations' do
    it 'validate_presence_of_name' do
      is_expected.to validate_presence_of_name(:name)
    end
    it 'validate_presence_of_password' do
      is_expected.to validate_presence_of(:password)
    end
  end
end
