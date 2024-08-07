class Dressmaker < ApplicationRecord
  validates :name, presence: true
  validates :max_service_quantity, presence: true, numericality: {only_integer: true, greater_than: 0}
  validates :start_working_date,
    presence: true,
    comparison: {less_than_or_equal_to: Time.zone.today}
  validates :end_working_date, comparison: {greater_than: :start_working_date}, if: -> { end_working_date.present? }

  has_many :service_orders

  scope :activated, -> { where(end_working_date: nil) }
  scope :fired, -> { where.not(end_working_date: nil) }
end
