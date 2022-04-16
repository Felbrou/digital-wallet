# frozen_string_literal: true

require "rails_helper"

RSpec.describe User, type: :model do # method rspec for User class models/concerns/user.rb
  describe "validations" do
    context "presence" do
      it { is_expected.to validate_presence_of(:name) }
      it { is_expected.to validate_presence_of(:password) }
      it { is_expected.to validate_presence_of(:email) }
    end

    context "lenght" do
      it { is_expected.to validate_length_of(:password).is_at_least(6) }
      it { is_expected.to validate_length_of(:name).is_at_most(50) }
      it { is_expected.to validate_length_of(:email).is_at_most(260) }
    end

    context "uniqueness" do
      # TODO: validate uniqueness of email
    end
  end
end
