class Devi < ApplicationRecord
  has_many :specs, inverse_of: :devi
  accepts_nested_attributes_for :specs, reject_if: :all_blank, allow_destroy: true
end
