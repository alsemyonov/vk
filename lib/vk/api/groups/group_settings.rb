# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class GroupSettings < Vk::Schema::Object
        # @return [String] Community title
        attribute :title, API::Types::Coercible::String.optional
        # @return [String] Community description
        attribute :description, API::Types::Coercible::String.optional
        # @return [String] Community's page domain
        attribute :address, API::Types::Coercible::String.optional
        # @return [API::Base::Place] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :place, Dry::Types[API::Base::Place].optional
        # @return [Integer] Wall settings
        attribute :wall, API::Types::Coercible::Int.optional
        # @return [Integer] Photos settings
        attribute :photos, API::Types::Coercible::Int.optional
        # @return [Integer] Video settings
        attribute :video, API::Types::Coercible::Int.optional
        # @return [Integer] Audio settings
        attribute :audio, API::Types::Coercible::Int.optional
        # @return [Integer] Docs settings
        attribute :docs, API::Types::Coercible::Int.optional
        # @return [Integer] Topics settings
        attribute :topics, API::Types::Coercible::Int.optional
        # @return [Integer] Wiki settings
        attribute :wiki, API::Types::Coercible::Int.optional
        # @return [API::Base::BoolInt] Information whether the obscene filter is enabled
        attribute :obscene_filter, API::Base::BoolInt.optional
        # @return [API::Base::BoolInt] Information whether the stopwords filter is enabled
        attribute :obscene_stopwords, API::Base::BoolInt.optional
        # @return [String] The list of stop words
        attribute :obscene_words, API::Types::Coercible::String.optional
        # @return [Integer] Community access settings
        attribute :access, API::Types::Coercible::Int.optional
        # @return [Integer] Community subject ID
        attribute :subject, API::Types::Coercible::Int.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :subject_list, API::Types::Coercible::Array.member(API::Groups::SubjectItem).optional
        # @return [String] URL of the RSS feed
        attribute :rss, API::Types::Coercible::String.optional
        # @return [String] Community website
        attribute :website, API::Types::Coercible::String.optional
      end
    end
  end
end
