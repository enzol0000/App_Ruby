class Player < ApplicationRecord
  belongs_to :club

  def to_s
    club
  end
end
