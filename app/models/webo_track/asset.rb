module WeboTrack
  class Asset < ApplicationRecord
    has_one :webouser
  end
end
