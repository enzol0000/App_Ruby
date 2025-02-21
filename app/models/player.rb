class Player < ApplicationRecord
  belongs_to :club

  def to_s
    player.club
  end
end
