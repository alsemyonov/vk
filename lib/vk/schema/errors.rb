# frozen_string_literal: true
require 'vk/schema'

module Vk
  class Schema
    module Errors
      class Error < StandardError
      end

      class APIError < Error
      end

      class APIErrorUnknown < APIError
        def initialize(msg = 'Unknown error occurred')
          super
        end

        def code
          1
        end
      end
      class APIErrorDisabled < APIError
        def initialize(msg = 'Application is disabled. Enable your application or use test mode')
          super
        end

        def code
          2
        end
      end
      class APIErrorMethod < APIError
        def initialize(msg = 'Unknown method passed')
          super
        end

        def code
          3
        end
      end
      class APIErrorSignature < APIError
        def initialize(msg = 'Incorrect signature')
          super
        end

        def code
          4
        end
      end
      class APIErrorAuth < APIError
        def initialize(msg = 'User authorization failed')
          super
        end

        def code
          5
        end
      end
      class APIErrorTooMany < APIError
        def initialize(msg = 'Too many requests per second')
          super
        end

        def code
          6
        end
      end
      class APIErrorPermission < APIError
        def initialize(msg = 'Permission to perform this action is denied')
          super
        end

        def code
          7
        end
      end
      class APIErrorRequest < APIError
        def initialize(msg = 'Invalid request')
          super
        end

        def code
          8
        end
      end
      class APIErrorFlood < APIError
        def initialize(msg = 'Flood control')
          super
        end

        def code
          9
        end
      end
      class APIErrorServer < APIError
        def initialize(msg = 'Internal server error')
          super
        end

        def code
          10
        end
      end
      class APIErrorEnabledInTest < APIError
        def initialize(msg = 'In test mode application should be disabled or user should be authorized')
          super
        end

        def code
          11
        end
      end
      class APIErrorCaptcha < APIError
        def initialize(msg = 'Captcha needed')
          super
        end

        def code
          14
        end
      end
      class APIErrorAccess < APIError
        def initialize(msg = 'Access denied')
          super
        end

        def code
          15
        end
      end
      class APIErrorAuthHttps < APIError
        def initialize(msg = 'HTTP authorization failed')
          super
        end

        def code
          16
        end
      end
      class APIErrorAuthValidation < APIError
        def initialize(msg = 'Validation required')
          super
        end

        def code
          17
        end
      end
      class APIErrorMethodPermission < APIError
        def initialize(msg = 'Permission to perform this action is denied for non-standalone applications')
          super
        end

        def code
          20
        end
      end
      class APIErrorMethodAds < APIError
        def initialize(msg = 'Permission to perform this action is allowed only for standalone and OpenAPI applications')
          super
        end

        def code
          21
        end
      end
      class APIErrorMethodDisabled < APIError
        def initialize(msg = 'This method was disabled')
          super
        end

        def code
          23
        end
      end
      class APIErrorNeedConfirmation < APIError
        def initialize(msg = 'Confirmation required')
          super
        end

        def code
          24
        end
      end
      class APIErrorVotesPermission < APIError
        def initialize(msg = 'Permission denied. You must enable votes processing in application settings')
          super
        end

        def code
          500
        end
      end
      class APIErrorAccessAudio < APIError
        def initialize(msg = 'Access denied')
          super
        end

        def code
          201
        end
      end
      class APIErrorAccessGroup < APIError
        def initialize(msg = 'Access to group denied')
          super
        end

        def code
          203
        end
      end
      class APIErrorParamUserId < APIError
        def initialize(msg = 'Invalid user id')
          super
        end

        def code
          113
        end
      end
      class APIErrorParam < APIError
        def initialize(msg = 'One of the parameters specified was missing or invalid')
          super
        end

        def code
          100
        end
      end
      class APIErrorAlbumFull < APIError
        def initialize(msg = 'This album is full')
          super
        end

        def code
          300
        end
      end
      class APIErrorAccessAlbum < APIError
        def initialize(msg = 'Access denied')
          super
        end

        def code
          200
        end
      end
      class APIErrorAdsSpecific < APIError
        def initialize(msg = 'Some ads error occured')
          super
        end

        def code
          603
        end
      end
      class APIErrorAdsPermission < APIError
        def initialize(msg = 'Permission denied. You have no access to operations specified with given object(s)')
          super
        end

        def code
          600
        end
      end
      class APIErrorParamTimestamp < APIError
        def initialize(msg = 'Invalid timestamp')
          super
        end

        def code
          150
        end
      end
      class APIErrorParamApiId < APIError
        def initialize(msg = 'Invalid application API ID')
          super
        end

        def code
          101
        end
      end
      class APIErrorUserDeleted < APIError
        def initialize(msg = 'User was deleted or banned')
          super
        end

        def code
          18
        end
      end

      MAP = {
        1 => APIErrorUnknown,
        2 => APIErrorDisabled,
        3 => APIErrorMethod,
        4 => APIErrorSignature,
        5 => APIErrorAuth,
        6 => APIErrorTooMany,
        7 => APIErrorPermission,
        8 => APIErrorRequest,
        9 => APIErrorFlood,
        10 => APIErrorServer,
        11 => APIErrorEnabledInTest,
        14 => APIErrorCaptcha,
        15 => APIErrorAccess,
        16 => APIErrorAuthHttps,
        17 => APIErrorAuthValidation,
        20 => APIErrorMethodPermission,
        21 => APIErrorMethodAds,
        23 => APIErrorMethodDisabled,
        24 => APIErrorNeedConfirmation,
        500 => APIErrorVotesPermission,
        201 => APIErrorAccessAudio,
        203 => APIErrorAccessGroup,
        113 => APIErrorParamUserId,
        100 => APIErrorParam,
        300 => APIErrorAlbumFull,
        200 => APIErrorAccessAlbum,
        603 => APIErrorAdsSpecific,
        600 => APIErrorAdsPermission,
        150 => APIErrorParamTimestamp,
        101 => APIErrorParamApiId,
        18 => APIErrorUserDeleted
      }.freeze
    end
  end
end
