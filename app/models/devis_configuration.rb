class DevisConfiguration < ApplicationRecord
  has_many :musics_ratios, inverse_of: :devis_configuration
  accepts_nested_attributes_for :musics_ratios, reject_if: :all_blank, allow_destroy: true
end
