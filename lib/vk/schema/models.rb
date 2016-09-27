# frozen_string_literal: true
require 'vk/schema'
require 'dry-struct'

module Vk
  class Schema
    class Model < Dry::Struct
      module Account
        autoload :AccountCounters, 'vk/schema/model/account/account_counters'
        autoload :LookupResult, 'vk/schema/model/account/lookup_result'
        autoload :NameRequest, 'vk/schema/model/account/name_request'
        autoload :Offer, 'vk/schema/model/account/offer'
        autoload :PushParams, 'vk/schema/model/account/push_params'
        autoload :PushSettings, 'vk/schema/model/account/push_settings'
        autoload :UserSettings, 'vk/schema/model/account/user_settings'
        autoload :UserXtrContacts, 'vk/schema/model/account/user_xtr_contacts'
        autoload :Info, 'vk/schema/model/account/info'
      end
      module Ads
        autoload :Accesses, 'vk/schema/model/ads/accesses'
        autoload :Account, 'vk/schema/model/ads/account'
        autoload :Ad, 'vk/schema/model/ads/ad'
        autoload :AdLayout, 'vk/schema/model/ads/ad_layout'
        autoload :Campaign, 'vk/schema/model/ads/campaign'
        autoload :Category, 'vk/schema/model/ads/category'
        autoload :Client, 'vk/schema/model/ads/client'
        autoload :Criteria, 'vk/schema/model/ads/criteria'
        autoload :DemoStats, 'vk/schema/model/ads/demo_stats'
        autoload :DemostatsFormat, 'vk/schema/model/ads/demostats_format'
        autoload :FloodStats, 'vk/schema/model/ads/flood_stats'
        autoload :LinkStatus, 'vk/schema/model/ads/link_status'
        autoload :Paragraphs, 'vk/schema/model/ads/paragraphs'
        autoload :RejectReason, 'vk/schema/model/ads/reject_reason'
        autoload :Rules, 'vk/schema/model/ads/rules'
        autoload :Stats, 'vk/schema/model/ads/stats'
        autoload :StatsFormat, 'vk/schema/model/ads/stats_format'
        autoload :StatsAge, 'vk/schema/model/ads/stats_age'
        autoload :StatsCities, 'vk/schema/model/ads/stats_cities'
        autoload :StatsSex, 'vk/schema/model/ads/stats_sex'
        autoload :StatsSexAge, 'vk/schema/model/ads/stats_sex_age'
        autoload :TargStats, 'vk/schema/model/ads/targ_stats'
        autoload :TargSuggestions, 'vk/schema/model/ads/targ_suggestions'
        autoload :TargSuggestionsRegions, 'vk/schema/model/ads/targ_suggestions_regions'
        autoload :TargSuggestionsCities, 'vk/schema/model/ads/targ_suggestions_cities'
        autoload :TargSuggestionsSchools, 'vk/schema/model/ads/targ_suggestions_schools'
        autoload :TargSettings, 'vk/schema/model/ads/targ_settings'
        autoload :TargetGroup, 'vk/schema/model/ads/target_group'
        autoload :Users, 'vk/schema/model/ads/users'
        autoload :PostStats, 'vk/schema/model/ads/post_stats'
      end
      module Apps
        autoload :App, 'vk/schema/model/apps/app'
        autoload :Leaderboard, 'vk/schema/model/apps/leaderboard'
      end
      module Audio
        autoload :AudioAlbum, 'vk/schema/model/audio/audio_album'
        autoload :Audio, 'vk/schema/model/audio/audio'
        autoload :AudioFull, 'vk/schema/model/audio/audio_full'
        autoload :Lyrics, 'vk/schema/model/audio/lyrics'
        autoload :AudioUploadResponse, 'vk/schema/model/audio/audio_upload_response'
      end
      module Base
        autoload :CommentsInfo, 'vk/schema/model/base/comments_info'
        autoload :Country, 'vk/schema/model/base/country'
        autoload :Error, 'vk/schema/model/base/error'
        autoload :RequestParam, 'vk/schema/model/base/request_param'
        autoload :Geo, 'vk/schema/model/base/geo'
        autoload :LikesInfo, 'vk/schema/model/base/likes_info'
        autoload :Likes, 'vk/schema/model/base/likes'
        autoload :Object, 'vk/schema/model/base/object'
        autoload :Place, 'vk/schema/model/base/place'
        autoload :RepostsInfo, 'vk/schema/model/base/reposts_info'
        autoload :Sticker, 'vk/schema/model/base/sticker'
      end
      module Board
        autoload :TopicPoll, 'vk/schema/model/board/topic_poll'
        autoload :Topic, 'vk/schema/model/board/topic'
        autoload :TopicComment, 'vk/schema/model/board/topic_comment'
      end
      module Database
        autoload :City, 'vk/schema/model/database/city'
        autoload :Faculty, 'vk/schema/model/database/faculty'
        autoload :Region, 'vk/schema/model/database/region'
        autoload :School, 'vk/schema/model/database/school'
        autoload :Street, 'vk/schema/model/database/street'
        autoload :University, 'vk/schema/model/database/university'
      end
      module Docs
        autoload :Doc, 'vk/schema/model/docs/doc'
        autoload :DocTypes, 'vk/schema/model/docs/doc_types'
        autoload :DocUploadResponse, 'vk/schema/model/docs/doc_upload_response'
      end
      module Fave
        autoload :FavesLink, 'vk/schema/model/fave/faves_link'
      end
      module Friends
        autoload :FriendsList, 'vk/schema/model/friends/friends_list'
        autoload :Requests, 'vk/schema/model/friends/requests'
        autoload :RequestsXtrMessage, 'vk/schema/model/friends/requests_xtr_message'
        autoload :FriendStatus, 'vk/schema/model/friends/friend_status'
        autoload :UserXtrLists, 'vk/schema/model/friends/user_xtr_lists'
        autoload :UserXtrPhone, 'vk/schema/model/friends/user_xtr_phone'
      end
      module Gifts
        autoload :Layout, 'vk/schema/model/gifts/layout'
        autoload :Gift, 'vk/schema/model/gifts/gift'
      end
      module Groups
        autoload :GroupsArray, 'vk/schema/model/groups/groups_array'
        autoload :GroupCategory, 'vk/schema/model/groups/group_category'
        autoload :GroupCategoryFull, 'vk/schema/model/groups/group_category_full'
        autoload :ContactsItem, 'vk/schema/model/groups/contacts_item'
        autoload :CountersGroup, 'vk/schema/model/groups/counters_group'
        autoload :Group, 'vk/schema/model/groups/group'
        autoload :GroupFull, 'vk/schema/model/groups/group_full'
        autoload :GroupXtrInvitedBy, 'vk/schema/model/groups/group_xtr_invited_by'
        autoload :GroupLink, 'vk/schema/model/groups/group_link'
        autoload :LinksItem, 'vk/schema/model/groups/links_item'
        autoload :MarketInfo, 'vk/schema/model/groups/market_info'
        autoload :MemberRole, 'vk/schema/model/groups/member_role'
        autoload :MemberStatus, 'vk/schema/model/groups/member_status'
        autoload :MemberStatusFull, 'vk/schema/model/groups/member_status_full'
        autoload :GroupSettings, 'vk/schema/model/groups/group_settings'
        autoload :SubjectItem, 'vk/schema/model/groups/subject_item'
        autoload :UserXtrBanInfo, 'vk/schema/model/groups/user_xtr_ban_info'
        autoload :UserXtrRole, 'vk/schema/model/groups/user_xtr_role'
      end
      module Leads
        autoload :Lead, 'vk/schema/model/leads/lead'
        autoload :Start, 'vk/schema/model/leads/start'
        autoload :Checked, 'vk/schema/model/leads/checked'
        autoload :Complete, 'vk/schema/model/leads/complete'
        autoload :Entry, 'vk/schema/model/leads/entry'
      end
      module Market
        autoload :MarketAlbum, 'vk/schema/model/market/market_album'
        autoload :MarketCategory, 'vk/schema/model/market/market_category'
        autoload :Currency, 'vk/schema/model/market/currency'
        autoload :MarketItem, 'vk/schema/model/market/market_item'
        autoload :MarketItemFull, 'vk/schema/model/market/market_item_full'
        autoload :Price, 'vk/schema/model/market/price'
        autoload :Section, 'vk/schema/model/market/section'
      end
      module Messages
        autoload :AttachmentsHistory, 'vk/schema/model/messages/attachments_history'
        autoload :MessageAttachment, 'vk/schema/model/messages/message_attachment'
        autoload :Chat, 'vk/schema/model/messages/chat'
        autoload :ChatFull, 'vk/schema/model/messages/chat_full'
        autoload :ChatPushSettings, 'vk/schema/model/messages/chat_push_settings'
        autoload :Dialog, 'vk/schema/model/messages/dialog'
        autoload :LastActivity, 'vk/schema/model/messages/last_activity'
        autoload :MessageLink, 'vk/schema/model/messages/message_link'
        autoload :LongpollParams, 'vk/schema/model/messages/longpoll_params'
        autoload :Message, 'vk/schema/model/messages/message'
        autoload :UserXtrInvitedBy, 'vk/schema/model/messages/user_xtr_invited_by'
      end
      module Newsfeed
        autoload :NewsfeedItem, 'vk/schema/model/newsfeed/newsfeed_item'
        autoload :ItemAudio, 'vk/schema/model/newsfeed/item_audio'
        autoload :ItemFriend, 'vk/schema/model/newsfeed/item_friend'
        autoload :ItemNote, 'vk/schema/model/newsfeed/item_note'
        autoload :ItemPhoto, 'vk/schema/model/newsfeed/item_photo'
        autoload :ItemPhotoTag, 'vk/schema/model/newsfeed/item_photo_tag'
        autoload :ItemTopic, 'vk/schema/model/newsfeed/item_topic'
        autoload :ItemVideo, 'vk/schema/model/newsfeed/item_video'
        autoload :ItemWallpost, 'vk/schema/model/newsfeed/item_wallpost'
        autoload :List, 'vk/schema/model/newsfeed/list'
        autoload :NewsfeedPhoto, 'vk/schema/model/newsfeed/newsfeed_photo'
      end
      module Notes
        autoload :NoteComment, 'vk/schema/model/notes/note_comment'
        autoload :Note, 'vk/schema/model/notes/note'
      end
      module Notifications
        autoload :NotificationsComment, 'vk/schema/model/notifications/notifications_comment'
        autoload :Notification, 'vk/schema/model/notifications/notification'
        autoload :Feedback, 'vk/schema/model/notifications/feedback'
        autoload :Reply, 'vk/schema/model/notifications/reply'
      end
      module Oauth
        autoload :Error, 'vk/schema/model/oauth/error'
      end
      module Orders
        autoload :Order, 'vk/schema/model/orders/order'
        autoload :Amount, 'vk/schema/model/orders/amount'
      end
      module Pages
        autoload :Wikipage, 'vk/schema/model/pages/wikipage'
        autoload :WikipageFull, 'vk/schema/model/pages/wikipage_full'
        autoload :WikipageVersion, 'vk/schema/model/pages/wikipage_version'
      end
      module Photos
        autoload :PhotoAlbum, 'vk/schema/model/photos/photo_album'
        autoload :PhotoAlbumFull, 'vk/schema/model/photos/photo_album_full'
        autoload :CommentXtrPid, 'vk/schema/model/photos/comment_xtr_pid'
        autoload :MarketAlbumUploadResponse, 'vk/schema/model/photos/market_album_upload_response'
        autoload :MarketUploadResponse, 'vk/schema/model/photos/market_upload_response'
        autoload :MessageUploadResponse, 'vk/schema/model/photos/message_upload_response'
        autoload :OwnerUploadResponse, 'vk/schema/model/photos/owner_upload_response'
        autoload :Photo, 'vk/schema/model/photos/photo'
        autoload :PhotoFull, 'vk/schema/model/photos/photo_full'
        autoload :PhotoFullXtrRealOffset, 'vk/schema/model/photos/photo_full_xtr_real_offset'
        autoload :PhotoXtrRealOffset, 'vk/schema/model/photos/photo_xtr_real_offset'
        autoload :PhotoXtrTagInfo, 'vk/schema/model/photos/photo_xtr_tag_info'
        autoload :PhotoSizes, 'vk/schema/model/photos/photo_sizes'
        autoload :PhotoTag, 'vk/schema/model/photos/photo_tag'
        autoload :PhotoUpload, 'vk/schema/model/photos/photo_upload'
        autoload :PhotoUploadResponse, 'vk/schema/model/photos/photo_upload_response'
        autoload :WallUploadResponse, 'vk/schema/model/photos/wall_upload_response'
      end
      module Places
        autoload :Checkin, 'vk/schema/model/places/checkin'
        autoload :PlaceFull, 'vk/schema/model/places/place_full'
        autoload :Types, 'vk/schema/model/places/types'
      end
      module Polls
        autoload :Poll, 'vk/schema/model/polls/poll'
        autoload :Voters, 'vk/schema/model/polls/voters'
      end
      module Search
        autoload :Hint, 'vk/schema/model/search/hint'
      end
      module Secure
        autoload :Level, 'vk/schema/model/secure/level'
        autoload :SmsNotification, 'vk/schema/model/secure/sms_notification'
        autoload :TokenChecked, 'vk/schema/model/secure/token_checked'
        autoload :Transaction, 'vk/schema/model/secure/transaction'
      end
      module Stats
        autoload :Period, 'vk/schema/model/stats/period'
        autoload :WallpostStat, 'vk/schema/model/stats/wallpost_stat'
      end
      module Status
        autoload :Status, 'vk/schema/model/status/status'
      end
      module Utils
        autoload :DomainResolved, 'vk/schema/model/utils/domain_resolved'
        autoload :LinkChecked, 'vk/schema/model/utils/link_checked'
      end
      module Users
        autoload :UsersArray, 'vk/schema/model/users/users_array'
        autoload :UserCounters, 'vk/schema/model/users/user_counters'
        autoload :User, 'vk/schema/model/users/user'
        autoload :UserFullXtrType, 'vk/schema/model/users/user_full_xtr_type'
        autoload :UserXtrType, 'vk/schema/model/users/user_xtr_type'
        autoload :UserMin, 'vk/schema/model/users/user_min'
        autoload :UserBroadcast, 'vk/schema/model/users/user_broadcast'
        autoload :UserFull, 'vk/schema/model/users/user_full'
        autoload :Career, 'vk/schema/model/users/career'
        autoload :Military, 'vk/schema/model/users/military'
        autoload :Relative, 'vk/schema/model/users/relative'
        autoload :UserLim, 'vk/schema/model/users/user_lim'
        autoload :LastSeen, 'vk/schema/model/users/last_seen'
        autoload :University, 'vk/schema/model/users/university'
        autoload :School, 'vk/schema/model/users/school'
        autoload :CropPhoto, 'vk/schema/model/users/crop_photo'
        autoload :Occupation, 'vk/schema/model/users/occupation'
        autoload :Personal, 'vk/schema/model/users/personal'
        autoload :UserXtrCounters, 'vk/schema/model/users/user_xtr_counters'
      end
      module Video
        autoload :VideoAlbum, 'vk/schema/model/video/video_album'
        autoload :VideoAlbumFull, 'vk/schema/model/video/video_album_full'
        autoload :CatBlock, 'vk/schema/model/video/cat_block'
        autoload :CatElement, 'vk/schema/model/video/cat_element'
        autoload :SaveResult, 'vk/schema/model/video/save_result'
        autoload :VideoTag, 'vk/schema/model/video/video_tag'
        autoload :UploadResponse, 'vk/schema/model/video/upload_response'
        autoload :Video, 'vk/schema/model/video/video'
        autoload :VideoTagInfo, 'vk/schema/model/video/video_tag_info'
        autoload :VideoFull, 'vk/schema/model/video/video_full'
      end
      module Wall
        autoload :AppPost, 'vk/schema/model/wall/app_post'
        autoload :AttachedNote, 'vk/schema/model/wall/attached_note'
        autoload :CommentAttachment, 'vk/schema/model/wall/comment_attachment'
        autoload :Graffiti, 'vk/schema/model/wall/graffiti'
        autoload :LinkButton, 'vk/schema/model/wall/link_button'
        autoload :LinkProduct, 'vk/schema/model/wall/link_product'
        autoload :LinkRating, 'vk/schema/model/wall/link_rating'
        autoload :PostSource, 'vk/schema/model/wall/post_source'
        autoload :PostedPhoto, 'vk/schema/model/wall/posted_photo'
        autoload :WallComment, 'vk/schema/model/wall/wall_comment'
        autoload :WallLink, 'vk/schema/model/wall/wall_link'
        autoload :Wallpost, 'vk/schema/model/wall/wallpost'
        autoload :WallpostAttached, 'vk/schema/model/wall/wallpost_attached'
        autoload :WallpostAttachment, 'vk/schema/model/wall/wallpost_attachment'
        autoload :WallpostToId, 'vk/schema/model/wall/wallpost_to_id'
        autoload :WallpostFull, 'vk/schema/model/wall/wallpost_full'
      end
      module Widgets
        autoload :WidgetComment, 'vk/schema/model/widgets/widget_comment'
        autoload :CommentMedia, 'vk/schema/model/widgets/comment_media'
        autoload :CommentReplies, 'vk/schema/model/widgets/comment_replies'
        autoload :CommentRepliesItem, 'vk/schema/model/widgets/comment_replies_item'
        autoload :WidgetLikes, 'vk/schema/model/widgets/widget_likes'
        autoload :WidgetPage, 'vk/schema/model/widgets/widget_page'
      end
    end
  end
end
