# frozen_string_literal: true

class Album < ApplicationRecord
  belongs_to :artist, primary_key: 'ArtistId', foreign_key: 'ArtistId'

  has_many :tracks, primary_key: 'AlbumId', foreign_key: 'AlbumId'
end
