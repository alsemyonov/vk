# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Returns statistics of performance indicators for ads, campaigns, clients or the whole account.
        class GetStatistics < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.getStatistics'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @option arguments [String] :ids_type Type of requested objects listed in 'ids' parameter:; *ad — ads;; *campaign — campaigns;; *client — clients;; *office — account.;
          #   @option arguments [String] :ids IDs requested ads, campaigns, clients or account, separated with a comma, depending on the value set in 'ids_type'. Maximum 2000 objects.
          #   @option arguments [String] :period Data grouping by dates:; *day — statistics by days;; *month — statistics by months;; *overall — overall statistics.; 'date_from' and 'date_to' parameters set temporary limits.
          #   @option arguments [String] :date_from Date to show statistics from. For different value of 'period' different date format is used:; *day: YYYY-MM-DD, example: 2011-09-27 — September 27, 2011; **0 — day it was created on;; *month: YYYY-MM, example: 2011-09 — September 2011; **0 — month it was created in;; *overall: 0.;
          #   @option arguments [String] :date_to Date to show statistics to. For different value of 'period' different date format is used:; *day: YYYY-MM-DD, example: 2011-09-27 — September 27, 2011; **0 — current day;; *month: YYYY-MM, example: 2011-09 — September 2011; **0 — current month;; *overall: 0.
          #   @return [Ads::Methods::GetStatistics]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int
          # @return [String] Type of requested objects listed in 'ids' parameter:; *ad — ads;; *campaign — campaigns;; *client — clients;; *office — account.;
          attribute :ids_type, API::Types::Coercible::String
          # @return [String] IDs requested ads, campaigns, clients or account, separated with a comma, depending on the value set in 'ids_type'. Maximum 2000 objects.
          attribute :ids, API::Types::Coercible::String
          # @return [String] Data grouping by dates:; *day — statistics by days;; *month — statistics by months;; *overall — overall statistics.; 'date_from' and 'date_to' parameters set temporary limits.
          attribute :period, API::Types::Coercible::String
          # @return [String] Date to show statistics from. For different value of 'period' different date format is used:; *day: YYYY-MM-DD, example: 2011-09-27 — September 27, 2011; **0 — day it was created on;; *month: YYYY-MM, example: 2011-09 — September 2011; **0 — month it was created in;; *overall: 0.;
          attribute :date_from, API::Types::Coercible::String
          # @return [String] Date to show statistics to. For different value of 'period' different date format is used:; *day: YYYY-MM-DD, example: 2011-09-27 — September 27, 2011; **0 — current day;; *month: YYYY-MM, example: 2011-09 — September 2011; **0 — current month;; *overall: 0.
          attribute :date_to, API::Types::Coercible::String
        end
      end
    end
  end
end
