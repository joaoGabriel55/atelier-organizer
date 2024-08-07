class Customer < ApplicationRecord
  include PgSearch::Model

  validates :name, presence: true
  validates :phone_number, presence: true
  validates :address, presence: true, associated: true

  has_one :address, dependent: :destroy
  has_many :service_orders

  accepts_nested_attributes_for :address

  scope :activated, -> { where(deleted_at: nil) }

  pg_search_scope :search_by_name,
    against: :name,
    using: {
      tsearch: {prefix: true}
    }
end
