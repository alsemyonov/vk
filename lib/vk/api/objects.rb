# frozen_string_literal: true
require 'vk/api'
require 'vk/api/types'
require 'vk/schema/object'
require 'vk/schema/namespace'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      autoload :AccountCounters, 'vk/api/account/account_counters'
      autoload :LookupResult, 'vk/api/account/lookup_result'
      autoload :NameRequest, 'vk/api/account/name_request'
      autoload :Offer, 'vk/api/account/offer'
      autoload :PushParams, 'vk/api/account/push_params'
      autoload :PushSettings, 'vk/api/account/push_settings'
      autoload :UserSettings, 'vk/api/account/user_settings'
      autoload :UserXtrContacts, 'vk/api/account/user_xtr_contacts'
      autoload :Info, 'vk/api/account/info'
    end
    class Ads < Vk::Schema::Namespace
      autoload :Accesses, 'vk/api/ads/accesses'
      autoload :Account, 'vk/api/ads/account'
      autoload :Ad, 'vk/api/ads/ad'
      autoload :AdLayout, 'vk/api/ads/ad_layout'
      autoload :Campaign, 'vk/api/ads/campaign'
      autoload :Category, 'vk/api/ads/category'
      autoload :Client, 'vk/api/ads/client'
      autoload :Criteria, 'vk/api/ads/criteria'
      autoload :DemoStats, 'vk/api/ads/demo_stats'
      autoload :DemostatsFormat, 'vk/api/ads/demostats_format'
      autoload :FloodStats, 'vk/api/ads/flood_stats'
      autoload :LinkStatus, 'vk/api/ads/link_status'
      autoload :Paragraphs, 'vk/api/ads/paragraphs'
      autoload :RejectReason, 'vk/api/ads/reject_reason'
      autoload :Rules, 'vk/api/ads/rules'
      autoload :Stats, 'vk/api/ads/stats'
      autoload :StatsFormat, 'vk/api/ads/stats_format'
      autoload :StatsAge, 'vk/api/ads/stats_age'
      autoload :StatsCities, 'vk/api/ads/stats_cities'
      autoload :StatsSex, 'vk/api/ads/stats_sex'
      autoload :StatsSexAge, 'vk/api/ads/stats_sex_age'
      autoload :TargStats, 'vk/api/ads/targ_stats'
      autoload :TargSuggestions, 'vk/api/ads/targ_suggestions'
      autoload :TargSuggestionsRegions, 'vk/api/ads/targ_suggestions_regions'
      autoload :TargSuggestionsCities, 'vk/api/ads/targ_suggestions_cities'
      autoload :TargSuggestionsSchools, 'vk/api/ads/targ_suggestions_schools'
      autoload :TargSettings, 'vk/api/ads/targ_settings'
      autoload :TargetGroup, 'vk/api/ads/target_group'
      autoload :Users, 'vk/api/ads/users'
      autoload :PostStats, 'vk/api/ads/post_stats'
    end
    class Apps < Vk::Schema::Namespace
      autoload :App, 'vk/api/apps/app'
      autoload :Leaderboard, 'vk/api/apps/leaderboard'
    end
    class Audio < Vk::Schema::Namespace
      autoload :AudioAlbum, 'vk/api/audio/audio_album'
      autoload :Audio, 'vk/api/audio/audio'
      autoload :AudioFull, 'vk/api/audio/audio_full'
      autoload :Lyrics, 'vk/api/audio/lyrics'
      autoload :AudioUploadResponse, 'vk/api/audio/audio_upload_response'
    end
    class Base < Vk::Schema::Namespace
      autoload :CommentsInfo, 'vk/api/base/comments_info'
      autoload :Country, 'vk/api/base/country'
      autoload :Error, 'vk/api/base/error'
      autoload :RequestParam, 'vk/api/base/request_param'
      autoload :Geo, 'vk/api/base/geo'
      autoload :LikesInfo, 'vk/api/base/likes_info'
      autoload :Likes, 'vk/api/base/likes'
      autoload :Object, 'vk/api/base/object'
      autoload :Place, 'vk/api/base/place'
      autoload :RepostsInfo, 'vk/api/base/reposts_info'
      autoload :Sticker, 'vk/api/base/sticker'
    end
    class Board < Vk::Schema::Namespace
      autoload :TopicPoll, 'vk/api/board/topic_poll'
      autoload :Topic, 'vk/api/board/topic'
      autoload :TopicComment, 'vk/api/board/topic_comment'
    end
    class Database < Vk::Schema::Namespace
      autoload :City, 'vk/api/database/city'
      autoload :Faculty, 'vk/api/database/faculty'
      autoload :Region, 'vk/api/database/region'
      autoload :School, 'vk/api/database/school'
      autoload :Street, 'vk/api/database/street'
      autoload :University, 'vk/api/database/university'
    end
    class Docs < Vk::Schema::Namespace
      autoload :Doc, 'vk/api/docs/doc'
      autoload :DocTypes, 'vk/api/docs/doc_types'
      autoload :DocUploadResponse, 'vk/api/docs/doc_upload_response'
    end
    class Fave < Vk::Schema::Namespace
      autoload :FavesLink, 'vk/api/fave/faves_link'
    end
    class Friends < Vk::Schema::Namespace
      autoload :FriendsList, 'vk/api/friends/friends_list'
      autoload :Requests, 'vk/api/friends/requests'
      autoload :RequestsXtrMessage, 'vk/api/friends/requests_xtr_message'
      autoload :FriendStatus, 'vk/api/friends/friend_status'
      autoload :UserXtrLists, 'vk/api/friends/user_xtr_lists'
      autoload :UserXtrPhone, 'vk/api/friends/user_xtr_phone'
    end
    class Gifts < Vk::Schema::Namespace
      autoload :Layout, 'vk/api/gifts/layout'
      autoload :Gift, 'vk/api/gifts/gift'
    end
    class Groups < Vk::Schema::Namespace
      autoload :GroupsArray, 'vk/api/groups/groups_array'
      autoload :GroupCategory, 'vk/api/groups/group_category'
      autoload :GroupCategoryFull, 'vk/api/groups/group_category_full'
      autoload :ContactsItem, 'vk/api/groups/contacts_item'
      autoload :CountersGroup, 'vk/api/groups/counters_group'
      autoload :Group, 'vk/api/groups/group'
      autoload :GroupFull, 'vk/api/groups/group_full'
      autoload :GroupXtrInvitedBy, 'vk/api/groups/group_xtr_invited_by'
      autoload :GroupLink, 'vk/api/groups/group_link'
      autoload :LinksItem, 'vk/api/groups/links_item'
      autoload :MarketInfo, 'vk/api/groups/market_info'
      autoload :MemberRole, 'vk/api/groups/member_role'
      autoload :MemberStatus, 'vk/api/groups/member_status'
      autoload :MemberStatusFull, 'vk/api/groups/member_status_full'
      autoload :GroupSettings, 'vk/api/groups/group_settings'
      autoload :SubjectItem, 'vk/api/groups/subject_item'
      autoload :UserXtrBanInfo, 'vk/api/groups/user_xtr_ban_info'
      autoload :UserXtrRole, 'vk/api/groups/user_xtr_role'
    end
    class Leads < Vk::Schema::Namespace
      autoload :Lead, 'vk/api/leads/lead'
      autoload :Start, 'vk/api/leads/start'
      autoload :Checked, 'vk/api/leads/checked'
      autoload :Complete, 'vk/api/leads/complete'
      autoload :Entry, 'vk/api/leads/entry'
    end
    class Market < Vk::Schema::Namespace
      autoload :MarketAlbum, 'vk/api/market/market_album'
      autoload :MarketCategory, 'vk/api/market/market_category'
      autoload :Currency, 'vk/api/market/currency'
      autoload :MarketItem, 'vk/api/market/market_item'
      autoload :MarketItemFull, 'vk/api/market/market_item_full'
      autoload :Price, 'vk/api/market/price'
      autoload :Section, 'vk/api/market/section'
    end
    class Messages < Vk::Schema::Namespace
      autoload :AttachmentsHistory, 'vk/api/messages/attachments_history'
      autoload :MessageAttachment, 'vk/api/messages/message_attachment'
      autoload :Chat, 'vk/api/messages/chat'
      autoload :ChatFull, 'vk/api/messages/chat_full'
      autoload :ChatPushSettings, 'vk/api/messages/chat_push_settings'
      autoload :Dialog, 'vk/api/messages/dialog'
      autoload :LastActivity, 'vk/api/messages/last_activity'
      autoload :MessageLink, 'vk/api/messages/message_link'
      autoload :LongpollParams, 'vk/api/messages/longpoll_params'
      autoload :Message, 'vk/api/messages/message'
      autoload :UserXtrInvitedBy, 'vk/api/messages/user_xtr_invited_by'
    end
    class Newsfeed < Vk::Schema::Namespace
      autoload :NewsfeedItem, 'vk/api/newsfeed/newsfeed_item'
      autoload :ItemAudio, 'vk/api/newsfeed/item_audio'
      autoload :ItemFriend, 'vk/api/newsfeed/item_friend'
      autoload :ItemNote, 'vk/api/newsfeed/item_note'
      autoload :ItemPhoto, 'vk/api/newsfeed/item_photo'
      autoload :ItemPhotoTag, 'vk/api/newsfeed/item_photo_tag'
      autoload :ItemTopic, 'vk/api/newsfeed/item_topic'
      autoload :ItemVideo, 'vk/api/newsfeed/item_video'
      autoload :ItemWallpost, 'vk/api/newsfeed/item_wallpost'
      autoload :List, 'vk/api/newsfeed/list'
      autoload :NewsfeedPhoto, 'vk/api/newsfeed/newsfeed_photo'
    end
    class Notes < Vk::Schema::Namespace
      autoload :NoteComment, 'vk/api/notes/note_comment'
      autoload :Note, 'vk/api/notes/note'
    end
    class Notifications < Vk::Schema::Namespace
      autoload :NotificationsComment, 'vk/api/notifications/notifications_comment'
      autoload :Notification, 'vk/api/notifications/notification'
      autoload :Feedback, 'vk/api/notifications/feedback'
      autoload :Reply, 'vk/api/notifications/reply'
    end
    class Oauth < Vk::Schema::Namespace
      autoload :Error, 'vk/api/oauth/error'
    end
    class Orders < Vk::Schema::Namespace
      autoload :Order, 'vk/api/orders/order'
      autoload :Amount, 'vk/api/orders/amount'
    end
    class Pages < Vk::Schema::Namespace
      autoload :Wikipage, 'vk/api/pages/wikipage'
      autoload :WikipageFull, 'vk/api/pages/wikipage_full'
      autoload :WikipageVersion, 'vk/api/pages/wikipage_version'
    end
    class Photos < Vk::Schema::Namespace
      autoload :PhotoAlbum, 'vk/api/photos/photo_album'
      autoload :PhotoAlbumFull, 'vk/api/photos/photo_album_full'
      autoload :CommentXtrPid, 'vk/api/photos/comment_xtr_pid'
      autoload :MarketAlbumUploadResponse, 'vk/api/photos/market_album_upload_response'
      autoload :MarketUploadResponse, 'vk/api/photos/market_upload_response'
      autoload :MessageUploadResponse, 'vk/api/photos/message_upload_response'
      autoload :OwnerUploadResponse, 'vk/api/photos/owner_upload_response'
      autoload :Photo, 'vk/api/photos/photo'
      autoload :PhotoFull, 'vk/api/photos/photo_full'
      autoload :PhotoFullXtrRealOffset, 'vk/api/photos/photo_full_xtr_real_offset'
      autoload :PhotoXtrRealOffset, 'vk/api/photos/photo_xtr_real_offset'
      autoload :PhotoXtrTagInfo, 'vk/api/photos/photo_xtr_tag_info'
      autoload :PhotoSizes, 'vk/api/photos/photo_sizes'
      autoload :PhotoTag, 'vk/api/photos/photo_tag'
      autoload :PhotoUpload, 'vk/api/photos/photo_upload'
      autoload :PhotoUploadResponse, 'vk/api/photos/photo_upload_response'
      autoload :WallUploadResponse, 'vk/api/photos/wall_upload_response'
    end
    class Places < Vk::Schema::Namespace
      autoload :Checkin, 'vk/api/places/checkin'
      autoload :PlaceFull, 'vk/api/places/place_full'
      autoload :Types, 'vk/api/places/types'
    end
    class Polls < Vk::Schema::Namespace
      autoload :Poll, 'vk/api/polls/poll'
      autoload :Voters, 'vk/api/polls/voters'
    end
    class Search < Vk::Schema::Namespace
      autoload :Hint, 'vk/api/search/hint'
    end
    class Secure < Vk::Schema::Namespace
      autoload :Level, 'vk/api/secure/level'
      autoload :SmsNotification, 'vk/api/secure/sms_notification'
      autoload :TokenChecked, 'vk/api/secure/token_checked'
      autoload :Transaction, 'vk/api/secure/transaction'
    end
    class Stats < Vk::Schema::Namespace
      autoload :Period, 'vk/api/stats/period'
      autoload :WallpostStat, 'vk/api/stats/wallpost_stat'
    end
    class Status < Vk::Schema::Namespace
      autoload :Status, 'vk/api/status/status'
    end
    class Utils < Vk::Schema::Namespace
      autoload :DomainResolved, 'vk/api/utils/domain_resolved'
      autoload :LinkChecked, 'vk/api/utils/link_checked'
    end
    class Users < Vk::Schema::Namespace
      autoload :UsersArray, 'vk/api/users/users_array'
      autoload :UserCounters, 'vk/api/users/user_counters'
      autoload :User, 'vk/api/users/user'
      autoload :UserFullXtrType, 'vk/api/users/user_full_xtr_type'
      autoload :UserXtrType, 'vk/api/users/user_xtr_type'
      autoload :UserMin, 'vk/api/users/user_min'
      autoload :UserBroadcast, 'vk/api/users/user_broadcast'
      autoload :UserFull, 'vk/api/users/user_full'
      autoload :Career, 'vk/api/users/career'
      autoload :Military, 'vk/api/users/military'
      autoload :Relative, 'vk/api/users/relative'
      autoload :UserLim, 'vk/api/users/user_lim'
      autoload :LastSeen, 'vk/api/users/last_seen'
      autoload :University, 'vk/api/users/university'
      autoload :School, 'vk/api/users/school'
      autoload :CropPhoto, 'vk/api/users/crop_photo'
      autoload :Occupation, 'vk/api/users/occupation'
      autoload :Personal, 'vk/api/users/personal'
      autoload :UserXtrCounters, 'vk/api/users/user_xtr_counters'
    end
    class Video < Vk::Schema::Namespace
      autoload :VideoAlbum, 'vk/api/video/video_album'
      autoload :VideoAlbumFull, 'vk/api/video/video_album_full'
      autoload :CatBlock, 'vk/api/video/cat_block'
      autoload :CatElement, 'vk/api/video/cat_element'
      autoload :SaveResult, 'vk/api/video/save_result'
      autoload :VideoTag, 'vk/api/video/video_tag'
      autoload :UploadResponse, 'vk/api/video/upload_response'
      autoload :Video, 'vk/api/video/video'
      autoload :VideoTagInfo, 'vk/api/video/video_tag_info'
      autoload :VideoFull, 'vk/api/video/video_full'
    end
    class Wall < Vk::Schema::Namespace
      autoload :AppPost, 'vk/api/wall/app_post'
      autoload :AttachedNote, 'vk/api/wall/attached_note'
      autoload :CommentAttachment, 'vk/api/wall/comment_attachment'
      autoload :Graffiti, 'vk/api/wall/graffiti'
      autoload :LinkButton, 'vk/api/wall/link_button'
      autoload :LinkProduct, 'vk/api/wall/link_product'
      autoload :LinkRating, 'vk/api/wall/link_rating'
      autoload :PostSource, 'vk/api/wall/post_source'
      autoload :PostedPhoto, 'vk/api/wall/posted_photo'
      autoload :WallComment, 'vk/api/wall/wall_comment'
      autoload :WallLink, 'vk/api/wall/wall_link'
      autoload :Wallpost, 'vk/api/wall/wallpost'
      autoload :WallpostAttached, 'vk/api/wall/wallpost_attached'
      autoload :WallpostAttachment, 'vk/api/wall/wallpost_attachment'
      autoload :WallpostToId, 'vk/api/wall/wallpost_to_id'
      autoload :WallpostFull, 'vk/api/wall/wallpost_full'
    end
    class Widgets < Vk::Schema::Namespace
      autoload :WidgetComment, 'vk/api/widgets/widget_comment'
      autoload :CommentMedia, 'vk/api/widgets/comment_media'
      autoload :CommentReplies, 'vk/api/widgets/comment_replies'
      autoload :CommentRepliesItem, 'vk/api/widgets/comment_replies_item'
      autoload :WidgetLikes, 'vk/api/widgets/widget_likes'
      autoload :WidgetPage, 'vk/api/widgets/widget_page'
    end
  end
end
