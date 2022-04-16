# frozen_string_literal: true

# :nodoc:
class User < ApplicationRecord; ActiveModel::Model
  attr_accessor :password, :name, :email
  VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  has_secure_password
  validates :name, presence: true, length: {maximum: 50}
  validates :password, presence: true, length: {minimum: 6}
  validates :email, presence: true, length: {maximum: 260}, format: { with:VALID_EMAIL_FORMAT }, 
  uniqueness: {case_sensitive: false}
  before_save { self.email = email.downcase }
  validates_length_of :password, minimum: 6
  validates_length_of :name, maximum: 50 
  validates_length_of :email, maximum: 260
end
