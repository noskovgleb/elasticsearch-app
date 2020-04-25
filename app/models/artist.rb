# frozen_string_literal: true

class Artist < ApplicationRecord
  has_many :album, primary_key: 'ArtistId', foreign_key: 'ArtistId'
end
