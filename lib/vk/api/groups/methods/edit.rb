# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Edits a community.
        class Edit < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.edit'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @option arguments [String] :title Community title.
          #   @option arguments [String] :description Community description.
          #   @option arguments [String] :screen_name Community screen name.
          #   @option arguments [Integer] :access Community type. Possible values:; *'0' – open;; *'1' – closed;; *'2' – private.
          #   @option arguments [String] :website Website that will be displayed in the community information field.
          #   @option arguments [String] :subject Community subject. Possible values: ; *'1' – auto/moto;; *'2' –  activity holidays;; *'3' – business;; *'4' – pets;; *'5' – health;; *'6' – dating and communication; ; *'7' – games;; *'8' – IT (computers and software);; *'9' – cinema;; *'10' – beauty and fashion;; *'11' – cooking;; *'12' – art and culture;; *'13' – literature;; *'14' – mobile services and internet;; *'15' – music;; *'16' – science and technology;; *'17' – real estate;; *'18' – news and media;; *'19' – security;; *'20' – education;; *'21' – home and renovations;; *'22' – politics;; *'23' – food;; *'24' – industry;; *'25' – travel;; *'26' – work;; *'27' – entertainment;; *'28' – religion;; *'29' – family;; *'30' – sports;; *'31' – insurance;; *'32' – television;; *'33' – goods and services;; *'34' – hobbies;; *'35' – finance;; *'36' – photo;; *'37' – esoterics;; *'38' – electronics and appliances;; *'39' – erotic;; *'40' – humor;; *'41' – society, humanities;; *'42' – design and graphics.
          #   @option arguments [String] :email Organizer email (for events).
          #   @option arguments [String] :phone Organizer phone number (for events).
          #   @option arguments [String] :rss RSS feed address for import (available only to communities with special permission. Contact vk.com/support to get it.
          #   @option arguments [Integer] :event_start_date Event start date in Unixtime format.
          #   @option arguments [Integer] :event_finish_date Event finish date in Unixtime format.
          #   @option arguments [Integer] :event_group_id Organizer community ID (for events only).
          #   @option arguments [Integer] :public_category Public page category ID.
          #   @option arguments [Integer] :public_subcategory Public page subcategory ID.
          #   @option arguments [String] :public_date Founding date of a company or organization owning the community in "dd.mm.YYYY" format.
          #   @option arguments [Integer] :wall Wall settings. Possible values:; *'0' – disabled;; *'1' – open;; *'2' – limited (groups and events only);; *'3' – closed (groups and events only).;
          #   @option arguments [Integer] :topics Board topics settings. Possbile values: ; *'0' – disabled;; *'1' – open;; *'2' – limited (for groups and events only).;
          #   @option arguments [Integer] :photos Photos settings. Possible values:; *'0' – disabled;; *'1' – open;; *'2' – limited (for groups and events only).;
          #   @option arguments [Integer] :video Video settings. Possible values:; *'0' – disabled;; *'1' – open;; *'2' – limited (for groups and events only).
          #   @option arguments [Integer] :audio Audio settings. Possible values:; *'0' – disabled;; *'1' – open;; *'2' – limited (for groups and events only).
          #   @option arguments [Boolean] :links Links settings (for public pages only). Possible values:; *'0' – disabled;; *'1' – enabled.;
          #   @option arguments [Boolean] :events Events settings (for public pages only). Possible values:; *'0' – disabled;; *'1' – enabled.;
          #   @option arguments [Boolean] :places Places settings (for public pages only). Possible values:; *'0' – disabled;; *'1' – enabled.;
          #   @option arguments [Boolean] :contacts Contacts settings (for public pages only). Possible values:; *'0' – disabled;; *'1' – enabled.;
          #   @option arguments [Integer] :docs Documents settings. Possible values:; *'0' – disabled;; *'1' – open;; *'2' – limited (for groups and events only).
          #   @option arguments [Integer] :wiki Wiki pages settings. Possible values:; *'0' – disabled;; *'1' – open;; *'2' – limited (for groups and events only).
          #   @option arguments [Boolean] :messages Community messages. Possible values:; *'0' — disabled;; *'1' — enabled.
          #   @option arguments [Integer] :age_limits Community age limits. Possible values:; *'1' — no limits;; *'2' — 16+;; *'3' — 18+.
          #   @option arguments [Boolean] :market Market settings. Possible values:; *'0' – disabled;; *'1' – enabled.
          #   @option arguments [Boolean] :market_comments market comments settings. Possible values:; *'0' – disabled;; *'1' – enabled.
          #   @option arguments [Array] :market_country Market delivery countries.
          #   @option arguments [Array] :market_city Market delivery cities (if only one country is specified).
          #   @option arguments [Integer] :market_currency Market currency settings. Possbile values: ; *'643' – Russian rubles;; *'980' – Ukrainian hryvnia;; *'398' – Kazakh tenge;; *'978' – Euro;; *'840' – US dollars
          #   @option arguments [Integer] :market_contact Seller contact for market.; Set '0' for community messages.
          #   @option arguments [Integer] :market_wiki ID of a wiki page with market description.
          #   @option arguments [Boolean] :obscene_filter Obscene expressions filter in comments. Possible values: ; *'0' – disabled;; *'1' – enabled.
          #   @option arguments [Boolean] :obscene_stopwords Stopwords filter in comments. Possible values: ; *'0' – disabled;; *'1' – enabled.
          #   @option arguments [Array] :obscene_words Keywords for stopwords filter.
          #   @return [Groups::Methods::Edit]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [String] Community title.
          attribute :title, API::Types::Coercible::String.optional
          # @return [String] Community description.
          attribute :description, API::Types::Coercible::String.optional
          # @return [String] Community screen name.
          attribute :screen_name, API::Types::Coercible::String.optional
          # @return [Integer] Community type. Possible values:; *'0' – open;; *'1' – closed;; *'2' – private.
          attribute :access, API::Types::Coercible::Int.optional
          # @return [String] Website that will be displayed in the community information field.
          attribute :website, API::Types::Coercible::String.optional
          # @return [String] Community subject. Possible values: ; *'1' – auto/moto;; *'2' –  activity holidays;; *'3' – business;; *'4' – pets;; *'5' – health;; *'6' – dating and communication; ; *'7' – games;; *'8' – IT (computers and software);; *'9' – cinema;; *'10' – beauty and fashion;; *'11' – cooking;; *'12' – art and culture;; *'13' – literature;; *'14' – mobile services and internet;; *'15' – music;; *'16' – science and technology;; *'17' – real estate;; *'18' – news and media;; *'19' – security;; *'20' – education;; *'21' – home and renovations;; *'22' – politics;; *'23' – food;; *'24' – industry;; *'25' – travel;; *'26' – work;; *'27' – entertainment;; *'28' – religion;; *'29' – family;; *'30' – sports;; *'31' – insurance;; *'32' – television;; *'33' – goods and services;; *'34' – hobbies;; *'35' – finance;; *'36' – photo;; *'37' – esoterics;; *'38' – electronics and appliances;; *'39' – erotic;; *'40' – humor;; *'41' – society, humanities;; *'42' – design and graphics.
          attribute :subject, API::Types::Coercible::String.optional
          # @return [String] Organizer email (for events).
          attribute :email, API::Types::Coercible::String.optional
          # @return [String] Organizer phone number (for events).
          attribute :phone, API::Types::Coercible::String.optional
          # @return [String] RSS feed address for import (available only to communities with special permission. Contact vk.com/support to get it.
          attribute :rss, API::Types::Coercible::String.optional
          # @return [Integer] Event start date in Unixtime format.
          attribute :event_start_date, API::Types::Coercible::Int.optional
          # @return [Integer] Event finish date in Unixtime format.
          attribute :event_finish_date, API::Types::Coercible::Int.optional
          # @return [Integer] Organizer community ID (for events only).
          attribute :event_group_id, API::Types::Coercible::Int.optional
          # @return [Integer] Public page category ID.
          attribute :public_category, API::Types::Coercible::Int.optional
          # @return [Integer] Public page subcategory ID.
          attribute :public_subcategory, API::Types::Coercible::Int.optional
          # @return [String] Founding date of a company or organization owning the community in "dd.mm.YYYY" format.
          attribute :public_date, API::Types::Coercible::String.optional
          # @return [Integer] Wall settings. Possible values:; *'0' – disabled;; *'1' – open;; *'2' – limited (groups and events only);; *'3' – closed (groups and events only).;
          attribute :wall, API::Types::Coercible::Int.optional
          # @return [Integer] Board topics settings. Possbile values: ; *'0' – disabled;; *'1' – open;; *'2' – limited (for groups and events only).;
          attribute :topics, API::Types::Coercible::Int.optional
          # @return [Integer] Photos settings. Possible values:; *'0' – disabled;; *'1' – open;; *'2' – limited (for groups and events only).;
          attribute :photos, API::Types::Coercible::Int.optional
          # @return [Integer] Video settings. Possible values:; *'0' – disabled;; *'1' – open;; *'2' – limited (for groups and events only).
          attribute :video, API::Types::Coercible::Int.optional
          # @return [Integer] Audio settings. Possible values:; *'0' – disabled;; *'1' – open;; *'2' – limited (for groups and events only).
          attribute :audio, API::Types::Coercible::Int.optional
          # @return [Boolean] Links settings (for public pages only). Possible values:; *'0' – disabled;; *'1' – enabled.;
          attribute :links, API::Types::Bool.optional
          # @return [Boolean] Events settings (for public pages only). Possible values:; *'0' – disabled;; *'1' – enabled.;
          attribute :events, API::Types::Bool.optional
          # @return [Boolean] Places settings (for public pages only). Possible values:; *'0' – disabled;; *'1' – enabled.;
          attribute :places, API::Types::Bool.optional
          # @return [Boolean] Contacts settings (for public pages only). Possible values:; *'0' – disabled;; *'1' – enabled.;
          attribute :contacts, API::Types::Bool.optional
          # @return [Integer] Documents settings. Possible values:; *'0' – disabled;; *'1' – open;; *'2' – limited (for groups and events only).
          attribute :docs, API::Types::Coercible::Int.optional
          # @return [Integer] Wiki pages settings. Possible values:; *'0' – disabled;; *'1' – open;; *'2' – limited (for groups and events only).
          attribute :wiki, API::Types::Coercible::Int.optional
          # @return [Boolean] Community messages. Possible values:; *'0' — disabled;; *'1' — enabled.
          attribute :messages, API::Types::Bool.optional
          # @return [Integer] Community age limits. Possible values:; *'1' — no limits;; *'2' — 16+;; *'3' — 18+.
          attribute :age_limits, API::Types::Coercible::Int.optional
          # @return [Boolean] Market settings. Possible values:; *'0' – disabled;; *'1' – enabled.
          attribute :market, API::Types::Bool.optional
          # @return [Boolean] market comments settings. Possible values:; *'0' – disabled;; *'1' – enabled.
          attribute :market_comments, API::Types::Bool.optional
          # @return [Array] Market delivery countries.
          attribute :market_country, API::Types::Coercible::Array.optional
          # @return [Array] Market delivery cities (if only one country is specified).
          attribute :market_city, API::Types::Coercible::Array.optional
          # @return [Integer] Market currency settings. Possbile values: ; *'643' – Russian rubles;; *'980' – Ukrainian hryvnia;; *'398' – Kazakh tenge;; *'978' – Euro;; *'840' – US dollars
          attribute :market_currency, API::Types::Coercible::Int.optional
          # @return [Integer] Seller contact for market.; Set '0' for community messages.
          attribute :market_contact, API::Types::Coercible::Int.optional
          # @return [Integer] ID of a wiki page with market description.
          attribute :market_wiki, API::Types::Coercible::Int.optional
          # @return [Boolean] Obscene expressions filter in comments. Possible values: ; *'0' – disabled;; *'1' – enabled.
          attribute :obscene_filter, API::Types::Bool.optional
          # @return [Boolean] Stopwords filter in comments. Possible values: ; *'0' – disabled;; *'1' – enabled.
          attribute :obscene_stopwords, API::Types::Bool.optional
          # @return [Array] Keywords for stopwords filter.
          attribute :obscene_words, API::Types::Coercible::Array.optional
        end
      end
    end
  end
end
