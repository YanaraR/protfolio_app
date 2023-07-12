class Project < ApplicationRecord
    # Aquí van las asociaciones y validaciones de tu modelo
    attr_accessor :download_url, :image_url

    def initialize(attributes = {})
      super
      @download_url = attributes[:download_url]
      @image_url = attributes[:image_url]
    end
end
  