# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Groups
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GroupSettings < Vk::Schema::Model
          # @return [String] Community title
          attribute :title, Schema::Types::Coercible::String.optional
          # @return [String] Community description
          attribute :description, Schema::Types::Coercible::String.optional
          # @return [String] Community's page domain
          attribute :address, Schema::Types::Coercible::String.optional
          # @return [Place] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :place, Dry::Types[Model::Base::Place].optional
          # @return [Integer] Wall settings
          attribute :wall, Schema::Types::Coercible::Int.optional
          # @return [Integer] Photos settings
          attribute :photos, Schema::Types::Coercible::Int.optional
          # @return [Integer] Video settings
          attribute :video, Schema::Types::Coercible::Int.optional
          # @return [Integer] Audio settings
          attribute :audio, Schema::Types::Coercible::Int.optional
          # @return [Integer] Docs settings
          attribute :docs, Schema::Types::Coercible::Int.optional
          # @return [Integer] Topics settings
          attribute :topics, Schema::Types::Coercible::Int.optional
          # @return [Integer] Wiki settings
          attribute :wiki, Schema::Types::Coercible::Int.optional
          # @return [BaseBoolInt] Information whether the obscene filter is enabled
          attribute :obscene_filter, Schema::Types::BaseBoolInt.optional
          # @return [BaseBoolInt] Information whether the stopwords filter is enabled
          attribute :obscene_stopwords, Schema::Types::BaseBoolInt.optional
          # @return [String] The list of stop words
          attribute :obscene_words, Schema::Types::Coercible::String.optional
          # @return [Integer] Community access settings
          attribute :access, Schema::Types::Coercible::Int.optional
          # @return [Integer] Community subject ID
          attribute :subject, Schema::Types::Coercible::Int.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :subject_list, Schema::Types::Coercible::Array.member(Model::Groups::SubjectItem).optional
          # @return [String] URL of the RSS feed
          attribute :rss, Schema::Types::Coercible::String.optional
          # @return [String] Community website
          attribute :website, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
