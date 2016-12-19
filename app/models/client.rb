class Client < ActiveRecord::Base
  include Reusable
  before_validation :remove_white_spaces, only: [:first_name, :last_name, :email]
  has_many :dogs
  has_many :donations
  has_one :location, as: :localizable, dependent: :destroy

  # EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
  validates :first_name, presence: true, uniqueness: {scope: :last_name}
  validates :last_name, presence: true, uniqueness: {scope: :first_name}
  validates :email, presence: true,
                    uniqueness: true,
                    # format: {with: EMAIL_REGEX},
                    confirmation: true
  validates :phone1, presence: true
  

  accepts_nested_attributes_for :dogs
  accepts_nested_attributes_for :donations
  accepts_nested_attributes_for :location

  def fullname
    "#{self.first_name.capitalize} #{self.last_name.capitalize}"
  end

end
