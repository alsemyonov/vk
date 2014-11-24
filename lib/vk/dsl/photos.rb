require 'vk/exceptions'

module Vk
  module DSL
    module Photos
      # @param [String] owner_id
      # @param [Hash] options
      # @option options :offset [Fixnum] offset for loaded countries
      # @option options :count [Fixnum] (100) amount of countries to load
      def get_albums(owner_id, options = {})
        options[:owner_id] = owner_id
        options[:need_system] = !!options[:need_system] ? 1 : 0 if options[:need_system]
        options[:photo_sizes] = !!options[:photo_sizes] ? 1 : 0 if options[:photo_sizes]
        options[:need_covers] = !!options[:need_covers] ? 1 : 0 if options[:need_covers]
        options[:album_ids] = Array(options[:album_ids]).map(&:to_s).join(',') if options[:album_ids]
        Vk::Result.new('photos.getAlbums', Vk::Album, options)
      end
    end
  end
end
