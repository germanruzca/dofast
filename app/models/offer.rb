class Offer < ApplicationRecord
  belongs_to :offer_type
  belongs_to :status
  belongs_to :user
  belongs_to :tag

  has_rich_text :description
end
