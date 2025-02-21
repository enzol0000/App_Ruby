json.extract! player, :id, :name, :image, :club_id, :height, :draft, :post, :min, :ppg, :reb, :blk, :stl, :created_at, :updated_at
json.url player_url(player, format: :json)
