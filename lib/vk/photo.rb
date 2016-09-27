# frozen_string_literal: true
require 'vk/base'

module Vk
  class Photo < Base
    self.fields = [
      :id, :album_id, :owner_id, :user_id, :photo_75, :photo_130, :photo_604, :photo_807, :photo_1280, :photo_2560,
      :width, :height, :text, :date
    ]

    def uploaded_at
      @uploaded_at ||= Time.at(read_attribute(:date))
    end

    def to_s
      text.to_s
    end

    # @return [75, 130, 604, 807, 1280, 2560] maximum available picture size
    def max_photo_size
      @max_photo_size ||=
        attributes.keys.grep(/photo_/).inject(75) do |maximum, size|
          real_size = size.to_s.gsub(/\Aphoto_/, '').to_i
          real_size > maximum ? real_size : maximum
        end
    end

    # @return [String] url to photo with maximum available size
    def max_photo
      public_send("photo_#{max_photo_size}")
    end

    protected

    def load_data(options = {})
      @attributes = @attributes.merge(loader.get_group_by_id(id, options)) unless @attributes.size > 1
    end
  end
end
