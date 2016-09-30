# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class GroupSettings < Vk::Schema::Object
        # @return [String] Community title
        attribute :title, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Community description
        attribute :description, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Community's page domain
        attribute :address, API::Types::Coercible::String.optional.default(nil)
        # @return [API::Base::Place] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :place, Dry::Types[API::Base::Place].optional.default(nil)
        # @return [Integer] Wall settings
        attribute :wall, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Photos settings
        attribute :photos, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Video settings
        attribute :video, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Audio settings
        attribute :audio, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Docs settings
        attribute :docs, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Topics settings
        attribute :topics, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Wiki settings
        attribute :wiki, API::Types::Coercible::Int.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether the obscene filter is enabled
        attribute :obscene_filter, API::Base::BoolInt.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether the stopwords filter is enabled
        attribute :obscene_stopwords, API::Base::BoolInt.optional.default(nil)
        # @return [String] The list of stop words
        attribute :obscene_words, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Community access settings
        attribute :access, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Community subject ID
        attribute :subject, API::Types::Coercible::Int.optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :subject_list, API::Types::Coercible::Array.member(API::Groups::SubjectItem).optional.default(nil)
        # @return [String] URL of the RSS feed
        attribute :rss, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Community website
        attribute :website, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
