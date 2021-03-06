class Donator < ActiveRecord::Base
  include Reusable
  has_many :donations
  has_one :location, as: :localizable, dependent: :destroy
  before_validation :remove_white_spaces, only: [:first_name, :last_name, :email]

  # EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
  validates :first_name, presence: true, uniqueness: {scope: :last_name}
  validates :last_name, presence: true, uniqueness: {scope: :first_name}
  validates :email, presence: true,
                    uniqueness: true,
                    # format: {with: EMAIL_REGEX},
                    confirmation: true
  validates :phone1, presence: true

  accepts_nested_attributes_for :location

  def self.initialize_or_update attributes
    Reusable.init_or_update Donator, attributes
  end
  
end
