# frozen_string_literal: true
require 'vk/api'
require 'vk/schema/method'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      module Responses
        autoload :Get, 'vk/api/users/methods/get'
        autoload :Search, 'vk/api/users/methods/search'
        autoload :IsAppUser, 'vk/api/users/methods/is_app_user'
        autoload :GetSubscriptions, 'vk/api/users/methods/get_subscriptions'
        autoload :GetFollowers, 'vk/api/users/methods/get_followers'
        autoload :Report, 'vk/api/users/methods/report'
        autoload :GetNearby, 'vk/api/users/methods/get_nearby'
      end
    end
    class Auth < Vk::Schema::Namespace
      module Responses
        autoload :CheckPhone, 'vk/api/auth/methods/check_phone'
        autoload :Signup, 'vk/api/auth/methods/signup'
        autoload :Confirm, 'vk/api/auth/methods/confirm'
        autoload :Restore, 'vk/api/auth/methods/restore'
      end
    end
    class Wall < Vk::Schema::Namespace
      module Responses
        autoload :Get, 'vk/api/wall/methods/get'
        autoload :Search, 'vk/api/wall/methods/search'
        autoload :GetById, 'vk/api/wall/methods/get_by_id'
        autoload :Post, 'vk/api/wall/methods/post'
        autoload :Repost, 'vk/api/wall/methods/repost'
        autoload :GetReposts, 'vk/api/wall/methods/get_reposts'
        autoload :Edit, 'vk/api/wall/methods/edit'
        autoload :Delete, 'vk/api/wall/methods/delete'
        autoload :Restore, 'vk/api/wall/methods/restore'
        autoload :Pin, 'vk/api/wall/methods/pin'
        autoload :Unpin, 'vk/api/wall/methods/unpin'
        autoload :GetComments, 'vk/api/wall/methods/get_comments'
        autoload :CreateComment, 'vk/api/wall/methods/create_comment'
        autoload :EditComment, 'vk/api/wall/methods/edit_comment'
        autoload :DeleteComment, 'vk/api/wall/methods/delete_comment'
        autoload :RestoreComment, 'vk/api/wall/methods/restore_comment'
        autoload :ReportPost, 'vk/api/wall/methods/report_post'
        autoload :ReportComment, 'vk/api/wall/methods/report_comment'
      end
    end
    class Photos < Vk::Schema::Namespace
      module Responses
        autoload :CreateAlbum, 'vk/api/photos/methods/create_album'
        autoload :EditAlbum, 'vk/api/photos/methods/edit_album'
        autoload :GetAlbums, 'vk/api/photos/methods/get_albums'
        autoload :Get, 'vk/api/photos/methods/get'
        autoload :GetAlbumsCount, 'vk/api/photos/methods/get_albums_count'
        autoload :GetById, 'vk/api/photos/methods/get_by_id'
        autoload :GetUploadServer, 'vk/api/photos/methods/get_upload_server'
        autoload :GetOwnerPhotoUploadServer, 'vk/api/photos/methods/get_owner_photo_upload_server'
        autoload :GetChatUploadServer, 'vk/api/photos/methods/get_chat_upload_server'
        autoload :GetMarketUploadServer, 'vk/api/photos/methods/get_market_upload_server'
        autoload :GetMarketAlbumUploadServer, 'vk/api/photos/methods/get_market_album_upload_server'
        autoload :SaveMarketPhoto, 'vk/api/photos/methods/save_market_photo'
        autoload :SaveMarketAlbumPhoto, 'vk/api/photos/methods/save_market_album_photo'
        autoload :SaveOwnerPhoto, 'vk/api/photos/methods/save_owner_photo'
        autoload :SaveWallPhoto, 'vk/api/photos/methods/save_wall_photo'
        autoload :GetWallUploadServer, 'vk/api/photos/methods/get_wall_upload_server'
        autoload :GetMessagesUploadServer, 'vk/api/photos/methods/get_messages_upload_server'
        autoload :SaveMessagesPhoto, 'vk/api/photos/methods/save_messages_photo'
        autoload :Report, 'vk/api/photos/methods/report'
        autoload :ReportComment, 'vk/api/photos/methods/report_comment'
        autoload :Search, 'vk/api/photos/methods/search'
        autoload :Save, 'vk/api/photos/methods/save'
        autoload :Copy, 'vk/api/photos/methods/copy'
        autoload :Edit, 'vk/api/photos/methods/edit'
        autoload :Move, 'vk/api/photos/methods/move'
        autoload :MakeCover, 'vk/api/photos/methods/make_cover'
        autoload :ReorderAlbums, 'vk/api/photos/methods/reorder_albums'
        autoload :ReorderPhotos, 'vk/api/photos/methods/reorder_photos'
        autoload :GetAll, 'vk/api/photos/methods/get_all'
        autoload :GetUserPhotos, 'vk/api/photos/methods/get_user_photos'
        autoload :DeleteAlbum, 'vk/api/photos/methods/delete_album'
        autoload :Delete, 'vk/api/photos/methods/delete'
        autoload :Restore, 'vk/api/photos/methods/restore'
        autoload :ConfirmTag, 'vk/api/photos/methods/confirm_tag'
        autoload :GetComments, 'vk/api/photos/methods/get_comments'
        autoload :GetAllComments, 'vk/api/photos/methods/get_all_comments'
        autoload :CreateComment, 'vk/api/photos/methods/create_comment'
        autoload :DeleteComment, 'vk/api/photos/methods/delete_comment'
        autoload :RestoreComment, 'vk/api/photos/methods/restore_comment'
        autoload :EditComment, 'vk/api/photos/methods/edit_comment'
        autoload :GetTags, 'vk/api/photos/methods/get_tags'
        autoload :PutTag, 'vk/api/photos/methods/put_tag'
        autoload :RemoveTag, 'vk/api/photos/methods/remove_tag'
        autoload :GetNewTags, 'vk/api/photos/methods/get_new_tags'
      end
    end
    class Friends < Vk::Schema::Namespace
      module Responses
        autoload :Get, 'vk/api/friends/methods/get'
        autoload :GetOnline, 'vk/api/friends/methods/get_online'
        autoload :GetMutual, 'vk/api/friends/methods/get_mutual'
        autoload :GetRecent, 'vk/api/friends/methods/get_recent'
        autoload :GetRequests, 'vk/api/friends/methods/get_requests'
        autoload :Add, 'vk/api/friends/methods/add'
        autoload :Edit, 'vk/api/friends/methods/edit'
        autoload :Delete, 'vk/api/friends/methods/delete'
        autoload :GetLists, 'vk/api/friends/methods/get_lists'
        autoload :AddList, 'vk/api/friends/methods/add_list'
        autoload :EditList, 'vk/api/friends/methods/edit_list'
        autoload :DeleteList, 'vk/api/friends/methods/delete_list'
        autoload :GetAppUsers, 'vk/api/friends/methods/get_app_users'
        autoload :GetByPhones, 'vk/api/friends/methods/get_by_phones'
        autoload :DeleteAllRequests, 'vk/api/friends/methods/delete_all_requests'
        autoload :GetSuggestions, 'vk/api/friends/methods/get_suggestions'
        autoload :AreFriends, 'vk/api/friends/methods/are_friends'
        autoload :GetAvailableForCall, 'vk/api/friends/methods/get_available_for_call'
        autoload :Search, 'vk/api/friends/methods/search'
      end
    end
    class Widgets < Vk::Schema::Namespace
      module Responses
        autoload :GetComments, 'vk/api/widgets/methods/get_comments'
        autoload :GetPages, 'vk/api/widgets/methods/get_pages'
      end
    end
    class Secure < Vk::Schema::Namespace
      module Responses
        autoload :GetAppBalance, 'vk/api/secure/methods/get_app_balance'
        autoload :GetTransactionsHistory, 'vk/api/secure/methods/get_transactions_history'
        autoload :GetSmsHistory, 'vk/api/secure/methods/get_sms_history'
        autoload :SendSmsNotification, 'vk/api/secure/methods/send_sms_notification'
        autoload :SendNotification, 'vk/api/secure/methods/send_notification'
        autoload :SetCounter, 'vk/api/secure/methods/set_counter'
        autoload :SetUserLevel, 'vk/api/secure/methods/set_user_level'
        autoload :GetUserLevel, 'vk/api/secure/methods/get_user_level'
        autoload :AddAppEvent, 'vk/api/secure/methods/add_app_event'
        autoload :CheckToken, 'vk/api/secure/methods/check_token'
      end
    end
    class Storage < Vk::Schema::Namespace
      module Responses
        autoload :Get, 'vk/api/storage/methods/get'
        autoload :Set, 'vk/api/storage/methods/set'
        autoload :GetKeys, 'vk/api/storage/methods/get_keys'
      end
    end
    class Orders < Vk::Schema::Namespace
      module Responses
        autoload :Get, 'vk/api/orders/methods/get'
        autoload :GetById, 'vk/api/orders/methods/get_by_id'
        autoload :ChangeState, 'vk/api/orders/methods/change_state'
        autoload :GetAmount, 'vk/api/orders/methods/get_amount'
      end
    end
    class Status < Vk::Schema::Namespace
      module Responses
        autoload :Get, 'vk/api/status/methods/get'
        autoload :Set, 'vk/api/status/methods/set'
      end
    end
    class Audio < Vk::Schema::Namespace
      module Responses
        autoload :Get, 'vk/api/audio/methods/get'
        autoload :GetById, 'vk/api/audio/methods/get_by_id'
        autoload :GetLyrics, 'vk/api/audio/methods/get_lyrics'
        autoload :Search, 'vk/api/audio/methods/search'
        autoload :GetUploadServer, 'vk/api/audio/methods/get_upload_server'
        autoload :Save, 'vk/api/audio/methods/save'
        autoload :Add, 'vk/api/audio/methods/add'
        autoload :Delete, 'vk/api/audio/methods/delete'
        autoload :Edit, 'vk/api/audio/methods/edit'
        autoload :Reorder, 'vk/api/audio/methods/reorder'
        autoload :Restore, 'vk/api/audio/methods/restore'
        autoload :GetAlbums, 'vk/api/audio/methods/get_albums'
        autoload :AddAlbum, 'vk/api/audio/methods/add_album'
        autoload :EditAlbum, 'vk/api/audio/methods/edit_album'
        autoload :DeleteAlbum, 'vk/api/audio/methods/delete_album'
        autoload :MoveToAlbum, 'vk/api/audio/methods/move_to_album'
        autoload :SetBroadcast, 'vk/api/audio/methods/set_broadcast'
        autoload :GetBroadcastList, 'vk/api/audio/methods/get_broadcast_list'
        autoload :GetRecommendations, 'vk/api/audio/methods/get_recommendations'
        autoload :GetPopular, 'vk/api/audio/methods/get_popular'
        autoload :GetCount, 'vk/api/audio/methods/get_count'
      end
    end
    class Leads < Vk::Schema::Namespace
      module Responses
        autoload :Complete, 'vk/api/leads/methods/complete'
        autoload :Start, 'vk/api/leads/methods/start'
        autoload :GetStats, 'vk/api/leads/methods/get_stats'
        autoload :GetUsers, 'vk/api/leads/methods/get_users'
        autoload :CheckUser, 'vk/api/leads/methods/check_user'
        autoload :MetricHit, 'vk/api/leads/methods/metric_hit'
      end
    end
    class Pages < Vk::Schema::Namespace
      module Responses
        autoload :Get, 'vk/api/pages/methods/get'
        autoload :Save, 'vk/api/pages/methods/save'
        autoload :SaveAccess, 'vk/api/pages/methods/save_access'
        autoload :GetHistory, 'vk/api/pages/methods/get_history'
        autoload :GetTitles, 'vk/api/pages/methods/get_titles'
        autoload :GetVersion, 'vk/api/pages/methods/get_version'
        autoload :ParseWiki, 'vk/api/pages/methods/parse_wiki'
        autoload :ClearCache, 'vk/api/pages/methods/clear_cache'
      end
    end
    class Groups < Vk::Schema::Namespace
      module Responses
        autoload :IsMember, 'vk/api/groups/methods/is_member'
        autoload :GetById, 'vk/api/groups/methods/get_by_id'
        autoload :Get, 'vk/api/groups/methods/get'
        autoload :GetMembers, 'vk/api/groups/methods/get_members'
        autoload :Join, 'vk/api/groups/methods/join'
        autoload :Leave, 'vk/api/groups/methods/leave'
        autoload :Search, 'vk/api/groups/methods/search'
        autoload :GetCatalog, 'vk/api/groups/methods/get_catalog'
        autoload :GetCatalogInfo, 'vk/api/groups/methods/get_catalog_info'
        autoload :GetInvites, 'vk/api/groups/methods/get_invites'
        autoload :GetInvitedUsers, 'vk/api/groups/methods/get_invited_users'
        autoload :BanUser, 'vk/api/groups/methods/ban_user'
        autoload :UnbanUser, 'vk/api/groups/methods/unban_user'
        autoload :GetBanned, 'vk/api/groups/methods/get_banned'
        autoload :Create, 'vk/api/groups/methods/create'
        autoload :Edit, 'vk/api/groups/methods/edit'
        autoload :EditPlace, 'vk/api/groups/methods/edit_place'
        autoload :GetSettings, 'vk/api/groups/methods/get_settings'
        autoload :GetRequests, 'vk/api/groups/methods/get_requests'
        autoload :EditManager, 'vk/api/groups/methods/edit_manager'
        autoload :Invite, 'vk/api/groups/methods/invite'
        autoload :AddLink, 'vk/api/groups/methods/add_link'
        autoload :DeleteLink, 'vk/api/groups/methods/delete_link'
        autoload :EditLink, 'vk/api/groups/methods/edit_link'
        autoload :ReorderLink, 'vk/api/groups/methods/reorder_link'
        autoload :RemoveUser, 'vk/api/groups/methods/remove_user'
        autoload :ApproveRequest, 'vk/api/groups/methods/approve_request'
        autoload :GetCallbackConfirmationCode, 'vk/api/groups/methods/get_callback_confirmation_code'
        autoload :GetCallbackServerSettings, 'vk/api/groups/methods/get_callback_server_settings'
        autoload :GetCallbackSettings, 'vk/api/groups/methods/get_callback_settings'
        autoload :SetCallbackServer, 'vk/api/groups/methods/set_callback_server'
        autoload :SetCallbackServerSettings, 'vk/api/groups/methods/set_callback_server_settings'
        autoload :SetCallbackSettings, 'vk/api/groups/methods/set_callback_settings'
      end
    end
    class Board < Vk::Schema::Namespace
      module Responses
        autoload :GetTopics, 'vk/api/board/methods/get_topics'
        autoload :GetComments, 'vk/api/board/methods/get_comments'
        autoload :AddTopic, 'vk/api/board/methods/add_topic'
        autoload :CreateComment, 'vk/api/board/methods/create_comment'
        autoload :DeleteTopic, 'vk/api/board/methods/delete_topic'
        autoload :EditTopic, 'vk/api/board/methods/edit_topic'
        autoload :EditComment, 'vk/api/board/methods/edit_comment'
        autoload :RestoreComment, 'vk/api/board/methods/restore_comment'
        autoload :DeleteComment, 'vk/api/board/methods/delete_comment'
        autoload :OpenTopic, 'vk/api/board/methods/open_topic'
        autoload :CloseTopic, 'vk/api/board/methods/close_topic'
        autoload :FixTopic, 'vk/api/board/methods/fix_topic'
        autoload :UnfixTopic, 'vk/api/board/methods/unfix_topic'
      end
    end
    class Video < Vk::Schema::Namespace
      module Responses
        autoload :Get, 'vk/api/video/methods/get'
        autoload :Edit, 'vk/api/video/methods/edit'
        autoload :Add, 'vk/api/video/methods/add'
        autoload :Save, 'vk/api/video/methods/save'
        autoload :Delete, 'vk/api/video/methods/delete'
        autoload :Restore, 'vk/api/video/methods/restore'
        autoload :Search, 'vk/api/video/methods/search'
        autoload :GetUserVideos, 'vk/api/video/methods/get_user_videos'
        autoload :GetAlbums, 'vk/api/video/methods/get_albums'
        autoload :GetAlbumById, 'vk/api/video/methods/get_album_by_id'
        autoload :AddAlbum, 'vk/api/video/methods/add_album'
        autoload :EditAlbum, 'vk/api/video/methods/edit_album'
        autoload :DeleteAlbum, 'vk/api/video/methods/delete_album'
        autoload :ReorderAlbums, 'vk/api/video/methods/reorder_albums'
        autoload :ReorderVideos, 'vk/api/video/methods/reorder_videos'
        autoload :AddToAlbum, 'vk/api/video/methods/add_to_album'
        autoload :RemoveFromAlbum, 'vk/api/video/methods/remove_from_album'
        autoload :GetAlbumsByVideo, 'vk/api/video/methods/get_albums_by_video'
        autoload :GetComments, 'vk/api/video/methods/get_comments'
        autoload :CreateComment, 'vk/api/video/methods/create_comment'
        autoload :DeleteComment, 'vk/api/video/methods/delete_comment'
        autoload :RestoreComment, 'vk/api/video/methods/restore_comment'
        autoload :EditComment, 'vk/api/video/methods/edit_comment'
        autoload :GetTags, 'vk/api/video/methods/get_tags'
        autoload :PutTag, 'vk/api/video/methods/put_tag'
        autoload :RemoveTag, 'vk/api/video/methods/remove_tag'
        autoload :GetNewTags, 'vk/api/video/methods/get_new_tags'
        autoload :Report, 'vk/api/video/methods/report'
        autoload :ReportComment, 'vk/api/video/methods/report_comment'
        autoload :GetCatalog, 'vk/api/video/methods/get_catalog'
        autoload :GetCatalogSection, 'vk/api/video/methods/get_catalog_section'
        autoload :HideCatalogSection, 'vk/api/video/methods/hide_catalog_section'
      end
    end
    class Notes < Vk::Schema::Namespace
      module Responses
        autoload :Get, 'vk/api/notes/methods/get'
        autoload :GetById, 'vk/api/notes/methods/get_by_id'
        autoload :Add, 'vk/api/notes/methods/add'
        autoload :Edit, 'vk/api/notes/methods/edit'
        autoload :Delete, 'vk/api/notes/methods/delete'
        autoload :GetComments, 'vk/api/notes/methods/get_comments'
        autoload :CreateComment, 'vk/api/notes/methods/create_comment'
        autoload :EditComment, 'vk/api/notes/methods/edit_comment'
        autoload :DeleteComment, 'vk/api/notes/methods/delete_comment'
        autoload :RestoreComment, 'vk/api/notes/methods/restore_comment'
      end
    end
    class Places < Vk::Schema::Namespace
      module Responses
        autoload :Add, 'vk/api/places/methods/add'
        autoload :GetById, 'vk/api/places/methods/get_by_id'
        autoload :Search, 'vk/api/places/methods/search'
        autoload :Checkin, 'vk/api/places/methods/checkin'
        autoload :GetCheckins, 'vk/api/places/methods/get_checkins'
        autoload :GetTypes, 'vk/api/places/methods/get_types'
      end
    end
    class Account < Vk::Schema::Namespace
      module Responses
        autoload :GetCounters, 'vk/api/account/methods/get_counters'
        autoload :SetNameInMenu, 'vk/api/account/methods/set_name_in_menu'
        autoload :SetOnline, 'vk/api/account/methods/set_online'
        autoload :SetOffline, 'vk/api/account/methods/set_offline'
        autoload :LookupContacts, 'vk/api/account/methods/lookup_contacts'
        autoload :RegisterDevice, 'vk/api/account/methods/register_device'
        autoload :UnregisterDevice, 'vk/api/account/methods/unregister_device'
        autoload :SetSilenceMode, 'vk/api/account/methods/set_silence_mode'
        autoload :GetPushSettings, 'vk/api/account/methods/get_push_settings'
        autoload :SetPushSettings, 'vk/api/account/methods/set_push_settings'
        autoload :GetAppPermissions, 'vk/api/account/methods/get_app_permissions'
        autoload :GetActiveOffers, 'vk/api/account/methods/get_active_offers'
        autoload :BanUser, 'vk/api/account/methods/ban_user'
        autoload :UnbanUser, 'vk/api/account/methods/unban_user'
        autoload :GetBanned, 'vk/api/account/methods/get_banned'
        autoload :GetInfo, 'vk/api/account/methods/get_info'
        autoload :SetInfo, 'vk/api/account/methods/set_info'
        autoload :ChangePassword, 'vk/api/account/methods/change_password'
        autoload :GetProfileInfo, 'vk/api/account/methods/get_profile_info'
        autoload :SaveProfileInfo, 'vk/api/account/methods/save_profile_info'
      end
    end
    class Messages < Vk::Schema::Namespace
      module Responses
        autoload :Get, 'vk/api/messages/methods/get'
        autoload :GetDialogs, 'vk/api/messages/methods/get_dialogs'
        autoload :GetById, 'vk/api/messages/methods/get_by_id'
        autoload :Search, 'vk/api/messages/methods/search'
        autoload :GetHistory, 'vk/api/messages/methods/get_history'
        autoload :GetHistoryAttachments, 'vk/api/messages/methods/get_history_attachments'
        autoload :Send, 'vk/api/messages/methods/send'
        autoload :Delete, 'vk/api/messages/methods/delete'
        autoload :DeleteDialog, 'vk/api/messages/methods/delete_dialog'
        autoload :Restore, 'vk/api/messages/methods/restore'
        autoload :MarkAsRead, 'vk/api/messages/methods/mark_as_read'
        autoload :MarkAsImportant, 'vk/api/messages/methods/mark_as_important'
        autoload :GetLongPollServer, 'vk/api/messages/methods/get_long_poll_server'
        autoload :GetLongPollHistory, 'vk/api/messages/methods/get_long_poll_history'
        autoload :GetChat, 'vk/api/messages/methods/get_chat'
        autoload :CreateChat, 'vk/api/messages/methods/create_chat'
        autoload :EditChat, 'vk/api/messages/methods/edit_chat'
        autoload :GetChatUsers, 'vk/api/messages/methods/get_chat_users'
        autoload :SetActivity, 'vk/api/messages/methods/set_activity'
        autoload :SearchDialogs, 'vk/api/messages/methods/search_dialogs'
        autoload :AddChatUser, 'vk/api/messages/methods/add_chat_user'
        autoload :RemoveChatUser, 'vk/api/messages/methods/remove_chat_user'
        autoload :GetLastActivity, 'vk/api/messages/methods/get_last_activity'
        autoload :SetChatPhoto, 'vk/api/messages/methods/set_chat_photo'
        autoload :DeleteChatPhoto, 'vk/api/messages/methods/delete_chat_photo'
      end
    end
    class Newsfeed < Vk::Schema::Namespace
      module Responses
        autoload :Get, 'vk/api/newsfeed/methods/get'
        autoload :GetRecommended, 'vk/api/newsfeed/methods/get_recommended'
        autoload :GetComments, 'vk/api/newsfeed/methods/get_comments'
        autoload :GetMentions, 'vk/api/newsfeed/methods/get_mentions'
        autoload :GetBanned, 'vk/api/newsfeed/methods/get_banned'
        autoload :AddBan, 'vk/api/newsfeed/methods/add_ban'
        autoload :DeleteBan, 'vk/api/newsfeed/methods/delete_ban'
        autoload :IgnoreItem, 'vk/api/newsfeed/methods/ignore_item'
        autoload :UnignoreItem, 'vk/api/newsfeed/methods/unignore_item'
        autoload :Search, 'vk/api/newsfeed/methods/search'
        autoload :GetLists, 'vk/api/newsfeed/methods/get_lists'
        autoload :SaveList, 'vk/api/newsfeed/methods/save_list'
        autoload :DeleteList, 'vk/api/newsfeed/methods/delete_list'
        autoload :Unsubscribe, 'vk/api/newsfeed/methods/unsubscribe'
        autoload :GetSuggestedSources, 'vk/api/newsfeed/methods/get_suggested_sources'
      end
    end
    class Likes < Vk::Schema::Namespace
      module Responses
        autoload :GetList, 'vk/api/likes/methods/get_list'
        autoload :Add, 'vk/api/likes/methods/add'
        autoload :Delete, 'vk/api/likes/methods/delete'
        autoload :IsLiked, 'vk/api/likes/methods/is_liked'
      end
    end
    class Polls < Vk::Schema::Namespace
      module Responses
        autoload :GetById, 'vk/api/polls/methods/get_by_id'
        autoload :AddVote, 'vk/api/polls/methods/add_vote'
        autoload :DeleteVote, 'vk/api/polls/methods/delete_vote'
        autoload :GetVoters, 'vk/api/polls/methods/get_voters'
        autoload :Create, 'vk/api/polls/methods/create'
        autoload :Edit, 'vk/api/polls/methods/edit'
      end
    end
    class Docs < Vk::Schema::Namespace
      module Responses
        autoload :Get, 'vk/api/docs/methods/get'
        autoload :GetById, 'vk/api/docs/methods/get_by_id'
        autoload :GetUploadServer, 'vk/api/docs/methods/get_upload_server'
        autoload :GetWallUploadServer, 'vk/api/docs/methods/get_wall_upload_server'
        autoload :Save, 'vk/api/docs/methods/save'
        autoload :Delete, 'vk/api/docs/methods/delete'
        autoload :Add, 'vk/api/docs/methods/add'
        autoload :GetTypes, 'vk/api/docs/methods/get_types'
        autoload :Search, 'vk/api/docs/methods/search'
        autoload :Edit, 'vk/api/docs/methods/edit'
      end
    end
    class Fave < Vk::Schema::Namespace
      module Responses
        autoload :GetUsers, 'vk/api/fave/methods/get_users'
        autoload :GetPhotos, 'vk/api/fave/methods/get_photos'
        autoload :GetPosts, 'vk/api/fave/methods/get_posts'
        autoload :GetVideos, 'vk/api/fave/methods/get_videos'
        autoload :GetLinks, 'vk/api/fave/methods/get_links'
        autoload :GetMarketItems, 'vk/api/fave/methods/get_market_items'
        autoload :AddUser, 'vk/api/fave/methods/add_user'
        autoload :RemoveUser, 'vk/api/fave/methods/remove_user'
        autoload :AddGroup, 'vk/api/fave/methods/add_group'
        autoload :RemoveGroup, 'vk/api/fave/methods/remove_group'
        autoload :AddLink, 'vk/api/fave/methods/add_link'
        autoload :RemoveLink, 'vk/api/fave/methods/remove_link'
      end
    end
    class Notifications < Vk::Schema::Namespace
      module Responses
        autoload :Get, 'vk/api/notifications/methods/get'
        autoload :MarkAsViewed, 'vk/api/notifications/methods/mark_as_viewed'
      end
    end
    class Stats < Vk::Schema::Namespace
      module Responses
        autoload :Get, 'vk/api/stats/methods/get'
        autoload :TrackVisitor, 'vk/api/stats/methods/track_visitor'
        autoload :GetPostReach, 'vk/api/stats/methods/get_post_reach'
      end
    end
    class Search < Vk::Schema::Namespace
      module Responses
        autoload :GetHints, 'vk/api/search/methods/get_hints'
      end
    end
    class Apps < Vk::Schema::Namespace
      module Responses
        autoload :GetCatalog, 'vk/api/apps/methods/get_catalog'
        autoload :Get, 'vk/api/apps/methods/get'
        autoload :SendRequest, 'vk/api/apps/methods/send_request'
        autoload :DeleteAppRequests, 'vk/api/apps/methods/delete_app_requests'
        autoload :GetFriendsList, 'vk/api/apps/methods/get_friends_list'
        autoload :GetLeaderboard, 'vk/api/apps/methods/get_leaderboard'
        autoload :GetScore, 'vk/api/apps/methods/get_score'
      end
    end
    class Utils < Vk::Schema::Namespace
      module Responses
        autoload :CheckLink, 'vk/api/utils/methods/check_link'
        autoload :ResolveScreenName, 'vk/api/utils/methods/resolve_screen_name'
        autoload :GetServerTime, 'vk/api/utils/methods/get_server_time'
      end
    end
    class Database < Vk::Schema::Namespace
      module Responses
        autoload :GetCountries, 'vk/api/database/methods/get_countries'
        autoload :GetRegions, 'vk/api/database/methods/get_regions'
        autoload :GetStreetsById, 'vk/api/database/methods/get_streets_by_id'
        autoload :GetCountriesById, 'vk/api/database/methods/get_countries_by_id'
        autoload :GetCities, 'vk/api/database/methods/get_cities'
        autoload :GetCitiesById, 'vk/api/database/methods/get_cities_by_id'
        autoload :GetUniversities, 'vk/api/database/methods/get_universities'
        autoload :GetSchools, 'vk/api/database/methods/get_schools'
        autoload :GetSchoolClasses, 'vk/api/database/methods/get_school_classes'
        autoload :GetFaculties, 'vk/api/database/methods/get_faculties'
        autoload :GetChairs, 'vk/api/database/methods/get_chairs'
      end
    end
    class Gifts < Vk::Schema::Namespace
      module Responses
        autoload :Get, 'vk/api/gifts/methods/get'
      end
    end
    class Ads < Vk::Schema::Namespace
      module Responses
        autoload :GetAccounts, 'vk/api/ads/methods/get_accounts'
        autoload :GetClients, 'vk/api/ads/methods/get_clients'
        autoload :CreateClients, 'vk/api/ads/methods/create_clients'
        autoload :UpdateClients, 'vk/api/ads/methods/update_clients'
        autoload :DeleteClients, 'vk/api/ads/methods/delete_clients'
        autoload :GetCampaigns, 'vk/api/ads/methods/get_campaigns'
        autoload :CreateCampaigns, 'vk/api/ads/methods/create_campaigns'
        autoload :UpdateCampaigns, 'vk/api/ads/methods/update_campaigns'
        autoload :DeleteCampaigns, 'vk/api/ads/methods/delete_campaigns'
        autoload :GetAds, 'vk/api/ads/methods/get_ads'
        autoload :GetAdsLayout, 'vk/api/ads/methods/get_ads_layout'
        autoload :GetAdsTargeting, 'vk/api/ads/methods/get_ads_targeting'
        autoload :CreateAds, 'vk/api/ads/methods/create_ads'
        autoload :UpdateAds, 'vk/api/ads/methods/update_ads'
        autoload :DeleteAds, 'vk/api/ads/methods/delete_ads'
        autoload :CheckLink, 'vk/api/ads/methods/check_link'
        autoload :GetStatistics, 'vk/api/ads/methods/get_statistics'
        autoload :GetDemographics, 'vk/api/ads/methods/get_demographics'
        autoload :GetAdsPostsReach, 'vk/api/ads/methods/get_ads_posts_reach'
        autoload :GetBudget, 'vk/api/ads/methods/get_budget'
        autoload :GetOfficeUsers, 'vk/api/ads/methods/get_office_users'
        autoload :AddOfficeUsers, 'vk/api/ads/methods/add_office_users'
        autoload :RemoveOfficeUsers, 'vk/api/ads/methods/remove_office_users'
        autoload :GetTargetingStats, 'vk/api/ads/methods/get_targeting_stats'
        autoload :GetSuggestions, 'vk/api/ads/methods/get_suggestions'
        autoload :GetCategories, 'vk/api/ads/methods/get_categories'
        autoload :GetUploadUrl, 'vk/api/ads/methods/get_upload_url'
        autoload :GetVideoUploadUrl, 'vk/api/ads/methods/get_video_upload_url'
        autoload :GetFloodStats, 'vk/api/ads/methods/get_flood_stats'
        autoload :GetRejectionReason, 'vk/api/ads/methods/get_rejection_reason'
        autoload :CreateTargetGroup, 'vk/api/ads/methods/create_target_group'
        autoload :UpdateTargetGroup, 'vk/api/ads/methods/update_target_group'
        autoload :DeleteTargetGroup, 'vk/api/ads/methods/delete_target_group'
        autoload :GetTargetGroups, 'vk/api/ads/methods/get_target_groups'
        autoload :ImportTargetContacts, 'vk/api/ads/methods/import_target_contacts'
      end
    end
    class Market < Vk::Schema::Namespace
      module Responses
        autoload :Get, 'vk/api/market/methods/get'
        autoload :GetById, 'vk/api/market/methods/get_by_id'
        autoload :Search, 'vk/api/market/methods/search'
        autoload :GetAlbums, 'vk/api/market/methods/get_albums'
        autoload :GetAlbumById, 'vk/api/market/methods/get_album_by_id'
        autoload :CreateComment, 'vk/api/market/methods/create_comment'
        autoload :GetComments, 'vk/api/market/methods/get_comments'
        autoload :DeleteComment, 'vk/api/market/methods/delete_comment'
        autoload :RestoreComment, 'vk/api/market/methods/restore_comment'
        autoload :EditComment, 'vk/api/market/methods/edit_comment'
        autoload :ReportComment, 'vk/api/market/methods/report_comment'
        autoload :GetCategories, 'vk/api/market/methods/get_categories'
        autoload :Report, 'vk/api/market/methods/report'
        autoload :Add, 'vk/api/market/methods/add'
        autoload :Edit, 'vk/api/market/methods/edit'
        autoload :Delete, 'vk/api/market/methods/delete'
        autoload :Restore, 'vk/api/market/methods/restore'
        autoload :ReorderItems, 'vk/api/market/methods/reorder_items'
        autoload :ReorderAlbums, 'vk/api/market/methods/reorder_albums'
        autoload :AddAlbum, 'vk/api/market/methods/add_album'
        autoload :EditAlbum, 'vk/api/market/methods/edit_album'
        autoload :DeleteAlbum, 'vk/api/market/methods/delete_album'
        autoload :RemoveFromAlbum, 'vk/api/market/methods/remove_from_album'
        autoload :AddToAlbum, 'vk/api/market/methods/add_to_album'
      end
    end
  end
end
