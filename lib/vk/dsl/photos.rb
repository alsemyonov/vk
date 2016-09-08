require 'vk/exceptions'

module Vk
  module DSL
    module Photos
      # @param [String] owner_id
      # @param [Hash] options
      # @option options :offset [Fixnum] offset for loaded countries
      # @option options :count [Fixnum] (100) amount of countries to load
      # @return [Vk::Result<Vk::Album>]
      def get_albums(owner_id, options = {})
        options[:owner_id] = owner_id
        options[:need_system] = !!options[:need_system] ? 1 : 0 if options.key?(:need_system)
        options[:photo_sizes] = !!options[:photo_sizes] ? 1 : 0 if options.key?(:photo_sizes)
        options[:need_covers] = !!options[:need_covers] ? 1 : 0 if options.key?(:need_covers)
        options[:album_ids] = Array(options[:album_ids]).map(&:to_s).join(',') if options.key?(:album_ids)
        require 'vk/album'
        Vk::Result.new('photos.getAlbums', Vk::Album, options)
      end

      # @return [Vk::Album]
      def get_album(owner_id, album_id, options = {})
        options[:album_ids] = album_id
        get_albums(owner_id, options).all.first
      end

      # @return [Vk::Result<Vk::Photo>]
      def get_photos(owner_id, album_id, options = {})
        options[:owner_id] = owner_id
        options[:album_id] = album_id
        require 'vk/photo'
        Vk::Result.new('photos.get', Vk::Photo, options)
      end
    end
  end
end
