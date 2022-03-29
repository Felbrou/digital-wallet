# frozen_string_literal: true

class User < ApplicationRecord::Base
  has_secure_password
end
