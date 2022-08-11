module WeboTrack
  class Webouser < ApplicationRecord
    belongs_to :asset, optional: true
  end
end
