# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User do
  describe 'validations' do
    it 'valida presença do nome' do
      is_expected.to validate_presence_of(:name)
    end
    it 'valida presença do nome' do
      is_expected.to validate_presence_of(:name)
    end
  end
end
