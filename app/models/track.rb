# frozen_string_literal: true

class Track < ApplicationRecord
  belongs_to :album, primary_key: 'AlbumId', foreign_key: 'AlbumId'
end