# frozen_string_literal: true
require 'vk/api'
require 'vk/schema/method'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      module Methods
        autoload :Get, 'vk/api/users/methods/get'
        autoload :Search, 'vk/api/users/methods/search'
        autoload :IsAppUser, 'vk/api/users/methods/is_app_user'
        autoload :GetSubscriptions, 'vk/api/users/methods/get_subscriptions'
        autoload :GetFollowers, 'vk/api/users/methods/get_followers'
        autoload :Report, 'vk/api/users/methods/report'
        autoload :GetNearby, 'vk/api/users/methods/get_nearby'
      end

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Array] :user_ids  User IDs or screen names ('screen_name'). By default, current user ID.
      # @option arguments [Array, 'bdate'] :fields  Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'contacts', 'education', 'online', 'counters', 'relation', 'last_seen', 'activity', 'can_write_private_message', 'can_see_all_posts', 'can_post', 'universities';
      # @option arguments [String] :name_case  Case for declension of user name and surname:; 'nom' — nominative (default); 'gen' — genitive ; 'dat' — dative; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
      # @see Vk::API::Users::Methods::Get
      # @return [Vk::API::Users::Responses::GetResponse] Returns detailed information on users.
      def get(arguments = {})
        require "vk/api/users/methods/get"
        method = Methods::Get.new(arguments)
        response = method.call(@client)
        require "vk/api/users/responses/get_response"
        Responses::GetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :q  Search query string (e.g., 'Vasya Babich').
      # @option arguments [Integer] :sort  Sort order:; '1' — by date registered; '0' — by rating
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of users.
      # @option arguments [Integer] :count (20) Number of users to return.
      # @option arguments [Array, 'bdate'] :fields  Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online';
      # @option arguments [Integer] :city  City ID.
      # @option arguments [Integer] :country  Country ID.
      # @option arguments [String] :hometown  City name in a string.
      # @option arguments [Integer] :university_country  ID of the country where the user graduated.
      # @option arguments [Integer] :university  ID of the institution of higher education.
      # @option arguments [Integer] :university_year  Year of graduation from an institution of higher education.
      # @option arguments [Integer] :university_faculty  Faculty ID.
      # @option arguments [Integer] :university_chair  Chair ID.
      # @option arguments [Integer] :sex  '1' — female; '2' — male; '0' — any (default)
      # @option arguments [Integer] :status  Relationship status:; '1' — Not married; '2' — In a relationship; '3' — Engaged; '4' — Married; '5' — It's complicated; '6' — Actively searching; '7' — In love
      # @option arguments [Integer] :age_from  Minimum age.
      # @option arguments [Integer] :age_to  Maximum age.
      # @option arguments [Integer] :birth_day  Day of birth.
      # @option arguments [Integer] :birth_month  Month of birth.
      # @option arguments [Integer] :birth_year  Year of birth.
      # @option arguments [Boolean] :online  '1' — online only; '0' — all users
      # @option arguments [Boolean] :has_photo  '1' — with photo only; '0' — all users
      # @option arguments [Integer] :school_country  ID of the country where users finished school.
      # @option arguments [Integer] :school_city  ID of the city where users finished school.
      # @option arguments [Integer] :school_class  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :school  ID of the school.
      # @option arguments [Integer] :school_year  School graduation year.
      # @option arguments [String] :religion  Users' religious affiliation.
      # @option arguments [String] :interests  Users' interests.
      # @option arguments [String] :company  Name of the company where users work.
      # @option arguments [String] :position  Job position.
      # @option arguments [Integer] :group_id  ID of a community to search in communities.
      # @option arguments [Array] :from_list  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Users::Methods::Search
      # @return [Vk::API::Users::Responses::SearchResponse] Returns a list of users matching the search criteria.
      def search(arguments = {})
        require "vk/api/users/methods/search"
        method = Methods::Search.new(arguments)
        response = method.call(@client)
        require "vk/api/users/responses/search_response"
        Responses::SearchResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Users::Methods::IsAppUser
      # @return [Vk::API::Users::Responses::IsAppUserResponse] Returns information whether a user installed the application.
      def is_app_user(arguments = {})
        require "vk/api/users/methods/is_app_user"
        method = Methods::IsAppUser.new(arguments)
        response = method.call(@client)
        require "vk/api/users/responses/is_app_user_response"
        Responses::IsAppUserResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  User ID.
      # @option arguments [Boolean] :extended  '1' — to return a combined list of users and communities; '0' — to return separate lists of users and communities (default)
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of subscriptions.
      # @option arguments [Integer] :count (20) Number of users and communities to return.
      # @option arguments [Array] :fields  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Users::Methods::GetSubscriptions
      # @return [Vk::API::Users::Responses::GetSubscriptionsResponse] Returns a list of IDs of users and communities followed by the user.
      def get_subscriptions(arguments = {})
        require "vk/api/users/methods/get_subscriptions"
        method = Methods::GetSubscriptions.new(arguments)
        response = method.call(@client)
        require "vk/api/users/responses/get_subscriptions_response"
        Responses::GetSubscriptionsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  User ID.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of followers.
      # @option arguments [Integer] :count (100) Number of followers to return.
      # @option arguments [Array, 'bdate'] :fields  Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online'.;
      # @option arguments [String] :name_case  Case for declension of user name and surname:; 'nom' — nominative (default); 'gen' — genitive ; 'dat' — dative; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
      # @see Vk::API::Users::Methods::GetFollowers
      # @return [Vk::API::Users::Responses::GetFollowersResponse] Returns a list of IDs of followers of the user in question, sorted by date added, most recent first.
      def get_followers(arguments = {})
        require "vk/api/users/methods/get_followers"
        method = Methods::GetFollowers.new(arguments)
        response = method.call(@client)
        require "vk/api/users/responses/get_followers_response"
        Responses::GetFollowersResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  ID of the user about whom a complaint is being made.
      # @option arguments [String] :type  Type of complaint:; 'porn' – pornography; 'spam' – spamming; 'insult' – abusive behavior; 'advertisment' – disruptive advertisements
      # @option arguments [String] :comment  Comment describing the complaint.
      # @see Vk::API::Users::Methods::Report
      # @return [Vk::API::Users::Responses::ReportResponse] Reports (submits a complain about) a user.;
      def report(arguments = {})
        require "vk/api/users/methods/report"
        method = Methods::Report.new(arguments)
        response = method.call(@client)
        require "vk/api/users/responses/report_response"
        Responses::ReportResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Number] :latitude  geographic latitude of the place a user is located, in degrees (from -90 to 90)
      # @option arguments [Number] :longitude  geographic longitude of the place a user is located, in degrees (from -180 to 180)
      # @option arguments [Integer] :accuracy  current location accuracy in meters
      # @option arguments [Integer] :timeout (7200) time when a user disappears from location search results, in seconds
      # @option arguments [Integer] :radius (1) search zone radius type (1 to 4); :* 1 – 300 m;; :* 2 – 2400 m;; :* 3 – 18 km;; :* 4 – 150 km.
      # @option arguments [Array] :fields  list of additional fields to return.; Available values: sex, bdate, city, country, photo_50, photo_100, photo_200_orig, photo_200, photo_400_orig, photo_max, photo_max_orig, online, online_mobile, domain, has_mobile, contacts, connections, site, education, universities, schools, can_post, can_see_all_posts, can_see_audio, can_write_private_message, status, last_seen, common_count, relation, relatives, counters, screen_name, maiden_name, timezone, occupation
      # @option arguments [String] :name_case  Case for declension of user name and surname: ; nom –nominative (default) ; gen – genitive ; dat – dative ; acc – accusative ; ins – instrumental ; abl – prepositional
      # @see Vk::API::Users::Methods::GetNearby
      # @return [Vk::API::Users::Responses::GetNearbyResponse] Indexes current user location and returns nearby users.
      def get_nearby(arguments = {})
        require "vk/api/users/methods/get_nearby"
        method = Methods::GetNearby.new(arguments)
        response = method.call(@client)
        require "vk/api/users/responses/get_nearby_response"
        Responses::GetNearbyResponse.new(response.deep_symbolize_keys)
      end
    end
    class Auth < Vk::Schema::Namespace
      module Methods
        autoload :CheckPhone, 'vk/api/auth/methods/check_phone'
        autoload :Signup, 'vk/api/auth/methods/signup'
        autoload :Confirm, 'vk/api/auth/methods/confirm'
        autoload :Restore, 'vk/api/auth/methods/restore'
      end

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [String] :phone  Phone number.
      # @option arguments [Integer] :client_id  User ID.
      # @option arguments [String] :client_secret  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Boolean] :auth_by_phone  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Auth::Methods::CheckPhone
      # @return [Vk::API::Auth::Responses::CheckPhoneResponse] Checks a user's phone number for correctness.
      def check_phone(arguments = {})
        require "vk/api/auth/methods/check_phone"
        method = Methods::CheckPhone.new(arguments)
        response = method.call(@client)
        require "vk/api/auth/responses/check_phone_response"
        Responses::CheckPhoneResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :first_name  User's first name.
      # @option arguments [String] :last_name  User's surname.
      # @option arguments [Integer] :client_id  Your application ID.
      # @option arguments [String] :client_secret  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :phone  User's phone number. Can be pre-checked with the  method.
      # @option arguments [String] :password  User's password (minimum of 6 characters). Can be specified later with the  method.
      # @option arguments [Boolean] :test_mode  '1' — test mode, in which the user will not be registered and the phone number will not be checked for availability; '0' — default mode (default)
      # @option arguments [Boolean] :voice  '1' — call the phone number and leave a voice message of the authorization code; '0' — send the code by SMS (default)
      # @option arguments [Integer] :sex  '1' — female; '2' — male
      # @option arguments [String] :sid  Session ID required for method recall when SMS was not delivered.
      # @see Vk::API::Auth::Methods::Signup
      # @return [Vk::API::Auth::Responses::SignupResponse] Registers a new user by phone number.
      def signup(arguments = {})
        require "vk/api/auth/methods/signup"
        method = Methods::Signup.new(arguments)
        response = method.call(@client)
        require "vk/api/auth/responses/signup_response"
        Responses::SignupResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :client_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :client_secret  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :phone  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :code  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :password  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Boolean] :test_mode  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :intro  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Auth::Methods::Confirm
      # @return [Vk::API::Auth::Responses::ConfirmResponse] Completes a user's registration (begun with the  method) using an authorization code.
      def confirm(arguments = {})
        require "vk/api/auth/methods/confirm"
        method = Methods::Confirm.new(arguments)
        response = method.call(@client)
        require "vk/api/auth/responses/confirm_response"
        Responses::ConfirmResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :phone  user phone number.
      # @see Vk::API::Auth::Methods::Restore
      # @return [Vk::API::Auth::Responses::RestoreResponse] Allows to restore account access using a code received via SMS.; ; " This method is only available for apps with  access. "
      def restore(arguments = {})
        require "vk/api/auth/methods/restore"
        method = Methods::Restore.new(arguments)
        response = method.call(@client)
        require "vk/api/auth/responses/restore_response"
        Responses::RestoreResponse.new(response.deep_symbolize_keys)
      end
    end
    class Wall < Vk::Schema::Namespace
      module Methods
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

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the wall. By default, current user ID. Use a negative value to designate a community ID.
      # @option arguments [String] :domain  User or community short address.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of posts.
      # @option arguments [Integer] :count  Number of posts to return (maximum 100).
      # @option arguments [String] :filter  Filter to apply:; 'owner' — posts by the wall owner; 'others' — posts by someone else; 'all' — posts by the wall owner and others (default); 'postponed' — timed posts (only available for calls with an 'access_token'); 'suggests' — suggested posts on a community wall
      # @option arguments [Boolean] :extended  '1' — to return 'wall', 'profiles', and 'groups' fields; '0' — to return no additional fields (default)
      # @option arguments [Array] :fields  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Wall::Methods::Get
      # @return [Vk::API::Wall::Responses::GetResponse] Returns a list of posts on a user wall or community wall.
      def get(arguments = {})
        require "vk/api/wall/methods/get"
        method = Methods::Get.new(arguments)
        response = method.call(@client)
        require "vk/api/wall/responses/get_response"
        Responses::GetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  user or community id. ; "Remember that for a community 'owner_id' must be negative."
      # @option arguments [String] :domain  user or community screen name.
      # @option arguments [String] :query  search query string.
      # @option arguments [Boolean] :owners_only  '1' – returns only page owner's posts.
      # @option arguments [Integer] :count (20) count of posts to return.
      # @option arguments [Boolean] :extended  show extended post info.
      # @option arguments [Array] :fields  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Wall::Methods::Search
      # @return [Vk::API::Wall::Responses::SearchResponse] Allows to search posts on user or community walls.
      def search(arguments = {})
        require "vk/api/wall/methods/search"
        method = Methods::Search.new(arguments)
        response = method.call(@client)
        require "vk/api/wall/responses/search_response"
        Responses::SearchResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :posts  User or community IDs and post IDs, separated by underscores.  Use a negative value to designate a community ID.  Example:; "93388_21539,93388_20904,2943_4276,-1_1"
      # @option arguments [Boolean] :extended  '1' — to return user and community objects needed to display posts; '0' — no additional fields are returned (default)
      # @option arguments [Integer] :copy_history_depth (2) Sets the number of parent elements to include in the array 'copy_history' that is returned if the post is a repost from another wall.
      # @option arguments [Array] :fields  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Wall::Methods::GetById
      # @return [Vk::API::Wall::Responses::GetByIdResponse] Returns a list of posts from user or community walls by their IDs.
      def get_by_id(arguments = {})
        require "vk/api/wall/methods/get_by_id"
        method = Methods::GetById.new(arguments)
        response = method.call(@client)
        require "vk/api/wall/responses/get_by_id_response"
        Responses::GetByIdResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  User ID or community ID. Use a negative value to designate a community ID.
      # @option arguments [Boolean] :friends_only  '1' — post will be available to friends only; '0' — post will be available to all users (default)
      # @option arguments [Boolean] :from_group  For a community:; '1' — post will be published by the community; '0' — post will be published by the user (default)
      # @option arguments [String] :message  (Required if 'attachments' is not set.) Text of the post.
      # @option arguments [Array] :attachments  (Required if 'message' is not set.) List of objects attached to the post, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; 'page' — wiki-page; 'note' — note; 'poll' — poll; 'album' — photo album; '<owner_id>' — ID of the media application owner. ; '<media_id>' — Media application ID.; ; Example:; "photo100172_166443618,photo66748_265827614"; May contain a link to an external page to include in the post. Example:; "photo66748_265827614,http://habrahabr.ru"; "NOTE: If more than one link is being attached, an error will be thrown."
      # @option arguments [String, 'facebook'] :services  List of services or websites the update will be exported to, if the user has so requested. Sample values: 'twitter', 'facebook'.
      # @option arguments [Boolean] :signed  Only for posts in communities with 'from_group' set to '1':; '1' — post will be signed with the name of the posting user; '0' — post will not be signed (default)
      # @option arguments [Integer] :publish_date  Publication date (in Unix time). If used, posting will be delayed until the set time.
      # @option arguments [Number] :lat  Geographical latitude of a check-in, in degrees (from -90 to 90).
      # @option arguments [Number] :long  Geographical longitude of a check-in, in degrees (from -180 to 180).
      # @option arguments [Integer] :place_id  ID of the location where the user was tagged.
      # @option arguments [Integer] :post_id  Post ID. Used for publishing of scheduled and suggested posts.
      # @option arguments [String] :guid  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Boolean] :mark_as_ads (false) @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Wall::Methods::Post
      # @return [Vk::API::Wall::Responses::PostResponse] Adds a new post on a user wall or community wall. Can also be used to publish suggested or scheduled posts.
      def post(arguments = {})
        require "vk/api/wall/methods/post"
        method = Methods::Post.new(arguments)
        response = method.call(@client)
        require "vk/api/wall/responses/post_response"
        Responses::PostResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :object  ID of the object to be reposted on the wall. Example:; "wall66748_3675"
      # @option arguments [String] :message  Comment to be added along with the reposted object.
      # @option arguments [Integer] :group_id  Target community ID when reposting to a community.
      # @option arguments [Boolean] :mark_as_ads (false) @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Wall::Methods::Repost
      # @return [Vk::API::Wall::Responses::RepostResponse] Reposts (copies) an object to a user wall or community wall.
      def repost(arguments = {})
        require "vk/api/wall/methods/repost"
        method = Methods::Repost.new(arguments)
        response = method.call(@client)
        require "vk/api/wall/responses/repost_response"
        Responses::RepostResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  User ID or community ID. By default, current user ID. Use a negative value to designate a community ID.
      # @option arguments [Integer] :post_id  Post ID.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of reposts.
      # @option arguments [Integer] :count (20) Number of reposts to return.
      # @see Vk::API::Wall::Methods::GetReposts
      # @return [Vk::API::Wall::Responses::GetRepostsResponse] Returns information about reposts of a post on user wall or community wall.
      def get_reposts(arguments = {})
        require "vk/api/wall/methods/get_reposts"
        method = Methods::GetReposts.new(arguments)
        response = method.call(@client)
        require "vk/api/wall/responses/get_reposts_response"
        Responses::GetRepostsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  User ID or community ID. Use a negative value to designate a community ID.
      # @option arguments [Integer] :post_id  Post ID.
      # @option arguments [Boolean] :friends_only  (Applies only when editing a scheduled post.); '1' — post will be available to friends only; '0' — post will be available to all users (default)
      # @option arguments [String] :message  (Required if 'attachments' is not set.) Text of the post.
      # @option arguments [Array] :attachments  (Required if 'message' is not set.) List of objects attached to the post, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media application owner.; '<media_id>' — Media application ID. ; ; Example:; "photo100172_166443618,photo66748_265827614"; May contain a link to an external page to include in the post. Example:; "photo66748_265827614,http://habrahabr.ru"; "NOTE: If more than one link is being attached, an error is thrown."
      # @option arguments [String, 'facebook'] :services  (Applies only to a scheduled post.) List of services or websites where status will be updated, if the user has so requested. Sample values: 'twitter', 'facebook'.
      # @option arguments [Boolean] :signed  (Applies only to a post that was created "as community" on a community wall.); '1' — to add the signature of the user who created the post
      # @option arguments [Integer] :publish_date  (Applies only to a scheduled post.) Publication date (in Unix time). If used, posting will be delayed until the set time.
      # @option arguments [Number] :lat  Geographical latitude of the check-in, in degrees (from -90 to 90).
      # @option arguments [Number] :long  Geographical longitude of the check-in, in degrees (from -180 to 180).
      # @option arguments [Integer] :place_id  ID of the location where the user was tagged.
      # @option arguments [Boolean] :mark_as_ads  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Wall::Methods::Edit
      # @return [Vk::API::Wall::Responses::EditResponse] Edits a post on a user wall or community wall.
      def edit(arguments = {})
        require "vk/api/wall/methods/edit"
        method = Methods::Edit.new(arguments)
        response = method.call(@client)
        require "vk/api/wall/responses/edit_response"
        Responses::EditResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  User ID or community ID. Use a negative value to designate a community ID.
      # @option arguments [Integer] :post_id  ID of the post to be deleted.
      # @see Vk::API::Wall::Methods::Delete
      # @return [Vk::API::Wall::Responses::DeleteResponse] Deletes a post from a user wall or community wall.
      def delete(arguments = {})
        require "vk/api/wall/methods/delete"
        method = Methods::Delete.new(arguments)
        response = method.call(@client)
        require "vk/api/wall/responses/delete_response"
        Responses::DeleteResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  User ID or community ID from whose wall the post was deleted. Use a negative value to designate a community ID.
      # @option arguments [Integer] :post_id  ID of the post to be restored.
      # @see Vk::API::Wall::Methods::Restore
      # @return [Vk::API::Wall::Responses::RestoreResponse] Restores a post deleted from a user wall or community wall.
      def restore(arguments = {})
        require "vk/api/wall/methods/restore"
        method = Methods::Restore.new(arguments)
        response = method.call(@client)
        require "vk/api/wall/responses/restore_response"
        Responses::RestoreResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the wall. By default, current user ID. Use a negative value to designate a community ID.
      # @option arguments [Integer] :post_id  Post ID.
      # @see Vk::API::Wall::Methods::Pin
      # @return [Vk::API::Wall::Responses::PinResponse] Pins the post on wall.
      def pin(arguments = {})
        require "vk/api/wall/methods/pin"
        method = Methods::Pin.new(arguments)
        response = method.call(@client)
        require "vk/api/wall/responses/pin_response"
        Responses::PinResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the wall. By default, current user ID. Use a negative value to designate a community ID.
      # @option arguments [Integer] :post_id  Post ID.
      # @see Vk::API::Wall::Methods::Unpin
      # @return [Vk::API::Wall::Responses::UnpinResponse] Unpins the post on wall.
      def unpin(arguments = {})
        require "vk/api/wall/methods/unpin"
        method = Methods::Unpin.new(arguments)
        response = method.call(@client)
        require "vk/api/wall/responses/unpin_response"
        Responses::UnpinResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  User ID or community ID. Use a negative value to designate a community ID.
      # @option arguments [Integer] :post_id  Post ID.
      # @option arguments [Boolean] :need_likes  '1' — to return the 'likes' field; '0'  — not to return the 'likes' field (default)
      # @option arguments [Integer] :start_comment_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of comments.
      # @option arguments [Integer] :count  Number of comments to return (maximum 100).
      # @option arguments [String] :sort  Sort order:; 'asc' — chronological; 'desc' — reverse chronological
      # @option arguments [Integer] :preview_length  Number of characters at which to truncate comments when previewed. By default, '90'. Specify '0' if you do not want to truncate comments.;
      # @option arguments [Boolean] :extended  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Wall::Methods::GetComments
      # @return [Vk::API::Wall::Responses::GetCommentsResponse] Returns a list of comments on a post on a user wall or community wall.
      def get_comments(arguments = {})
        require "vk/api/wall/methods/get_comments"
        method = Methods::GetComments.new(arguments)
        response = method.call(@client)
        require "vk/api/wall/responses/get_comments_response"
        Responses::GetCommentsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  User ID or community ID. Use a negative value to designate a community ID.
      # @option arguments [Integer] :post_id  Post ID.
      # @option arguments [Boolean] :from_group  '1' — to post the comment as from the community;; '0' — (default) to post the comment as from the user.
      # @option arguments [String] :message  (Required if 'attachments' is not set.) Text of the comment.
      # @option arguments [Integer] :reply_to_comment  ID of comment to reply.
      # @option arguments [Array] :attachments  (Required if 'message' is not set.) List of media objects attached to the comment, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media ojbect:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media owner.; '<media_id>' — Media ID. ; ; For example:; "photo100172_166443618,photo66748_265827614"
      # @option arguments [Integer] :sticker_id  Sticker ID.
      # @option arguments [String] :guid  Unique identifier to avoid repeated comments.
      # @see Vk::API::Wall::Methods::CreateComment
      # @return [Vk::API::Wall::Responses::CreateCommentResponse] Adds a comment to a post on a user wall or community wall.
      def create_comment(arguments = {})
        require "vk/api/wall/methods/create_comment"
        method = Methods::CreateComment.new(arguments)
        response = method.call(@client)
        require "vk/api/wall/responses/create_comment_response"
        Responses::CreateCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  User ID or community ID. Use a negative value to designate a community ID.; ;
      # @option arguments [Integer] :comment_id  Comment ID.
      # @option arguments [String] :message  New comment text.;
      # @option arguments [Array] :attachments  List of objects attached to the comment, in the following format:; ; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media attachment owner.; '<media_id>' — Media attachment ID. ; ; For example:; "photo100172_166443618,photo66748_265827614"
      # @see Vk::API::Wall::Methods::EditComment
      # @return [Vk::API::Wall::Responses::EditCommentResponse] Edits a comment on a user wall or community wall.;
      def edit_comment(arguments = {})
        require "vk/api/wall/methods/edit_comment"
        method = Methods::EditComment.new(arguments)
        response = method.call(@client)
        require "vk/api/wall/responses/edit_comment_response"
        Responses::EditCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  User ID or community ID. Use a negative value to designate a community ID.;
      # @option arguments [Integer] :comment_id  Comment ID.
      # @see Vk::API::Wall::Methods::DeleteComment
      # @return [Vk::API::Wall::Responses::DeleteCommentResponse] Deletes a comment on a post on a user wall or community wall.;
      def delete_comment(arguments = {})
        require "vk/api/wall/methods/delete_comment"
        method = Methods::DeleteComment.new(arguments)
        response = method.call(@client)
        require "vk/api/wall/responses/delete_comment_response"
        Responses::DeleteCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  User ID or community ID. Use a negative value to designate a community ID.
      # @option arguments [Integer] :comment_id  Comment ID.
      # @see Vk::API::Wall::Methods::RestoreComment
      # @return [Vk::API::Wall::Responses::RestoreCommentResponse] Restores a comment deleted from a user wall or community wall.;
      def restore_comment(arguments = {})
        require "vk/api/wall/methods/restore_comment"
        method = Methods::RestoreComment.new(arguments)
        response = method.call(@client)
        require "vk/api/wall/responses/restore_comment_response"
        Responses::RestoreCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the wall.
      # @option arguments [Integer] :post_id  Post ID.
      # @option arguments [Integer] :reason  Reason for the complaint:; '0' – spam; '1' – child pornography; '2' – extremism; '3' – violence; '4' – drug propaganda; '5' – adult material; '6' – insult; abuse
      # @see Vk::API::Wall::Methods::ReportPost
      # @return [Vk::API::Wall::Responses::ReportPostResponse] Reports (submits a complaint about) a post on a user wall or community wall.;
      def report_post(arguments = {})
        require "vk/api/wall/methods/report_post"
        method = Methods::ReportPost.new(arguments)
        response = method.call(@client)
        require "vk/api/wall/responses/report_post_response"
        Responses::ReportPostResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the wall.
      # @option arguments [Integer] :comment_id  Comment ID.
      # @option arguments [Integer] :reason  Reason for the complaint:; '0' – spam; '1' – child pornography; '2' – extremism; '3' – violence; '4' – drug propaganda; '5' – adult material; '6' – insult; abuse
      # @see Vk::API::Wall::Methods::ReportComment
      # @return [Vk::API::Wall::Responses::ReportCommentResponse] Reports (submits a complaint about) a comment on a post on a user wall or community wall.;
      def report_comment(arguments = {})
        require "vk/api/wall/methods/report_comment"
        method = Methods::ReportComment.new(arguments)
        response = method.call(@client)
        require "vk/api/wall/responses/report_comment_response"
        Responses::ReportCommentResponse.new(response.deep_symbolize_keys)
      end
    end
    class Photos < Vk::Schema::Namespace
      module Methods
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

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [String] :title  Album title.
      # @option arguments [Integer] :group_id  ID of the community in which the album will be created.
      # @option arguments [String] :description  Album description.
      # @option arguments [Array] :privacy_view ([]) @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Array] :privacy_comment ([]) @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Boolean] :upload_by_admins_only  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Boolean] :comments_disabled  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Photos::Methods::CreateAlbum
      # @return [Vk::API::Photos::Responses::CreateAlbumResponse] Creates an empty photo album.
      def create_album(arguments = {})
        require "vk/api/photos/methods/create_album"
        method = Methods::CreateAlbum.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/create_album_response"
        Responses::CreateAlbumResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :album_id  ID of the photo album to be edited.
      # @option arguments [String] :title  New album title.
      # @option arguments [String] :description  New album description.
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the album.
      # @option arguments [Array] :privacy_view  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Array] :privacy_comment  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Boolean] :upload_by_admins_only  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Boolean] :comments_disabled  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Photos::Methods::EditAlbum
      # @return [Vk::API::Photos::Responses::EditAlbumResponse] Edits information about a photo album.
      def edit_album(arguments = {})
        require "vk/api/photos/methods/edit_album"
        method = Methods::EditAlbum.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/edit_album_response"
        Responses::EditAlbumResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the albums.
      # @option arguments [Array] :album_ids  Album IDs.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of albums.
      # @option arguments [Integer] :count  Number of albums to return.
      # @option arguments [Boolean] :need_system  '1' — to return system albums with negative IDs
      # @option arguments [Boolean] :need_covers  '1' — to return an additional 'thumb_src' field; '0' — (default)
      # @option arguments [Boolean] :photo_sizes  '1' — to return photo sizes in a
      # @see Vk::API::Photos::Methods::GetAlbums
      # @return [Vk::API::Photos::Responses::GetAlbumsResponse] Returns a list of a user's or community's photo albums.
      def get_albums(arguments = {})
        require "vk/api/photos/methods/get_albums"
        method = Methods::GetAlbums.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/get_albums_response"
        Responses::GetAlbumsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the photos. Use a negative value to designate a community ID.
      # @option arguments [String] :album_id  Photo album ID. To return information about photos from service albums, use the following string values: 'profile, wall, saved'.
      # @option arguments [Array] :photo_ids  Photo IDs.
      # @option arguments [Boolean] :rev  Sort order:; '1' — reverse chronological; '0' — chronological
      # @option arguments [Boolean] :extended  '1' — to return additional 'likes', 'comments', and 'tags' fields; '0' — (default)
      # @option arguments [String] :feed_type  Type of feed obtained in 'feed' field of the method.
      # @option arguments [Integer] :feed  unixtime, that can be obtained with  method in date field to get all photos uploaded by the user on a specific day, or photos the user has been tagged on. Also, 'uid' parameter of the user the event happened with shall be specified.
      # @option arguments [Boolean] :photo_sizes  '1' — to return photo sizes in a
      # @option arguments [Integer] :offset  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :count  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Photos::Methods::Get
      # @return [Vk::API::Photos::Responses::GetResponse] Returns a list of a user's or community's photos.
      def get(arguments = {})
        require "vk/api/photos/methods/get"
        method = Methods::Get.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/get_response"
        Responses::GetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  User ID.
      # @option arguments [Integer] :group_id  Community ID.
      # @see Vk::API::Photos::Methods::GetAlbumsCount
      # @return [Vk::API::Photos::Responses::GetAlbumsCountResponse] Returns the number of photo albums belonging to a user or community.
      def get_albums_count(arguments = {})
        require "vk/api/photos/methods/get_albums_count"
        method = Methods::GetAlbumsCount.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/get_albums_count_response"
        Responses::GetAlbumsCountResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :photos  IDs separated with a comma, that are IDs of users who posted photos and IDs of photos themselves with an underscore character between such IDs. To get information about a photo in the group album, you shall specify group ID instead of user ID. Example:; "1_129207899,6492_135055734, ; -20629724_271945303"
      # @option arguments [Boolean] :extended  '1' — to return additional fields; '0' — (default)
      # @option arguments [Boolean] :photo_sizes  '1' — to return photo sizes in a
      # @see Vk::API::Photos::Methods::GetById
      # @return [Vk::API::Photos::Responses::GetByIdResponse] Returns information about photos by their IDs.
      def get_by_id(arguments = {})
        require "vk/api/photos/methods/get_by_id"
        method = Methods::GetById.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/get_by_id_response"
        Responses::GetByIdResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :album_id  Album ID.
      # @option arguments [Integer] :group_id  ID of community that owns the album (if the photo will be uploaded to a community album).
      # @see Vk::API::Photos::Methods::GetUploadServer
      # @return [Vk::API::Photos::Responses::GetUploadServerResponse] Returns the server address for photo upload.
      def get_upload_server(arguments = {})
        require "vk/api/photos/methods/get_upload_server"
        method = Methods::GetUploadServer.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/get_upload_server_response"
        Responses::GetUploadServerResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  identifier of a community or current user.; ; "Note that community id must be negative.; 'owner_id=1' – user; 'owner_id=-1' – community; "
      # @see Vk::API::Photos::Methods::GetOwnerPhotoUploadServer
      # @return [Vk::API::Photos::Responses::GetOwnerPhotoUploadServerResponse] Returns an upload server address for a profile or community photo.
      def get_owner_photo_upload_server(arguments = {})
        require "vk/api/photos/methods/get_owner_photo_upload_server"
        method = Methods::GetOwnerPhotoUploadServer.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/get_owner_photo_upload_server_response"
        Responses::GetOwnerPhotoUploadServerResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :chat_id  ID of the chat for which you want to upload a cover photo.
      # @option arguments [Integer] :crop_x  
      # @option arguments [Integer] :crop_y  
      # @option arguments [Integer] :crop_width  Width (in pixels) of the photo after cropping.
      # @see Vk::API::Photos::Methods::GetChatUploadServer
      # @return [Vk::API::Photos::Responses::GetChatUploadServerResponse] Returns an upload link for chat cover pictures.
      def get_chat_upload_server(arguments = {})
        require "vk/api/photos/methods/get_chat_upload_server"
        method = Methods::GetChatUploadServer.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/get_chat_upload_server_response"
        Responses::GetChatUploadServerResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [Boolean] :main_photo  '1' if you want to upload the main item photo.
      # @option arguments [Integer] :crop_x  X coordinate of the crop left upper corner.
      # @option arguments [Integer] :crop_y  Y coordinate of the crop left upper corner.
      # @option arguments [Integer] :crop_width  Width of the cropped photo in px.
      # @see Vk::API::Photos::Methods::GetMarketUploadServer
      # @return [Vk::API::Photos::Responses::GetMarketUploadServerResponse] Returns the server address for market photo upload.
      def get_market_upload_server(arguments = {})
        require "vk/api/photos/methods/get_market_upload_server"
        method = Methods::GetMarketUploadServer.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/get_market_upload_server_response"
        Responses::GetMarketUploadServerResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @see Vk::API::Photos::Methods::GetMarketAlbumUploadServer
      # @return [Vk::API::Photos::Responses::GetMarketAlbumUploadServerResponse] Returns the server address for market album photo upload.
      def get_market_album_upload_server(arguments = {})
        require "vk/api/photos/methods/get_market_album_upload_server"
        method = Methods::GetMarketAlbumUploadServer.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/get_market_album_upload_server_response"
        Responses::GetMarketAlbumUploadServerResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [String] :photo  Parameter returned when photos are .
      # @option arguments [Integer] :server  Parameter returned when photos are .
      # @option arguments [String] :hash  Parameter returned when photos are .
      # @option arguments [String] :crop_data  Parameter returned when photos are .
      # @option arguments [String] :crop_hash  Parameter returned when photos are .
      # @see Vk::API::Photos::Methods::SaveMarketPhoto
      # @return [Vk::API::Photos::Responses::SaveMarketPhotoResponse] Saves market photos after successful uploading.
      def save_market_photo(arguments = {})
        require "vk/api/photos/methods/save_market_photo"
        method = Methods::SaveMarketPhoto.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/save_market_photo_response"
        Responses::SaveMarketPhotoResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [String] :photo  Parameter returned when photos are .
      # @option arguments [Integer] :server  Parameter returned when photos are .
      # @option arguments [String] :hash  Parameter returned when photos are .
      # @see Vk::API::Photos::Methods::SaveMarketAlbumPhoto
      # @return [Vk::API::Photos::Responses::SaveMarketAlbumPhotoResponse] Saves market album photos after successful uploading.
      def save_market_album_photo(arguments = {})
        require "vk/api/photos/methods/save_market_album_photo"
        method = Methods::SaveMarketAlbumPhoto.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/save_market_album_photo_response"
        Responses::SaveMarketAlbumPhotoResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :server  parameter returned after .
      # @option arguments [String] :hash  parameter returned after .
      # @option arguments [String] :photo  parameter returned after .
      # @see Vk::API::Photos::Methods::SaveOwnerPhoto
      # @return [Vk::API::Photos::Responses::SaveOwnerPhotoResponse] Saves  a profile or community photo.
      def save_owner_photo(arguments = {})
        require "vk/api/photos/methods/save_owner_photo"
        method = Methods::SaveOwnerPhoto.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/save_owner_photo_response"
        Responses::SaveOwnerPhotoResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  ID of the user on whose wall the photo will be saved.
      # @option arguments [Integer] :group_id  ID of community on whose wall the photo will be saved.
      # @option arguments [String] :photo  Parameter returned when the .
      # @option arguments [Integer] :server  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :hash  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Photos::Methods::SaveWallPhoto
      # @return [Vk::API::Photos::Responses::SaveWallPhotoResponse] Saves a photo to a user's or community's wall after being uploaded.
      def save_wall_photo(arguments = {})
        require "vk/api/photos/methods/save_wall_photo"
        method = Methods::SaveWallPhoto.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/save_wall_photo_response"
        Responses::SaveWallPhotoResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  ID of community to whose wall the photo will be uploaded.
      # @see Vk::API::Photos::Methods::GetWallUploadServer
      # @return [Vk::API::Photos::Responses::GetWallUploadServerResponse] Returns the server address for photo upload onto a user's wall.
      def get_wall_upload_server(arguments = {})
        require "vk/api/photos/methods/get_wall_upload_server"
        method = Methods::GetWallUploadServer.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/get_wall_upload_server_response"
        Responses::GetWallUploadServerResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @see Vk::API::Photos::Methods::GetMessagesUploadServer
      # @return [Vk::API::Photos::Responses::GetMessagesUploadServerResponse] Returns the server address for photo upload in a private message for a user.
      def get_messages_upload_server(arguments = {})
        require "vk/api/photos/methods/get_messages_upload_server"
        method = Methods::GetMessagesUploadServer.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/get_messages_upload_server_response"
        Responses::GetMessagesUploadServerResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :photo  Parameter returned when .
      # @option arguments [Integer] :server  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :hash  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Photos::Methods::SaveMessagesPhoto
      # @return [Vk::API::Photos::Responses::SaveMessagesPhotoResponse] Saves a photo after being successfully uploaded. URL obtained with  method.
      def save_messages_photo(arguments = {})
        require "vk/api/photos/methods/save_messages_photo"
        method = Methods::SaveMessagesPhoto.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/save_messages_photo_response"
        Responses::SaveMessagesPhotoResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the photo.
      # @option arguments [Integer] :photo_id  Photo ID.
      # @option arguments [Integer] :reason  Reason for the complaint:; '0' – spam; '1' – child pornography; '2' – extremism; '3' – violence; '4' – drug propaganda; '5' – adult material; '6' – insult; abuse
      # @see Vk::API::Photos::Methods::Report
      # @return [Vk::API::Photos::Responses::ReportResponse] Reports (submits a complaint about) a photo.;
      def report(arguments = {})
        require "vk/api/photos/methods/report"
        method = Methods::Report.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/report_response"
        Responses::ReportResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the photo.
      # @option arguments [Integer] :comment_id  ID of the comment being reported.
      # @option arguments [Integer] :reason  Reason for the complaint:; '0' – spam; '1' – child pornography; '2' – extremism; '3' – violence; '4' – drug propaganda; '5' – adult material; '6' – insult; abuse
      # @see Vk::API::Photos::Methods::ReportComment
      # @return [Vk::API::Photos::Responses::ReportCommentResponse] Reports (submits a complaint about) a comment on a photo.;
      def report_comment(arguments = {})
        require "vk/api/photos/methods/report_comment"
        method = Methods::ReportComment.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/report_comment_response"
        Responses::ReportCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :q  Search query string.
      # @option arguments [Number] :lat  Geographical latitude, in degrees (from '-90' to '90').
      # @option arguments [Number] :long  Geographical longitude, in degrees (from '-180' to '180').;
      # @option arguments [Integer] :start_time  
      # @option arguments [Integer] :end_time  
      # @option arguments [Integer] :sort  Sort order:
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of photos.
      # @option arguments [Integer] :count (100) Number of photos to return.
      # @option arguments [Integer] :radius (5000) Radius of search in meters (works very approximately). Available values: '10', '100', '800', '6000', '50000'.
      # @see Vk::API::Photos::Methods::Search
      # @return [Vk::API::Photos::Responses::SearchResponse] Returns a list of photos.
      def search(arguments = {})
        require "vk/api/photos/methods/search"
        method = Methods::Search.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/search_response"
        Responses::SearchResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :album_id  ID of the album to save photos to.
      # @option arguments [Integer] :group_id  ID of the community to save photos to.
      # @option arguments [Integer] :server  Parameter returned when .
      # @option arguments [String] :photos_list  Parameter returned when .
      # @option arguments [String] :hash  Parameter returned when .
      # @option arguments [Number] :latitude  Geographical latitude, in degrees (from '-90' to '90').
      # @option arguments [Number] :longitude  Geographical longitude, in degrees (from '-180' to '180').
      # @option arguments [String] :caption  Text describing the photo. 2048 digits max.
      # @see Vk::API::Photos::Methods::Save
      # @return [Vk::API::Photos::Responses::SaveResponse] Saves photos after successful uploading.
      def save(arguments = {})
        require "vk/api/photos/methods/save"
        method = Methods::Save.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/save_response"
        Responses::SaveResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  photo's owner ID
      # @option arguments [Integer] :photo_id  photo ID
      # @option arguments [String] :access_key  for private photos
      # @see Vk::API::Photos::Methods::Copy
      # @return [Vk::API::Photos::Responses::CopyResponse] Allows to copy a photo to the "Saved photos" album
      def copy(arguments = {})
        require "vk/api/photos/methods/copy"
        method = Methods::Copy.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/copy_response"
        Responses::CopyResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the photo.
      # @option arguments [Integer] :photo_id  Photo ID.
      # @option arguments [String] :caption  New caption for the photo. If this parameter is not set, it is considered to be equal to an empty string.
      # @option arguments [Number] :latitude  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Number] :longitude  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :place_str  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :foursquare_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Boolean] :delete_place  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Photos::Methods::Edit
      # @return [Vk::API::Photos::Responses::EditResponse] Edits the caption of a photo.
      def edit(arguments = {})
        require "vk/api/photos/methods/edit"
        method = Methods::Edit.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/edit_response"
        Responses::EditResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the photo.
      # @option arguments [Integer] :target_album_id  ID of the album to which the photo will be moved.
      # @option arguments [Integer] :photo_id  Photo ID.
      # @see Vk::API::Photos::Methods::Move
      # @return [Vk::API::Photos::Responses::MoveResponse] Moves a photo from one album to another.
      def move(arguments = {})
        require "vk/api/photos/methods/move"
        method = Methods::Move.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/move_response"
        Responses::MoveResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the photo.
      # @option arguments [Integer] :photo_id  Photo ID.
      # @option arguments [Integer] :album_id  Album ID.
      # @see Vk::API::Photos::Methods::MakeCover
      # @return [Vk::API::Photos::Responses::MakeCoverResponse] Makes a photo into an album cover.
      def make_cover(arguments = {})
        require "vk/api/photos/methods/make_cover"
        method = Methods::MakeCover.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/make_cover_response"
        Responses::MakeCoverResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the album.
      # @option arguments [Integer] :album_id  Album ID.
      # @option arguments [Integer] :before  ID of the album before which the album in question shall be placed.
      # @option arguments [Integer] :after  ID of the album after which the album in question shall be placed.
      # @see Vk::API::Photos::Methods::ReorderAlbums
      # @return [Vk::API::Photos::Responses::ReorderAlbumsResponse] Reorders the album in the list of user albums.
      def reorder_albums(arguments = {})
        require "vk/api/photos/methods/reorder_albums"
        method = Methods::ReorderAlbums.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/reorder_albums_response"
        Responses::ReorderAlbumsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the photo.
      # @option arguments [Integer] :photo_id  Photo ID.
      # @option arguments [Integer] :before  ID of the photo before which the photo in question shall be placed.
      # @option arguments [Integer] :after  ID of the photo after which the photo in question shall be placed.
      # @see Vk::API::Photos::Methods::ReorderPhotos
      # @return [Vk::API::Photos::Responses::ReorderPhotosResponse] Reorders the photo in the list of photos of the user album.
      def reorder_photos(arguments = {})
        require "vk/api/photos/methods/reorder_photos"
        method = Methods::ReorderPhotos.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/reorder_photos_response"
        Responses::ReorderPhotosResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of a user or community that owns the photos.; Use a negative value to designate a community ID.
      # @option arguments [Boolean] :extended  '1' — to return detailed information about photos
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of photos. By default, '0'.
      # @option arguments [Integer] :count (20) Number of photos to return.
      # @option arguments [Boolean] :photo_sizes  '1' – to return image sizes in .
      # @option arguments [Boolean] :no_service_albums  '1' – to return photos only from standard albums; '0' – to return all photos including those in service albums, e.g., 'My wall photos' (default)
      # @option arguments [Boolean] :need_hidden  '1' – to show information about photos being hidden from the block above the wall.
      # @option arguments [Boolean] :skip_hidden  '1' – not to return photos being hidden from the block above the wall. Works only with owner_id>0, no_service_albums is ignored.
      # @see Vk::API::Photos::Methods::GetAll
      # @return [Vk::API::Photos::Responses::GetAllResponse] Returns a list of photos belonging to a user or community, in reverse chronological order.
      def get_all(arguments = {})
        require "vk/api/photos/methods/get_all"
        method = Methods::GetAll.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/get_all_response"
        Responses::GetAllResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  User ID.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of photos. By default, '0'.
      # @option arguments [Integer] :count (20) Number of photos to return. Maximum value is 100.
      # @option arguments [Boolean] :extended  '1' — to return an additional 'likes' field; '0' — (default)
      # @option arguments [String] :sort  Sort order:; '1' — by date the tag was added in ascending order; '0' — by date the tag was added in descending order
      # @see Vk::API::Photos::Methods::GetUserPhotos
      # @return [Vk::API::Photos::Responses::GetUserPhotosResponse] Returns a list of photos in which a user is tagged.
      def get_user_photos(arguments = {})
        require "vk/api/photos/methods/get_user_photos"
        method = Methods::GetUserPhotos.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/get_user_photos_response"
        Responses::GetUserPhotosResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :album_id  Album ID.
      # @option arguments [Integer] :group_id  ID of the community that owns the album.
      # @see Vk::API::Photos::Methods::DeleteAlbum
      # @return [Vk::API::Photos::Responses::DeleteAlbumResponse] Deletes a photo album belonging to the current user.
      def delete_album(arguments = {})
        require "vk/api/photos/methods/delete_album"
        method = Methods::DeleteAlbum.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/delete_album_response"
        Responses::DeleteAlbumResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the photo.
      # @option arguments [Integer] :photo_id  Photo ID.
      # @see Vk::API::Photos::Methods::Delete
      # @return [Vk::API::Photos::Responses::DeleteResponse] Deletes a photo.
      def delete(arguments = {})
        require "vk/api/photos/methods/delete"
        method = Methods::Delete.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/delete_response"
        Responses::DeleteResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the photo.
      # @option arguments [Integer] :photo_id  Photo ID.
      # @see Vk::API::Photos::Methods::Restore
      # @return [Vk::API::Photos::Responses::RestoreResponse] Restores a deleted photo.
      def restore(arguments = {})
        require "vk/api/photos/methods/restore"
        method = Methods::Restore.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/restore_response"
        Responses::RestoreResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the photo.
      # @option arguments [String] :photo_id  Photo ID.
      # @option arguments [Integer] :tag_id  Tag ID.
      # @see Vk::API::Photos::Methods::ConfirmTag
      # @return [Vk::API::Photos::Responses::ConfirmTagResponse] Confirms a tag on a photo.
      def confirm_tag(arguments = {})
        require "vk/api/photos/methods/confirm_tag"
        method = Methods::ConfirmTag.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/confirm_tag_response"
        Responses::ConfirmTagResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the photo.
      # @option arguments [Integer] :photo_id  Photo ID.
      # @option arguments [Boolean] :need_likes  '1' — to return an additional 'likes' field; '0' — (default)
      # @option arguments [Integer] :start_comment_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of comments. By default, '0'.
      # @option arguments [Integer] :count (20) Number of comments to return.
      # @option arguments [String] :sort  Sort order:; 'asc' — old first; 'desc' — new first
      # @option arguments [String] :access_key  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Boolean] :extended  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Array] :fields  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Photos::Methods::GetComments
      # @return [Vk::API::Photos::Responses::GetCommentsResponse] Returns a list of comments on a photo.
      def get_comments(arguments = {})
        require "vk/api/photos/methods/get_comments"
        method = Methods::GetComments.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/get_comments_response"
        Responses::GetCommentsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the album(s).
      # @option arguments [Integer] :album_id  Album ID. If the parameter is not set, comments on all of the user's albums will be returned.
      # @option arguments [Boolean] :need_likes  '1' — to return an additional 'likes' field; '0' — (default)
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of comments. By default, '0'.
      # @option arguments [Integer] :count  Number of comments to return. By default, '20'. Maximum value, '100'.
      # @see Vk::API::Photos::Methods::GetAllComments
      # @return [Vk::API::Photos::Responses::GetAllCommentsResponse] Returns a list of comments on a specific photo album or all albums of the user sorted in reverse chronological order.
      def get_all_comments(arguments = {})
        require "vk/api/photos/methods/get_all_comments"
        method = Methods::GetAllComments.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/get_all_comments_response"
        Responses::GetAllCommentsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the photo.
      # @option arguments [Integer] :photo_id  Photo ID.
      # @option arguments [String] :message  Comment text.
      # @option arguments [Array] :attachments  (Required if 'message' is not set.) List of objects attached to the post, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — Media attachment owner ID.; '<media_id>' — Media attachment ID.; ; Example:; "photo100172_166443618,photo66748_265827614"
      # @option arguments [Boolean] :from_group  '1' — to post a comment from the community
      # @option arguments [Integer] :reply_to_comment  
      # @option arguments [Integer] :sticker_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :access_key  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :guid  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Photos::Methods::CreateComment
      # @return [Vk::API::Photos::Responses::CreateCommentResponse] Adds a new comment on the photo.
      def create_comment(arguments = {})
        require "vk/api/photos/methods/create_comment"
        method = Methods::CreateComment.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/create_comment_response"
        Responses::CreateCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the photo.
      # @option arguments [Integer] :comment_id  Comment ID.
      # @see Vk::API::Photos::Methods::DeleteComment
      # @return [Vk::API::Photos::Responses::DeleteCommentResponse] Deletes a comment on the photo.
      def delete_comment(arguments = {})
        require "vk/api/photos/methods/delete_comment"
        method = Methods::DeleteComment.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/delete_comment_response"
        Responses::DeleteCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the photo.
      # @option arguments [Integer] :comment_id  ID of the deleted comment.
      # @see Vk::API::Photos::Methods::RestoreComment
      # @return [Vk::API::Photos::Responses::RestoreCommentResponse] Restores a deleted comment on a photo.
      def restore_comment(arguments = {})
        require "vk/api/photos/methods/restore_comment"
        method = Methods::RestoreComment.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/restore_comment_response"
        Responses::RestoreCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the photo.
      # @option arguments [Integer] :comment_id  Comment ID.
      # @option arguments [String] :message  New text of the comment.
      # @option arguments [Array] :attachments  (Required if 'message' is not set.) List of objects attached to the post, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — Media attachment owner ID.; '<media_id>' — Media attachment ID.; ; Example:; "photo100172_166443618,photo66748_265827614"
      # @see Vk::API::Photos::Methods::EditComment
      # @return [Vk::API::Photos::Responses::EditCommentResponse] Edits a comment on a photo.
      def edit_comment(arguments = {})
        require "vk/api/photos/methods/edit_comment"
        method = Methods::EditComment.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/edit_comment_response"
        Responses::EditCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the photo.
      # @option arguments [Integer] :photo_id  Photo ID.
      # @option arguments [String] :access_key  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Photos::Methods::GetTags
      # @return [Vk::API::Photos::Responses::GetTagsResponse] Returns a list of tags on a photo.
      def get_tags(arguments = {})
        require "vk/api/photos/methods/get_tags"
        method = Methods::GetTags.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/get_tags_response"
        Responses::GetTagsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the photo.
      # @option arguments [Integer] :photo_id  Photo ID.
      # @option arguments [Integer] :user_id  ID of the user to be tagged.
      # @option arguments [Number] :x  Upper left-corner coordinate of the tagged area (as a percentage of the photo's width).
      # @option arguments [Number] :y  Upper left-corner coordinate of the tagged area (as a percentage of the photo's height).
      # @option arguments [Number] :x2  Lower right-corner coordinate of the tagged area (as a percentage of the photo's width).
      # @option arguments [Number] :y2  Lower right-corner coordinate of the tagged area (as a percentage of the photo's height).
      # @see Vk::API::Photos::Methods::PutTag
      # @return [Vk::API::Photos::Responses::PutTagResponse] Adds a tag on the photo.
      def put_tag(arguments = {})
        require "vk/api/photos/methods/put_tag"
        method = Methods::PutTag.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/put_tag_response"
        Responses::PutTagResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the photo.
      # @option arguments [Integer] :photo_id  Photo ID.
      # @option arguments [Integer] :tag_id  Tag ID.
      # @see Vk::API::Photos::Methods::RemoveTag
      # @return [Vk::API::Photos::Responses::RemoveTagResponse] Removes a tag from a photo.
      def remove_tag(arguments = {})
        require "vk/api/photos/methods/remove_tag"
        method = Methods::RemoveTag.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/remove_tag_response"
        Responses::RemoveTagResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of photos.
      # @option arguments [Integer] :count (20) Number of photos to return.
      # @see Vk::API::Photos::Methods::GetNewTags
      # @return [Vk::API::Photos::Responses::GetNewTagsResponse] Returns a list of photos with tags that have not been viewed.
      def get_new_tags(arguments = {})
        require "vk/api/photos/methods/get_new_tags"
        method = Methods::GetNewTags.new(arguments)
        response = method.call(@client)
        require "vk/api/photos/responses/get_new_tags_response"
        Responses::GetNewTagsResponse.new(response.deep_symbolize_keys)
      end
    end
    class Friends < Vk::Schema::Namespace
      module Methods
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

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  User ID. By default, the current user ID.
      # @option arguments [String] :order  Sort order: ; 'name' — by name (enabled only if the 'fields' parameter is used); 'hints' — by rating, similar to how friends are sorted in My friends section; ; This parameter is available only for .
      # @option arguments [Integer] :list_id  ID of the friend list returned by the  method to be used as the source. This parameter is taken into account only when the uid parameter is set to the current user ID.; ; This parameter is available only for .;
      # @option arguments [Integer] :count  Number of friends to return.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of friends.
      # @option arguments [Array, 'bdate'] :fields  Profile fields to return. Sample values: 'uid', 'first_name', 'last_name', 'nickname', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'domain', 'has_mobile', 'rate', 'contacts', 'education'.;
      # @option arguments [String] :name_case  Case for declension of user name and surname: ; 'nom' — nominative (default) ; 'gen' — genitive ; 'dat' — dative ; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
      # @see Vk::API::Friends::Methods::Get
      # @return [Vk::API::Friends::Responses::GetResponse] Returns a list of user IDs or detailed information about a user's friends.
      def get(arguments = {})
        require "vk/api/friends/methods/get"
        method = Methods::Get.new(arguments)
        response = method.call(@client)
        require "vk/api/friends/responses/get_response"
        Responses::GetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  User ID.
      # @option arguments [Integer] :list_id  Friend list ID. If this parameter is not set, information about all online friends is returned.
      # @option arguments [Boolean] :online_mobile  '1' — to return an additional 'online_mobile' field; '0' — (default);
      # @option arguments [String] :order  Sort order:; 'random' — random order
      # @option arguments [Integer] :count  Number of friends to return.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of friends.
      # @see Vk::API::Friends::Methods::GetOnline
      # @return [Vk::API::Friends::Responses::GetOnlineResponse] Returns a list of user IDs of a user's friends who are online.
      def get_online(arguments = {})
        require "vk/api/friends/methods/get_online"
        method = Methods::GetOnline.new(arguments)
        response = method.call(@client)
        require "vk/api/friends/responses/get_online_response"
        Responses::GetOnlineResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :source_uid  ID of the user whose friends will be checked against the friends of the user specified in 'target_uid'.
      # @option arguments [Integer] :target_uid  ID of the user whose friends will be checked against the friends of the user specified in 'source_uid'.
      # @option arguments [Array] :target_uids  IDs of the users whose friends will be checked against the friends of the user specified in 'source_uid'.
      # @option arguments [String] :order  Sort order:; 'random' — random order
      # @option arguments [Integer] :count  Number of mutual friends to return.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of mutual friends.
      # @see Vk::API::Friends::Methods::GetMutual
      # @return [Vk::API::Friends::Responses::GetMutualResponse] Returns a list of user IDs of the mutual friends of two users.
      def get_mutual(arguments = {})
        require "vk/api/friends/methods/get_mutual"
        method = Methods::GetMutual.new(arguments)
        response = method.call(@client)
        require "vk/api/friends/responses/get_mutual_response"
        Responses::GetMutualResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :count (100) Number of recently added friends to return.
      # @see Vk::API::Friends::Methods::GetRecent
      # @return [Vk::API::Friends::Responses::GetRecentResponse] Returns a list of user IDs of the current user's recently added friends.
      def get_recent(arguments = {})
        require "vk/api/friends/methods/get_recent"
        method = Methods::GetRecent.new(arguments)
        response = method.call(@client)
        require "vk/api/friends/responses/get_recent_response"
        Responses::GetRecentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of friend requests.
      # @option arguments [Integer] :count  Number of friend requests to return (default 100, maximum 1000).
      # @option arguments [Boolean] :extended  '1' — to return response messages from users who have sent a friend request or, if 'suggested' is set to '1', to return a list of suggested friends
      # @option arguments [Boolean] :need_mutual  '1' — to return a list of mutual friends (up to 20), if any
      # @option arguments [Boolean] :out  '1' — to return outgoing requests; '0' — to return incoming requests (default)
      # @option arguments [Integer] :sort  Sort order:; '1' — by number of mutual friends; '0' — by date
      # @option arguments [Boolean] :suggested  '1' — to return a list of suggested friends; '0' — to return friend requests (default)
      # @see Vk::API::Friends::Methods::GetRequests
      # @return [Vk::API::Friends::Responses::GetRequestsResponse] Returns information about the current user's incoming and outgoing friend requests.
      def get_requests(arguments = {})
        require "vk/api/friends/methods/get_requests"
        method = Methods::GetRequests.new(arguments)
        response = method.call(@client)
        require "vk/api/friends/responses/get_requests_response"
        Responses::GetRequestsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  ID of the user whose friend request will be approved or to whom a friend request will be sent.
      # @option arguments [String] :text  Text of the message (up to 500 characters) for the friend request, if any.
      # @option arguments [Boolean] :follow  '1' to pass an incoming request to followers list.
      # @see Vk::API::Friends::Methods::Add
      # @return [Vk::API::Friends::Responses::AddResponse] Approves or creates a friend request.
      def add(arguments = {})
        require "vk/api/friends/methods/add"
        method = Methods::Add.new(arguments)
        response = method.call(@client)
        require "vk/api/friends/responses/add_response"
        Responses::AddResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  ID of the user whose friend list is to be edited.
      # @option arguments [Array] :list_ids  IDs of the friend lists to which to add the user.
      # @see Vk::API::Friends::Methods::Edit
      # @return [Vk::API::Friends::Responses::EditResponse] Edits the friend lists of the selected user.
      def edit(arguments = {})
        require "vk/api/friends/methods/edit"
        method = Methods::Edit.new(arguments)
        response = method.call(@client)
        require "vk/api/friends/responses/edit_response"
        Responses::EditResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  ID of the user whose friend request is to be declined or who is to be deleted from the current user's friend list.
      # @see Vk::API::Friends::Methods::Delete
      # @return [Vk::API::Friends::Responses::DeleteResponse] Declines a friend request or deletes a user from the current user's friend list.
      def delete(arguments = {})
        require "vk/api/friends/methods/delete"
        method = Methods::Delete.new(arguments)
        response = method.call(@client)
        require "vk/api/friends/responses/delete_response"
        Responses::DeleteResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  User ID.
      # @option arguments [Boolean] :return_system  '1' — to return system friend lists. By default: '0'.
      # @see Vk::API::Friends::Methods::GetLists
      # @return [Vk::API::Friends::Responses::GetListsResponse] Returns a list of the user's friend lists.
      def get_lists(arguments = {})
        require "vk/api/friends/methods/get_lists"
        method = Methods::GetLists.new(arguments)
        response = method.call(@client)
        require "vk/api/friends/responses/get_lists_response"
        Responses::GetListsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :name  Name of the friend list.
      # @option arguments [Array] :user_ids  IDs of users to be added to the friend list.;
      # @see Vk::API::Friends::Methods::AddList
      # @return [Vk::API::Friends::Responses::AddListResponse] Creates a new friend list for the current user.
      def add_list(arguments = {})
        require "vk/api/friends/methods/add_list"
        method = Methods::AddList.new(arguments)
        response = method.call(@client)
        require "vk/api/friends/responses/add_list_response"
        Responses::AddListResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :name  Name of the friend list.
      # @option arguments [Integer] :list_id  Friend list ID.
      # @option arguments [Array] :user_ids  IDs of users in the friend list.
      # @option arguments [Array] :add_user_ids  (Applies if 'user_ids' parameter is not set.); User IDs to add to the friend list.
      # @option arguments [Array] :delete_user_ids  (Applies if 'user_ids' parameter is not set.); User IDs to delete from the friend list.
      # @see Vk::API::Friends::Methods::EditList
      # @return [Vk::API::Friends::Responses::EditListResponse] Edits a friend list of the current user.
      def edit_list(arguments = {})
        require "vk/api/friends/methods/edit_list"
        method = Methods::EditList.new(arguments)
        response = method.call(@client)
        require "vk/api/friends/responses/edit_list_response"
        Responses::EditListResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :list_id  ID of the friend list to delete.
      # @see Vk::API::Friends::Methods::DeleteList
      # @return [Vk::API::Friends::Responses::DeleteListResponse] Deletes a friend list of the current user.
      def delete_list(arguments = {})
        require "vk/api/friends/methods/delete_list"
        method = Methods::DeleteList.new(arguments)
        response = method.call(@client)
        require "vk/api/friends/responses/delete_list_response"
        Responses::DeleteListResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @see Vk::API::Friends::Methods::GetAppUsers
      # @return [Vk::API::Friends::Responses::GetAppUsersResponse] Returns a list of IDs of the current user's friends who installed the application.
      def get_app_users(arguments = {})
        require "vk/api/friends/methods/get_app_users"
        method = Methods::GetAppUsers.new(arguments)
        response = method.call(@client)
        require "vk/api/friends/responses/get_app_users_response"
        Responses::GetAppUsersResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :phones  List of phone numbers in MSISDN format (maximum 1000).; Example:; "+79219876543,+79111234567"
      # @option arguments [Array, 'bdate'] :fields  Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online, counters'.;
      # @see Vk::API::Friends::Methods::GetByPhones
      # @return [Vk::API::Friends::Responses::GetByPhonesResponse] Returns a list of the current user's friends whose phone numbers, validated or specified in a profile, are in a given list.
      def get_by_phones(arguments = {})
        require "vk/api/friends/methods/get_by_phones"
        method = Methods::GetByPhones.new(arguments)
        response = method.call(@client)
        require "vk/api/friends/responses/get_by_phones_response"
        Responses::GetByPhonesResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @see Vk::API::Friends::Methods::DeleteAllRequests
      # @return [Vk::API::Friends::Responses::DeleteAllRequestsResponse] Marks all incoming friend requests as viewed.
      def delete_all_requests(arguments = {})
        require "vk/api/friends/methods/delete_all_requests"
        method = Methods::DeleteAllRequests.new(arguments)
        response = method.call(@client)
        require "vk/api/friends/responses/delete_all_requests_response"
        Responses::DeleteAllRequestsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :filter  Types of potential friends to return:; 'mutual' — users with many mutual friends ; 'contacts' — users found with the  method; 'mutual_contacts' — users who imported the same contacts as the current user with the  method
      # @option arguments [Integer] :count (500) Number of suggestions to return.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of suggestions.
      # @option arguments [Array, 'bdate'] :fields  Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online', 'counters'.;
      # @option arguments [String] :name_case  Case for declension of user name and surname: ; 'nom' — nominative (default) ; 'gen' — genitive ; 'dat' — dative ; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
      # @see Vk::API::Friends::Methods::GetSuggestions
      # @return [Vk::API::Friends::Responses::GetSuggestionsResponse] Returns a list of profiles of users whom the current user may know.
      def get_suggestions(arguments = {})
        require "vk/api/friends/methods/get_suggestions"
        method = Methods::GetSuggestions.new(arguments)
        response = method.call(@client)
        require "vk/api/friends/responses/get_suggestions_response"
        Responses::GetSuggestionsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :user_ids  IDs of the users whose friendship status to check.
      # @option arguments [Boolean] :need_sign  '1' — to return 'sign' field. 'sign' is md5("\$1id\$1_\$1user_id\$1_\$1friends_status\$1_\$1application_secret\$1"), where id is current user ID.; This field allows to check that data has not been modified by the client.; By default: '0'.
      # @see Vk::API::Friends::Methods::AreFriends
      # @return [Vk::API::Friends::Responses::AreFriendsResponse] Checks the current user's friendship status with other specified users.
      def are_friends(arguments = {})
        require "vk/api/friends/methods/are_friends"
        method = Methods::AreFriends.new(arguments)
        response = method.call(@client)
        require "vk/api/friends/responses/are_friends_response"
        Responses::AreFriendsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array, 'bdate'] :fields  Profile fields to return. Sample values: 'uid', 'first_name', 'last_name', 'nickname', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'domain', 'has_mobile', 'rate', 'contacts', 'education'.;
      # @option arguments [String] :name_case ("nom") Case for declension of user name and surname: ; 'nom' — nominative (default) ; 'gen' — genitive ; 'dat' — dative ; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
      # @see Vk::API::Friends::Methods::GetAvailableForCall
      # @return [Vk::API::Friends::Responses::GetAvailableForCallResponse] Returns a list of friends who can be called by the current user.
      def get_available_for_call(arguments = {})
        require "vk/api/friends/methods/get_available_for_call"
        method = Methods::GetAvailableForCall.new(arguments)
        response = method.call(@client)
        require "vk/api/friends/responses/get_available_for_call_response"
        Responses::GetAvailableForCallResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  User ID.
      # @option arguments [String] :q  Search query string (e.g., 'Vasya Babich').
      # @option arguments [Array, 'bdate'] :fields  Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online';
      # @option arguments [String] :name_case ("nom") Case for declension of user name and surname:; 'nom' — nominative (default); 'gen' — genitive ; 'dat' — dative; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of friends.
      # @option arguments [Integer] :count (20) Number of friends to return.
      # @see Vk::API::Friends::Methods::Search
      # @return [Vk::API::Friends::Responses::SearchResponse] Returns a list of friends matching the search criteria.
      def search(arguments = {})
        require "vk/api/friends/methods/search"
        method = Methods::Search.new(arguments)
        response = method.call(@client)
        require "vk/api/friends/responses/search_response"
        Responses::SearchResponse.new(response.deep_symbolize_keys)
      end
    end
    class Widgets < Vk::Schema::Namespace
      module Methods
        autoload :GetComments, 'vk/api/widgets/methods/get_comments'
        autoload :GetPages, 'vk/api/widgets/methods/get_pages'
      end

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Integer] :widget_api_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :url  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :page_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :order (nil) @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Array] :fields  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :count (10) @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Widgets::Methods::GetComments
      # @return [Vk::API::Widgets::Responses::GetCommentsResponse] Gets a list of comments for the page added through the .
      def get_comments(arguments = {})
        require "vk/api/widgets/methods/get_comments"
        method = Methods::GetComments.new(arguments)
        response = method.call(@client)
        require "vk/api/widgets/responses/get_comments_response"
        Responses::GetCommentsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :widget_api_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :order (nil) @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :period (nil) @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :count (10) @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Widgets::Methods::GetPages
      # @return [Vk::API::Widgets::Responses::GetPagesResponse] Gets a list of application/site pages where the  or  is installed.
      def get_pages(arguments = {})
        require "vk/api/widgets/methods/get_pages"
        method = Methods::GetPages.new(arguments)
        response = method.call(@client)
        require "vk/api/widgets/responses/get_pages_response"
        Responses::GetPagesResponse.new(response.deep_symbolize_keys)
      end
    end
    class Secure < Vk::Schema::Namespace
      module Methods
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

      # @!group DSL

      # @param [Hash] arguments
      # @see Vk::API::Secure::Methods::GetAppBalance
      # @return [Vk::API::Secure::Responses::GetAppBalanceResponse] Returns payment balance of the application in hundredth of a vote.
      def get_app_balance(arguments = {})
        require "vk/api/secure/methods/get_app_balance"
        method = Methods::GetAppBalance.new(arguments)
        response = method.call(@client)
        require "vk/api/secure/responses/get_app_balance_response"
        Responses::GetAppBalanceResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @see Vk::API::Secure::Methods::GetTransactionsHistory
      # @return [Vk::API::Secure::Responses::GetTransactionsHistoryResponse] Shows history of votes transaction between users and the application.
      def get_transactions_history(arguments = {})
        require "vk/api/secure/methods/get_transactions_history"
        method = Methods::GetTransactionsHistory.new(arguments)
        response = method.call(@client)
        require "vk/api/secure/responses/get_transactions_history_response"
        Responses::GetTransactionsHistoryResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :date_from  filter by start date. It is set as UNIX-time.
      # @option arguments [Integer] :date_to  filter by end date. It is set as UNIX-time.
      # @option arguments [Integer] :limit (1000) number of returned posts. By default — 1000.
      # @see Vk::API::Secure::Methods::GetSmsHistory
      # @return [Vk::API::Secure::Responses::GetSmsHistoryResponse] Shows a list of SMS notifications sent by the application using  method.
      def get_sms_history(arguments = {})
        require "vk/api/secure/methods/get_sms_history"
        method = Methods::GetSmsHistory.new(arguments)
        response = method.call(@client)
        require "vk/api/secure/responses/get_sms_history_response"
        Responses::GetSmsHistoryResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  ID of the user to whom SMS notification is sent. The user shall allow the application to send him/her notifications (, +1).
      # @option arguments [String] :message  'SMS' text to be sent in 'UTF-8' encoding. Only Latin letters and numbers are allowed. Maximum size is '160' characters.
      # @see Vk::API::Secure::Methods::SendSmsNotification
      # @return [Vk::API::Secure::Responses::SendSmsNotificationResponse] Sends 'SMS' notification to a user's mobile device.
      def send_sms_notification(arguments = {})
        require "vk/api/secure/methods/send_sms_notification"
        method = Methods::SendSmsNotification.new(arguments)
        response = method.call(@client)
        require "vk/api/secure/responses/send_sms_notification_response"
        Responses::SendSmsNotificationResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :user_ids  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :user_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :message  notification text which should be sent in 'UTF-8' encoding ('254' characters maximum).
      # @see Vk::API::Secure::Methods::SendNotification
      # @return [Vk::API::Secure::Responses::SendNotificationResponse] Sends notification to the user.
      def send_notification(arguments = {})
        require "vk/api/secure/methods/send_notification"
        method = Methods::SendNotification.new(arguments)
        response = method.call(@client)
        require "vk/api/secure/responses/send_notification_response"
        Responses::SendNotificationResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :counters  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :user_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :counter  counter value.
      # @see Vk::API::Secure::Methods::SetCounter
      # @return [Vk::API::Secure::Responses::SetCounterResponse] Sets a counter which is shown to the user in bold in the left menu.
      def set_counter(arguments = {})
        require "vk/api/secure/methods/set_counter"
        method = Methods::SetCounter.new(arguments)
        response = method.call(@client)
        require "vk/api/secure/responses/set_counter_response"
        Responses::SetCounterResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :levels  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :user_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :level  level value.
      # @see Vk::API::Secure::Methods::SetUserLevel
      # @return [Vk::API::Secure::Responses::SetUserLevelResponse] Sets user game level in the application which can be seen by his/her friends.
      def set_user_level(arguments = {})
        require "vk/api/secure/methods/set_user_level"
        method = Methods::SetUserLevel.new(arguments)
        response = method.call(@client)
        require "vk/api/secure/responses/set_user_level_response"
        Responses::SetUserLevelResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :user_ids  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Secure::Methods::GetUserLevel
      # @return [Vk::API::Secure::Responses::GetUserLevelResponse] Returns one of the previously set game levels of one or more users in the application.
      def get_user_level(arguments = {})
        require "vk/api/secure/methods/get_user_level"
        method = Methods::GetUserLevel.new(arguments)
        response = method.call(@client)
        require "vk/api/secure/responses/get_user_level_response"
        Responses::GetUserLevelResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  ID of a user to save the data
      # @option arguments [Integer] :activity_id  there are 2 default activities: ; * 1 – level. Works similar to ;; * 2 – points, saves points amount; Any other value is for saving completed missions
      # @option arguments [Integer] :value  depends on activity_id:; * 1 – number, current level number;; * 2 – number, current user's points amount; ; Any other value is ignored
      # @see Vk::API::Secure::Methods::AddAppEvent
      # @return [Vk::API::Secure::Responses::AddAppEventResponse] Adds user activity information to an application
      def add_app_event(arguments = {})
        require "vk/api/secure/methods/add_app_event"
        method = Methods::AddAppEvent.new(arguments)
        response = method.call(@client)
        require "vk/api/secure/responses/add_app_event_response"
        Responses::AddAppEventResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :token  client 'access_token'
      # @option arguments [String] :ip  user 'ip address'. Note that user may access using the 'ipv6' address, in this case it is required to transmit the 'ipv6' address. ; If not transmitted, the address will not be checked.
      # @see Vk::API::Secure::Methods::CheckToken
      # @return [Vk::API::Secure::Responses::CheckTokenResponse] Checks the user authentification in 'IFrame' and 'Flash' apps using the 'access_token' parameter.
      def check_token(arguments = {})
        require "vk/api/secure/methods/check_token"
        method = Methods::CheckToken.new(arguments)
        response = method.call(@client)
        require "vk/api/secure/responses/check_token_response"
        Responses::CheckTokenResponse.new(response.deep_symbolize_keys)
      end
    end
    class Storage < Vk::Schema::Namespace
      module Methods
        autoload :Get, 'vk/api/storage/methods/get'
        autoload :Set, 'vk/api/storage/methods/set'
        autoload :GetKeys, 'vk/api/storage/methods/get_keys'
      end

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [String] :key  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Array] :keys  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :user_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Storage::Methods::Get
      # @return [Vk::API::Storage::Responses::GetResponse] Returns a value of variable with the name set by key parameter.
      def get(arguments = {})
        require "vk/api/storage/methods/get"
        method = Methods::Get.new(arguments)
        response = method.call(@client)
        require "vk/api/storage/responses/get_response"
        Responses::GetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :key  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :value  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :user_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Storage::Methods::Set
      # @return [Vk::API::Storage::Responses::SetResponse] Saves a value of variable with the name set by 'key' parameter.
      def set(arguments = {})
        require "vk/api/storage/methods/set"
        method = Methods::Set.new(arguments)
        response = method.call(@client)
        require "vk/api/storage/responses/set_response"
        Responses::SetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  user id, whose variables names are returned if they were requested with a server method.
      # @option arguments [Integer] :count (100) amount of variable names the info needs to be collected from.
      # @see Vk::API::Storage::Methods::GetKeys
      # @return [Vk::API::Storage::Responses::GetKeysResponse] Returns the names of all variables.
      def get_keys(arguments = {})
        require "vk/api/storage/methods/get_keys"
        method = Methods::GetKeys.new(arguments)
        response = method.call(@client)
        require "vk/api/storage/responses/get_keys_response"
        Responses::GetKeysResponse.new(response.deep_symbolize_keys)
      end
    end
    class Orders < Vk::Schema::Namespace
      module Methods
        autoload :Get, 'vk/api/orders/methods/get'
        autoload :GetById, 'vk/api/orders/methods/get_by_id'
        autoload :ChangeState, 'vk/api/orders/methods/change_state'
        autoload :GetAmount, 'vk/api/orders/methods/get_amount'
      end

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Integer] :count (100) number of returned orders.
      # @option arguments [Boolean] :test_mode  if this parameter is set to 1, this method returns a list of test mode orders. By default — 0.
      # @see Vk::API::Orders::Methods::Get
      # @return [Vk::API::Orders::Responses::GetResponse] Returns a list of orders.
      def get(arguments = {})
        require "vk/api/orders/methods/get"
        method = Methods::Get.new(arguments)
        response = method.call(@client)
        require "vk/api/orders/responses/get_response"
        Responses::GetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :order_id  order ID.
      # @option arguments [Array] :order_ids  order IDs (when information about several orders is requested).
      # @option arguments [Boolean] :test_mode  if this parameter is set to 1, this method returns a list of test mode orders. By default — 0.
      # @see Vk::API::Orders::Methods::GetById
      # @return [Vk::API::Orders::Responses::GetByIdResponse] Returns information about orders by their IDs.
      def get_by_id(arguments = {})
        require "vk/api/orders/methods/get_by_id"
        method = Methods::GetById.new(arguments)
        response = method.call(@client)
        require "vk/api/orders/responses/get_by_id_response"
        Responses::GetByIdResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :order_id  order ID.
      # @option arguments [String] :action  action to be done with the order. ; ; Available actions:; *cancel — to cancel unconfirmed order.; *charge — to confirm unconfirmed order. Applies only if processing of  notification failed.; *refund — to cancel confirmed order.;
      # @option arguments [Integer] :app_order_id  internal ID of the order in the application.
      # @option arguments [Boolean] :test_mode  if this parameter is set to 1, this method returns a list of test mode orders. By default — 0.
      # @see Vk::API::Orders::Methods::ChangeState
      # @return [Vk::API::Orders::Responses::ChangeStateResponse] Changes order status.
      def change_state(arguments = {})
        require "vk/api/orders/methods/change_state"
        method = Methods::ChangeState.new(arguments)
        response = method.call(@client)
        require "vk/api/orders/responses/change_state_response"
        Responses::ChangeStateResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Array] :votes  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Orders::Methods::GetAmount
      # @return [Vk::API::Orders::Responses::GetAmountResponse] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      def get_amount(arguments = {})
        require "vk/api/orders/methods/get_amount"
        method = Methods::GetAmount.new(arguments)
        response = method.call(@client)
        require "vk/api/orders/responses/get_amount_response"
        Responses::GetAmountResponse.new(response.deep_symbolize_keys)
      end
    end
    class Status < Vk::Schema::Namespace
      module Methods
        autoload :Get, 'vk/api/status/methods/get'
        autoload :Set, 'vk/api/status/methods/set'
      end

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  User ID or community ID. Use a negative value to designate a community ID.
      # @option arguments [Integer] :group_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Status::Methods::Get
      # @return [Vk::API::Status::Responses::GetResponse] Returns data required to show the status of a user or community.
      def get(arguments = {})
        require "vk/api/status/methods/get"
        method = Methods::Get.new(arguments)
        response = method.call(@client)
        require "vk/api/status/responses/get_response"
        Responses::GetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :text  Text of the new status.
      # @option arguments [Integer] :group_id  Identifier of a community to set a status in. If left blank the status is set to current user.
      # @see Vk::API::Status::Methods::Set
      # @return [Vk::API::Status::Responses::SetResponse] Sets a new status for the current user.
      def set(arguments = {})
        require "vk/api/status/methods/set"
        method = Methods::Set.new(arguments)
        response = method.call(@client)
        require "vk/api/status/responses/set_response"
        Responses::SetResponse.new(response.deep_symbolize_keys)
      end
    end
    class Audio < Vk::Schema::Namespace
      module Methods
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

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the audio file. Use a negative value to designate a community ID.
      # @option arguments [Integer] :album_id  Audio album ID.
      # @option arguments [Array] :audio_ids  IDs of the audio files to return.
      # @option arguments [Boolean] :need_user  '1' — to return information about users who uploaded audio files
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of audio files.
      # @option arguments [Integer] :count  Number of audio files to return.
      # @see Vk::API::Audio::Methods::Get
      # @return [Vk::API::Audio::Responses::GetResponse] Returns a list of audio files of a user or community.
      def get(arguments = {})
        require "vk/api/audio/methods/get"
        method = Methods::Get.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/get_response"
        Responses::GetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :audios  Audio file IDs, in the following format:; "\$1owner_id\$1_\$1audio_id\$1"
      # @see Vk::API::Audio::Methods::GetById
      # @return [Vk::API::Audio::Responses::GetByIdResponse] Returns information about audio files by their IDs.
      def get_by_id(arguments = {})
        require "vk/api/audio/methods/get_by_id"
        method = Methods::GetById.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/get_by_id_response"
        Responses::GetByIdResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :lyrics_id  Lyrics ID (could be obtained with , , or  methods).
      # @see Vk::API::Audio::Methods::GetLyrics
      # @return [Vk::API::Audio::Responses::GetLyricsResponse] Returns lyrics associated with an audio file.
      def get_lyrics(arguments = {})
        require "vk/api/audio/methods/get_lyrics"
        method = Methods::GetLyrics.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/get_lyrics_response"
        Responses::GetLyricsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :q  Search query string (e.g., 'The Beatles').
      # @option arguments [Boolean] :auto_complete  '1' — to correct for mistakes in the search query (e.g., if you enter 'Beetles', the system will search for 'Beatles').
      # @option arguments [Boolean] :lyrics  '1' — to return only audio files that have associated lyrics.
      # @option arguments [Boolean] :performer_only  '1' — to search only by artist name.
      # @option arguments [Integer] :sort  Sort order: ; '1' — by duration;; '2' — by popularity;; '0' — by date added.
      # @option arguments [Boolean] :search_own  '1' — to search among current user's audios. By default: '0'.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of audio files.
      # @option arguments [Integer] :count (30) Number of audio files to return.
      # @see Vk::API::Audio::Methods::Search
      # @return [Vk::API::Audio::Responses::SearchResponse] Returns a list of audio matching the search criteria.
      def search(arguments = {})
        require "vk/api/audio/methods/search"
        method = Methods::Search.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/search_response"
        Responses::SearchResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @see Vk::API::Audio::Methods::GetUploadServer
      # @return [Vk::API::Audio::Responses::GetUploadServerResponse] Returns the server address to [https://vk.com/dev/upload_files_2?f=8.%20Uploading%20Audio%20Files|upload audio files].
      def get_upload_server(arguments = {})
        require "vk/api/audio/methods/get_upload_server"
        method = Methods::GetUploadServer.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/get_upload_server_response"
        Responses::GetUploadServerResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :server  This parameter is returned when the audio file is [https://vk.com/dev/upload_files_2?f=8.%20Uploading%20Audio%20Files|uploaded to the server].
      # @option arguments [String] :audio  This parameter is returned when the audio file is [https://vk.com/dev/upload_files_2?f=8.%20Uploading%20Audio%20Files|uploaded to the server].
      # @option arguments [String] :hash  This parameter is returned when the audio file is [https://vk.com/dev/upload_files_2?f=8.%20Uploading%20Audio%20Files|uploaded to the server].
      # @option arguments [String] :artist  The name of the artist. By default, this is obtained from ID3 tags.
      # @option arguments [String] :title  The title of the audio file. By default, this is obtained from ID3 tags.
      # @see Vk::API::Audio::Methods::Save
      # @return [Vk::API::Audio::Responses::SaveResponse] Saves audio files after successful [https://vk.com/dev/upload_files_2?f=8.%20Uploading%20Audio%20Files|uploading].
      def save(arguments = {})
        require "vk/api/audio/methods/save"
        method = Methods::Save.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/save_response"
        Responses::SaveResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :audio_id  Audio file ID.
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the audio file. Use a negative value to designate a community ID. ; ;
      # @option arguments [Integer] :group_id  Community ID, needed when adding the audio file to a community (without minus).
      # @option arguments [Integer] :album_id  Album ID.
      # @see Vk::API::Audio::Methods::Add
      # @return [Vk::API::Audio::Responses::AddResponse] Copies an audio file to a user page or community page.
      def add(arguments = {})
        require "vk/api/audio/methods/add"
        method = Methods::Add.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/add_response"
        Responses::AddResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :audio_id  Audio file ID.
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the audio file. Use a negative value to designate a community ID.
      # @see Vk::API::Audio::Methods::Delete
      # @return [Vk::API::Audio::Responses::DeleteResponse] Deletes an audio file from a user page or community page.
      def delete(arguments = {})
        require "vk/api/audio/methods/delete"
        method = Methods::Delete.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/delete_response"
        Responses::DeleteResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the audio file.
      # @option arguments [Integer] :audio_id  Audio file ID.
      # @option arguments [String] :artist  Name of the artist.
      # @option arguments [String] :title  Title of the audio file.
      # @option arguments [String] :text  Text of the lyrics of the audio file.
      # @option arguments [Integer] :genre_id  Genre of the audio file. See the list of .
      # @option arguments [Boolean] :no_search  '1' — audio file will not be available for search; '0' — audio file will be available for search (default)
      # @see Vk::API::Audio::Methods::Edit
      # @return [Vk::API::Audio::Responses::EditResponse] Edits an audio file on a user or community page.;
      def edit(arguments = {})
        require "vk/api/audio/methods/edit"
        method = Methods::Edit.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/edit_response"
        Responses::EditResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :audio_id  Audio file ID.
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the audio file.
      # @option arguments [Integer] :before  ID of the audio file before which to place the audio file.
      # @option arguments [Integer] :after  ID of the audio file after which to place the audio file.
      # @see Vk::API::Audio::Methods::Reorder
      # @return [Vk::API::Audio::Responses::ReorderResponse] Reorders an audio file, placing it between other specified audio files.
      def reorder(arguments = {})
        require "vk/api/audio/methods/reorder"
        method = Methods::Reorder.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/reorder_response"
        Responses::ReorderResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :audio_id  Audio file ID.
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the audio file.
      # @see Vk::API::Audio::Methods::Restore
      # @return [Vk::API::Audio::Responses::RestoreResponse] Restores a  audio file.
      def restore(arguments = {})
        require "vk/api/audio/methods/restore"
        method = Methods::Restore.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/restore_response"
        Responses::RestoreResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the audio file.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of albums.
      # @option arguments [Integer] :count (50) Number of albums to return.
      # @see Vk::API::Audio::Methods::GetAlbums
      # @return [Vk::API::Audio::Responses::GetAlbumsResponse] Returns a list of audio albums of a user or community.
      def get_albums(arguments = {})
        require "vk/api/audio/methods/get_albums"
        method = Methods::GetAlbums.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/get_albums_response"
        Responses::GetAlbumsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID (if the album will be created in a community).
      # @option arguments [String] :title  Album title.
      # @see Vk::API::Audio::Methods::AddAlbum
      # @return [Vk::API::Audio::Responses::AddAlbumResponse] Creates an empty audio album.
      def add_album(arguments = {})
        require "vk/api/audio/methods/add_album"
        method = Methods::AddAlbum.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/add_album_response"
        Responses::AddAlbumResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  ID of the community where the album is located.;
      # @option arguments [Integer] :album_id  Album ID.
      # @option arguments [String] :title  New album title.
      # @see Vk::API::Audio::Methods::EditAlbum
      # @return [Vk::API::Audio::Responses::EditAlbumResponse] Edits the title of an audio album.
      def edit_album(arguments = {})
        require "vk/api/audio/methods/edit_album"
        method = Methods::EditAlbum.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/edit_album_response"
        Responses::EditAlbumResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  ID of the community where the album is located.;
      # @option arguments [Integer] :album_id  Album ID.
      # @see Vk::API::Audio::Methods::DeleteAlbum
      # @return [Vk::API::Audio::Responses::DeleteAlbumResponse] Deletes an audio album.
      def delete_album(arguments = {})
        require "vk/api/audio/methods/delete_album"
        method = Methods::DeleteAlbum.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/delete_album_response"
        Responses::DeleteAlbumResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  ID of the community where the audio files are located. By default, current user ID.;
      # @option arguments [Integer] :album_id  ID of the album to which the audio files will be moved.
      # @option arguments [Array] :audio_ids  IDs of the audio files to be moved.; "NOTE: An album can hold up to 1000 audio files.";
      # @see Vk::API::Audio::Methods::MoveToAlbum
      # @return [Vk::API::Audio::Responses::MoveToAlbumResponse] Moves audio files to an album.
      def move_to_album(arguments = {})
        require "vk/api/audio/methods/move_to_album"
        method = Methods::MoveToAlbum.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/move_to_album_response"
        Responses::MoveToAlbumResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :audio  ID of the audio file to be shown in status (e.g., '1_190442705'). If the parameter is not set, the audio status of given communities and user will be deleted.
      # @option arguments [Array] :target_ids  IDs of communities and user whose statuses will be included in the broadcast. Use a negative value to designate a community ID. By default, current user ID.
      # @see Vk::API::Audio::Methods::SetBroadcast
      # @return [Vk::API::Audio::Responses::SetBroadcastResponse] Activates an audio broadcast to the status of a user or community.
      def set_broadcast(arguments = {})
        require "vk/api/audio/methods/set_broadcast"
        method = Methods::SetBroadcast.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/set_broadcast_response"
        Responses::SetBroadcastResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :filter ("all") Types of objects to return:; 'friends' — only friends; 'groups' — only communities; 'all' — both friends and communities (default)
      # @option arguments [Boolean] :active  '1' — to return only friends and communities that are broadcasting at the moment.; '0' — to return all friends and communities (default).
      # @see Vk::API::Audio::Methods::GetBroadcastList
      # @return [Vk::API::Audio::Responses::GetBroadcastListResponse] Returns a list of the user's friends and communities that are broadcasting music in their statuses.
      def get_broadcast_list(arguments = {})
        require "vk/api/audio/methods/get_broadcast_list"
        method = Methods::GetBroadcastList.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/get_broadcast_list_response"
        Responses::GetBroadcastListResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :target_audio  Use to get recommendations based on a particular audio file. The ID of the user or community that owns an audio file and that audio file's ID, separated by an underscore.;
      # @option arguments [Integer] :user_id  Use to get recommendations based on a user's playlist. User ID. By default, the current user ID.;
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of audio files.
      # @option arguments [Integer] :count (100) Number of audio files to return.
      # @option arguments [Boolean] :shuffle  '1' — shuffle on
      # @see Vk::API::Audio::Methods::GetRecommendations
      # @return [Vk::API::Audio::Responses::GetRecommendationsResponse] Returns a list of suggested audio files based on a user's playlist or a particular audio file.
      def get_recommendations(arguments = {})
        require "vk/api/audio/methods/get_recommendations"
        method = Methods::GetRecommendations.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/get_recommendations_response"
        Responses::GetRecommendationsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Boolean] :only_eng  '1' — to return only foreign audio files; '0' — to return all audio files;
      # @option arguments [Integer] :genre_id  Genre ID. See .
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of audio files.
      # @option arguments [Integer] :count (100) Number of audio files to return.
      # @see Vk::API::Audio::Methods::GetPopular
      # @return [Vk::API::Audio::Responses::GetPopularResponse] Returns a list of audio files from the "Popular".
      def get_popular(arguments = {})
        require "vk/api/audio/methods/get_popular"
        method = Methods::GetPopular.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/get_popular_response"
        Responses::GetPopularResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the audio files. By default, current user ID.
      # @see Vk::API::Audio::Methods::GetCount
      # @return [Vk::API::Audio::Responses::GetCountResponse] Returns the total number of audio files on a user or community page.
      def get_count(arguments = {})
        require "vk/api/audio/methods/get_count"
        method = Methods::GetCount.new(arguments)
        response = method.call(@client)
        require "vk/api/audio/responses/get_count_response"
        Responses::GetCountResponse.new(response.deep_symbolize_keys)
      end
    end
    class Leads < Vk::Schema::Namespace
      module Methods
        autoload :Complete, 'vk/api/leads/methods/complete'
        autoload :Start, 'vk/api/leads/methods/start'
        autoload :GetStats, 'vk/api/leads/methods/get_stats'
        autoload :GetUsers, 'vk/api/leads/methods/get_users'
        autoload :CheckUser, 'vk/api/leads/methods/check_user'
        autoload :MetricHit, 'vk/api/leads/methods/metric_hit'
      end

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [String] :vk_sid  Session obtained as GET parameter when session started.
      # @option arguments [String] :secret  Secret key from the lead testing interface.
      # @option arguments [String] :comment  Comment text.
      # @see Vk::API::Leads::Methods::Complete
      # @return [Vk::API::Leads::Responses::CompleteResponse] Completes the lead started by user.
      def complete(arguments = {})
        require "vk/api/leads/methods/complete"
        method = Methods::Complete.new(arguments)
        response = method.call(@client)
        require "vk/api/leads/responses/complete_response"
        Responses::CompleteResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :lead_id  Lead ID.
      # @option arguments [String] :secret  Secret key from the lead testing interface.
      # @see Vk::API::Leads::Methods::Start
      # @return [Vk::API::Leads::Responses::StartResponse] Creates new session for the user passing the offer.
      def start(arguments = {})
        require "vk/api/leads/methods/start"
        method = Methods::Start.new(arguments)
        response = method.call(@client)
        require "vk/api/leads/responses/start_response"
        Responses::StartResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :lead_id  Lead ID.
      # @option arguments [String] :secret  Secret key obtained from the lead testing interface.
      # @option arguments [String] :date_start  Day to start stats from (YYYY_MM_DD, e.g.2011-09-17).
      # @option arguments [String] :date_end  Day to finish stats (YYYY_MM_DD, e.g.2011-09-17).
      # @see Vk::API::Leads::Methods::GetStats
      # @return [Vk::API::Leads::Responses::GetStatsResponse] Returns lead stats data.
      def get_stats(arguments = {})
        require "vk/api/leads/methods/get_stats"
        method = Methods::GetStats.new(arguments)
        response = method.call(@client)
        require "vk/api/leads/responses/get_stats_response"
        Responses::GetStatsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :offer_id  Offer ID.
      # @option arguments [String] :secret  Secret key obtained in the lead testing interface.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of results.
      # @option arguments [Integer] :count (100) Number of results to return.
      # @option arguments [Integer] :status  Action type. Possible values:; *'0' — start;; *'1' — finish;; *'2' — blocking users;; *'3' — start in a test mode;; *'4' — finish in a test mode.;
      # @option arguments [Boolean] :reverse  Sort order. Possible values:; *'1' — chronological;; *'0' — reverse chronological.
      # @see Vk::API::Leads::Methods::GetUsers
      # @return [Vk::API::Leads::Responses::GetUsersResponse] Returns a list of last user actions for the offer.
      def get_users(arguments = {})
        require "vk/api/leads/methods/get_users"
        method = Methods::GetUsers.new(arguments)
        response = method.call(@client)
        require "vk/api/leads/responses/get_users_response"
        Responses::GetUsersResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :lead_id  Lead ID.
      # @option arguments [Integer] :test_result  Value to be return in 'result' field when test mode is used.
      # @option arguments [Integer] :age  User age.
      # @option arguments [String] :country  User country code.
      # @see Vk::API::Leads::Methods::CheckUser
      # @return [Vk::API::Leads::Responses::CheckUserResponse] Checks if the user can start the lead.
      def check_user(arguments = {})
        require "vk/api/leads/methods/check_user"
        method = Methods::CheckUser.new(arguments)
        response = method.call(@client)
        require "vk/api/leads/responses/check_user_response"
        Responses::CheckUserResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :data  Metric data obtained in the lead interface.
      # @see Vk::API::Leads::Methods::MetricHit
      # @return [Vk::API::Leads::Responses::MetricHitResponse] Counts the metric event.
      def metric_hit(arguments = {})
        require "vk/api/leads/methods/metric_hit"
        method = Methods::MetricHit.new(arguments)
        response = method.call(@client)
        require "vk/api/leads/responses/metric_hit_response"
        Responses::MetricHitResponse.new(response.deep_symbolize_keys)
      end
    end
    class Pages < Vk::Schema::Namespace
      module Methods
        autoload :Get, 'vk/api/pages/methods/get'
        autoload :Save, 'vk/api/pages/methods/save'
        autoload :SaveAccess, 'vk/api/pages/methods/save_access'
        autoload :GetHistory, 'vk/api/pages/methods/get_history'
        autoload :GetTitles, 'vk/api/pages/methods/get_titles'
        autoload :GetVersion, 'vk/api/pages/methods/get_version'
        autoload :ParseWiki, 'vk/api/pages/methods/parse_wiki'
        autoload :ClearCache, 'vk/api/pages/methods/clear_cache'
      end

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  Page owner ID.
      # @option arguments [Integer] :page_id  Wiki page ID.
      # @option arguments [Boolean] :global  '1' — to return information about a global wiki page
      # @option arguments [Boolean] :site_preview  '1' — resulting wiki page is a preview for the attached link
      # @option arguments [String] :title  Wiki page title.
      # @option arguments [Boolean] :need_source  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Boolean] :need_html  '1' — to return the page as HTML;
      # @see Vk::API::Pages::Methods::Get
      # @return [Vk::API::Pages::Responses::GetResponse] Returns information about a wiki page.
      def get(arguments = {})
        require "vk/api/pages/methods/get"
        method = Methods::Get.new(arguments)
        response = method.call(@client)
        require "vk/api/pages/responses/get_response"
        Responses::GetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :text  Text of the wiki page in wiki-format.
      # @option arguments [Integer] :page_id  Wiki page ID. The 'title' parameter can be passed instead of 'pid'.
      # @option arguments [Integer] :group_id  ID of the community that owns the wiki page.
      # @option arguments [Integer] :user_id  
      # @option arguments [String] :title  Wiki page title.
      # @see Vk::API::Pages::Methods::Save
      # @return [Vk::API::Pages::Responses::SaveResponse] Saves the text of a wiki page.
      def save(arguments = {})
        require "vk/api/pages/methods/save"
        method = Methods::Save.new(arguments)
        response = method.call(@client)
        require "vk/api/pages/responses/save_response"
        Responses::SaveResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :page_id  Wiki page ID.
      # @option arguments [Integer] :group_id  ID of the community that owns the wiki page.
      # @option arguments [Integer] :user_id  
      # @option arguments [Integer] :view  Who can view the wiki page:; '1' — only community members; '2' — all users can view the page; '0' — only community managers
      # @option arguments [Integer] :edit  Who can edit the wiki page:; '1' — only community members; '2' — all users can edit the page; '0' — only community managers
      # @see Vk::API::Pages::Methods::SaveAccess
      # @return [Vk::API::Pages::Responses::SaveAccessResponse] Saves modified read and edit access settings for a wiki page.
      def save_access(arguments = {})
        require "vk/api/pages/methods/save_access"
        method = Methods::SaveAccess.new(arguments)
        response = method.call(@client)
        require "vk/api/pages/responses/save_access_response"
        Responses::SaveAccessResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :page_id  Wiki page ID.
      # @option arguments [Integer] :group_id  ID of the community that owns the wiki page.
      # @option arguments [Integer] :user_id  
      # @see Vk::API::Pages::Methods::GetHistory
      # @return [Vk::API::Pages::Responses::GetHistoryResponse] Returns a list of all previous versions of a wiki page.
      def get_history(arguments = {})
        require "vk/api/pages/methods/get_history"
        method = Methods::GetHistory.new(arguments)
        response = method.call(@client)
        require "vk/api/pages/responses/get_history_response"
        Responses::GetHistoryResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  ID of the community that owns the wiki page.
      # @see Vk::API::Pages::Methods::GetTitles
      # @return [Vk::API::Pages::Responses::GetTitlesResponse] Returns a list of wiki pages in a group.
      def get_titles(arguments = {})
        require "vk/api/pages/methods/get_titles"
        method = Methods::GetTitles.new(arguments)
        response = method.call(@client)
        require "vk/api/pages/responses/get_titles_response"
        Responses::GetTitlesResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :version_id  
      # @option arguments [Integer] :group_id  ID of the community that owns the wiki page.
      # @option arguments [Integer] :user_id  
      # @option arguments [Boolean] :need_html  '1' — to return the page as HTML
      # @see Vk::API::Pages::Methods::GetVersion
      # @return [Vk::API::Pages::Responses::GetVersionResponse] Returns the text of one of the previous versions of a wiki page.
      def get_version(arguments = {})
        require "vk/api/pages/methods/get_version"
        method = Methods::GetVersion.new(arguments)
        response = method.call(@client)
        require "vk/api/pages/responses/get_version_response"
        Responses::GetVersionResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :text  Text of the wiki page.
      # @option arguments [Integer] :group_id  ID of the group in the context of which this markup is interpreted.;
      # @see Vk::API::Pages::Methods::ParseWiki
      # @return [Vk::API::Pages::Responses::ParseWikiResponse] Returns HTML representation of the wiki markup.
      def parse_wiki(arguments = {})
        require "vk/api/pages/methods/parse_wiki"
        method = Methods::ParseWiki.new(arguments)
        response = method.call(@client)
        require "vk/api/pages/responses/parse_wiki_response"
        Responses::ParseWikiResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :url  Address of the page where you need to refesh the cached version
      # @see Vk::API::Pages::Methods::ClearCache
      # @return [Vk::API::Pages::Responses::ClearCacheResponse] Allows to clear the cache of particular 'external' pages which may be attached to VK posts.
      def clear_cache(arguments = {})
        require "vk/api/pages/methods/clear_cache"
        method = Methods::ClearCache.new(arguments)
        response = method.call(@client)
        require "vk/api/pages/responses/clear_cache_response"
        Responses::ClearCacheResponse.new(response.deep_symbolize_keys)
      end
    end
    class Groups < Vk::Schema::Namespace
      module Methods
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

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [String] :group_id  ID or screen name of the community.
      # @option arguments [Integer] :user_id  User ID.
      # @option arguments [Array] :user_ids  User IDs.
      # @option arguments [Boolean] :extended  '1' — to return an extended response with additional fields.; By default: '0'.
      # @see Vk::API::Groups::Methods::IsMember
      # @return [Vk::API::Groups::Responses::IsMemberResponse] Returns information specifying whether a user is a member of a community.
      def is_member(arguments = {})
        require "vk/api/groups/methods/is_member"
        method = Methods::IsMember.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/is_member_response"
        Responses::IsMemberResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :group_ids  IDs or screen names of communities.
      # @option arguments [String] :group_id  ID or screen name of the community.
      # @option arguments [Array] :fields  Group fields to return.;
      # @see Vk::API::Groups::Methods::GetById
      # @return [Vk::API::Groups::Responses::GetByIdResponse] Returns information about communities by their IDs.
      def get_by_id(arguments = {})
        require "vk/api/groups/methods/get_by_id"
        method = Methods::GetById.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/get_by_id_response"
        Responses::GetByIdResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  User ID.
      # @option arguments [Boolean] :extended  '1' — to return complete information about a user's communities; '0' — to return a list of community IDs without any additional fields (default);
      # @option arguments [Array] :filter  Types of communities to return:; 'admin' — to return communities administered by the user ; 'editor' — to return communities where the user is an administrator or editor; 'moder' — to return communities where the user is an administrator, editor, or moderator; 'groups' — to return only groups; 'publics' — to return only public pages; 'events' — to return only events
      # @option arguments [Array] :fields  Profile fields to return.;
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of communities.
      # @option arguments [Integer] :count  Number of communities to return.
      # @see Vk::API::Groups::Methods::Get
      # @return [Vk::API::Groups::Responses::GetResponse] Returns a list of the communities to which a user belongs.; ;
      def get(arguments = {})
        require "vk/api/groups/methods/get"
        method = Methods::Get.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/get_response"
        Responses::GetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :group_id  ID or screen name of the community.
      # @option arguments [String] :sort ("id_asc") Sort order. Available values: 'id_asc', 'id_desc', 'time_asc', 'time_desc'.; 'time_asc' and 'time_desc' are availavle only if the method is called by the group's 'moderator'.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of community members.
      # @option arguments [Integer] :count (1000) Number of community members to return.
      # @option arguments [Array] :fields  List of additional fields to be returned. ; Available values: 'sex, bdate, city, country, photo_50, photo_100, photo_200_orig, photo_200, photo_400_orig, photo_max, photo_max_orig, online, online_mobile, lists, domain, has_mobile, contacts, connections, site, education, universities, schools, can_post, can_see_all_posts, can_see_audio, can_write_private_message, status, last_seen, common_count, relation, relatives, counters'.
      # @option arguments [String] :filter  *'friends' – only friends in this community will be returned;; *'unsure' – only those who pressed 'I may attend' will be returned (if it's an event).
      # @see Vk::API::Groups::Methods::GetMembers
      # @return [Vk::API::Groups::Responses::GetMembersResponse] Returns a list of community members.
      def get_members(arguments = {})
        require "vk/api/groups/methods/get_members"
        method = Methods::GetMembers.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/get_members_response"
        Responses::GetMembersResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  ID or screen name of the community.
      # @option arguments [String] :not_sure  Optional parameter which is taken into account when 'gid' belongs to the event:; '1' — Perhaps I will attend; '0' — I will be there for sure (default); ;
      # @see Vk::API::Groups::Methods::Join
      # @return [Vk::API::Groups::Responses::JoinResponse] With this method you can join the group or public page, and also confirm your participation in an event.
      def join(arguments = {})
        require "vk/api/groups/methods/join"
        method = Methods::Join.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/join_response"
        Responses::JoinResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  ID or screen name of the community.
      # @see Vk::API::Groups::Methods::Leave
      # @return [Vk::API::Groups::Responses::LeaveResponse] With this method you can leave a group, public page, or event.; ;
      def leave(arguments = {})
        require "vk/api/groups/methods/leave"
        method = Methods::Leave.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/leave_response"
        Responses::LeaveResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :q  Search query string.
      # @option arguments [String] :type  Community type. Possible values: 'group, page, event.'
      # @option arguments [Integer] :country_id  Country ID.
      # @option arguments [Integer] :city_id  City ID. If this parameter is transmitted, country_id is ignored.
      # @option arguments [Boolean] :future  '1' —  to return only upcoming events. Works with the 'type' = 'event' only.
      # @option arguments [Boolean] :market  '1' — to return communities with enabled market only.
      # @option arguments [Integer] :sort  Sort order. Possible values:; *'0' — default sorting (similar the full version of the site);; *'1' — by growth speed;; *'2'— by the "day attendance/members number" ratio;; *'3' — by the "Likes number/members number" ratio;; *'4' — by the "comments number/members number" ratio;; *'5' — by the "boards entries number/members number" ratio.; ;
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of results.
      # @option arguments [Integer] :count (20) Number of communities to return.; "Note that you can not receive more than first thousand of results, regardless of 'count' and 'offset' values."
      # @see Vk::API::Groups::Methods::Search
      # @return [Vk::API::Groups::Responses::SearchResponse] Returns a list of communities matching the search criteria.
      def search(arguments = {})
        require "vk/api/groups/methods/search"
        method = Methods::Search.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/search_response"
        Responses::SearchResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :category_id  Category id received from .
      # @option arguments [Integer] :subcategory_id  Subcategory id received from .
      # @see Vk::API::Groups::Methods::GetCatalog
      # @return [Vk::API::Groups::Responses::GetCatalogResponse] Returns communities list for a catalog category.
      def get_catalog(arguments = {})
        require "vk/api/groups/methods/get_catalog"
        method = Methods::GetCatalog.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/get_catalog_response"
        Responses::GetCatalogResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @see Vk::API::Groups::Methods::GetCatalogInfo
      # @return [Vk::API::Groups::Responses::GetCatalogInfoResponse] Returns categories list for communities catalog
      def get_catalog_info(arguments = {})
        require "vk/api/groups/methods/get_catalog_info"
        method = Methods::GetCatalogInfo.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/get_catalog_info_response"
        Responses::GetCatalogInfoResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of invitations.
      # @option arguments [Integer] :count (20) Number of invitations to return.
      # @option arguments [Boolean] :extended  '1' — to return additional  for communities..
      # @see Vk::API::Groups::Methods::GetInvites
      # @return [Vk::API::Groups::Responses::GetInvitesResponse] Returns a list of invitations to join communities and events.; ;
      def get_invites(arguments = {})
        require "vk/api/groups/methods/get_invites"
        method = Methods::GetInvites.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/get_invites_response"
        Responses::GetInvitesResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Group ID to return invited users for.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of results.
      # @option arguments [Integer] :count (20) Number of results to return.
      # @option arguments [Array] :fields  List of additional fields to be returned. ; Available values: 'sex, bdate, city, country, photo_50, photo_100, photo_200_orig, photo_200, photo_400_orig, photo_max, photo_max_orig, online, online_mobile, lists, domain, has_mobile, contacts, connections, site, education, universities, schools, can_post, can_see_all_posts, can_see_audio, can_write_private_message, status, last_seen, common_count, relation, relatives, counters'.
      # @option arguments [String] :name_case  Case for declension of user name and surname. Possible values:; *'nom' — nominative (default);; *'gen' — genitive;; *'dat' — dative;; *'acc' — accusative; ; *'ins' — instrumental;; *'abl' — prepositional.
      # @see Vk::API::Groups::Methods::GetInvitedUsers
      # @return [Vk::API::Groups::Responses::GetInvitedUsersResponse] Returns invited users list of a community
      def get_invited_users(arguments = {})
        require "vk/api/groups/methods/get_invited_users"
        method = Methods::GetInvitedUsers.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/get_invited_users_response"
        Responses::GetInvitedUsersResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [Integer] :user_id  User ID.
      # @option arguments [Integer] :end_date  Date (in Unix time) when the user will be removed from the blacklist.
      # @option arguments [Integer] :reason  Reason for ban:; '1' — spam; '2' — verbal abuse; '3' — strong language; '4' — irrelevant messages; '0' — other (default)
      # @option arguments [String] :comment  Text of comment to ban.
      # @option arguments [Boolean] :comment_visible  '1' — text of comment will be visible to the user;; '0' — text of comment will be invisible to the user. ; By default: '0'.
      # @see Vk::API::Groups::Methods::BanUser
      # @return [Vk::API::Groups::Responses::BanUserResponse] Adds a user to a community blacklist.
      def ban_user(arguments = {})
        require "vk/api/groups/methods/ban_user"
        method = Methods::BanUser.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/ban_user_response"
        Responses::BanUserResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [Integer] :user_id  User ID.
      # @see Vk::API::Groups::Methods::UnbanUser
      # @return [Vk::API::Groups::Responses::UnbanUserResponse] Removes a user from a community blacklist.
      def unban_user(arguments = {})
        require "vk/api/groups/methods/unban_user"
        method = Methods::UnbanUser.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/unban_user_response"
        Responses::UnbanUserResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of users.
      # @option arguments [Integer] :count (20) Number of users to return.
      # @option arguments [Array] :fields  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :user_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Groups::Methods::GetBanned
      # @return [Vk::API::Groups::Responses::GetBannedResponse] Returns a list of users on a community blacklist.
      def get_banned(arguments = {})
        require "vk/api/groups/methods/get_banned"
        method = Methods::GetBanned.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/get_banned_response"
        Responses::GetBannedResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :title  Community title.
      # @option arguments [String] :description  Community description (ignored for 'type' = 'public').
      # @option arguments [String] :type ("group") Community type. Possible values:; *'group' – group;; *'event' – event;; *'public' – public page
      # @option arguments [Integer] :public_category  Category ID (for 'type' = 'public' only).
      # @option arguments [Integer] :subtype  Public page subtype. Possible values:; *'1' – place or small business;; *'2' – company, organizaton or website;; *'3' – famous person or group of people;; *'4' – product or work of art.
      # @see Vk::API::Groups::Methods::Create
      # @return [Vk::API::Groups::Responses::CreateResponse] Creates a new community.
      def create(arguments = {})
        require "vk/api/groups/methods/create"
        method = Methods::Create.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/create_response"
        Responses::CreateResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [String] :title  Community title.
      # @option arguments [String] :description  Community description.
      # @option arguments [String] :screen_name  Community screen name.
      # @option arguments [Integer] :access  Community type. Possible values:; *'0' – open;; *'1' – closed;; *'2' – private.
      # @option arguments [String] :website  Website that will be displayed in the community information field.
      # @option arguments [String] :subject  Community subject. Possible values: ; *'1' – auto/moto;; *'2' –  activity holidays;; *'3' – business;; *'4' – pets;; *'5' – health;; *'6' – dating and communication; ; *'7' – games;; *'8' – IT (computers and software);; *'9' – cinema;; *'10' – beauty and fashion;; *'11' – cooking;; *'12' – art and culture;; *'13' – literature;; *'14' – mobile services and internet;; *'15' – music;; *'16' – science and technology;; *'17' – real estate;; *'18' – news and media;; *'19' – security;; *'20' – education;; *'21' – home and renovations;; *'22' – politics;; *'23' – food;; *'24' – industry;; *'25' – travel;; *'26' – work;; *'27' – entertainment;; *'28' – religion;; *'29' – family;; *'30' – sports;; *'31' – insurance;; *'32' – television;; *'33' – goods and services;; *'34' – hobbies;; *'35' – finance;; *'36' – photo;; *'37' – esoterics;; *'38' – electronics and appliances;; *'39' – erotic;; *'40' – humor;; *'41' – society, humanities;; *'42' – design and graphics.
      # @option arguments [String] :email  Organizer email (for events).
      # @option arguments [String] :phone  Organizer phone number (for events).
      # @option arguments [String] :rss  RSS feed address for import (available only to communities with special permission. Contact vk.com/support to get it.
      # @option arguments [Integer] :event_start_date  Event start date in Unixtime format.
      # @option arguments [Integer] :event_finish_date  Event finish date in Unixtime format.
      # @option arguments [Integer] :event_group_id  Organizer community ID (for events only).
      # @option arguments [Integer] :public_category  Public page category ID.
      # @option arguments [Integer] :public_subcategory  Public page subcategory ID.
      # @option arguments [String] :public_date  Founding date of a company or organization owning the community in "dd.mm.YYYY" format.
      # @option arguments [Integer] :wall  Wall settings. Possible values:; *'0' – disabled;; *'1' – open;; *'2' – limited (groups and events only);; *'3' – closed (groups and events only).;
      # @option arguments [Integer] :topics  Board topics settings. Possbile values: ; *'0' – disabled;; *'1' – open;; *'2' – limited (for groups and events only).;
      # @option arguments [Integer] :photos  Photos settings. Possible values:; *'0' – disabled;; *'1' – open;; *'2' – limited (for groups and events only).;
      # @option arguments [Integer] :video  Video settings. Possible values:; *'0' – disabled;; *'1' – open;; *'2' – limited (for groups and events only).
      # @option arguments [Integer] :audio  Audio settings. Possible values:; *'0' – disabled;; *'1' – open;; *'2' – limited (for groups and events only).
      # @option arguments [Boolean] :links  Links settings (for public pages only). Possible values:; *'0' – disabled;; *'1' – enabled.;
      # @option arguments [Boolean] :events  Events settings (for public pages only). Possible values:; *'0' – disabled;; *'1' – enabled.;
      # @option arguments [Boolean] :places  Places settings (for public pages only). Possible values:; *'0' – disabled;; *'1' – enabled.;
      # @option arguments [Boolean] :contacts  Contacts settings (for public pages only). Possible values:; *'0' – disabled;; *'1' – enabled.;
      # @option arguments [Integer] :docs  Documents settings. Possible values:; *'0' – disabled;; *'1' – open;; *'2' – limited (for groups and events only).
      # @option arguments [Integer] :wiki  Wiki pages settings. Possible values:; *'0' – disabled;; *'1' – open;; *'2' – limited (for groups and events only).
      # @option arguments [Boolean] :messages  Community messages. Possible values:; *'0' — disabled;; *'1' — enabled.
      # @option arguments [Integer] :age_limits (2) Community age limits. Possible values:; *'1' — no limits;; *'2' — 16+;; *'3' — 18+.
      # @option arguments [Boolean] :market  Market settings. Possible values:; *'0' – disabled;; *'1' – enabled.
      # @option arguments [Boolean] :market_comments  market comments settings. Possible values:; *'0' – disabled;; *'1' – enabled.
      # @option arguments [Array] :market_country  Market delivery countries.
      # @option arguments [Array] :market_city  Market delivery cities (if only one country is specified).
      # @option arguments [Integer] :market_currency  Market currency settings. Possbile values: ; *'643' – Russian rubles;; *'980' – Ukrainian hryvnia;; *'398' – Kazakh tenge;; *'978' – Euro;; *'840' – US dollars
      # @option arguments [Integer] :market_contact  Seller contact for market.; Set '0' for community messages.
      # @option arguments [Integer] :market_wiki  ID of a wiki page with market description.
      # @option arguments [Boolean] :obscene_filter  Obscene expressions filter in comments. Possible values: ; *'0' – disabled;; *'1' – enabled.
      # @option arguments [Boolean] :obscene_stopwords  Stopwords filter in comments. Possible values: ; *'0' – disabled;; *'1' – enabled.
      # @option arguments [Array] :obscene_words  Keywords for stopwords filter.
      # @see Vk::API::Groups::Methods::Edit
      # @return [Vk::API::Groups::Responses::EditResponse] Edits a community.
      def edit(arguments = {})
        require "vk/api/groups/methods/edit"
        method = Methods::Edit.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/edit_response"
        Responses::EditResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [String] :title  Place title.
      # @option arguments [String] :address  Place address.
      # @option arguments [Integer] :country_id  Country ID.
      # @option arguments [Integer] :city_id  City ID.
      # @option arguments [Number] :latitude  Geographical latitude.
      # @option arguments [Number] :longitude  Geographical longitude.
      # @see Vk::API::Groups::Methods::EditPlace
      # @return [Vk::API::Groups::Responses::EditPlaceResponse] Edits the place in community.
      def edit_place(arguments = {})
        require "vk/api/groups/methods/edit_place"
        method = Methods::EditPlace.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/edit_place_response"
        Responses::EditPlaceResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @see Vk::API::Groups::Methods::GetSettings
      # @return [Vk::API::Groups::Responses::GetSettingsResponse] Returns community settings.
      def get_settings(arguments = {})
        require "vk/api/groups/methods/get_settings"
        method = Methods::GetSettings.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/get_settings_response"
        Responses::GetSettingsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of results.
      # @option arguments [Integer] :count (20) Number of results to return.
      # @option arguments [Array] :fields  Profile fields to return.;
      # @see Vk::API::Groups::Methods::GetRequests
      # @return [Vk::API::Groups::Responses::GetRequestsResponse] Returns a list of requests to the community.
      def get_requests(arguments = {})
        require "vk/api/groups/methods/get_requests"
        method = Methods::GetRequests.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/get_requests_response"
        Responses::GetRequestsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [Integer] :user_id  User ID.
      # @option arguments [String] :role  Manager role. Possible values:; *'moderator';; *'editor';; *'administrator'.
      # @option arguments [Boolean] :is_contact  '1' — to show the manager in Contacts block of the community.
      # @option arguments [String] :contact_position  Position to show in Contacts block.
      # @option arguments [String] :contact_phone  Contact phone.
      # @option arguments [String] :contact_email  Contact e-mail.
      # @see Vk::API::Groups::Methods::EditManager
      # @return [Vk::API::Groups::Responses::EditManagerResponse] Allows to add, remove or edit the community manager .
      def edit_manager(arguments = {})
        require "vk/api/groups/methods/edit_manager"
        method = Methods::EditManager.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/edit_manager_response"
        Responses::EditManagerResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [Integer] :user_id  User ID.
      # @see Vk::API::Groups::Methods::Invite
      # @return [Vk::API::Groups::Responses::InviteResponse] Allows to invite friends to the community.
      def invite(arguments = {})
        require "vk/api/groups/methods/invite"
        method = Methods::Invite.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/invite_response"
        Responses::InviteResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [String] :link  LInk URL.
      # @option arguments [String] :text  Description text for the link.
      # @see Vk::API::Groups::Methods::AddLink
      # @return [Vk::API::Groups::Responses::AddLinkResponse] Allows to add a link to the community.
      def add_link(arguments = {})
        require "vk/api/groups/methods/add_link"
        method = Methods::AddLink.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/add_link_response"
        Responses::AddLinkResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [Integer] :link_id  LInk ID.
      # @see Vk::API::Groups::Methods::DeleteLink
      # @return [Vk::API::Groups::Responses::DeleteLinkResponse] Allows to delete a link from the community.
      def delete_link(arguments = {})
        require "vk/api/groups/methods/delete_link"
        method = Methods::DeleteLink.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/delete_link_response"
        Responses::DeleteLinkResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [Integer] :link_id  Link ID.
      # @option arguments [String] :text  New description text for the link.
      # @see Vk::API::Groups::Methods::EditLink
      # @return [Vk::API::Groups::Responses::EditLinkResponse] Allows to edit a link in the community.
      def edit_link(arguments = {})
        require "vk/api/groups/methods/edit_link"
        method = Methods::EditLink.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/edit_link_response"
        Responses::EditLinkResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [Integer] :link_id  Link ID.
      # @option arguments [Integer] :after  ID of the link after which to place the link with 'link_id'.
      # @see Vk::API::Groups::Methods::ReorderLink
      # @return [Vk::API::Groups::Responses::ReorderLinkResponse] Allows to reorder links in the community.
      def reorder_link(arguments = {})
        require "vk/api/groups/methods/reorder_link"
        method = Methods::ReorderLink.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/reorder_link_response"
        Responses::ReorderLinkResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [Integer] :user_id  User ID.
      # @see Vk::API::Groups::Methods::RemoveUser
      # @return [Vk::API::Groups::Responses::RemoveUserResponse] Removes a user from the community.
      def remove_user(arguments = {})
        require "vk/api/groups/methods/remove_user"
        method = Methods::RemoveUser.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/remove_user_response"
        Responses::RemoveUserResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [Integer] :user_id  User ID.
      # @see Vk::API::Groups::Methods::ApproveRequest
      # @return [Vk::API::Groups::Responses::ApproveRequestResponse] Allows to approve join request to the community.
      def approve_request(arguments = {})
        require "vk/api/groups/methods/approve_request"
        method = Methods::ApproveRequest.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/approve_request_response"
        Responses::ApproveRequestResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @see Vk::API::Groups::Methods::GetCallbackConfirmationCode
      # @return [Vk::API::Groups::Responses::GetCallbackConfirmationCodeResponse] Returns Callback API confirmation code for the community.
      def get_callback_confirmation_code(arguments = {})
        require "vk/api/groups/methods/get_callback_confirmation_code"
        method = Methods::GetCallbackConfirmationCode.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/get_callback_confirmation_code_response"
        Responses::GetCallbackConfirmationCodeResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @see Vk::API::Groups::Methods::GetCallbackServerSettings
      # @return [Vk::API::Groups::Responses::GetCallbackServerSettingsResponse] Returns  server settings for the community.
      def get_callback_server_settings(arguments = {})
        require "vk/api/groups/methods/get_callback_server_settings"
        method = Methods::GetCallbackServerSettings.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/get_callback_server_settings_response"
        Responses::GetCallbackServerSettingsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @see Vk::API::Groups::Methods::GetCallbackSettings
      # @return [Vk::API::Groups::Responses::GetCallbackSettingsResponse] Returns  notifications settings.
      def get_callback_settings(arguments = {})
        require "vk/api/groups/methods/get_callback_settings"
        method = Methods::GetCallbackSettings.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/get_callback_settings_response"
        Responses::GetCallbackSettingsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [String] :server_url  Server URL.
      # @see Vk::API::Groups::Methods::SetCallbackServer
      # @return [Vk::API::Groups::Responses::SetCallbackServerResponse] Allow to set  server URL for the community. ; ;
      def set_callback_server(arguments = {})
        require "vk/api/groups/methods/set_callback_server"
        method = Methods::SetCallbackServer.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/set_callback_server_response"
        Responses::SetCallbackServerResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [String] :secret_key  Callback API secret key.
      # @see Vk::API::Groups::Methods::SetCallbackServerSettings
      # @return [Vk::API::Groups::Responses::SetCallbackServerSettingsResponse] Allow to set  server settings.
      def set_callback_server_settings(arguments = {})
        require "vk/api/groups/methods/set_callback_server_settings"
        method = Methods::SetCallbackServerSettings.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/set_callback_server_settings_response"
        Responses::SetCallbackServerSettingsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [Boolean] :message_new  New messages notificaitions ('0' — disabled, '1' — enabled).
      # @option arguments [Boolean] :photo_new  New photos notificaitions ('0' — disabled, '1' — enabled).
      # @option arguments [Boolean] :audio_new  New audios notificaitions ('0' — disabled, '1' — enabled).
      # @option arguments [Boolean] :video_new  New videos notificaitions ('0' — disabled, '1' — enabled).
      # @option arguments [Boolean] :wall_reply_new  New wall replies notificaitions ('0' — disabled, '1' — enabled).
      # @option arguments [Boolean] :wall_reply_edit  Wall replies edited notificaitions ('0' — disabled, '1' — enabled).
      # @option arguments [Boolean] :wall_post_new  New wall posts notificaitions ('0' — disabled, '1' — enabled).
      # @option arguments [Boolean] :board_post_new  New board posts notificaitions ('0' — disabled, '1' — enabled).
      # @option arguments [Boolean] :board_post_edit  Board posts edited notificaitions ('0' — disabled, '1' — enabled).
      # @option arguments [Boolean] :board_post_restore  Board posts restored notificaitions ('0' — disabled, '1' — enabled).
      # @option arguments [Boolean] :board_post_delete  Board posts deleted notificaitions ('0' — disabled, '1' — enabled).
      # @option arguments [Boolean] :photo_comment_new  New comment to photo notificaitions ('0' — disabled, '1' — enabled).
      # @option arguments [Boolean] :video_comment_new  New comment to video notificaitions ('0' — disabled, '1' — enabled).
      # @option arguments [Boolean] :market_comment_new  New comment to market item notificaitions ('0' — disabled, '1' — enabled).
      # @option arguments [Boolean] :group_join  Joined community notificaitions ('0' — disabled, '1' — enabled).
      # @option arguments [Boolean] :group_leave  Left community notificaitions ('0' — disabled, '1' — enabled).
      # @see Vk::API::Groups::Methods::SetCallbackSettings
      # @return [Vk::API::Groups::Responses::SetCallbackSettingsResponse] Allow to set notifications settings for .
      def set_callback_settings(arguments = {})
        require "vk/api/groups/methods/set_callback_settings"
        method = Methods::SetCallbackSettings.new(arguments)
        response = method.call(@client)
        require "vk/api/groups/responses/set_callback_settings_response"
        Responses::SetCallbackSettingsResponse.new(response.deep_symbolize_keys)
      end
    end
    class Board < Vk::Schema::Namespace
      module Methods
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

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  ID of the community that owns the discussion board.
      # @option arguments [Array] :topic_ids  IDs of topics to be returned (100 maximum). By default, all topics are returned.; ; If this parameter is set, the 'order', 'offset', and 'count' parameters are ignored.
      # @option arguments [Integer] :order  Sort order:; '1' — by date updated in reverse chronological order.; '2' — by date created in reverse chronological order.; '-1' — by date updated in chronological order.; '-2' — by date created in chronological order.; ; If no sort order is specified, topics are returned in the order specified by the group administrator. Pinned topics are returned first, regardless of the sorting.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of topics.
      # @option arguments [Integer] :count (40) Number of topics to return.
      # @option arguments [Boolean] :extended  '1' — to return information about users who created topics or who posted there last; '0' — to return no additional fields (default)
      # @option arguments [Integer] :preview  '1' — to return the first comment in each topic;; '2' — to return the last comment in each topic;; '0' — to return no comments.; ; By default: '0'.
      # @option arguments [Integer] :preview_length (90) Number of characters after which to truncate the previewed comment. To preview the full comment, specify '0'.
      # @see Vk::API::Board::Methods::GetTopics
      # @return [Vk::API::Board::Responses::GetTopicsResponse] Returns a list of topics on a community's discussion board.
      def get_topics(arguments = {})
        require "vk/api/board/methods/get_topics"
        method = Methods::GetTopics.new(arguments)
        response = method.call(@client)
        require "vk/api/board/responses/get_topics_response"
        Responses::GetTopicsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  ID of the community that owns the discussion board.
      # @option arguments [Integer] :topic_id  Topic ID.
      # @option arguments [Boolean] :need_likes  '1' — to return the 'likes' field; '0'  — not to return the 'likes' field (default)
      # @option arguments [Integer] :start_comment_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of comments.
      # @option arguments [Integer] :count (20) Number of comments to return.
      # @option arguments [Boolean] :extended  '1' — to return information about users who posted comments; '0' — to return no additional fields (default)
      # @option arguments [String] :sort  Sort order:; 'asc' — by creation date in chronological order; 'desc' — by creation date in reverse chronological order;
      # @see Vk::API::Board::Methods::GetComments
      # @return [Vk::API::Board::Responses::GetCommentsResponse] Returns a list of comments on a topic on a community's discussion board.
      def get_comments(arguments = {})
        require "vk/api/board/methods/get_comments"
        method = Methods::GetComments.new(arguments)
        response = method.call(@client)
        require "vk/api/board/responses/get_comments_response"
        Responses::GetCommentsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  ID of the community that owns the discussion board.
      # @option arguments [String] :title  Topic title.
      # @option arguments [String] :text  Text of the topic.
      # @option arguments [Boolean] :from_group  For a community:; '1' — to post the topic as by the community; '0' — to post the topic as by the user (default)
      # @option arguments [Array] :attachments  List of media objects attached to the topic, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media object:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media owner. ; '<media_id>' — Media ID.; ; Example:; "photo100172_166443618,photo66748_265827614"; ; "NOTE: If you try to attach more than one reference, an error will be thrown.";
      # @see Vk::API::Board::Methods::AddTopic
      # @return [Vk::API::Board::Responses::AddTopicResponse] Creates a new topic on a community's discussion board.
      def add_topic(arguments = {})
        require "vk/api/board/methods/add_topic"
        method = Methods::AddTopic.new(arguments)
        response = method.call(@client)
        require "vk/api/board/responses/add_topic_response"
        Responses::AddTopicResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  ID of the community that owns the discussion board.
      # @option arguments [Integer] :topic_id  ID of the topic to be commented on.
      # @option arguments [String] :message  (Required if 'attachments' is not set.) Text of the comment.
      # @option arguments [Array] :attachments  (Required if 'text' is not set.) List of media objects attached to the comment, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media object:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media owner. ; '<media_id>' — Media ID.
      # @option arguments [Boolean] :from_group  '1' — to post the comment as by the community; '0' — to post the comment as by the user (default)
      # @option arguments [Integer] :sticker_id  Sticker ID.
      # @option arguments [String] :guid  Unique identifier to avoid repeated comments.
      # @see Vk::API::Board::Methods::CreateComment
      # @return [Vk::API::Board::Responses::CreateCommentResponse] Adds a comment on a topic on a community's discussion board.
      def create_comment(arguments = {})
        require "vk/api/board/methods/create_comment"
        method = Methods::CreateComment.new(arguments)
        response = method.call(@client)
        require "vk/api/board/responses/create_comment_response"
        Responses::CreateCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  ID of the community that owns the discussion board.
      # @option arguments [Integer] :topic_id  Topic ID.
      # @see Vk::API::Board::Methods::DeleteTopic
      # @return [Vk::API::Board::Responses::DeleteTopicResponse] Deletes a topic from a community's discussion board.
      def delete_topic(arguments = {})
        require "vk/api/board/methods/delete_topic"
        method = Methods::DeleteTopic.new(arguments)
        response = method.call(@client)
        require "vk/api/board/responses/delete_topic_response"
        Responses::DeleteTopicResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  ID of the community that owns the discussion board.
      # @option arguments [Integer] :topic_id  Topic ID.
      # @option arguments [String] :title  New title of the topic.
      # @see Vk::API::Board::Methods::EditTopic
      # @return [Vk::API::Board::Responses::EditTopicResponse] Edits the title of a topic on a community's discussion board.
      def edit_topic(arguments = {})
        require "vk/api/board/methods/edit_topic"
        method = Methods::EditTopic.new(arguments)
        response = method.call(@client)
        require "vk/api/board/responses/edit_topic_response"
        Responses::EditTopicResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  ID of the community that owns the discussion board.
      # @option arguments [Integer] :topic_id  Topic ID.
      # @option arguments [Integer] :comment_id  ID of the comment on the topic.
      # @option arguments [String] :message  (Required if 'attachments' is not set). New comment text.
      # @option arguments [Array] :attachments  (Required if 'message' is not set.) List of media objects attached to the comment, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media object:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media owner. ; '<media_id>' — Media ID.; ; Example:; "photo100172_166443618,photo66748_265827614"
      # @see Vk::API::Board::Methods::EditComment
      # @return [Vk::API::Board::Responses::EditCommentResponse] Edits a comment on a topic on a community's discussion board.
      def edit_comment(arguments = {})
        require "vk/api/board/methods/edit_comment"
        method = Methods::EditComment.new(arguments)
        response = method.call(@client)
        require "vk/api/board/responses/edit_comment_response"
        Responses::EditCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  ID of the community that owns the discussion board.
      # @option arguments [Integer] :topic_id  Topic ID.
      # @option arguments [Integer] :comment_id  Comment ID.
      # @see Vk::API::Board::Methods::RestoreComment
      # @return [Vk::API::Board::Responses::RestoreCommentResponse] Restores a comment deleted from a topic on a community's discussion board.
      def restore_comment(arguments = {})
        require "vk/api/board/methods/restore_comment"
        method = Methods::RestoreComment.new(arguments)
        response = method.call(@client)
        require "vk/api/board/responses/restore_comment_response"
        Responses::RestoreCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  ID of the community that owns the discussion board.
      # @option arguments [Integer] :topic_id  Topic ID.
      # @option arguments [Integer] :comment_id  Comment ID.
      # @see Vk::API::Board::Methods::DeleteComment
      # @return [Vk::API::Board::Responses::DeleteCommentResponse] Deletes a comment on a topic on a community's discussion board.
      def delete_comment(arguments = {})
        require "vk/api/board/methods/delete_comment"
        method = Methods::DeleteComment.new(arguments)
        response = method.call(@client)
        require "vk/api/board/responses/delete_comment_response"
        Responses::DeleteCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  ID of the community that owns the discussion board.
      # @option arguments [Integer] :topic_id  Topic ID.
      # @see Vk::API::Board::Methods::OpenTopic
      # @return [Vk::API::Board::Responses::OpenTopicResponse] Re-opens a previously closed topic on a community's discussion board.
      def open_topic(arguments = {})
        require "vk/api/board/methods/open_topic"
        method = Methods::OpenTopic.new(arguments)
        response = method.call(@client)
        require "vk/api/board/responses/open_topic_response"
        Responses::OpenTopicResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  ID of the community that owns the discussion board.
      # @option arguments [Integer] :topic_id  Topic ID.
      # @see Vk::API::Board::Methods::CloseTopic
      # @return [Vk::API::Board::Responses::CloseTopicResponse] Closes a topic on a community's discussion board so that comments cannot be posted.
      def close_topic(arguments = {})
        require "vk/api/board/methods/close_topic"
        method = Methods::CloseTopic.new(arguments)
        response = method.call(@client)
        require "vk/api/board/responses/close_topic_response"
        Responses::CloseTopicResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  ID of the community that owns the discussion board.
      # @option arguments [Integer] :topic_id  Topic ID.
      # @see Vk::API::Board::Methods::FixTopic
      # @return [Vk::API::Board::Responses::FixTopicResponse] Pins a topic (fixes its place) to the top of a community's discussion board.
      def fix_topic(arguments = {})
        require "vk/api/board/methods/fix_topic"
        method = Methods::FixTopic.new(arguments)
        response = method.call(@client)
        require "vk/api/board/responses/fix_topic_response"
        Responses::FixTopicResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  ID of the community that owns the discussion board.
      # @option arguments [Integer] :topic_id  Topic ID.
      # @see Vk::API::Board::Methods::UnfixTopic
      # @return [Vk::API::Board::Responses::UnfixTopicResponse] Unpins a pinned topic from the top of a community's discussion board.
      def unfix_topic(arguments = {})
        require "vk/api/board/methods/unfix_topic"
        method = Methods::UnfixTopic.new(arguments)
        response = method.call(@client)
        require "vk/api/board/responses/unfix_topic_response"
        Responses::UnfixTopicResponse.new(response.deep_symbolize_keys)
      end
    end
    class Video < Vk::Schema::Namespace
      module Methods
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

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the video(s).
      # @option arguments [Array] :videos  Video IDs, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; Use a negative value to designate a community ID.; ; Example:; "-4363_136089719,13245770_137352259"
      # @option arguments [Integer] :album_id  ID of the album containing the video(s).
      # @option arguments [Integer] :count (100) Number of videos to return.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of videos.
      # @option arguments [Boolean] :extended  '1' — to return an extended response with additional fields
      # @see Vk::API::Video::Methods::Get
      # @return [Vk::API::Video::Responses::GetResponse] Returns detailed information about videos.
      def get(arguments = {})
        require "vk/api/video/methods/get"
        method = Methods::Get.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/get_response"
        Responses::GetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the video.
      # @option arguments [Integer] :video_id  Video ID.
      # @option arguments [String] :name  New video title.
      # @option arguments [String] :desc  New video description.
      # @option arguments [Array] :privacy_view  Privacy settings in a .; Privacy setting is available for videos uploaded to own profile by user.
      # @option arguments [Array] :privacy_comment  Privacy settings for comments in a .
      # @option arguments [Boolean] :no_comments  Disable comments for the group video.
      # @option arguments [Boolean] :repeat  '1' — to repeat the playback of the video; '0' — to play the video once;
      # @see Vk::API::Video::Methods::Edit
      # @return [Vk::API::Video::Responses::EditResponse] Edits information about a video on a user or community page.
      def edit(arguments = {})
        require "vk/api/video/methods/edit"
        method = Methods::Edit.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/edit_response"
        Responses::EditResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :target_id  identifier of a user or community to add a video to.; Use a negative value to designate a community ID.
      # @option arguments [Integer] :video_id  Video ID.
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the video.; Use a negative value to designate a community ID.
      # @see Vk::API::Video::Methods::Add
      # @return [Vk::API::Video::Responses::AddResponse] Adds a video to a user or community page.
      def add(arguments = {})
        require "vk/api/video/methods/add"
        method = Methods::Add.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/add_response"
        Responses::AddResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :name  Name of the video.
      # @option arguments [String] :description  Description of the video.
      # @option arguments [Boolean] :is_private  '1' — to designate the video as private (send it via a private message); the video will not appear on the user's video list and will not be available by ID for other users; '0' — not to designate the video as private
      # @option arguments [Boolean] :wallpost  '1' — to post the saved video on a user's wall; '0' — not to post the saved video on a user's wall
      # @option arguments [String] :link  URL for embedding the video from an external website.
      # @option arguments [Integer] :group_id  ID of the community in which the video will be saved. By default, the current user's page.
      # @option arguments [Integer] :album_id  ID of the album to which the saved video will be added.
      # @option arguments [Array] :privacy_view  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Array] :privacy_comment  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Boolean] :no_comments  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Boolean] :repeat  '1' — to repeat the playback of the video; '0' — to play the video once;
      # @see Vk::API::Video::Methods::Save
      # @return [Vk::API::Video::Responses::SaveResponse] Returns a server address (required for upload) and video data.
      def save(arguments = {})
        require "vk/api/video/methods/save"
        method = Methods::Save.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/save_response"
        Responses::SaveResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :video_id  Video ID.
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the video.
      # @option arguments [Integer] :target_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Video::Methods::Delete
      # @return [Vk::API::Video::Responses::DeleteResponse] Deletes a video from a user or community page.
      def delete(arguments = {})
        require "vk/api/video/methods/delete"
        method = Methods::Delete.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/delete_response"
        Responses::DeleteResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :video_id  Video ID.
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the video.
      # @see Vk::API::Video::Methods::Restore
      # @return [Vk::API::Video::Responses::RestoreResponse] Restores a previously deleted video.
      def restore(arguments = {})
        require "vk/api/video/methods/restore"
        method = Methods::Restore.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/restore_response"
        Responses::RestoreResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :q  Search query string (e.g., 'The Beatles').
      # @option arguments [Integer] :sort  Sort order:; '1' — by duration; '2' — by relevance; '0' — by date added
      # @option arguments [Integer] :hd  If not null, only searches for high-definition videos.
      # @option arguments [Boolean] :adult  '1' — to disable the Safe Search filter; '0' — to enable the Safe Search filter
      # @option arguments [Array] :filters  Filters to apply:; 'youtube' — return YouTube videos only; 'vimeo' — return Vimeo videos only; 'short' — return short videos only; 'long' — return long videos only
      # @option arguments [Boolean] :search_own  
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of videos.
      # @option arguments [Integer] :longer  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :shorter  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :count (20) Number of videos to return.
      # @see Vk::API::Video::Methods::Search
      # @return [Vk::API::Video::Responses::SearchResponse] Returns a list of videos under the set search criterion.
      def search(arguments = {})
        require "vk/api/video/methods/search"
        method = Methods::Search.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/search_response"
        Responses::SearchResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  User ID.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of videos.
      # @option arguments [Integer] :count (20) Number of videos to return.
      # @see Vk::API::Video::Methods::GetUserVideos
      # @return [Vk::API::Video::Responses::GetUserVideosResponse] Returns list of videos in which the user is tagged.
      def get_user_videos(arguments = {})
        require "vk/api/video/methods/get_user_videos"
        method = Methods::GetUserVideos.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/get_user_videos_response"
        Responses::GetUserVideosResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the video album(s).
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of video albums.
      # @option arguments [Integer] :count (50) Number of video albums to return.
      # @option arguments [Boolean] :extended  '1' — to return additional information about album privacy settings for the current user
      # @see Vk::API::Video::Methods::GetAlbums
      # @return [Vk::API::Video::Responses::GetAlbumsResponse] Returns a list of video albums owned by a user or community.
      def get_albums(arguments = {})
        require "vk/api/video/methods/get_albums"
        method = Methods::GetAlbums.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/get_albums_response"
        Responses::GetAlbumsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  identifier of a user or community to add a video to. ; Use a negative value to designate a community ID.
      # @option arguments [Integer] :album_id  album ID.
      # @see Vk::API::Video::Methods::GetAlbumById
      # @return [Vk::API::Video::Responses::GetAlbumByIdResponse] Returns video album info
      def get_album_by_id(arguments = {})
        require "vk/api/video/methods/get_album_by_id"
        method = Methods::GetAlbumById.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/get_album_by_id_response"
        Responses::GetAlbumByIdResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID (if the album will be created in a community).
      # @option arguments [String] :title  Album title.
      # @option arguments [Array] :privacy  new access permissions for the album.; Possible values: ; *'0' – all users;; *'1' – friends only;; *'2' – friends and friends of friends;; *'3' – "only me".
      # @see Vk::API::Video::Methods::AddAlbum
      # @return [Vk::API::Video::Responses::AddAlbumResponse] Creates an empty album for videos.
      def add_album(arguments = {})
        require "vk/api/video/methods/add_album"
        method = Methods::AddAlbum.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/add_album_response"
        Responses::AddAlbumResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID (if the album edited is owned by a community).
      # @option arguments [Integer] :album_id  Album ID.
      # @option arguments [String] :title  New album title.
      # @option arguments [Array] :privacy  new access permissions for the album.; Possible values: ; *'0' – all users;; *'1' – friends only;; *'2' – friends and friends of friends;; *'3' – "only me".
      # @see Vk::API::Video::Methods::EditAlbum
      # @return [Vk::API::Video::Responses::EditAlbumResponse] Edits the title of a video album.
      def edit_album(arguments = {})
        require "vk/api/video/methods/edit_album"
        method = Methods::EditAlbum.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/edit_album_response"
        Responses::EditAlbumResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID (if the album is owned by a community).
      # @option arguments [Integer] :album_id  Album ID.
      # @see Vk::API::Video::Methods::DeleteAlbum
      # @return [Vk::API::Video::Responses::DeleteAlbumResponse] Deletes a video album.
      def delete_album(arguments = {})
        require "vk/api/video/methods/delete_album"
        method = Methods::DeleteAlbum.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/delete_album_response"
        Responses::DeleteAlbumResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the albums..
      # @option arguments [Integer] :album_id  Album ID.
      # @option arguments [Integer] :before  ID of the album before which the album in question shall be placed.
      # @option arguments [Integer] :after  ID of the album after which the album in question shall be placed.
      # @see Vk::API::Video::Methods::ReorderAlbums
      # @return [Vk::API::Video::Responses::ReorderAlbumsResponse] Reorders the album in the list of user video albums.
      def reorder_albums(arguments = {})
        require "vk/api/video/methods/reorder_albums"
        method = Methods::ReorderAlbums.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/reorder_albums_response"
        Responses::ReorderAlbumsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :target_id  ID of the user or community that owns the album with videos.
      # @option arguments [Integer] :album_id  ID of the video album.
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the video.
      # @option arguments [Integer] :video_id  ID of the video.
      # @option arguments [Integer] :before_owner_id  ID of the user or community that owns the video before which the video in question shall be placed.
      # @option arguments [Integer] :before_video_id  ID of the video before which the video in question shall be placed.
      # @option arguments [Integer] :after_owner_id  ID of the user or community that owns the video after which the photo in question shall be placed.
      # @option arguments [Integer] :after_video_id  ID of the video after which the photo in question shall be placed.
      # @see Vk::API::Video::Methods::ReorderVideos
      # @return [Vk::API::Video::Responses::ReorderVideosResponse] Reorders the video in the video album.
      def reorder_videos(arguments = {})
        require "vk/api/video/methods/reorder_videos"
        method = Methods::ReorderVideos.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/reorder_videos_response"
        Responses::ReorderVideosResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :target_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :album_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Array] :album_ids  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :owner_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :video_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Video::Methods::AddToAlbum
      # @return [Vk::API::Video::Responses::AddToAlbumResponse] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      def add_to_album(arguments = {})
        require "vk/api/video/methods/add_to_album"
        method = Methods::AddToAlbum.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/add_to_album_response"
        Responses::AddToAlbumResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :target_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :album_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Array] :album_ids  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :owner_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :video_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Video::Methods::RemoveFromAlbum
      # @return [Vk::API::Video::Responses::RemoveFromAlbumResponse] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      def remove_from_album(arguments = {})
        require "vk/api/video/methods/remove_from_album"
        method = Methods::RemoveFromAlbum.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/remove_from_album_response"
        Responses::RemoveFromAlbumResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :target_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :owner_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :video_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Video::Methods::GetAlbumsByVideo
      # @return [Vk::API::Video::Responses::GetAlbumsByVideoResponse] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      def get_albums_by_video(arguments = {})
        require "vk/api/video/methods/get_albums_by_video"
        method = Methods::GetAlbumsByVideo.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/get_albums_by_video_response"
        Responses::GetAlbumsByVideoResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the video.
      # @option arguments [Integer] :video_id  Video ID.
      # @option arguments [Boolean] :need_likes  '1' — to return an additional 'likes' field
      # @option arguments [Integer] :start_comment_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of comments.
      # @option arguments [Integer] :count (20) Number of comments to return.
      # @option arguments [String] :sort  Sort order:; 'asc' — oldest comment first; 'desc' — newest comment first
      # @option arguments [Boolean] :extended  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Video::Methods::GetComments
      # @return [Vk::API::Video::Responses::GetCommentsResponse] Returns a list of comments on a video.
      def get_comments(arguments = {})
        require "vk/api/video/methods/get_comments"
        method = Methods::GetComments.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/get_comments_response"
        Responses::GetCommentsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the video.
      # @option arguments [Integer] :video_id  Video ID.
      # @option arguments [String] :message  New comment text.
      # @option arguments [Array] :attachments  List of objects attached to the comment, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media attachment owner.; '<media_id>' — Media attachment ID. ; ; Example:; "photo100172_166443618,photo66748_265827614"
      # @option arguments [Boolean] :from_group  '1' — to post the comment from a community name (only if 'owner_id'<0)
      # @option arguments [Integer] :reply_to_comment  
      # @option arguments [Integer] :sticker_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :guid  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Video::Methods::CreateComment
      # @return [Vk::API::Video::Responses::CreateCommentResponse] Adds a new comment on a video.
      def create_comment(arguments = {})
        require "vk/api/video/methods/create_comment"
        method = Methods::CreateComment.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/create_comment_response"
        Responses::CreateCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the video.
      # @option arguments [Integer] :comment_id  ID of the comment to be deleted.
      # @see Vk::API::Video::Methods::DeleteComment
      # @return [Vk::API::Video::Responses::DeleteCommentResponse] Deletes a comment on a video.
      def delete_comment(arguments = {})
        require "vk/api/video/methods/delete_comment"
        method = Methods::DeleteComment.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/delete_comment_response"
        Responses::DeleteCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the video.
      # @option arguments [Integer] :comment_id  ID of the deleted comment.
      # @see Vk::API::Video::Methods::RestoreComment
      # @return [Vk::API::Video::Responses::RestoreCommentResponse] Restores a previously deleted comment on a video.
      def restore_comment(arguments = {})
        require "vk/api/video/methods/restore_comment"
        method = Methods::RestoreComment.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/restore_comment_response"
        Responses::RestoreCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the video.
      # @option arguments [Integer] :comment_id  Comment ID.
      # @option arguments [String] :message  New comment text.
      # @option arguments [Array] :attachments  List of objects attached to the comment, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media attachment owner.; '<media_id>' — Media attachment ID. ; ; Example:; "photo100172_166443618,photo66748_265827614"
      # @see Vk::API::Video::Methods::EditComment
      # @return [Vk::API::Video::Responses::EditCommentResponse] Edits the text of a comment on a video.
      def edit_comment(arguments = {})
        require "vk/api/video/methods/edit_comment"
        method = Methods::EditComment.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/edit_comment_response"
        Responses::EditCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the video.
      # @option arguments [Integer] :video_id  Video ID.
      # @see Vk::API::Video::Methods::GetTags
      # @return [Vk::API::Video::Responses::GetTagsResponse] Returns a list of tags on a video.
      def get_tags(arguments = {})
        require "vk/api/video/methods/get_tags"
        method = Methods::GetTags.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/get_tags_response"
        Responses::GetTagsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  ID of the user to be tagged.
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the video.
      # @option arguments [Integer] :video_id  Video ID.
      # @option arguments [String] :tagged_name  Tag text.
      # @see Vk::API::Video::Methods::PutTag
      # @return [Vk::API::Video::Responses::PutTagResponse] Adds a tag on a video.
      def put_tag(arguments = {})
        require "vk/api/video/methods/put_tag"
        method = Methods::PutTag.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/put_tag_response"
        Responses::PutTagResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :tag_id  Tag ID.
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the video.
      # @option arguments [Integer] :video_id  Video ID.
      # @see Vk::API::Video::Methods::RemoveTag
      # @return [Vk::API::Video::Responses::RemoveTagResponse] Removes a tag from a video.
      def remove_tag(arguments = {})
        require "vk/api/video/methods/remove_tag"
        method = Methods::RemoveTag.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/remove_tag_response"
        Responses::RemoveTagResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of videos.
      # @option arguments [Integer] :count (20) Number of videos to return.
      # @see Vk::API::Video::Methods::GetNewTags
      # @return [Vk::API::Video::Responses::GetNewTagsResponse] Returns a list of videos with tags that have not been viewed.
      def get_new_tags(arguments = {})
        require "vk/api/video/methods/get_new_tags"
        method = Methods::GetNewTags.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/get_new_tags_response"
        Responses::GetNewTagsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the video.
      # @option arguments [Integer] :video_id  Video ID.
      # @option arguments [Integer] :reason  Reason for the complaint:; '0' – spam; '1' – child pornography; '2' – extremism; '3' – violence; '4' – drug propaganda; '5' – adult material; '6' – insult; abuse
      # @option arguments [String] :comment  Comment describing the complaint.
      # @option arguments [String] :search_query  (If the video was found in search results.) Search query string.
      # @see Vk::API::Video::Methods::Report
      # @return [Vk::API::Video::Responses::ReportResponse] Reports (submits a complaint about) a video.
      def report(arguments = {})
        require "vk/api/video/methods/report"
        method = Methods::Report.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/report_response"
        Responses::ReportResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the video.
      # @option arguments [Integer] :comment_id  ID of the comment being reported.
      # @option arguments [Integer] :reason  Reason for the complaint: ; 0 – spam ; 1 – child pornography ; 2 – extremism ; 3 – violence ; 4 – drug propaganda ; 5 – adult material ; 6 – insult; abuse
      # @see Vk::API::Video::Methods::ReportComment
      # @return [Vk::API::Video::Responses::ReportCommentResponse] Reports (submits a complaint about) a comment on a video.;
      def report_comment(arguments = {})
        require "vk/api/video/methods/report_comment"
        method = Methods::ReportComment.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/report_comment_response"
        Responses::ReportCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :count (10) number of catalog blocks to return.
      # @option arguments [Integer] :items_count (10) number of videos in each block.
      # @option arguments [String] :from  parameter for requesting the next results page. Value for transmitting here is returned in the 'next' field in a reply.
      # @option arguments [Array] :filters ([]) list of requested catalog sections
      # @see Vk::API::Video::Methods::GetCatalog
      # @return [Vk::API::Video::Responses::GetCatalogResponse] Returns video catalog
      def get_catalog(arguments = {})
        require "vk/api/video/methods/get_catalog"
        method = Methods::GetCatalog.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/get_catalog_response"
        Responses::GetCatalogResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :section_id  'id' value returned with a block by the '' method.
      # @option arguments [String] :from  'next' value returned with a block by the '' method.
      # @option arguments [Integer] :count (10) number of blocks to return.
      # @see Vk::API::Video::Methods::GetCatalogSection
      # @return [Vk::API::Video::Responses::GetCatalogSectionResponse] Returns a separate catalog section
      def get_catalog_section(arguments = {})
        require "vk/api/video/methods/get_catalog_section"
        method = Methods::GetCatalogSection.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/get_catalog_section_response"
        Responses::GetCatalogSectionResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :section_id  'id' value returned with a block to hide by the '' method.
      # @see Vk::API::Video::Methods::HideCatalogSection
      # @return [Vk::API::Video::Responses::HideCatalogSectionResponse] Hides a video catalog section from a user.
      def hide_catalog_section(arguments = {})
        require "vk/api/video/methods/hide_catalog_section"
        method = Methods::HideCatalogSection.new(arguments)
        response = method.call(@client)
        require "vk/api/video/responses/hide_catalog_section_response"
        Responses::HideCatalogSectionResponse.new(response.deep_symbolize_keys)
      end
    end
    class Notes < Vk::Schema::Namespace
      module Methods
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

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Array] :note_ids  Note IDs.
      # @option arguments [Integer] :user_id  Note owner ID.
      # @option arguments [Integer] :count (20) Number of notes to return.
      # @see Vk::API::Notes::Methods::Get
      # @return [Vk::API::Notes::Responses::GetResponse] Returns a list of notes created by a user.
      def get(arguments = {})
        require "vk/api/notes/methods/get"
        method = Methods::Get.new(arguments)
        response = method.call(@client)
        require "vk/api/notes/responses/get_response"
        Responses::GetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :note_id  Note ID.
      # @option arguments [Integer] :owner_id  Note owner ID.
      # @see Vk::API::Notes::Methods::GetById
      # @return [Vk::API::Notes::Responses::GetByIdResponse] Returns a note by its ID.
      def get_by_id(arguments = {})
        require "vk/api/notes/methods/get_by_id"
        method = Methods::GetById.new(arguments)
        response = method.call(@client)
        require "vk/api/notes/responses/get_by_id_response"
        Responses::GetByIdResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :title  Note title.
      # @option arguments [String] :text  Note text.
      # @option arguments [Array] :privacy_view ([]) @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Array] :privacy_comment ([]) @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Notes::Methods::Add
      # @return [Vk::API::Notes::Responses::AddResponse] Creates a new note for the current user.
      def add(arguments = {})
        require "vk/api/notes/methods/add"
        method = Methods::Add.new(arguments)
        response = method.call(@client)
        require "vk/api/notes/responses/add_response"
        Responses::AddResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :note_id  Note ID.
      # @option arguments [String] :title  Note title.
      # @option arguments [String] :text  Note text.
      # @option arguments [Array] :privacy_view ([]) @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Array] :privacy_comment ([]) @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Notes::Methods::Edit
      # @return [Vk::API::Notes::Responses::EditResponse] Edits a note of the current user.
      def edit(arguments = {})
        require "vk/api/notes/methods/edit"
        method = Methods::Edit.new(arguments)
        response = method.call(@client)
        require "vk/api/notes/responses/edit_response"
        Responses::EditResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :note_id  Note ID.
      # @see Vk::API::Notes::Methods::Delete
      # @return [Vk::API::Notes::Responses::DeleteResponse] Deletes a note of the current user.
      def delete(arguments = {})
        require "vk/api/notes/methods/delete"
        method = Methods::Delete.new(arguments)
        response = method.call(@client)
        require "vk/api/notes/responses/delete_response"
        Responses::DeleteResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :note_id  Note ID.
      # @option arguments [Integer] :owner_id  Note owner ID.
      # @option arguments [Integer] :count (20) Number of comments to return.
      # @see Vk::API::Notes::Methods::GetComments
      # @return [Vk::API::Notes::Responses::GetCommentsResponse] Returns a list of comments on a note.
      def get_comments(arguments = {})
        require "vk/api/notes/methods/get_comments"
        method = Methods::GetComments.new(arguments)
        response = method.call(@client)
        require "vk/api/notes/responses/get_comments_response"
        Responses::GetCommentsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :note_id  Note ID.
      # @option arguments [Integer] :owner_id  Note owner ID.
      # @option arguments [Integer] :reply_to  ID of the user to whom the reply is addressed (if the comment is a reply to another comment).;
      # @option arguments [String] :message  Comment text.
      # @option arguments [String] :guid  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Notes::Methods::CreateComment
      # @return [Vk::API::Notes::Responses::CreateCommentResponse] Adds a new comment on a note.
      def create_comment(arguments = {})
        require "vk/api/notes/methods/create_comment"
        method = Methods::CreateComment.new(arguments)
        response = method.call(@client)
        require "vk/api/notes/responses/create_comment_response"
        Responses::CreateCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :comment_id  Comment ID.
      # @option arguments [Integer] :owner_id  Note owner ID.
      # @option arguments [String] :message  New comment text.
      # @see Vk::API::Notes::Methods::EditComment
      # @return [Vk::API::Notes::Responses::EditCommentResponse] Edits a comment on a note.
      def edit_comment(arguments = {})
        require "vk/api/notes/methods/edit_comment"
        method = Methods::EditComment.new(arguments)
        response = method.call(@client)
        require "vk/api/notes/responses/edit_comment_response"
        Responses::EditCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :comment_id  Comment ID.
      # @option arguments [Integer] :owner_id  Note owner ID.
      # @see Vk::API::Notes::Methods::DeleteComment
      # @return [Vk::API::Notes::Responses::DeleteCommentResponse] Deletes a comment on a note.
      def delete_comment(arguments = {})
        require "vk/api/notes/methods/delete_comment"
        method = Methods::DeleteComment.new(arguments)
        response = method.call(@client)
        require "vk/api/notes/responses/delete_comment_response"
        Responses::DeleteCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :comment_id  Comment ID.
      # @option arguments [Integer] :owner_id  Note owner ID.
      # @see Vk::API::Notes::Methods::RestoreComment
      # @return [Vk::API::Notes::Responses::RestoreCommentResponse] Restores a deleted comment on a note.
      def restore_comment(arguments = {})
        require "vk/api/notes/methods/restore_comment"
        method = Methods::RestoreComment.new(arguments)
        response = method.call(@client)
        require "vk/api/notes/responses/restore_comment_response"
        Responses::RestoreCommentResponse.new(response.deep_symbolize_keys)
      end
    end
    class Places < Vk::Schema::Namespace
      module Methods
        autoload :Add, 'vk/api/places/methods/add'
        autoload :GetById, 'vk/api/places/methods/get_by_id'
        autoload :Search, 'vk/api/places/methods/search'
        autoload :Checkin, 'vk/api/places/methods/checkin'
        autoload :GetCheckins, 'vk/api/places/methods/get_checkins'
        autoload :GetTypes, 'vk/api/places/methods/get_types'
      end

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Integer] :type  ID of the location's type (e.g., '1' — Home, '2' — Work). To get location type IDs, use the   method.
      # @option arguments [String] :title  Title of the location.
      # @option arguments [Number] :latitude  Geographical latitude, in degrees (from '-90' to '90').
      # @option arguments [Number] :longitude  Geographical longitude, in degrees (from '-180' to '180').
      # @option arguments [Integer] :country  ID of the location's country. To get country IDs, use the  method.
      # @option arguments [Integer] :city  ID of the location's city. To get city IDs, use the  method.
      # @option arguments [String] :address  Street address of the location (e.g., '125 Elm Street').
      # @see Vk::API::Places::Methods::Add
      # @return [Vk::API::Places::Responses::AddResponse] Adds a new location to the location database.
      def add(arguments = {})
        require "vk/api/places/methods/add"
        method = Methods::Add.new(arguments)
        response = method.call(@client)
        require "vk/api/places/responses/add_response"
        Responses::AddResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :places  Location IDs.
      # @see Vk::API::Places::Methods::GetById
      # @return [Vk::API::Places::Responses::GetByIdResponse] Returns information about locations by their IDs.
      def get_by_id(arguments = {})
        require "vk/api/places/methods/get_by_id"
        method = Methods::GetById.new(arguments)
        response = method.call(@client)
        require "vk/api/places/responses/get_by_id_response"
        Responses::GetByIdResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :q  Search query string.
      # @option arguments [Integer] :city  City ID.
      # @option arguments [Number] :latitude  Geographical latitude of the initial search point, in degrees (from '-90' to '90').
      # @option arguments [Number] :longitude  Geographical longitude of the initial search point, in degrees (from '-180' to '180').
      # @option arguments [Integer] :radius  Radius of the search zone:; '1' — 100 m. (default); '2' — 800 m.; '3' — 6 km.; '4' — 50 km.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of locations.
      # @option arguments [Integer] :count (30) Number of locations to return.
      # @see Vk::API::Places::Methods::Search
      # @return [Vk::API::Places::Responses::SearchResponse] Returns a list of locations that match the search criteria.
      def search(arguments = {})
        require "vk/api/places/methods/search"
        method = Methods::Search.new(arguments)
        response = method.call(@client)
        require "vk/api/places/responses/search_response"
        Responses::SearchResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :place_id  Location ID.
      # @option arguments [String] :text  Text of the comment on the check-in (255 characters maximum; line breaks not supported).
      # @option arguments [Number] :latitude  Geographical latitude of the check-in, in degrees (from '-90' to '90').
      # @option arguments [Number] :longitude  Geographical longitude of the check-in, in degrees (from '-180' to '180').
      # @option arguments [Boolean] :friends_only  '1' — Check-in will be available only for friends.; '0' — Check-in will be available for all users (default).
      # @option arguments [Array] :services  List of services or websites (e.g., 'twitter', 'facebook') to which the check-in will be exported, if the user has set up the respective option.
      # @see Vk::API::Places::Methods::Checkin
      # @return [Vk::API::Places::Responses::CheckinResponse] Checks a user in at the specified location.
      def checkin(arguments = {})
        require "vk/api/places/methods/checkin"
        method = Methods::Checkin.new(arguments)
        response = method.call(@client)
        require "vk/api/places/responses/checkin_response"
        Responses::CheckinResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Number] :latitude  Geographical latitude of the initial search point, in degrees (from '-90' to '90').
      # @option arguments [Number] :longitude  Geographical longitude of the initial search point, in degrees (from '-180' to '180').
      # @option arguments [Integer] :place  Location ID of check-ins to return. (Ignored if 'latitude' and 'longitude' are specified.)
      # @option arguments [Integer] :user_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of check-ins. (Ignored if 'timestamp' is not null.)
      # @option arguments [Integer] :count (20) Number of check-ins to return. (Ignored if 'timestamp' is not null.)
      # @option arguments [Integer] :timestamp  Specifies that only those check-ins created after the specified timestamp will be returned.
      # @option arguments [Boolean] :friends_only  '1' — to return only check-ins with set geographical coordinates. (Ignored if 'latitude' and 'longitude' are not set.)
      # @option arguments [Boolean] :need_places  '1' — to return location information with the check-ins. (Ignored if 'place' is not set.);
      # @see Vk::API::Places::Methods::GetCheckins
      # @return [Vk::API::Places::Responses::GetCheckinsResponse] Returns a list of user check-ins at locations according to the set parameters.
      def get_checkins(arguments = {})
        require "vk/api/places/methods/get_checkins"
        method = Methods::GetCheckins.new(arguments)
        response = method.call(@client)
        require "vk/api/places/responses/get_checkins_response"
        Responses::GetCheckinsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @see Vk::API::Places::Methods::GetTypes
      # @return [Vk::API::Places::Responses::GetTypesResponse] Returns a list of all types of locations.
      def get_types(arguments = {})
        require "vk/api/places/methods/get_types"
        method = Methods::GetTypes.new(arguments)
        response = method.call(@client)
        require "vk/api/places/responses/get_types_response"
        Responses::GetTypesResponse.new(response.deep_symbolize_keys)
      end
    end
    class Account < Vk::Schema::Namespace
      module Methods
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

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Array] :filter  Counters to be returned (friends, messages, photos, videos, notes, gifts, events, groups, sdk).
      # @see Vk::API::Account::Methods::GetCounters
      # @return [Vk::API::Account::Responses::GetCountersResponse] Returns non-null values of user counters.
      def get_counters(arguments = {})
        require "vk/api/account/methods/get_counters"
        method = Methods::GetCounters.new(arguments)
        response = method.call(@client)
        require "vk/api/account/responses/get_counters_response"
        Responses::GetCountersResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  User ID.
      # @option arguments [String] :name  Application screen name.
      # @see Vk::API::Account::Methods::SetNameInMenu
      # @return [Vk::API::Account::Responses::SetNameInMenuResponse] Sets an application screen name (up to 17 characters), that is shown to the user in the left menu.
      def set_name_in_menu(arguments = {})
        require "vk/api/account/methods/set_name_in_menu"
        method = Methods::SetNameInMenu.new(arguments)
        response = method.call(@client)
        require "vk/api/account/responses/set_name_in_menu_response"
        Responses::SetNameInMenuResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Boolean] :voip  '1' if videocalls are available for current device.
      # @see Vk::API::Account::Methods::SetOnline
      # @return [Vk::API::Account::Responses::SetOnlineResponse] Marks the current user as online for 15 minutes.
      def set_online(arguments = {})
        require "vk/api/account/methods/set_online"
        method = Methods::SetOnline.new(arguments)
        response = method.call(@client)
        require "vk/api/account/responses/set_online_response"
        Responses::SetOnlineResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @see Vk::API::Account::Methods::SetOffline
      # @return [Vk::API::Account::Responses::SetOfflineResponse] Marks a current user as offline.
      def set_offline(arguments = {})
        require "vk/api/account/methods/set_offline"
        method = Methods::SetOffline.new(arguments)
        response = method.call(@client)
        require "vk/api/account/responses/set_offline_response"
        Responses::SetOfflineResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :contacts  List of contacts separated with commas
      # @option arguments [String] :service  String identifier of a service which contacts are used for searching. Possible values: ; * email; * phone; * twitter; * facebook; * odnoklassniki; * instagram; * google
      # @option arguments [String] :mycontact  Contact of a current user on a specified service
      # @option arguments [Boolean] :return_all  '1' – also return contacts found using this service before, '0' – return only contacts found using 'contacts' field.
      # @option arguments [Array] :fields  Profile fields to return. Possible values: 'nickname, domain, sex, bdate, city, country, timezone, photo_50, photo_100, photo_200_orig, has_mobile, contacts, education, online, relation, last_seen, status, can_write_private_message, can_see_all_posts, can_post, universities'.
      # @see Vk::API::Account::Methods::LookupContacts
      # @return [Vk::API::Account::Responses::LookupContactsResponse] Allows to search the VK users using phone numbers, e-mail addresses and user IDs on other services.
      def lookup_contacts(arguments = {})
        require "vk/api/account/methods/lookup_contacts"
        method = Methods::LookupContacts.new(arguments)
        response = method.call(@client)
        require "vk/api/account/responses/lookup_contacts_response"
        Responses::LookupContactsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :token  Device token used to send notifications. (for mpns, the token shall be URL for sending of notifications)
      # @option arguments [String] :device_model  String name of device model.
      # @option arguments [Integer] :device_year  Device year.
      # @option arguments [String] :device_id  Unique device ID.
      # @option arguments [String] :system_version  String version of device operating system.
      # @option arguments [String] :settings  Push settings in a .
      # @see Vk::API::Account::Methods::RegisterDevice
      # @return [Vk::API::Account::Responses::RegisterDeviceResponse] Subscribes an iOS/Android/Windows Phone-based device to receive push notifications
      def register_device(arguments = {})
        require "vk/api/account/methods/register_device"
        method = Methods::RegisterDevice.new(arguments)
        response = method.call(@client)
        require "vk/api/account/responses/register_device_response"
        Responses::RegisterDeviceResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :device_id  Unique device ID.
      # @see Vk::API::Account::Methods::UnregisterDevice
      # @return [Vk::API::Account::Responses::UnregisterDeviceResponse] Unsubscribes a device from push notifications.
      def unregister_device(arguments = {})
        require "vk/api/account/methods/unregister_device"
        method = Methods::UnregisterDevice.new(arguments)
        response = method.call(@client)
        require "vk/api/account/responses/unregister_device_response"
        Responses::UnregisterDeviceResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :device_id  Unique device ID.
      # @option arguments [Integer] :time  Time in seconds for what notifications should be disabled. '-1' to disable forever.
      # @option arguments [Integer] :peer_id  Destination ID.; "For user:; 'User ID', e.g. '12345'.; ; For chat:; '2000000000' + 'Chat ID', e.g. '2000000001'.; ; For community:; '- Community ID', e.g. '-12345'.; "
      # @option arguments [Integer] :sound  '1' — to enable sound in this dialog, '0' — to disable sound. Only if 'peer_id' contains user or community ID.
      # @see Vk::API::Account::Methods::SetSilenceMode
      # @return [Vk::API::Account::Responses::SetSilenceModeResponse] Mutes push notifications for the set period of time.
      def set_silence_mode(arguments = {})
        require "vk/api/account/methods/set_silence_mode"
        method = Methods::SetSilenceMode.new(arguments)
        response = method.call(@client)
        require "vk/api/account/responses/set_silence_mode_response"
        Responses::SetSilenceModeResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :device_id  Unique device ID.
      # @see Vk::API::Account::Methods::GetPushSettings
      # @return [Vk::API::Account::Responses::GetPushSettingsResponse] Gets settings of push notifications.
      def get_push_settings(arguments = {})
        require "vk/api/account/methods/get_push_settings"
        method = Methods::GetPushSettings.new(arguments)
        response = method.call(@client)
        require "vk/api/account/responses/get_push_settings_response"
        Responses::GetPushSettingsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :device_id  Unique device ID.
      # @option arguments [String] :settings  Push settings in a .
      # @option arguments [String] :key  Notification key.
      # @option arguments [Array] :value  New value for the key in a .
      # @see Vk::API::Account::Methods::SetPushSettings
      # @return [Vk::API::Account::Responses::SetPushSettingsResponse] Change push settings.
      def set_push_settings(arguments = {})
        require "vk/api/account/methods/set_push_settings"
        method = Methods::SetPushSettings.new(arguments)
        response = method.call(@client)
        require "vk/api/account/responses/set_push_settings_response"
        Responses::SetPushSettingsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  User ID whose settings information shall be got. By default: current user.
      # @see Vk::API::Account::Methods::GetAppPermissions
      # @return [Vk::API::Account::Responses::GetAppPermissionsResponse] Gets settings of the user in this application.
      def get_app_permissions(arguments = {})
        require "vk/api/account/methods/get_app_permissions"
        method = Methods::GetAppPermissions.new(arguments)
        response = method.call(@client)
        require "vk/api/account/responses/get_app_permissions_response"
        Responses::GetAppPermissionsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :count (100) Number of results to return.
      # @see Vk::API::Account::Methods::GetActiveOffers
      # @return [Vk::API::Account::Responses::GetActiveOffersResponse] Returns a list of active ads (offers) which executed by the user will bring him/her respective number of votes to his balance in the application.
      def get_active_offers(arguments = {})
        require "vk/api/account/methods/get_active_offers"
        method = Methods::GetActiveOffers.new(arguments)
        response = method.call(@client)
        require "vk/api/account/responses/get_active_offers_response"
        Responses::GetActiveOffersResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  User ID.
      # @see Vk::API::Account::Methods::BanUser
      # @return [Vk::API::Account::Responses::BanUserResponse] Adds user to the banlist.
      def ban_user(arguments = {})
        require "vk/api/account/methods/ban_user"
        method = Methods::BanUser.new(arguments)
        response = method.call(@client)
        require "vk/api/account/responses/ban_user_response"
        Responses::BanUserResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  User ID.
      # @see Vk::API::Account::Methods::UnbanUser
      # @return [Vk::API::Account::Responses::UnbanUserResponse] Deletes user from the blacklist.
      def unban_user(arguments = {})
        require "vk/api/account/methods/unban_user"
        method = Methods::UnbanUser.new(arguments)
        response = method.call(@client)
        require "vk/api/account/responses/unban_user_response"
        Responses::UnbanUserResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of results.
      # @option arguments [Integer] :count (20) Number of results to return.
      # @see Vk::API::Account::Methods::GetBanned
      # @return [Vk::API::Account::Responses::GetBannedResponse] Returns a user's blacklist.
      def get_banned(arguments = {})
        require "vk/api/account/methods/get_banned"
        method = Methods::GetBanned.new(arguments)
        response = method.call(@client)
        require "vk/api/account/responses/get_banned_response"
        Responses::GetBannedResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :fields  Fields to return. Possible values:; *'country' — user country;; *'https_required' — is "HTTPS only" option enabled;; *'own_posts_default' — is "Show my posts only" option is enabled;; *'no_wall_replies' — are wall replies disabled or not;; *'intro' — is intro passed by user or not;; *'lang' — user language.; ; By default: all.
      # @see Vk::API::Account::Methods::GetInfo
      # @return [Vk::API::Account::Responses::GetInfoResponse] Returns current account info.
      def get_info(arguments = {})
        require "vk/api/account/methods/get_info"
        method = Methods::GetInfo.new(arguments)
        response = method.call(@client)
        require "vk/api/account/responses/get_info_response"
        Responses::GetInfoResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :name  Setting name.
      # @option arguments [String] :value  Setting value.
      # @see Vk::API::Account::Methods::SetInfo
      # @return [Vk::API::Account::Responses::SetInfoResponse] Allows to edit the current account info.
      def set_info(arguments = {})
        require "vk/api/account/methods/set_info"
        method = Methods::SetInfo.new(arguments)
        response = method.call(@client)
        require "vk/api/account/responses/set_info_response"
        Responses::SetInfoResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :restore_sid  Session id received after the  method is executed.; (If the password is changed right after the access was restored)
      # @option arguments [String] :change_password_hash  Hash received after a successful OAuth authorization with a code got by SMS.; (If the password is changed right after the access was restored)
      # @option arguments [String] :old_password  Current user password.
      # @option arguments [String] :new_password  New password that  will be set as a current
      # @see Vk::API::Account::Methods::ChangePassword
      # @return [Vk::API::Account::Responses::ChangePasswordResponse] Changes a user password after access is successfully restored with the  method.
      def change_password(arguments = {})
        require "vk/api/account/methods/change_password"
        method = Methods::ChangePassword.new(arguments)
        response = method.call(@client)
        require "vk/api/account/responses/change_password_response"
        Responses::ChangePasswordResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @see Vk::API::Account::Methods::GetProfileInfo
      # @return [Vk::API::Account::Responses::GetProfileInfoResponse] Returns the current account info.
      def get_profile_info(arguments = {})
        require "vk/api/account/methods/get_profile_info"
        method = Methods::GetProfileInfo.new(arguments)
        response = method.call(@client)
        require "vk/api/account/responses/get_profile_info_response"
        Responses::GetProfileInfoResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :first_name  User first name.
      # @option arguments [String] :last_name  User last name.
      # @option arguments [String] :maiden_name  User maiden name (female only)
      # @option arguments [String] :screen_name  User screen name.
      # @option arguments [Integer] :cancel_request_id  ID of the name change request to be canceled. If this paremeter is sent, all the others are ignored.
      # @option arguments [Integer] :sex  User sex. Possible values: ; * '1' – female;; * '2' – male.
      # @option arguments [Integer] :relation  User relationship status. Possible values: ; * '1' – single;; * '2' – in a relationship;; * '3' – engaged;; * '4' – married;; * '5' – it's complicated;; * '6' – actively searching;; * '7' – in love;; * '0' – not specified.
      # @option arguments [Integer] :relation_partner_id  ID of the relationship partner.
      # @option arguments [String] :bdate  User birth date, format: DD.MM.YYYY.
      # @option arguments [Integer] :bdate_visibility  Birth date visibility. Returned values: ; * '1' – show birth date;; * '2' – show only month and date;; * '0' – hide birth date.
      # @option arguments [String] :home_town  User home town.
      # @option arguments [Integer] :country_id  User country.
      # @option arguments [Integer] :city_id  User city.
      # @option arguments [String] :status  Status text.
      # @see Vk::API::Account::Methods::SaveProfileInfo
      # @return [Vk::API::Account::Responses::SaveProfileInfoResponse] Edits current profile info.
      def save_profile_info(arguments = {})
        require "vk/api/account/methods/save_profile_info"
        method = Methods::SaveProfileInfo.new(arguments)
        response = method.call(@client)
        require "vk/api/account/responses/save_profile_info_response"
        Responses::SaveProfileInfoResponse.new(response.deep_symbolize_keys)
      end
    end
    class Messages < Vk::Schema::Namespace
      module Methods
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

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Boolean] :out  '1' — to return outgoing messages; '0' — to return incoming messages (default)
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of messages.
      # @option arguments [Integer] :count (20) Number of messages to return.
      # @option arguments [Integer] :time_offset  Maximum time since a message was sent, in seconds. To return messages without a time limitation, set as '0'.
      # @option arguments [Integer] :preview_length  Number of characters after which to truncate a previewed message. To preview the full message, specify '0'.; "NOTE: Messages are not truncated by default. Messages are truncated by words."
      # @option arguments [Integer] :last_message_id  ID of the message received before the message that will be returned last (provided that no more than 'count' messages were received before it; otherwise 'offset' parameter shall be used).
      # @see Vk::API::Messages::Methods::Get
      # @return [Vk::API::Messages::Responses::GetResponse] Returns a list of the current user's incoming or outgoing private messages.
      def get(arguments = {})
        require "vk/api/messages/methods/get"
        method = Methods::Get.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/get_response"
        Responses::GetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of messages.
      # @option arguments [Integer] :count (20) Number of messages to return.
      # @option arguments [Integer] :start_message_id  ID of the message from what to return dialogs.
      # @option arguments [Integer] :preview_length  Number of characters after which to truncate a previewed message. To preview the full message, specify '0'.; "NOTE: Messages are not truncated by default. Messages are truncated by words."
      # @option arguments [Boolean] :unread  '1' — return unread messages only.
      # @see Vk::API::Messages::Methods::GetDialogs
      # @return [Vk::API::Messages::Responses::GetDialogsResponse] Returns a list of the current user's conversations.
      def get_dialogs(arguments = {})
        require "vk/api/messages/methods/get_dialogs"
        method = Methods::GetDialogs.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/get_dialogs_response"
        Responses::GetDialogsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :message_ids  Message IDs.
      # @see Vk::API::Messages::Methods::GetById
      # @return [Vk::API::Messages::Responses::GetByIdResponse] Returns messages by their IDs.
      def get_by_id(arguments = {})
        require "vk/api/messages/methods/get_by_id"
        method = Methods::GetById.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/get_by_id_response"
        Responses::GetByIdResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :q  Search query string.
      # @option arguments [Integer] :peer_id  Destination ID.; ; "For user:; 'User ID', e.g. '12345'.; ; For chat:; '2000000000' + 'chat_id', e.g. '2000000001'.; ; For community:; '- community ID', e.g. '-12345'.; "
      # @option arguments [Integer] :date  Date to search message before in Unixtime.
      # @option arguments [Integer] :count (20) Number of messages to return.
      # @see Vk::API::Messages::Methods::Search
      # @return [Vk::API::Messages::Responses::SearchResponse] Returns a list of the current user's private messages that match search criteria.
      def search(arguments = {})
        require "vk/api/messages/methods/search"
        method = Methods::Search.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/search_response"
        Responses::SearchResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of messages.
      # @option arguments [Integer] :count (20) Number of messages to return.
      # @option arguments [String] :user_id  ID of the user whose message history you want to return.
      # @option arguments [Integer] :peer_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Integer] :start_message_id  Starting message ID from which to return history.
      # @option arguments [Integer] :rev  Sort order:; '1' — return messages in chronological order.; '0' — return messages in reverse chronological order.
      # @see Vk::API::Messages::Methods::GetHistory
      # @return [Vk::API::Messages::Responses::GetHistoryResponse] Returns message history for the specified user or group chat.
      def get_history(arguments = {})
        require "vk/api/messages/methods/get_history"
        method = Methods::GetHistory.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/get_history_response"
        Responses::GetHistoryResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :peer_id  Peer ID.; ; "; For group chat:; '2000000000 + chat ID' ; ; For community:; '-community ID'"
      # @option arguments [String] :media_type ("photo") Type of media files to return:; *'photo';; *'video';; *'audio';; *'doc';; *'link'.;
      # @option arguments [String] :start_from  Message ID to start return results from.
      # @option arguments [Integer] :count (30) Number of objects to return.
      # @option arguments [Boolean] :photo_sizes  '1' — to return photo sizes in a
      # @option arguments [Array] :fields  Additional  to return.
      # @see Vk::API::Messages::Methods::GetHistoryAttachments
      # @return [Vk::API::Messages::Responses::GetHistoryAttachmentsResponse] Returns media files from the dialog or group chat.
      def get_history_attachments(arguments = {})
        require "vk/api/messages/methods/get_history_attachments"
        method = Methods::GetHistoryAttachments.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/get_history_attachments_response"
        Responses::GetHistoryAttachmentsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  User ID (by default — current user).
      # @option arguments [Integer] :random_id  Unique identifier to avoid resending the message.
      # @option arguments [Integer] :peer_id  Destination ID.; ; "For user:; 'User ID', e.g. '12345'.; ; For chat:; '2000000000' + 'chat_id', e.g. '2000000001'.; ; For community:; '- community ID', e.g. '-12345'.; "
      # @option arguments [String] :domain  User's short address (for example, 'illarionov').
      # @option arguments [Integer] :chat_id  ID of conversation the message will relate to.
      # @option arguments [Array] :user_ids  IDs of message recipients (if new conversation shall be started).
      # @option arguments [String] :message  (Required if 'attachments' is not set.) Text of the message.
      # @option arguments [Number] :lat  Geographical latitude of a check-in, in degrees (from -90 to 90).
      # @option arguments [Number] :long  Geographical longitude of a check-in, in degrees (from -180 to 180).
      # @option arguments [String] :attachment  (Required if 'message' is not set.) List of objects attached to the message, separated by commas, in the following format:; "<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; 'wall' — wall post; '<owner_id>' — ID of the media attachment owner.; '<media_id>' — media attachment ID.; ; Example:; "photo100172_166443618"
      # @option arguments [String] :forward_messages  ID of forwarded messages, separated with a comma. Listed messages of the sender will be shown in the message body at the recipient's.; ; Example:; "123,431,544"
      # @option arguments [Integer] :sticker_id  Sticker id.
      # @option arguments [Boolean] :notification  '1' if the message is a notification (for community messages).
      # @see Vk::API::Messages::Methods::Send
      # @return [Vk::API::Messages::Responses::SendResponse] Sends a message.
      def send(arguments = {})
        require "vk/api/messages/methods/send"
        method = Methods::Send.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/send_response"
        Responses::SendResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :message_ids  Message IDs.
      # @option arguments [Boolean] :spam  '1' — to mark message as spam.
      # @see Vk::API::Messages::Methods::Delete
      # @return [Vk::API::Messages::Responses::DeleteResponse] Deletes one or more messages.
      def delete(arguments = {})
        require "vk/api/messages/methods/delete"
        method = Methods::Delete.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/delete_response"
        Responses::DeleteResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :user_id  User ID. To clear a chat history use 'chat_id'
      # @option arguments [Integer] :peer_id  Destination ID.; ; "For user:; 'User ID', e.g. '12345'.; ; For chat:; '2000000000' + 'chat_id', e.g. '2000000001'.; ; For community:; '- community ID', e.g. '-12345'.; "
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of messages.
      # @option arguments [Integer] :count  Number of messages to delete.; "NOTE: If the number of messages exceeds the maximum, the method shall be called several times."
      # @see Vk::API::Messages::Methods::DeleteDialog
      # @return [Vk::API::Messages::Responses::DeleteDialogResponse] Deletes all private messages in a conversation.
      def delete_dialog(arguments = {})
        require "vk/api/messages/methods/delete_dialog"
        method = Methods::DeleteDialog.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/delete_dialog_response"
        Responses::DeleteDialogResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :message_id  ID of a previously-deleted message to restore.
      # @see Vk::API::Messages::Methods::Restore
      # @return [Vk::API::Messages::Responses::RestoreResponse] Restores a deleted message.
      def restore(arguments = {})
        require "vk/api/messages/methods/restore"
        method = Methods::Restore.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/restore_response"
        Responses::RestoreResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :message_ids  IDs of messages to mark as read.
      # @option arguments [String] :peer_id  Destination ID.; ; "For user:; 'User ID', e.g. '12345'.; ; For chat:; '2000000000' + 'chat_id', e.g. '2000000001'.; ; For community:; '- community ID', e.g. '-12345'.; "
      # @option arguments [Integer] :start_message_id  Message ID to start from.
      # @see Vk::API::Messages::Methods::MarkAsRead
      # @return [Vk::API::Messages::Responses::MarkAsReadResponse] Marks messages as read.
      def mark_as_read(arguments = {})
        require "vk/api/messages/methods/mark_as_read"
        method = Methods::MarkAsRead.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/mark_as_read_response"
        Responses::MarkAsReadResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :message_ids  IDs of messages to mark as important.
      # @option arguments [Integer] :important  '1' — to add a star (mark as important); '0' — to remove the star
      # @see Vk::API::Messages::Methods::MarkAsImportant
      # @return [Vk::API::Messages::Responses::MarkAsImportantResponse] Marks and unmarks messages as important (starred).
      def mark_as_important(arguments = {})
        require "vk/api/messages/methods/mark_as_important"
        method = Methods::MarkAsImportant.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/mark_as_important_response"
        Responses::MarkAsImportantResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Boolean] :use_ssl  '1' — to use SSL.
      # @option arguments [Boolean] :need_pts  '1' — to return the 'pts' field, needed for the  method.
      # @see Vk::API::Messages::Methods::GetLongPollServer
      # @return [Vk::API::Messages::Responses::GetLongPollServerResponse] Returns data required for connection to a Long Poll server.
      def get_long_poll_server(arguments = {})
        require "vk/api/messages/methods/get_long_poll_server"
        method = Methods::GetLongPollServer.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/get_long_poll_server_response"
        Responses::GetLongPollServerResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :ts  Last value of the 'ts' parameter returned from the Long Poll server or by using  method.
      # @option arguments [Integer] :pts  Lsat value of 'pts' parameter returned from the Long Poll server or by using  method.
      # @option arguments [Integer] :preview_length  Number of characters after which to truncate a previewed message. To preview the full message, specify '0'.; "NOTE: Messages are not truncated by default. Messages are truncated by words."
      # @option arguments [Boolean] :onlines  '1' — to return history with online users only.
      # @option arguments [Array] :fields ([]) Additional  to return.
      # @option arguments [Integer] :events_limit (1000) Maximum nimber of events to return.
      # @option arguments [Integer] :msgs_limit (200) Maximum number of messages to return.
      # @option arguments [Integer] :max_msg_id  Maximum ID of the message among existing ones in the local copy. Both messages received with API methods (for example, , ), and data received from a Long Poll server (events with code 4) are taken into account.
      # @see Vk::API::Messages::Methods::GetLongPollHistory
      # @return [Vk::API::Messages::Responses::GetLongPollHistoryResponse] Returns updates in user's private messages.
      def get_long_poll_history(arguments = {})
        require "vk/api/messages/methods/get_long_poll_history"
        method = Methods::GetLongPollHistory.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/get_long_poll_history_response"
        Responses::GetLongPollHistoryResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :chat_id  Chat ID.
      # @option arguments [Array] :chat_ids  Chat IDs.
      # @option arguments [Array] :fields  Profile fields to return.;
      # @option arguments [String] :name_case  Case for declension of user name and surname:; 'nom' — nominative (default); 'gen' — genitive ; 'dat' — dative; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
      # @see Vk::API::Messages::Methods::GetChat
      # @return [Vk::API::Messages::Responses::GetChatResponse] Returns information about a chat.
      def get_chat(arguments = {})
        require "vk/api/messages/methods/get_chat"
        method = Methods::GetChat.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/get_chat_response"
        Responses::GetChatResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :user_ids  IDs of the users to be added to the chat.
      # @option arguments [String] :title  Chat title.
      # @see Vk::API::Messages::Methods::CreateChat
      # @return [Vk::API::Messages::Responses::CreateChatResponse] Creates a chat with several participants.
      def create_chat(arguments = {})
        require "vk/api/messages/methods/create_chat"
        method = Methods::CreateChat.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/create_chat_response"
        Responses::CreateChatResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :chat_id  Chat ID.
      # @option arguments [String] :title  New title of the chat.
      # @see Vk::API::Messages::Methods::EditChat
      # @return [Vk::API::Messages::Responses::EditChatResponse] Edits the title of a chat.
      def edit_chat(arguments = {})
        require "vk/api/messages/methods/edit_chat"
        method = Methods::EditChat.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/edit_chat_response"
        Responses::EditChatResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :chat_id  Chat ID.
      # @option arguments [Array] :chat_ids  Chat IDs.
      # @option arguments [Array] :fields  Profile fields to return.;
      # @option arguments [String] :name_case  Case for declension of user name and surname:; 'nom' — nominative (default); 'gen' — genitive; 'dat' — dative; 'acc' — accusative; 'ins' — instrumental; 'abl' — prepositional
      # @see Vk::API::Messages::Methods::GetChatUsers
      # @return [Vk::API::Messages::Responses::GetChatUsersResponse] Returns a list of IDs of users participating in a chat.
      def get_chat_users(arguments = {})
        require "vk/api/messages/methods/get_chat_users"
        method = Methods::GetChatUsers.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/get_chat_users_response"
        Responses::GetChatUsersResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :user_id  User ID.
      # @option arguments [String] :type  'typing' — user has started to type.
      # @option arguments [Integer] :peer_id  Destination ID.; ; "For user:; 'User ID', e.g. '12345'.; ; For chat:; '2000000000' + 'chat_id', e.g. '2000000001'.; ; For community:; '- community ID', e.g. '-12345'.; "
      # @see Vk::API::Messages::Methods::SetActivity
      # @return [Vk::API::Messages::Responses::SetActivityResponse] Changes the status of a user as typing in a conversation.
      def set_activity(arguments = {})
        require "vk/api/messages/methods/set_activity"
        method = Methods::SetActivity.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/set_activity_response"
        Responses::SetActivityResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :q  Search query string.
      # @option arguments [Integer] :limit (20) Maximum number of results.
      # @option arguments [Array] :fields  Profile fields to return.;
      # @see Vk::API::Messages::Methods::SearchDialogs
      # @return [Vk::API::Messages::Responses::SearchDialogsResponse] Returns a list of the current user's conversations that match search criteria.
      def search_dialogs(arguments = {})
        require "vk/api/messages/methods/search_dialogs"
        method = Methods::SearchDialogs.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/search_dialogs_response"
        Responses::SearchDialogsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :chat_id  Chat ID.
      # @option arguments [Integer] :user_id  ID of the user to be added to the chat.
      # @see Vk::API::Messages::Methods::AddChatUser
      # @return [Vk::API::Messages::Responses::AddChatUserResponse] Adds a new user to a chat.
      def add_chat_user(arguments = {})
        require "vk/api/messages/methods/add_chat_user"
        method = Methods::AddChatUser.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/add_chat_user_response"
        Responses::AddChatUserResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :chat_id  Chat ID.
      # @option arguments [String] :user_id  ID of the user to be removed from the chat.
      # @see Vk::API::Messages::Methods::RemoveChatUser
      # @return [Vk::API::Messages::Responses::RemoveChatUserResponse] Allows the current user to leave a chat or, if the current user started the chat, allows the user to remove another user from the chat.
      def remove_chat_user(arguments = {})
        require "vk/api/messages/methods/remove_chat_user"
        method = Methods::RemoveChatUser.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/remove_chat_user_response"
        Responses::RemoveChatUserResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  User ID.
      # @see Vk::API::Messages::Methods::GetLastActivity
      # @return [Vk::API::Messages::Responses::GetLastActivityResponse] Returns a user's current status and date of last activity.
      def get_last_activity(arguments = {})
        require "vk/api/messages/methods/get_last_activity"
        method = Methods::GetLastActivity.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/get_last_activity_response"
        Responses::GetLastActivityResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :file  Upload URL from the 'response' field returned by the  method upon successfully uploading an image.
      # @see Vk::API::Messages::Methods::SetChatPhoto
      # @return [Vk::API::Messages::Responses::SetChatPhotoResponse] Sets a previously-uploaded picture as the cover picture of a chat.
      def set_chat_photo(arguments = {})
        require "vk/api/messages/methods/set_chat_photo"
        method = Methods::SetChatPhoto.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/set_chat_photo_response"
        Responses::SetChatPhotoResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :chat_id  Chat ID.
      # @see Vk::API::Messages::Methods::DeleteChatPhoto
      # @return [Vk::API::Messages::Responses::DeleteChatPhotoResponse] Deletes a chat's cover picture.
      def delete_chat_photo(arguments = {})
        require "vk/api/messages/methods/delete_chat_photo"
        method = Methods::DeleteChatPhoto.new(arguments)
        response = method.call(@client)
        require "vk/api/messages/responses/delete_chat_photo_response"
        Responses::DeleteChatPhotoResponse.new(response.deep_symbolize_keys)
      end
    end
    class Newsfeed < Vk::Schema::Namespace
      module Methods
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

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Array] :filters  Filters to apply:; 'post' — new wall posts; 'photo' — new photos; 'photo_tag' — new photo tags; 'wall_photo' — new wall photos; 'friend' — new friends; 'note' — new notes
      # @option arguments [Boolean] :return_banned  '1' — to return news items from banned sources
      # @option arguments [Integer] :start_time  Earliest timestamp (in Unix time) of a news item to return. By default, 24 hours ago.
      # @option arguments [Integer] :end_time  Latest timestamp (in Unix time) of a news item to return. By default, the current time.
      # @option arguments [Integer] :max_photos  Maximum number of photos to return. By default, '5'.
      # @option arguments [String] :source_ids  Sources to obtain news from, separated by commas.; ; User IDs can be specified in formats '' or 'u' ; where '' is the user's friend ID.; ; Community IDs can be specified in formats '-' or 'g' ; where '' is the community ID.; ; If the parameter is not set, all of the user's friends and communities are returned, except for banned sources, which can be obtained with the   method.;
      # @option arguments [String] :start_from  identifier required to get the next page of results. ; Value for this parameter is returned in 'next_from' field in a reply.
      # @option arguments [Integer] :count  Number of news items to return (default 50; maximum 100). For auto feed, you can use the 'new_offset' parameter returned by this method.
      # @option arguments [Array] :fields  Additional fields of  and  to return.
      # @see Vk::API::Newsfeed::Methods::Get
      # @return [Vk::API::Newsfeed::Responses::GetResponse] Returns data required to show newsfeed for the current user.
      def get(arguments = {})
        require "vk/api/newsfeed/methods/get"
        method = Methods::Get.new(arguments)
        response = method.call(@client)
        require "vk/api/newsfeed/responses/get_response"
        Responses::GetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :start_time  Earliest timestamp (in Unix time) of a news item to return. By default, 24 hours ago.
      # @option arguments [Integer] :end_time  Latest timestamp (in Unix time) of a news item to return. By default, the current time.
      # @option arguments [Integer] :max_photos  Maximum number of photos to return. By default, '5'.
      # @option arguments [String] :start_from  'new_from' value obtained in previous call.
      # @option arguments [Integer] :count  Number of news items to return.
      # @option arguments [Array] :fields  Additional fields of  and  to return.
      # @see Vk::API::Newsfeed::Methods::GetRecommended
      # @return [Vk::API::Newsfeed::Responses::GetRecommendedResponse] ; Returns a list of newsfeeds recommended to the current user.
      def get_recommended(arguments = {})
        require "vk/api/newsfeed/methods/get_recommended"
        method = Methods::GetRecommended.new(arguments)
        response = method.call(@client)
        require "vk/api/newsfeed/responses/get_recommended_response"
        Responses::GetRecommendedResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :count (30) Number of comments to return. For auto feed, you can use the 'new_offset' parameter returned by this method.
      # @option arguments [Array] :filters  Filters to apply:; 'post' — new comments on wall posts; 'photo' — new comments on photos; 'video' — new comments on videos; 'topic' — new comments on discussions; 'note' — new comments on notes;
      # @option arguments [String] :reposts  Object ID, comments on repost of which shall be returned, e.g. 'wall1_45486'. (If the parameter is set, the 'filters' parameter is optional.);
      # @option arguments [Integer] :start_time  Earliest timestamp (in Unix time) of a comment to return. By default, 24 hours ago.
      # @option arguments [Integer] :end_time  Latest timestamp (in Unix time) of a comment to return. By default, the current time.
      # @option arguments [String] :start_from  Identificator needed to return the next oage with results. Value for this parameter returns in 'next_from' field.
      # @option arguments [Array] :fields  Additional fields of  and  to return.
      # @see Vk::API::Newsfeed::Methods::GetComments
      # @return [Vk::API::Newsfeed::Responses::GetCommentsResponse] Returns a list of comments in the current user's newsfeed.
      def get_comments(arguments = {})
        require "vk/api/newsfeed/methods/get_comments"
        method = Methods::GetComments.new(arguments)
        response = method.call(@client)
        require "vk/api/newsfeed/responses/get_comments_response"
        Responses::GetCommentsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  Owner ID.
      # @option arguments [Integer] :start_time  Earliest timestamp (in Unix time) of a post to return. By default, 24 hours ago.;
      # @option arguments [Integer] :end_time  Latest timestamp (in Unix time) of a post to return. By default, the current time.;
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of posts.
      # @option arguments [Integer] :count (20) Number of posts to return.
      # @see Vk::API::Newsfeed::Methods::GetMentions
      # @return [Vk::API::Newsfeed::Responses::GetMentionsResponse] Returns a list of posts on user walls in which the current user is mentioned.;
      def get_mentions(arguments = {})
        require "vk/api/newsfeed/methods/get_mentions"
        method = Methods::GetMentions.new(arguments)
        response = method.call(@client)
        require "vk/api/newsfeed/responses/get_mentions_response"
        Responses::GetMentionsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Boolean] :extended  '1' — return extra information about users and communities
      # @option arguments [Array] :fields  Profile fields to return.; ;
      # @option arguments [String] :name_case  Case for declension of user name and surname:; 'nom' — nominative (default); 'gen' — genitive ; 'dat' — dative; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
      # @see Vk::API::Newsfeed::Methods::GetBanned
      # @return [Vk::API::Newsfeed::Responses::GetBannedResponse] Returns a list of users and communities banned from the current user's newsfeed.
      def get_banned(arguments = {})
        require "vk/api/newsfeed/methods/get_banned"
        method = Methods::GetBanned.new(arguments)
        response = method.call(@client)
        require "vk/api/newsfeed/responses/get_banned_response"
        Responses::GetBannedResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :user_ids  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Array] :group_ids  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Newsfeed::Methods::AddBan
      # @return [Vk::API::Newsfeed::Responses::AddBanResponse] Prevents news from specified users and communities from appearing in the current user's newsfeed.
      def add_ban(arguments = {})
        require "vk/api/newsfeed/methods/add_ban"
        method = Methods::AddBan.new(arguments)
        response = method.call(@client)
        require "vk/api/newsfeed/responses/add_ban_response"
        Responses::AddBanResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :user_ids  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Array] :group_ids  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Newsfeed::Methods::DeleteBan
      # @return [Vk::API::Newsfeed::Responses::DeleteBanResponse] Allows news from previously banned users and communities to be shown in the current user's newsfeed.
      def delete_ban(arguments = {})
        require "vk/api/newsfeed/methods/delete_ban"
        method = Methods::DeleteBan.new(arguments)
        response = method.call(@client)
        require "vk/api/newsfeed/responses/delete_ban_response"
        Responses::DeleteBanResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :type  Item type. Possible values:; *'wall' – post on the wall;; *'tag' – tag on a photo;; *'profilephoto' – profile photo;; *'video' – video;; *'audio' – audio.
      # @option arguments [Integer] :owner_id  Item owner's identifier (user or community); "Note that community id must be negative. ; 'owner_id=1' – user ; 'owner_id=-1' – community "
      # @option arguments [Integer] :item_id  Item identifier
      # @see Vk::API::Newsfeed::Methods::IgnoreItem
      # @return [Vk::API::Newsfeed::Responses::IgnoreItemResponse] Hides an item from the newsfeed.
      def ignore_item(arguments = {})
        require "vk/api/newsfeed/methods/ignore_item"
        method = Methods::IgnoreItem.new(arguments)
        response = method.call(@client)
        require "vk/api/newsfeed/responses/ignore_item_response"
        Responses::IgnoreItemResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :type  Item type. Possible values:; *'wall' – post on the wall;; *'tag' – tag on a photo;; *'profilephoto' – profile photo;; *'video' – video;; *'audio' – audio.
      # @option arguments [Integer] :owner_id  Item owner's identifier (user or community); "Note that community id must be negative. ; 'owner_id=1' – user ; 'owner_id=-1' – community "
      # @option arguments [Integer] :item_id  Item identifier
      # @see Vk::API::Newsfeed::Methods::UnignoreItem
      # @return [Vk::API::Newsfeed::Responses::UnignoreItemResponse] Returns a hidden item to the newsfeed.
      def unignore_item(arguments = {})
        require "vk/api/newsfeed/methods/unignore_item"
        method = Methods::UnignoreItem.new(arguments)
        response = method.call(@client)
        require "vk/api/newsfeed/responses/unignore_item_response"
        Responses::UnignoreItemResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :q  Search query string (e.g., 'New Year').
      # @option arguments [Boolean] :extended  '1' — to return additional information about the user or community that placed the post.
      # @option arguments [Integer] :count (30) Number of posts to return.
      # @option arguments [Number] :latitude  Geographical latitude point (in degrees, -90 to 90) within which to search.;
      # @option arguments [Number] :longitude  Geographical longitude point (in degrees, -180 to 180) within which to search.;
      # @option arguments [Integer] :start_time  Earliest timestamp (in Unix time) of a news item to return. By default, 24 hours ago.
      # @option arguments [Integer] :end_time  Latest timestamp (in Unix time) of a news item to return. By default, the current time.
      # @option arguments [String] :start_from  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Array] :fields  Additional fields of  and  to return.
      # @see Vk::API::Newsfeed::Methods::Search
      # @return [Vk::API::Newsfeed::Responses::SearchResponse] Returns search results by statuses.;
      def search(arguments = {})
        require "vk/api/newsfeed/methods/search"
        method = Methods::Search.new(arguments)
        response = method.call(@client)
        require "vk/api/newsfeed/responses/search_response"
        Responses::SearchResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :list_ids  numeric list identifiers.
      # @see Vk::API::Newsfeed::Methods::GetLists
      # @return [Vk::API::Newsfeed::Responses::GetListsResponse] Returns a list of newsfeeds followed by the current user.
      def get_lists(arguments = {})
        require "vk/api/newsfeed/methods/get_lists"
        method = Methods::GetLists.new(arguments)
        response = method.call(@client)
        require "vk/api/newsfeed/responses/get_lists_response"
        Responses::GetListsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :list_id  numeric list identifier (if not sent, will be set automatically).
      # @option arguments [String] :title  list name.
      # @option arguments [Array] :source_ids  users and communities identifiers to be added to the list. Community identifiers must be negative numbers.
      # @option arguments [Boolean] :no_reposts  reposts display on and off ('1' is for off).
      # @see Vk::API::Newsfeed::Methods::SaveList
      # @return [Vk::API::Newsfeed::Responses::SaveListResponse] Creates and edits user newsfeed lists
      def save_list(arguments = {})
        require "vk/api/newsfeed/methods/save_list"
        method = Methods::SaveList.new(arguments)
        response = method.call(@client)
        require "vk/api/newsfeed/responses/save_list_response"
        Responses::SaveListResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :list_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Newsfeed::Methods::DeleteList
      # @return [Vk::API::Newsfeed::Responses::DeleteListResponse] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      def delete_list(arguments = {})
        require "vk/api/newsfeed/methods/delete_list"
        method = Methods::DeleteList.new(arguments)
        response = method.call(@client)
        require "vk/api/newsfeed/responses/delete_list_response"
        Responses::DeleteListResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :type  Type of object from which to unsubscribe:; 'note' — note; 'photo' — photo; 'post' — post on user wall or community wall; 'topic' — topic; 'video' — video
      # @option arguments [Integer] :owner_id  Object owner ID.
      # @option arguments [Integer] :item_id  Object ID.
      # @see Vk::API::Newsfeed::Methods::Unsubscribe
      # @return [Vk::API::Newsfeed::Responses::UnsubscribeResponse] Unsubscribes the current user from specified newsfeeds.
      def unsubscribe(arguments = {})
        require "vk/api/newsfeed/methods/unsubscribe"
        method = Methods::Unsubscribe.new(arguments)
        response = method.call(@client)
        require "vk/api/newsfeed/responses/unsubscribe_response"
        Responses::UnsubscribeResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :offset  offset required to choose a particular subset of communities or users.
      # @option arguments [Integer] :count (20) amount of communities or users to return.
      # @option arguments [Boolean] :shuffle  shuffle the returned list or not.
      # @option arguments [Array] :fields  list of extra fields to be returned. See  and .
      # @see Vk::API::Newsfeed::Methods::GetSuggestedSources
      # @return [Vk::API::Newsfeed::Responses::GetSuggestedSourcesResponse] Returns communities and users that current user is suggested to follow.
      def get_suggested_sources(arguments = {})
        require "vk/api/newsfeed/methods/get_suggested_sources"
        method = Methods::GetSuggestedSources.new(arguments)
        response = method.call(@client)
        require "vk/api/newsfeed/responses/get_suggested_sources_response"
        Responses::GetSuggestedSourcesResponse.new(response.deep_symbolize_keys)
      end
    end
    class Likes < Vk::Schema::Namespace
      module Methods
        autoload :GetList, 'vk/api/likes/methods/get_list'
        autoload :Add, 'vk/api/likes/methods/add'
        autoload :Delete, 'vk/api/likes/methods/delete'
        autoload :IsLiked, 'vk/api/likes/methods/is_liked'
      end

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [String] :type  ; Object type:; 'post' — post on user or community wall; 'comment' — comment on a wall post; 'photo' — photo; 'audio' — audio; 'video' — video; 'note' — note; 'photo_comment' — comment on the photo; 'video_comment' — comment on the video; 'topic_comment' — comment in the discussion; 'sitepage' — page of the site where the  is installed
      # @option arguments [Integer] :owner_id  ID of the user, community, or application that owns the object. If the 'type' parameter is set as 'sitepage', the application ID is passed as 'owner_id'. Use negative value for a community id. If the 'type' parameter is not set, the 'owner_id' is assumed to be either the current user or the same application ID as if the 'type' parameter was set to 'sitepage'.; ;
      # @option arguments [Integer] :item_id  Object ID. If 'type' is set as 'sitepage', 'item_id' can include the 'page_id' parameter value used during initialization of the .
      # @option arguments [String] :page_url  URL of the page where the  is installed. Used instead of the 'item_id' parameter.
      # @option arguments [String] :filter  Filters to apply:; 'likes' — returns information about all users who liked the object (default); 'copies' — returns information only about users who told their friends about the object
      # @option arguments [Boolean] :friends_only  Specifies which users are returned:; '1' — to return only the current user's friends; '0' — to return all users (default)
      # @option arguments [Boolean] :extended  Specifies whether extended information will be returned.; '1' — to return extended information about users and communities from the 'Likes' list; '0' — to return no additional information (default)
      # @option arguments [Integer] :offset  Offset needed to select a specific subset of users.
      # @option arguments [Integer] :count  Number of user IDs to return (maximum '1000').; Default is '100' if 'friends_only' is set to  '0'; otherwise, the default is '10' if 'friends_only' is set to '1'.;
      # @option arguments [Boolean] :skip_own  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Likes::Methods::GetList
      # @return [Vk::API::Likes::Responses::GetListResponse] Returns a list of IDs of users who added the specified object to their 'Likes' list.
      def get_list(arguments = {})
        require "vk/api/likes/methods/get_list"
        method = Methods::GetList.new(arguments)
        response = method.call(@client)
        require "vk/api/likes/responses/get_list_response"
        Responses::GetListResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :type  Object type:; 'post' — post on user or community wall; 'comment' — comment on a wall post; 'photo' — photo; 'audio' — audio; 'video' — video; 'note' — note; 'photo_comment' — comment on the photo; 'video_comment' — comment on the video; 'topic_comment' — comment in the discussion; 'sitepage' — page of the site where the  is installed
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the object.
      # @option arguments [Integer] :item_id  Object ID.
      # @option arguments [String] :access_key  Access key required for an object owned by a private entity.;
      # @see Vk::API::Likes::Methods::Add
      # @return [Vk::API::Likes::Responses::AddResponse] Adds the specified object to the 'Likes' list of the current user.
      def add(arguments = {})
        require "vk/api/likes/methods/add"
        method = Methods::Add.new(arguments)
        response = method.call(@client)
        require "vk/api/likes/responses/add_response"
        Responses::AddResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :type  Object type:; 'post' — post on user or community wall; 'comment' — comment on a wall post; 'photo' — photo; 'audio' — audio; 'video' — video; 'note' — note; 'photo_comment' — comment on the photo; 'video_comment' — comment on the video; 'topic_comment' — comment in the discussion; 'sitepage' — page of the site where the  is installed
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the object.
      # @option arguments [Integer] :item_id  Object ID.
      # @see Vk::API::Likes::Methods::Delete
      # @return [Vk::API::Likes::Responses::DeleteResponse] Deletes the specified object from the 'Likes' list of the current user.
      def delete(arguments = {})
        require "vk/api/likes/methods/delete"
        method = Methods::Delete.new(arguments)
        response = method.call(@client)
        require "vk/api/likes/responses/delete_response"
        Responses::DeleteResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  User ID.
      # @option arguments [String] :type  Object type:; 'post' — post on user or community wall; 'comment' — comment on a wall post; 'photo' — photo; 'audio' — audio; 'video' — video; 'note' — note; 'photo_comment' — comment on the photo; 'video_comment' — comment on the video; 'topic_comment' — comment in the discussion
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the object.
      # @option arguments [Integer] :item_id  Object ID.
      # @see Vk::API::Likes::Methods::IsLiked
      # @return [Vk::API::Likes::Responses::IsLikedResponse] Checks for the object in the 'Likes' list of the specified user.
      def is_liked(arguments = {})
        require "vk/api/likes/methods/is_liked"
        method = Methods::IsLiked.new(arguments)
        response = method.call(@client)
        require "vk/api/likes/responses/is_liked_response"
        Responses::IsLikedResponse.new(response.deep_symbolize_keys)
      end
    end
    class Polls < Vk::Schema::Namespace
      module Methods
        autoload :GetById, 'vk/api/polls/methods/get_by_id'
        autoload :AddVote, 'vk/api/polls/methods/add_vote'
        autoload :DeleteVote, 'vk/api/polls/methods/delete_vote'
        autoload :GetVoters, 'vk/api/polls/methods/get_voters'
        autoload :Create, 'vk/api/polls/methods/create'
        autoload :Edit, 'vk/api/polls/methods/edit'
      end

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the poll. Use a negative value to designate a community ID.
      # @option arguments [Boolean] :is_board  '1' – poll is in a board, '0' – poll is on a wall. ; '0' by default.
      # @option arguments [Integer] :poll_id  Poll ID.
      # @see Vk::API::Polls::Methods::GetById
      # @return [Vk::API::Polls::Responses::GetByIdResponse] Returns detailed information about a poll by its ID.
      def get_by_id(arguments = {})
        require "vk/api/polls/methods/get_by_id"
        method = Methods::GetById.new(arguments)
        response = method.call(@client)
        require "vk/api/polls/responses/get_by_id_response"
        Responses::GetByIdResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the poll.  Use a negative value to designate a community ID.
      # @option arguments [Integer] :poll_id  Poll ID.
      # @option arguments [Integer] :answer_id  Answer ID.
      # @option arguments [Boolean] :is_board  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Polls::Methods::AddVote
      # @return [Vk::API::Polls::Responses::AddVoteResponse] Adds the current user's vote to the selected answer in the poll.
      def add_vote(arguments = {})
        require "vk/api/polls/methods/add_vote"
        method = Methods::AddVote.new(arguments)
        response = method.call(@client)
        require "vk/api/polls/responses/add_vote_response"
        Responses::AddVoteResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the poll. Use a negative value to designate a community ID.
      # @option arguments [Integer] :poll_id  Poll ID.
      # @option arguments [Integer] :answer_id  Answer ID.
      # @option arguments [Boolean] :is_board  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Polls::Methods::DeleteVote
      # @return [Vk::API::Polls::Responses::DeleteVoteResponse] Deletes the current user's vote from the selected answer in the poll.
      def delete_vote(arguments = {})
        require "vk/api/polls/methods/delete_vote"
        method = Methods::DeleteVote.new(arguments)
        response = method.call(@client)
        require "vk/api/polls/responses/delete_vote_response"
        Responses::DeleteVoteResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the poll.  Use a negative value to designate a community ID.
      # @option arguments [Integer] :poll_id  Poll ID.
      # @option arguments [Array] :answer_ids  Answer IDs.
      # @option arguments [Boolean] :is_board  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Boolean] :friends_only  '1' — to return only current user's friends; '0' — to return all users (default);
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of voters.; '0' — (default)
      # @option arguments [Integer] :count  Number of user IDs to return (if the 'friends_only' parameter is not set, maximum '1000'; otherwise '10').; '100' — (default)
      # @option arguments [Array, 'sex'] :fields  Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate (birthdate)', 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online', 'counters'.;
      # @option arguments [String] :name_case  Case for declension of user name and surname: ; 'nom' — nominative (default) ; 'gen' — genitive ; 'dat' — dative ; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
      # @see Vk::API::Polls::Methods::GetVoters
      # @return [Vk::API::Polls::Responses::GetVotersResponse] Returns a list of IDs of users who selected specific answers in the poll.
      def get_voters(arguments = {})
        require "vk/api/polls/methods/get_voters"
        method = Methods::GetVoters.new(arguments)
        response = method.call(@client)
        require "vk/api/polls/responses/get_voters_response"
        Responses::GetVotersResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :question  question text
      # @option arguments [Boolean] :is_anonymous  '1' – anonymous poll, participants list is hidden;; '0' – public poll, participants list is available;; Default value is '0'.
      # @option arguments [Integer] :owner_id  If a poll will be added to a communty it is required to send a negative group identifier. Current user by default.
      # @option arguments [String] :add_answers  available answers list, for example:; " ["yes","no","maybe"]"; There can be from 1 to 10 answers.
      # @see Vk::API::Polls::Methods::Create
      # @return [Vk::API::Polls::Responses::CreateResponse] Creates polls that can be attached to the users' or communities' posts.
      def create(arguments = {})
        require "vk/api/polls/methods/create"
        method = Methods::Create.new(arguments)
        response = method.call(@client)
        require "vk/api/polls/responses/create_response"
        Responses::CreateResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  poll owner id
      # @option arguments [Integer] :poll_id  edited poll's id
      # @option arguments [String] :question  new question text
      # @option arguments [String] :add_answers  answers list, for example: ; "["yes","no","maybe"]"
      # @option arguments [String] :edit_answers  object containing answers that need to be edited;; key – answer id, value – new answer text.; Example:; \$1"382967099":"option1", "382967103":"option2"\$1"
      # @option arguments [String] :delete_answers  list of answer ids to be deleted. For example:; "[382967099, 382967103]"
      # @see Vk::API::Polls::Methods::Edit
      # @return [Vk::API::Polls::Responses::EditResponse] Edits created polls
      def edit(arguments = {})
        require "vk/api/polls/methods/edit"
        method = Methods::Edit.new(arguments)
        response = method.call(@client)
        require "vk/api/polls/responses/edit_response"
        Responses::EditResponse.new(response.deep_symbolize_keys)
      end
    end
    class Docs < Vk::Schema::Namespace
      module Methods
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

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Integer] :count  Number of documents to return. By default, all documents.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of documents.
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the documents. Use a negative value to designate a community ID.
      # @see Vk::API::Docs::Methods::Get
      # @return [Vk::API::Docs::Responses::GetResponse] Returns detailed information about user or community documents.
      def get(arguments = {})
        require "vk/api/docs/methods/get"
        method = Methods::Get.new(arguments)
        response = method.call(@client)
        require "vk/api/docs/responses/get_response"
        Responses::GetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :docs  Document IDs. Example: ; "66748_91488,66748_91455";
      # @see Vk::API::Docs::Methods::GetById
      # @return [Vk::API::Docs::Responses::GetByIdResponse] Returns information about documents by their IDs.
      def get_by_id(arguments = {})
        require "vk/api/docs/methods/get_by_id"
        method = Methods::GetById.new(arguments)
        response = method.call(@client)
        require "vk/api/docs/responses/get_by_id_response"
        Responses::GetByIdResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID (if the document will be uploaded to the community).
      # @see Vk::API::Docs::Methods::GetUploadServer
      # @return [Vk::API::Docs::Responses::GetUploadServerResponse] Returns the server address for document upload.
      def get_upload_server(arguments = {})
        require "vk/api/docs/methods/get_upload_server"
        method = Methods::GetUploadServer.new(arguments)
        response = method.call(@client)
        require "vk/api/docs/responses/get_upload_server_response"
        Responses::GetUploadServerResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID (if the document will be uploaded to the community).
      # @see Vk::API::Docs::Methods::GetWallUploadServer
      # @return [Vk::API::Docs::Responses::GetWallUploadServerResponse] Returns the server address for document upload onto a user's or community's wall.
      def get_wall_upload_server(arguments = {})
        require "vk/api/docs/methods/get_wall_upload_server"
        method = Methods::GetWallUploadServer.new(arguments)
        response = method.call(@client)
        require "vk/api/docs/responses/get_wall_upload_server_response"
        Responses::GetWallUploadServerResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :file  This parameter is returned when the file is [https://vk.com/dev/upload_files_2?f=10.%2BUploading%2BDocuments|uploaded to the server].
      # @option arguments [String] :title  Document title.
      # @option arguments [String] :tags  Document tags.
      # @see Vk::API::Docs::Methods::Save
      # @return [Vk::API::Docs::Responses::SaveResponse] Saves a document after [https://vk.com/dev/upload_files_2?f=10.%2BUploading%2BDocuments|uploading it to a server].
      def save(arguments = {})
        require "vk/api/docs/methods/save"
        method = Methods::Save.new(arguments)
        response = method.call(@client)
        require "vk/api/docs/responses/save_response"
        Responses::SaveResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the document. Use a negative value to designate a community ID.
      # @option arguments [Integer] :doc_id  Document ID.
      # @see Vk::API::Docs::Methods::Delete
      # @return [Vk::API::Docs::Responses::DeleteResponse] Deletes a user or community document.
      def delete(arguments = {})
        require "vk/api/docs/methods/delete"
        method = Methods::Delete.new(arguments)
        response = method.call(@client)
        require "vk/api/docs/responses/delete_response"
        Responses::DeleteResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the document. Use a negative value to designate a community ID.
      # @option arguments [Integer] :doc_id  Document ID.
      # @option arguments [String] :access_key  Access key. This parameter is required if 'access_key' was returned with the document's data.
      # @see Vk::API::Docs::Methods::Add
      # @return [Vk::API::Docs::Responses::AddResponse] Copies a document to a user's or community's document list.
      def add(arguments = {})
        require "vk/api/docs/methods/add"
        method = Methods::Add.new(arguments)
        response = method.call(@client)
        require "vk/api/docs/responses/add_response"
        Responses::AddResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of the user or community that owns the documents. Use a negative value to designate a community ID.
      # @see Vk::API::Docs::Methods::GetTypes
      # @return [Vk::API::Docs::Responses::GetTypesResponse] Returns documents types available for current user.
      def get_types(arguments = {})
        require "vk/api/docs/methods/get_types"
        method = Methods::GetTypes.new(arguments)
        response = method.call(@client)
        require "vk/api/docs/responses/get_types_response"
        Responses::GetTypesResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :q  Search query string.
      # @option arguments [Integer] :count  Number of results to return.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of results.
      # @see Vk::API::Docs::Methods::Search
      # @return [Vk::API::Docs::Responses::SearchResponse] Returns a list of documents matching the search criteria.
      def search(arguments = {})
        require "vk/api/docs/methods/search"
        method = Methods::Search.new(arguments)
        response = method.call(@client)
        require "vk/api/docs/responses/search_response"
        Responses::SearchResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  User ID or community ID. Use a negative value to designate a community ID.
      # @option arguments [Integer] :doc_id  Document ID.
      # @option arguments [String] :title  Document title.
      # @option arguments [Array] :tags  Document tags.
      # @see Vk::API::Docs::Methods::Edit
      # @return [Vk::API::Docs::Responses::EditResponse] Edits a document.
      def edit(arguments = {})
        require "vk/api/docs/methods/edit"
        method = Methods::Edit.new(arguments)
        response = method.call(@client)
        require "vk/api/docs/responses/edit_response"
        Responses::EditResponse.new(response.deep_symbolize_keys)
      end
    end
    class Fave < Vk::Schema::Namespace
      module Methods
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

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of users.
      # @option arguments [Integer] :count (50) Number of users to return.
      # @see Vk::API::Fave::Methods::GetUsers
      # @return [Vk::API::Fave::Responses::GetUsersResponse] Returns a list of users whom the current user has bookmarked.; ;
      def get_users(arguments = {})
        require "vk/api/fave/methods/get_users"
        method = Methods::GetUsers.new(arguments)
        response = method.call(@client)
        require "vk/api/fave/responses/get_users_response"
        Responses::GetUsersResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of photos.
      # @option arguments [Integer] :count (50) Number of photos to return.
      # @option arguments [Boolean] :photo_sizes  '1' — to return photo sizes in a .
      # @see Vk::API::Fave::Methods::GetPhotos
      # @return [Vk::API::Fave::Responses::GetPhotosResponse] Returns a list of photos that the current user has liked.; ;
      def get_photos(arguments = {})
        require "vk/api/fave/methods/get_photos"
        method = Methods::GetPhotos.new(arguments)
        response = method.call(@client)
        require "vk/api/fave/responses/get_photos_response"
        Responses::GetPhotosResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of posts.
      # @option arguments [Integer] :count (50) Number of posts to return.
      # @option arguments [Boolean] :extended  '1' — to return additional 'wall', 'profiles', and 'groups' fields.; ; By default: '0'.
      # @see Vk::API::Fave::Methods::GetPosts
      # @return [Vk::API::Fave::Responses::GetPostsResponse] Returns a list of wall posts that the current user has liked.;
      def get_posts(arguments = {})
        require "vk/api/fave/methods/get_posts"
        method = Methods::GetPosts.new(arguments)
        response = method.call(@client)
        require "vk/api/fave/responses/get_posts_response"
        Responses::GetPostsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of videos.
      # @option arguments [Integer] :count (50) Number of videos to return.
      # @option arguments [Boolean] :extended  Return an additional information about videos. Also returns all owners profiles and groups.
      # @see Vk::API::Fave::Methods::GetVideos
      # @return [Vk::API::Fave::Responses::GetVideosResponse] Returns a list of videos that the current user has liked.;
      def get_videos(arguments = {})
        require "vk/api/fave/methods/get_videos"
        method = Methods::GetVideos.new(arguments)
        response = method.call(@client)
        require "vk/api/fave/responses/get_videos_response"
        Responses::GetVideosResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of users.
      # @option arguments [Integer] :count (50) Number of results to return.
      # @see Vk::API::Fave::Methods::GetLinks
      # @return [Vk::API::Fave::Responses::GetLinksResponse] Returns a list of links that the current user has bookmarked.
      def get_links(arguments = {})
        require "vk/api/fave/methods/get_links"
        method = Methods::GetLinks.new(arguments)
        response = method.call(@client)
        require "vk/api/fave/responses/get_links_response"
        Responses::GetLinksResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :count (50) Number of results to return. ;
      # @option arguments [Boolean] :extended  '1' – to return additional fields  'likes, can_comment, can_repost, photos'. By default: '0'.
      # @see Vk::API::Fave::Methods::GetMarketItems
      # @return [Vk::API::Fave::Responses::GetMarketItemsResponse] Returns market items bookmarked by current user.
      def get_market_items(arguments = {})
        require "vk/api/fave/methods/get_market_items"
        method = Methods::GetMarketItems.new(arguments)
        response = method.call(@client)
        require "vk/api/fave/responses/get_market_items_response"
        Responses::GetMarketItemsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  Profile ID.
      # @see Vk::API::Fave::Methods::AddUser
      # @return [Vk::API::Fave::Responses::AddUserResponse] Adds a profile to user faves.
      def add_user(arguments = {})
        require "vk/api/fave/methods/add_user"
        method = Methods::AddUser.new(arguments)
        response = method.call(@client)
        require "vk/api/fave/responses/add_user_response"
        Responses::AddUserResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  Profile ID.
      # @see Vk::API::Fave::Methods::RemoveUser
      # @return [Vk::API::Fave::Responses::RemoveUserResponse] Removes a profile from user faves.
      def remove_user(arguments = {})
        require "vk/api/fave/methods/remove_user"
        method = Methods::RemoveUser.new(arguments)
        response = method.call(@client)
        require "vk/api/fave/responses/remove_user_response"
        Responses::RemoveUserResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @see Vk::API::Fave::Methods::AddGroup
      # @return [Vk::API::Fave::Responses::AddGroupResponse] Adds a community to user faves.
      def add_group(arguments = {})
        require "vk/api/fave/methods/add_group"
        method = Methods::AddGroup.new(arguments)
        response = method.call(@client)
        require "vk/api/fave/responses/add_group_response"
        Responses::AddGroupResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @see Vk::API::Fave::Methods::RemoveGroup
      # @return [Vk::API::Fave::Responses::RemoveGroupResponse] Removes a community from user faves.
      def remove_group(arguments = {})
        require "vk/api/fave/methods/remove_group"
        method = Methods::RemoveGroup.new(arguments)
        response = method.call(@client)
        require "vk/api/fave/responses/remove_group_response"
        Responses::RemoveGroupResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :link  Link URL.
      # @option arguments [String] :text  Description text.
      # @see Vk::API::Fave::Methods::AddLink
      # @return [Vk::API::Fave::Responses::AddLinkResponse] Adds a link to user faves.
      def add_link(arguments = {})
        require "vk/api/fave/methods/add_link"
        method = Methods::AddLink.new(arguments)
        response = method.call(@client)
        require "vk/api/fave/responses/add_link_response"
        Responses::AddLinkResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :link_id  Link ID (can be obtained by  method).
      # @see Vk::API::Fave::Methods::RemoveLink
      # @return [Vk::API::Fave::Responses::RemoveLinkResponse] Removes link from the user's faves.
      def remove_link(arguments = {})
        require "vk/api/fave/methods/remove_link"
        method = Methods::RemoveLink.new(arguments)
        response = method.call(@client)
        require "vk/api/fave/responses/remove_link_response"
        Responses::RemoveLinkResponse.new(response.deep_symbolize_keys)
      end
    end
    class Notifications < Vk::Schema::Namespace
      module Methods
        autoload :Get, 'vk/api/notifications/methods/get'
        autoload :MarkAsViewed, 'vk/api/notifications/methods/mark_as_viewed'
      end

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Integer] :count (30) Number of notifications to return.
      # @option arguments [String] :start_from  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Array] :filters  Type of notifications to return:; 'wall' — wall posts; 'mentions' — mentions in wall posts, comments, or topics; 'comments' — comments to wall posts, photos, and videos; 'likes'  — likes; 'reposted' — wall posts that are copied from the current user's wall; 'followers' — new followers; 'friends' — accepted friend requests
      # @option arguments [Integer] :start_time  Earliest timestamp (in Unix time) of a notification to return. By default, 24 hours ago.
      # @option arguments [Integer] :end_time  Latest timestamp (in Unix time) of a notification to return. By default, the current time.
      # @see Vk::API::Notifications::Methods::Get
      # @return [Vk::API::Notifications::Responses::GetResponse] Returns a list of notifications about other users' feedback to the current user's wall posts.
      def get(arguments = {})
        require "vk/api/notifications/methods/get"
        method = Methods::Get.new(arguments)
        response = method.call(@client)
        require "vk/api/notifications/responses/get_response"
        Responses::GetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @see Vk::API::Notifications::Methods::MarkAsViewed
      # @return [Vk::API::Notifications::Responses::MarkAsViewedResponse] Resets the counter of new notifications about other users' feedback to the current user's wall posts.
      def mark_as_viewed(arguments = {})
        require "vk/api/notifications/methods/mark_as_viewed"
        method = Methods::MarkAsViewed.new(arguments)
        response = method.call(@client)
        require "vk/api/notifications/responses/mark_as_viewed_response"
        Responses::MarkAsViewedResponse.new(response.deep_symbolize_keys)
      end
    end
    class Stats < Vk::Schema::Namespace
      module Methods
        autoload :Get, 'vk/api/stats/methods/get'
        autoload :TrackVisitor, 'vk/api/stats/methods/track_visitor'
        autoload :GetPostReach, 'vk/api/stats/methods/get_post_reach'
      end

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Integer] :group_id  Community ID.
      # @option arguments [Integer] :app_id  Application ID.
      # @option arguments [String] :date_from  Latest datestamp (in Unix time) of statistics to return.
      # @option arguments [String] :date_to  End datestamp (in Unix time) of statistics to return.
      # @see Vk::API::Stats::Methods::Get
      # @return [Vk::API::Stats::Responses::GetResponse] Returns statistics of a community or an application.
      def get(arguments = {})
        require "vk/api/stats/methods/get"
        method = Methods::Get.new(arguments)
        response = method.call(@client)
        require "vk/api/stats/responses/get_response"
        Responses::GetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @see Vk::API::Stats::Methods::TrackVisitor
      # @return [Vk::API::Stats::Responses::TrackVisitorResponse] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      def track_visitor(arguments = {})
        require "vk/api/stats/methods/track_visitor"
        method = Methods::TrackVisitor.new(arguments)
        response = method.call(@client)
        require "vk/api/stats/responses/track_visitor_response"
        Responses::TrackVisitorResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  post owner community id. Specify with "-" sign.
      # @option arguments [Integer] :post_id  wall post id. Note that stats are available only for '300' last (newest) posts on a community wall.
      # @see Vk::API::Stats::Methods::GetPostReach
      # @return [Vk::API::Stats::Responses::GetPostReachResponse] Returns stats for a wall post.
      def get_post_reach(arguments = {})
        require "vk/api/stats/methods/get_post_reach"
        method = Methods::GetPostReach.new(arguments)
        response = method.call(@client)
        require "vk/api/stats/responses/get_post_reach_response"
        Responses::GetPostReachResponse.new(response.deep_symbolize_keys)
      end
    end
    class Search < Vk::Schema::Namespace
      module Methods
        autoload :GetHints, 'vk/api/search/methods/get_hints'
      end

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [String] :q  Search query string.
      # @option arguments [Integer] :limit (9) Maximum number of results to return.
      # @option arguments [Array] :filters  
      # @option arguments [Boolean] :search_global (true) 
      # @see Vk::API::Search::Methods::GetHints
      # @return [Vk::API::Search::Responses::GetHintsResponse] Allows the programmer to do a quick search for any substring.
      def get_hints(arguments = {})
        require "vk/api/search/methods/get_hints"
        method = Methods::GetHints.new(arguments)
        response = method.call(@client)
        require "vk/api/search/responses/get_hints_response"
        Responses::GetHintsResponse.new(response.deep_symbolize_keys)
      end
    end
    class Apps < Vk::Schema::Namespace
      module Methods
        autoload :GetCatalog, 'vk/api/apps/methods/get_catalog'
        autoload :Get, 'vk/api/apps/methods/get'
        autoload :SendRequest, 'vk/api/apps/methods/send_request'
        autoload :DeleteAppRequests, 'vk/api/apps/methods/delete_app_requests'
        autoload :GetFriendsList, 'vk/api/apps/methods/get_friends_list'
        autoload :GetLeaderboard, 'vk/api/apps/methods/get_leaderboard'
        autoload :GetScore, 'vk/api/apps/methods/get_score'
      end

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [String] :sort  Sort order:; 'popular_today' — popular for one day (default); 'visitors' — by visitors number ; 'create_date' — by creation date; 'growth_rate' — by growth rate; 'popular_week' — popular for one week
      # @option arguments [Integer] :offset  Offset required to return a specific subset of apps.
      # @option arguments [Integer] :count (100) Number of apps to return.
      # @option arguments [String] :platform  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Boolean] :extended  '1' — to return additional fields 'screenshots', 'MAU', 'catalog_position', and 'international'. If set, 'count' must be less than or equal to '100'. ; '0' — not to return additional fields (default).
      # @option arguments [Boolean] :return_friends  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [Array] :fields  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :name_case  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :q  Search query string.
      # @option arguments [Integer] :genre_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :filter  'installed' — to return list of installed apps (only for mobile platform).
      # @see Vk::API::Apps::Methods::GetCatalog
      # @return [Vk::API::Apps::Responses::GetCatalogResponse] Returns a list of applications (apps) available to users in the App Catalog.
      def get_catalog(arguments = {})
        require "vk/api/apps/methods/get_catalog"
        method = Methods::GetCatalog.new(arguments)
        response = method.call(@client)
        require "vk/api/apps/responses/get_catalog_response"
        Responses::GetCatalogResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :app_id  Application ID
      # @option arguments [Array] :app_ids  List of application ID
      # @option arguments [String] :platform ("web") platform. Possible values:; *'ios' — iOS;; *'android' — Android;; *'winphone' — Windows Phone;; *'web' — приложения на vk.com.; By default: 'web'.
      # @option arguments [Array, 'bdate'] :fields  Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'contacts', 'education', 'online', 'counters', 'relation', 'last_seen', 'activity', 'can_write_private_message', 'can_see_all_posts', 'can_post', 'universities';  (only if return_friends - 1)
      # @option arguments [String] :name_case  Case for declension of user name and surname:; 'nom' — nominative (default);; 'gen' — genitive;; 'dat' — dative;; 'acc' — accusative;; 'ins' — instrumental;; 'abl' — prepositional.; ; (only if 'return_friends' = '1')
      # @see Vk::API::Apps::Methods::Get
      # @return [Vk::API::Apps::Responses::GetResponse] Returns applications data.
      def get(arguments = {})
        require "vk/api/apps/methods/get"
        method = Methods::Get.new(arguments)
        response = method.call(@client)
        require "vk/api/apps/responses/get_response"
        Responses::GetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  id of the user to send a request
      # @option arguments [String] :text  request text
      # @option arguments [String] :type ("request") request type. Values:; 'invite' – if the request is sent to a user who does not have the app installed;; 'request' – if a user has already installed the app
      # @option arguments [String] :name  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @option arguments [String] :key  special string key to be sent with the request
      # @option arguments [Boolean] :separate  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Apps::Methods::SendRequest
      # @return [Vk::API::Apps::Responses::SendRequestResponse] Sends a request to another user in an app that uses VK authorization.
      def send_request(arguments = {})
        require "vk/api/apps/methods/send_request"
        method = Methods::SendRequest.new(arguments)
        response = method.call(@client)
        require "vk/api/apps/responses/send_request_response"
        Responses::SendRequestResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @see Vk::API::Apps::Methods::DeleteAppRequests
      # @return [Vk::API::Apps::Responses::DeleteAppRequestsResponse] Deletes all request notifications from the current app.
      def delete_app_requests(arguments = {})
        require "vk/api/apps/methods/delete_app_requests"
        method = Methods::DeleteAppRequests.new(arguments)
        response = method.call(@client)
        require "vk/api/apps/responses/delete_app_requests_response"
        Responses::DeleteAppRequestsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :count (20) List size.
      # @option arguments [String] :type ("request") List type. Possible values:; * 'invite' — available for invites (don't play the game);; * 'request' — available for request (play the game).; ; By default: 'invite'.
      # @option arguments [Array] :fields  Additional profile fields, see .
      # @see Vk::API::Apps::Methods::GetFriendsList
      # @return [Vk::API::Apps::Responses::GetFriendsListResponse] Creates friends list for requests and invites in current app.
      def get_friends_list(arguments = {})
        require "vk/api/apps/methods/get_friends_list"
        method = Methods::GetFriendsList.new(arguments)
        response = method.call(@client)
        require "vk/api/apps/responses/get_friends_list_response"
        Responses::GetFriendsListResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :type  Leaderboard type. Possible values:; *'level' — by level;; *'points' — by mission points;; *'score' — by score ().
      # @option arguments [Boolean] :global (true) Rating type.  Possible values:; *'1' — global rating among all players;; *'0' — rating among user friends.
      # @see Vk::API::Apps::Methods::GetLeaderboard
      # @return [Vk::API::Apps::Responses::GetLeaderboardResponse] Returns players rating in the game.
      def get_leaderboard(arguments = {})
        require "vk/api/apps/methods/get_leaderboard"
        method = Methods::GetLeaderboard.new(arguments)
        response = method.call(@client)
        require "vk/api/apps/responses/get_leaderboard_response"
        Responses::GetLeaderboardResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      # @see Vk::API::Apps::Methods::GetScore
      # @return [Vk::API::Apps::Responses::GetScoreResponse] Returns user score in app
      def get_score(arguments = {})
        require "vk/api/apps/methods/get_score"
        method = Methods::GetScore.new(arguments)
        response = method.call(@client)
        require "vk/api/apps/responses/get_score_response"
        Responses::GetScoreResponse.new(response.deep_symbolize_keys)
      end
    end
    class Utils < Vk::Schema::Namespace
      module Methods
        autoload :CheckLink, 'vk/api/utils/methods/check_link'
        autoload :ResolveScreenName, 'vk/api/utils/methods/resolve_screen_name'
        autoload :GetServerTime, 'vk/api/utils/methods/get_server_time'
      end

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [String] :url  Link to check (e.g., 'http://google.com').
      # @see Vk::API::Utils::Methods::CheckLink
      # @return [Vk::API::Utils::Responses::CheckLinkResponse] Checks whether a link is blocked in VK.
      def check_link(arguments = {})
        require "vk/api/utils/methods/check_link"
        method = Methods::CheckLink.new(arguments)
        response = method.call(@client)
        require "vk/api/utils/responses/check_link_response"
        Responses::CheckLinkResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :screen_name  Screen name of the user, community (e.g., 'apiclub,' 'andrew', or 'rules_of_war'), or application.
      # @see Vk::API::Utils::Methods::ResolveScreenName
      # @return [Vk::API::Utils::Responses::ResolveScreenNameResponse] Detects a type of object (e.g., user, community, application) and its ID by screen name.
      def resolve_screen_name(arguments = {})
        require "vk/api/utils/methods/resolve_screen_name"
        method = Methods::ResolveScreenName.new(arguments)
        response = method.call(@client)
        require "vk/api/utils/responses/resolve_screen_name_response"
        Responses::ResolveScreenNameResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @see Vk::API::Utils::Methods::GetServerTime
      # @return [Vk::API::Utils::Responses::GetServerTimeResponse] Returns the current time of the VK server.
      def get_server_time(arguments = {})
        require "vk/api/utils/methods/get_server_time"
        method = Methods::GetServerTime.new(arguments)
        response = method.call(@client)
        require "vk/api/utils/responses/get_server_time_response"
        Responses::GetServerTimeResponse.new(response.deep_symbolize_keys)
      end
    end
    class Database < Vk::Schema::Namespace
      module Methods
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

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Boolean] :need_all  '1' — to return a full list of all countries; '0' — to return a list of countries near the current user's country (default).;
      # @option arguments [String] :code  Country codes in  standard.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of countries.
      # @option arguments [Integer] :count (100) Number of countries to return.
      # @see Vk::API::Database::Methods::GetCountries
      # @return [Vk::API::Database::Responses::GetCountriesResponse] Returns a list of countries.
      def get_countries(arguments = {})
        require "vk/api/database/methods/get_countries"
        method = Methods::GetCountries.new(arguments)
        response = method.call(@client)
        require "vk/api/database/responses/get_countries_response"
        Responses::GetCountriesResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :country_id  Country ID, received in  method.
      # @option arguments [String] :q  Search query.
      # @option arguments [Integer] :offset  Offset needed to return specific subset of regions.
      # @option arguments [Integer] :count (100) Number of regions to return.
      # @see Vk::API::Database::Methods::GetRegions
      # @return [Vk::API::Database::Responses::GetRegionsResponse] Returns a list of regions.
      def get_regions(arguments = {})
        require "vk/api/database/methods/get_regions"
        method = Methods::GetRegions.new(arguments)
        response = method.call(@client)
        require "vk/api/database/responses/get_regions_response"
        Responses::GetRegionsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :street_ids  Street IDs.
      # @see Vk::API::Database::Methods::GetStreetsById
      # @return [Vk::API::Database::Responses::GetStreetsByIdResponse] Returns information about streets by their IDs.
      def get_streets_by_id(arguments = {})
        require "vk/api/database/methods/get_streets_by_id"
        method = Methods::GetStreetsById.new(arguments)
        response = method.call(@client)
        require "vk/api/database/responses/get_streets_by_id_response"
        Responses::GetStreetsByIdResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :country_ids  Country IDs.
      # @see Vk::API::Database::Methods::GetCountriesById
      # @return [Vk::API::Database::Responses::GetCountriesByIdResponse] Returns information about countries by their IDs.
      def get_countries_by_id(arguments = {})
        require "vk/api/database/methods/get_countries_by_id"
        method = Methods::GetCountriesById.new(arguments)
        response = method.call(@client)
        require "vk/api/database/responses/get_countries_by_id_response"
        Responses::GetCountriesByIdResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :country_id  Country ID.
      # @option arguments [Integer] :region_id  Region ID.
      # @option arguments [String] :q  Search query.
      # @option arguments [Boolean] :need_all  '1' — to return all cities in the country; '0' — to return major cities in the country (default);
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of cities.
      # @option arguments [Integer] :count (100) Number of cities to return.
      # @see Vk::API::Database::Methods::GetCities
      # @return [Vk::API::Database::Responses::GetCitiesResponse] Returns a list of cities.
      def get_cities(arguments = {})
        require "vk/api/database/methods/get_cities"
        method = Methods::GetCities.new(arguments)
        response = method.call(@client)
        require "vk/api/database/responses/get_cities_response"
        Responses::GetCitiesResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :city_ids  City IDs.
      # @see Vk::API::Database::Methods::GetCitiesById
      # @return [Vk::API::Database::Responses::GetCitiesByIdResponse] Returns information about cities by their IDs.
      def get_cities_by_id(arguments = {})
        require "vk/api/database/methods/get_cities_by_id"
        method = Methods::GetCitiesById.new(arguments)
        response = method.call(@client)
        require "vk/api/database/responses/get_cities_by_id_response"
        Responses::GetCitiesByIdResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :q  Search query.
      # @option arguments [Integer] :country_id  Country ID.
      # @option arguments [Integer] :city_id  City ID.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of universities.
      # @option arguments [Integer] :count (100) Number of universities to return.
      # @see Vk::API::Database::Methods::GetUniversities
      # @return [Vk::API::Database::Responses::GetUniversitiesResponse] Returns a list of higher education institutions.
      def get_universities(arguments = {})
        require "vk/api/database/methods/get_universities"
        method = Methods::GetUniversities.new(arguments)
        response = method.call(@client)
        require "vk/api/database/responses/get_universities_response"
        Responses::GetUniversitiesResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :q  Search query.
      # @option arguments [Integer] :city_id  City ID.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of schools.
      # @option arguments [Integer] :count (100) Number of schools to return.
      # @see Vk::API::Database::Methods::GetSchools
      # @return [Vk::API::Database::Responses::GetSchoolsResponse] Returns a list of schools.
      def get_schools(arguments = {})
        require "vk/api/database/methods/get_schools"
        method = Methods::GetSchools.new(arguments)
        response = method.call(@client)
        require "vk/api/database/responses/get_schools_response"
        Responses::GetSchoolsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :country_id  Country ID.
      # @see Vk::API::Database::Methods::GetSchoolClasses
      # @return [Vk::API::Database::Responses::GetSchoolClassesResponse] Returns a list of school classes specified for the country.
      def get_school_classes(arguments = {})
        require "vk/api/database/methods/get_school_classes"
        method = Methods::GetSchoolClasses.new(arguments)
        response = method.call(@client)
        require "vk/api/database/responses/get_school_classes_response"
        Responses::GetSchoolClassesResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :university_id  University ID.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of faculties.
      # @option arguments [Integer] :count (100) Number of faculties to return.
      # @see Vk::API::Database::Methods::GetFaculties
      # @return [Vk::API::Database::Responses::GetFacultiesResponse] Returns a list of faculties (i.e., university departments).;
      def get_faculties(arguments = {})
        require "vk/api/database/methods/get_faculties"
        method = Methods::GetFaculties.new(arguments)
        response = method.call(@client)
        require "vk/api/database/responses/get_faculties_response"
        Responses::GetFacultiesResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :faculty_id  id of the faculty to get chairs from
      # @option arguments [Integer] :offset  offset required to get a certain subset of chairs
      # @option arguments [Integer] :count (100) amount of chairs to get
      # @see Vk::API::Database::Methods::GetChairs
      # @return [Vk::API::Database::Responses::GetChairsResponse] Returns list of chairs on a specified faculty.
      def get_chairs(arguments = {})
        require "vk/api/database/methods/get_chairs"
        method = Methods::GetChairs.new(arguments)
        response = method.call(@client)
        require "vk/api/database/responses/get_chairs_response"
        Responses::GetChairsResponse.new(response.deep_symbolize_keys)
      end
    end
    class Gifts < Vk::Schema::Namespace
      module Methods
        autoload :Get, 'vk/api/gifts/methods/get'
      end

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Integer] :user_id  User ID.
      # @option arguments [Integer] :count  Number of gifts to return.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of results.
      # @see Vk::API::Gifts::Methods::Get
      # @return [Vk::API::Gifts::Responses::GetResponse] Returns a list of user gifts.
      def get(arguments = {})
        require "vk/api/gifts/methods/get"
        method = Methods::Get.new(arguments)
        response = method.call(@client)
        require "vk/api/gifts/responses/get_response"
        Responses::GetResponse.new(response.deep_symbolize_keys)
      end
    end
    class Ads < Vk::Schema::Namespace
      module Methods
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

      # @!group DSL

      # @param [Hash] arguments
      # @see Vk::API::Ads::Methods::GetAccounts
      # @return [Vk::API::Ads::Responses::GetAccountsResponse] Returns a list of advertising accounts.
      def get_accounts(arguments = {})
        require "vk/api/ads/methods/get_accounts"
        method = Methods::GetAccounts.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/get_accounts_response"
        Responses::GetAccountsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @see Vk::API::Ads::Methods::GetClients
      # @return [Vk::API::Ads::Responses::GetClientsResponse] Returns a list of advertising agency's clients.
      def get_clients(arguments = {})
        require "vk/api/ads/methods/get_clients"
        method = Methods::GetClients.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/get_clients_response"
        Responses::GetClientsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [String] :data  Serialized JSON array of objects that describe created campaigns. Description of 'client_specification' objects see below.
      # @see Vk::API::Ads::Methods::CreateClients
      # @return [Vk::API::Ads::Responses::CreateClientsResponse] Creates clients of an advertising agency.
      def create_clients(arguments = {})
        require "vk/api/ads/methods/create_clients"
        method = Methods::CreateClients.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/create_clients_response"
        Responses::CreateClientsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [String] :data  Serialized JSON array of objects that describe changes in clients. Description of 'client_mod' objects see below.
      # @see Vk::API::Ads::Methods::UpdateClients
      # @return [Vk::API::Ads::Responses::UpdateClientsResponse] Edits clients of an advertising agency.
      def update_clients(arguments = {})
        require "vk/api/ads/methods/update_clients"
        method = Methods::UpdateClients.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/update_clients_response"
        Responses::UpdateClientsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [String] :ids  Serialized JSON array with IDs of deleted clients.
      # @see Vk::API::Ads::Methods::DeleteClients
      # @return [Vk::API::Ads::Responses::DeleteClientsResponse] Archives clients of an advertising agency.
      def delete_clients(arguments = {})
        require "vk/api/ads/methods/delete_clients"
        method = Methods::DeleteClients.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/delete_clients_response"
        Responses::DeleteClientsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [Integer] :client_id  'For advertising agencies'. ID of the client advertising campaigns are retrieved from.
      # @option arguments [Boolean] :include_deleted  Flag that specifies whether archived ads shall be shown.; *0 — show only active campaigns;; *1 — show all campaigns.;
      # @option arguments [String] :campaign_ids  Filter of advertising campaigns to show. ; Serialized JSON array with campaign IDs. Only campaigns that exist in 'campaign_ids' and belong to the specified advertising account will be shown. If the parameter is null, all campaigns will be shown.;
      # @see Vk::API::Ads::Methods::GetCampaigns
      # @return [Vk::API::Ads::Responses::GetCampaignsResponse] Returns a list of campaigns in an advertising account.
      def get_campaigns(arguments = {})
        require "vk/api/ads/methods/get_campaigns"
        method = Methods::GetCampaigns.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/get_campaigns_response"
        Responses::GetCampaignsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [String] :data  Serialized JSON array of objects that describe created campaigns. Description of 'campaign_specification' objects see below.
      # @see Vk::API::Ads::Methods::CreateCampaigns
      # @return [Vk::API::Ads::Responses::CreateCampaignsResponse] Creates advertising campaigns.
      def create_campaigns(arguments = {})
        require "vk/api/ads/methods/create_campaigns"
        method = Methods::CreateCampaigns.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/create_campaigns_response"
        Responses::CreateCampaignsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [String] :data  Serialized JSON array of objects that describe changes in campaigns. Description of 'campaign_mod' objects see below.
      # @see Vk::API::Ads::Methods::UpdateCampaigns
      # @return [Vk::API::Ads::Responses::UpdateCampaignsResponse] Edits advertising campaigns.
      def update_campaigns(arguments = {})
        require "vk/api/ads/methods/update_campaigns"
        method = Methods::UpdateCampaigns.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/update_campaigns_response"
        Responses::UpdateCampaignsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [String] :ids  Serialized JSON array with IDs of deleted campaigns.
      # @see Vk::API::Ads::Methods::DeleteCampaigns
      # @return [Vk::API::Ads::Responses::DeleteCampaignsResponse] Archives advertising campaigns.
      def delete_campaigns(arguments = {})
        require "vk/api/ads/methods/delete_campaigns"
        method = Methods::DeleteCampaigns.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/delete_campaigns_response"
        Responses::DeleteCampaignsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [Integer] :client_id  'Available and required for advertising agencies.' ID of the client ads are retrieved from.
      # @option arguments [Boolean] :include_deleted  Flag that specifies whether archived ads shall be shown:; *0 — show only active ads;; *1 — show all ads.;
      # @option arguments [String] :campaign_ids  Filter by advertising campaigns. ; Serialized JSON array with campaign IDs. If the parameter is null, ads of all campaigns will be shown.;
      # @option arguments [String] :ad_ids  Filter by ads. ; Serialized JSON array with ad IDs. If the parameter is null, all ads will be shown.;
      # @option arguments [Integer] :limit  Limit of number of returned ads. Used only if ad_ids parameter is null, and 'campaign_ids' parameter contains ID of only one campaign.
      # @option arguments [Integer] :offset  Offset. Used in the same cases as 'limit' parameter.
      # @see Vk::API::Ads::Methods::GetAds
      # @return [Vk::API::Ads::Responses::GetAdsResponse] Returns number of ads.
      def get_ads(arguments = {})
        require "vk/api/ads/methods/get_ads"
        method = Methods::GetAds.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/get_ads_response"
        Responses::GetAdsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [Integer] :client_id  'For advertising agencies.' ID of the client ads are retrieved from.
      # @option arguments [Boolean] :include_deleted  Flag that specifies whether archived ads shall be shown.; *0 — show only active ads;; *1 — show all ads.;
      # @option arguments [String] :campaign_ids  Filter by advertising campaigns.; Serialized JSON array with campaign IDs. If the parameter is null, ads of all campaigns will be shown.;
      # @option arguments [String] :ad_ids  Filter by ads.; Serialized JSON array with ad IDs. If the parameter is null, all ads will be shown.;
      # @option arguments [Integer] :limit  Limit of number of returned ads. Used only if 'ad_ids' parameter is null, and 'campaign_ids' parameter contains ID of only one campaign.
      # @option arguments [Integer] :offset  Offset. Used in the same cases as 'limit' parameter.
      # @see Vk::API::Ads::Methods::GetAdsLayout
      # @return [Vk::API::Ads::Responses::GetAdsLayoutResponse] Returns descriptions of ad layouts.
      def get_ads_layout(arguments = {})
        require "vk/api/ads/methods/get_ads_layout"
        method = Methods::GetAdsLayout.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/get_ads_layout_response"
        Responses::GetAdsLayoutResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [Integer] :client_id  'For advertising agencies.' ID of the client ads are retrieved from.
      # @option arguments [Boolean] :include_deleted  flag that specifies whether archived ads shall be shown:; *0 — show only active ads;; *1 — show all ads.
      # @option arguments [String] :campaign_ids  Filter by advertising campaigns.; Serialized JSON array with campaign IDs. If the parameter is null, ads of all campaigns will be shown.;
      # @option arguments [String] :ad_ids  Filter by ads.; Serialized JSON array with ad IDs. If the parameter is null, all ads will be shown.
      # @option arguments [Integer] :limit  Limit of number of returned ads. Used only if 'ad_ids' parameter is null, and 'campaign_ids' parameter contains ID of only one campaign.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of results.
      # @see Vk::API::Ads::Methods::GetAdsTargeting
      # @return [Vk::API::Ads::Responses::GetAdsTargetingResponse] Retuns ad targeting parameters.
      def get_ads_targeting(arguments = {})
        require "vk/api/ads/methods/get_ads_targeting"
        method = Methods::GetAdsTargeting.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/get_ads_targeting_response"
        Responses::GetAdsTargetingResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [String] :data  Serialized JSON array of objects that describe created ads. Description of 'ad_specification' objects see below.
      # @see Vk::API::Ads::Methods::CreateAds
      # @return [Vk::API::Ads::Responses::CreateAdsResponse] Creates ads.
      def create_ads(arguments = {})
        require "vk/api/ads/methods/create_ads"
        method = Methods::CreateAds.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/create_ads_response"
        Responses::CreateAdsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [String] :data  Serialized JSON array of objects that describe changes in ads. Description of 'ad_edit_specification' objects see below.
      # @see Vk::API::Ads::Methods::UpdateAds
      # @return [Vk::API::Ads::Responses::UpdateAdsResponse] Edits ads.
      def update_ads(arguments = {})
        require "vk/api/ads/methods/update_ads"
        method = Methods::UpdateAds.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/update_ads_response"
        Responses::UpdateAdsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [String] :ids  Serialized JSON array with ad IDs.
      # @see Vk::API::Ads::Methods::DeleteAds
      # @return [Vk::API::Ads::Responses::DeleteAdsResponse] Archives ads.
      def delete_ads(arguments = {})
        require "vk/api/ads/methods/delete_ads"
        method = Methods::DeleteAds.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/delete_ads_response"
        Responses::DeleteAdsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [String] :link_type  Object type:; *'community' — community;; *'post' — community post;; *'application' — VK application;; *'video' — video;; *'site' — external site.
      # @option arguments [String] :link_url  Object URL.
      # @option arguments [Integer] :campaign_id  Campaign ID
      # @see Vk::API::Ads::Methods::CheckLink
      # @return [Vk::API::Ads::Responses::CheckLinkResponse] Allows to check the ad link.
      def check_link(arguments = {})
        require "vk/api/ads/methods/check_link"
        method = Methods::CheckLink.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/check_link_response"
        Responses::CheckLinkResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [String] :ids_type  Type of requested objects listed in 'ids' parameter:; *ad — ads;; *campaign — campaigns;; *client — clients;; *office — account.;
      # @option arguments [String] :ids  IDs requested ads, campaigns, clients or account, separated with a comma, depending on the value set in 'ids_type'. Maximum 2000 objects.
      # @option arguments [String] :period  Data grouping by dates:; *day — statistics by days;; *month — statistics by months;; *overall — overall statistics.; 'date_from' and 'date_to' parameters set temporary limits.
      # @option arguments [String] :date_from  Date to show statistics from. For different value of 'period' different date format is used:; *day: YYYY-MM-DD, example: 2011-09-27 — September 27, 2011; **0 — day it was created on;; *month: YYYY-MM, example: 2011-09 — September 2011; **0 — month it was created in;; *overall: 0.;
      # @option arguments [String] :date_to  Date to show statistics to. For different value of 'period' different date format is used:; *day: YYYY-MM-DD, example: 2011-09-27 — September 27, 2011; **0 — current day;; *month: YYYY-MM, example: 2011-09 — September 2011; **0 — current month;; *overall: 0.
      # @see Vk::API::Ads::Methods::GetStatistics
      # @return [Vk::API::Ads::Responses::GetStatisticsResponse] Returns statistics of performance indicators for ads, campaigns, clients or the whole account.
      def get_statistics(arguments = {})
        require "vk/api/ads/methods/get_statistics"
        method = Methods::GetStatistics.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/get_statistics_response"
        Responses::GetStatisticsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [String] :ids_type  Type of requested objects listed in 'ids' parameter:; *ad — ads;; *campaign — campaigns.;
      # @option arguments [String] :ids  IDs requested ads or campaigns, separated with a comma, depending on the value set in 'ids_type'. Maximum 2000 objects.
      # @option arguments [String] :period  Data grouping by dates:; *day — statistics by days;; *month — statistics by months;; *overall — overall statistics.; 'date_from' and 'date_to' parameters set temporary limits.
      # @option arguments [String] :date_from  Date to show statistics from. For different value of 'period' different date format is used:; *day: YYYY-MM-DD, example: 2011-09-27 — September 27, 2011; **0 — day it was created on;; *month: YYYY-MM, example: 2011-09 — September 2011; **0 — month it was created in;; *overall: 0.
      # @option arguments [String] :date_to  Date to show statistics to. For different value of 'period' different date format is used:; *day: YYYY-MM-DD, example: 2011-09-27 — September 27, 2011; **0 — current day;; *month: YYYY-MM, example: 2011-09 — September 2011; **0 — current month;; *overall: 0.
      # @see Vk::API::Ads::Methods::GetDemographics
      # @return [Vk::API::Ads::Responses::GetDemographicsResponse] Returns demographics for ads or campaigns.
      def get_demographics(arguments = {})
        require "vk/api/ads/methods/get_demographics"
        method = Methods::GetDemographics.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/get_demographics_response"
        Responses::GetDemographicsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [String] :ads_ids  Ads IDS separated by comma.
      # @see Vk::API::Ads::Methods::GetAdsPostsReach
      # @return [Vk::API::Ads::Responses::GetAdsPostsReachResponse] Allows to get detailed information about the ad post reach.
      def get_ads_posts_reach(arguments = {})
        require "vk/api/ads/methods/get_ads_posts_reach"
        method = Methods::GetAdsPostsReach.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/get_ads_posts_reach_response"
        Responses::GetAdsPostsReachResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @see Vk::API::Ads::Methods::GetBudget
      # @return [Vk::API::Ads::Responses::GetBudgetResponse] Returns current budget of the advertising account.
      def get_budget(arguments = {})
        require "vk/api/ads/methods/get_budget"
        method = Methods::GetBudget.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/get_budget_response"
        Responses::GetBudgetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @see Vk::API::Ads::Methods::GetOfficeUsers
      # @return [Vk::API::Ads::Responses::GetOfficeUsersResponse] Returns a list of managers and supervisors of advertising account.
      def get_office_users(arguments = {})
        require "vk/api/ads/methods/get_office_users"
        method = Methods::GetOfficeUsers.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/get_office_users_response"
        Responses::GetOfficeUsersResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [String] :data  Serialized JSON array of objects that describe added managers. Description of 'user_specification' objects see below.
      # @see Vk::API::Ads::Methods::AddOfficeUsers
      # @return [Vk::API::Ads::Responses::AddOfficeUsersResponse] Adds managers and/or supervisors to advertising account.
      def add_office_users(arguments = {})
        require "vk/api/ads/methods/add_office_users"
        method = Methods::AddOfficeUsers.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/add_office_users_response"
        Responses::AddOfficeUsersResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [String] :ids  Serialized JSON array with IDs of deleted managers.
      # @see Vk::API::Ads::Methods::RemoveOfficeUsers
      # @return [Vk::API::Ads::Responses::RemoveOfficeUsersResponse] Removes managers and/or supervisors from advertising account.
      def remove_office_users(arguments = {})
        require "vk/api/ads/methods/remove_office_users"
        method = Methods::RemoveOfficeUsers.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/remove_office_users_response"
        Responses::RemoveOfficeUsersResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [String] :criteria  Serialized JSON object that describes targeting parameters. Description of 'criteria' object see below.
      # @option arguments [Integer] :ad_id  ID of an ad which targeting parameters shall be analyzed.
      # @option arguments [Integer] :ad_format  Ad format. Possible values:; *'1' — image and text;; *'2' — big image;; *'3' — exclusive format;; *'4' — community, square image;; *'7' — special app format;; *'8' — special community format;; *'9' — post in community;; *'10' — app board.
      # @option arguments [String] :ad_platform  Platforms to use for ad showing. Possible values:; (for 'ad_format' = '1'); *'0' — VK and partner sites;; *'1' — VK only.; (for 'ad_format' = '9'); *'all' — all platforms;; *'desktop' — desktop version;; *'mobile' — mobile version and apps.
      # @option arguments [String] :link_url  URL for the advertised object.
      # @option arguments [String] :link_domain  Domain of the advertised object.
      # @see Vk::API::Ads::Methods::GetTargetingStats
      # @return [Vk::API::Ads::Responses::GetTargetingStatsResponse] Returns the size of targeting audience, and also recommended values for CPC and CPM.
      def get_targeting_stats(arguments = {})
        require "vk/api/ads/methods/get_targeting_stats"
        method = Methods::GetTargetingStats.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/get_targeting_stats_response"
        Responses::GetTargetingStatsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :section  Section, suggestions are retrieved in. Available values:; *countries — request of a list of countries. If q is not set or blank, a short list of countries is shown. Otherwise, a full list of countries is shown.; *regions — requested list of regions.  'country' parameter is required.; *cities — requested list of cities. 'country' parameter is required.; *districts — requested list of districts.  'cities' parameter is required.; *stations — requested list of subway stations.  'cities' parameter is required.; *streets — requested list of cities. 'cities' parameter is required.; *schools — requested list of educational organizations.  'cities' parameter is required.; *interests — requested list of interests.; *positions — requested list of positions (professions).; *group_types — requested list of group types.; *religions — requested list of religious commitments.; *browsers — requested list of browsers and mobile devices.;
      # @option arguments [String] :ids  Objects IDs separated by commas. If the parameter is passed, 'q, country, cities' should not be passed.
      # @option arguments [String] :q  Filter-line of the request (for countries, regions, cities, streets, schools, interests, positions).
      # @option arguments [Integer] :country  ID of the country objects are searched in.
      # @option arguments [String] :cities  IDs of cities where objects are searched in, separated with a comma.
      # @option arguments [String] :lang  Language of the returned string values. Supported languages:; *ru — Russian;; *ua — Ukrainian;; *en — English.;
      # @see Vk::API::Ads::Methods::GetSuggestions
      # @return [Vk::API::Ads::Responses::GetSuggestionsResponse] Returns a set of auto-suggestions for various targeting parameters.
      def get_suggestions(arguments = {})
        require "vk/api/ads/methods/get_suggestions"
        method = Methods::GetSuggestions.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/get_suggestions_response"
        Responses::GetSuggestionsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [String] :lang  Language. The full list of supported languages is .
      # @see Vk::API::Ads::Methods::GetCategories
      # @return [Vk::API::Ads::Responses::GetCategoriesResponse] Returns a list of possible ad categories.
      def get_categories(arguments = {})
        require "vk/api/ads/methods/get_categories"
        method = Methods::GetCategories.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/get_categories_response"
        Responses::GetCategoriesResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :ad_format  Ad format:; *1 — image and text;; *2 — big image;; *3 — exclusive format;; *4 — community, square image;; *7 — special app format.
      # @see Vk::API::Ads::Methods::GetUploadUrl
      # @return [Vk::API::Ads::Responses::GetUploadUrlResponse] Returns URL to upload an ad photo to.
      def get_upload_url(arguments = {})
        require "vk/api/ads/methods/get_upload_url"
        method = Methods::GetUploadUrl.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/get_upload_url_response"
        Responses::GetUploadUrlResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @see Vk::API::Ads::Methods::GetVideoUploadUrl
      # @return [Vk::API::Ads::Responses::GetVideoUploadUrlResponse] Returns URL to upload an ad video to.
      def get_video_upload_url(arguments = {})
        require "vk/api/ads/methods/get_video_upload_url"
        method = Methods::GetVideoUploadUrl.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/get_video_upload_url_response"
        Responses::GetVideoUploadUrlResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @see Vk::API::Ads::Methods::GetFloodStats
      # @return [Vk::API::Ads::Responses::GetFloodStatsResponse] Returns information about current state of a counter — number of remaining runs of methods and time to the next counter nulling in seconds.
      def get_flood_stats(arguments = {})
        require "vk/api/ads/methods/get_flood_stats"
        method = Methods::GetFloodStats.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/get_flood_stats_response"
        Responses::GetFloodStatsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [Integer] :ad_id  Ad ID.
      # @see Vk::API::Ads::Methods::GetRejectionReason
      # @return [Vk::API::Ads::Responses::GetRejectionReasonResponse] Returns a reason of ad rejection for pre-moderation.
      def get_rejection_reason(arguments = {})
        require "vk/api/ads/methods/get_rejection_reason"
        method = Methods::GetRejectionReason.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/get_rejection_reason_response"
        Responses::GetRejectionReasonResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [Integer] :client_id  'Only for advertising agencies.'; ID of the client with the advertising account where the group will be created.;
      # @option arguments [String] :name  Name of the target group — a string up to 64 characters long.
      # @option arguments [String] :domain  Domain of the site where user accounting code will be placed.
      # @option arguments [Integer] :lifetime  'For groups with auditory created with pixel code only.'; ; Number of days after that users will be automatically removed from the group. '0' — not to remove users.;
      # @see Vk::API::Ads::Methods::CreateTargetGroup
      # @return [Vk::API::Ads::Responses::CreateTargetGroupResponse] Creates a group to re-target ads for users who visited advertiser's site (viewed information about the product, registered, etc.).
      def create_target_group(arguments = {})
        require "vk/api/ads/methods/create_target_group"
        method = Methods::CreateTargetGroup.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/create_target_group_response"
        Responses::CreateTargetGroupResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [Integer] :client_id  'Only for advertising agencies.' ; ID of the client with the advertising account where the group will be created.;
      # @option arguments [Integer] :target_group_id  Group ID.
      # @option arguments [String] :name  New name of the target group — a string up to 64 characters long.
      # @option arguments [String] :domain  Domain of the site where user accounting code will be placed.
      # @option arguments [Integer] :lifetime  'Only for the groups that get audience from sites with user accounting code.'; Time in days when users added to a retarget group will be automatically excluded from it. ; '0' – automatic exclusion is off.
      # @see Vk::API::Ads::Methods::UpdateTargetGroup
      # @return [Vk::API::Ads::Responses::UpdateTargetGroupResponse] Edits a retarget group.
      def update_target_group(arguments = {})
        require "vk/api/ads/methods/update_target_group"
        method = Methods::UpdateTargetGroup.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/update_target_group_response"
        Responses::UpdateTargetGroupResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [Integer] :client_id  'Only for advertising agencies.' ; ID of the client with the advertising account where the group will be created.;
      # @option arguments [Integer] :target_group_id  Group ID.
      # @see Vk::API::Ads::Methods::DeleteTargetGroup
      # @return [Vk::API::Ads::Responses::DeleteTargetGroupResponse] Deletes a retarget group.
      def delete_target_group(arguments = {})
        require "vk/api/ads/methods/delete_target_group"
        method = Methods::DeleteTargetGroup.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/delete_target_group_response"
        Responses::DeleteTargetGroupResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [Integer] :client_id  'Only for advertising agencies.'; ID of the client with the advertising account where the group will be created.;
      # @option arguments [Boolean] :extended  '1' — to return pixel code.
      # @see Vk::API::Ads::Methods::GetTargetGroups
      # @return [Vk::API::Ads::Responses::GetTargetGroupsResponse] Returns a list of target groups.
      def get_target_groups(arguments = {})
        require "vk/api/ads/methods/get_target_groups"
        method = Methods::GetTargetGroups.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/get_target_groups_response"
        Responses::GetTargetGroupsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :account_id  Advertising account ID.
      # @option arguments [Integer] :client_id  'Only for advertising agencies.' ; ID of the client with the advertising account where the group will be created.;
      # @option arguments [Integer] :target_group_id  Target group ID.
      # @option arguments [String] :contacts  List of phone numbers, emails or user IDs separated with a comma.
      # @see Vk::API::Ads::Methods::ImportTargetContacts
      # @return [Vk::API::Ads::Responses::ImportTargetContactsResponse] Imports a list of advertiser's contacts to count VK registered users against the target group.
      def import_target_contacts(arguments = {})
        require "vk/api/ads/methods/import_target_contacts"
        method = Methods::ImportTargetContacts.new(arguments)
        response = method.call(@client)
        require "vk/api/ads/responses/import_target_contacts_response"
        Responses::ImportTargetContactsResponse.new(response.deep_symbolize_keys)
      end
    end
    class Market < Vk::Schema::Namespace
      module Methods
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

      # @!group DSL

      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of an item owner community; "Note that community id in the 'owner_id' parameter should be negative number. For example 'owner_id'=-1 matches the [vk.com/apiclub|VK API] community "
      # @option arguments [Integer] :count (100) Number of items to return.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of results.
      # @option arguments [Boolean] :extended  '1' – method will return additional fields: 'likes, can_comment, car_repost, photos'. These parameters are not returned by default.
      # @see Vk::API::Market::Methods::Get
      # @return [Vk::API::Market::Responses::GetResponse] Returns items list for a community.
      def get(arguments = {})
        require "vk/api/market/methods/get"
        method = Methods::Get.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/get_response"
        Responses::GetResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Array] :item_ids  Comma-separated ids list: \$1user id\$1_\$1item id\$1.; If an item belongs to a community -\$1community id\$1 is used. ; " 'Videos' value example: ; '-4363_136089719,13245770_137352259'"
      # @option arguments [Boolean] :extended  '1' – to return additional fields: 'likes, can_comment, car_repost, photos'. By default: '0'.
      # @see Vk::API::Market::Methods::GetById
      # @return [Vk::API::Market::Responses::GetByIdResponse] Returns information about market items by their ids.
      def get_by_id(arguments = {})
        require "vk/api/market/methods/get_by_id"
        method = Methods::GetById.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/get_by_id_response"
        Responses::GetByIdResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of an items owner community.
      # @option arguments [String] :q  Search query, for example "pink slippers".
      # @option arguments [Integer] :price_from  Minimum item price value.
      # @option arguments [Integer] :price_to  Maximum item price value.
      # @option arguments [Array] :tags  Comma-separated tag IDs list.
      # @option arguments [Integer] :rev (1) '0' — do not use reverse order, '1' — use reverse order
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of results.
      # @option arguments [Integer] :count (20) Number of items to return.
      # @option arguments [Boolean] :extended (false) '1' – to return additional fields: 'likes, can_comment, car_repost, photos'. By default: '0'.
      # @see Vk::API::Market::Methods::Search
      # @return [Vk::API::Market::Responses::SearchResponse] Searches market items in a community's catalog
      def search(arguments = {})
        require "vk/api/market/methods/search"
        method = Methods::Search.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/search_response"
        Responses::SearchResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of an items owner community.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of results.
      # @option arguments [Integer] :count (50) Number of items to return.
      # @see Vk::API::Market::Methods::GetAlbums
      # @return [Vk::API::Market::Responses::GetAlbumsResponse] Returns community's collections list.
      def get_albums(arguments = {})
        require "vk/api/market/methods/get_albums"
        method = Methods::GetAlbums.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/get_albums_response"
        Responses::GetAlbumsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  identifier of an album owner community; "Note that community id in the 'owner_id' parameter should be negative number. For example 'owner_id'=-1 matches the [vk.com/apiclub|VK API] community "
      # @option arguments [Array] :album_ids  collections identifiers to obtain data from
      # @see Vk::API::Market::Methods::GetAlbumById
      # @return [Vk::API::Market::Responses::GetAlbumByIdResponse] Returns items album's data
      def get_album_by_id(arguments = {})
        require "vk/api/market/methods/get_album_by_id"
        method = Methods::GetAlbumById.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/get_album_by_id_response"
        Responses::GetAlbumByIdResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of an item owner community.
      # @option arguments [Integer] :item_id  Item ID.
      # @option arguments [String] :message  Comment text (required if 'attachments' parameter is not specified)
      # @option arguments [Array] :attachments  Comma-separated list of objects attached to a comment. The field is submitted the following way: ; "'<owner_id>_<media_id>,<owner_id>_<media_id>'"; ; '' - media attachment type:; "'photo' - photo; 'video' - video; 'audio' - audio; 'doc' - document"; ; '<owner_id>' - media owner id; '<media_id>' - media attachment id; ; For example:; "photo100172_166443618,photo66748_265827614";
      # @option arguments [Boolean] :from_group  '1' - comment will be published on behalf of a community, '0' - on behalf of a user (by default).
      # @option arguments [Integer] :reply_to_comment  ID of a comment to reply with current comment to.
      # @option arguments [Integer] :sticker_id  Sticker ID.
      # @option arguments [String] :guid  Random value to avoid resending one comment.
      # @see Vk::API::Market::Methods::CreateComment
      # @return [Vk::API::Market::Responses::CreateCommentResponse] Creates a new comment for an item.
      def create_comment(arguments = {})
        require "vk/api/market/methods/create_comment"
        method = Methods::CreateComment.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/create_comment_response"
        Responses::CreateCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of an item owner community
      # @option arguments [Integer] :item_id  Item ID.
      # @option arguments [Boolean] :need_likes  '1' — to return likes info.
      # @option arguments [Integer] :start_comment_id  ID of a comment to start a list from (details below).
      # @option arguments [Integer] :count (20) Number of results to return.
      # @option arguments [String] :sort ("asc") Sort order ('asc' — from old to new, 'desc' — from new to old)
      # @option arguments [Boolean] :extended  '1' — comments will be returned as numbered objects, in addition lists of 'profiles' and 'groups' objects will be returned.
      # @option arguments [Array] :fields  List of additional profile fields to return. See the [vk.com/dev/fields|details]
      # @see Vk::API::Market::Methods::GetComments
      # @return [Vk::API::Market::Responses::GetCommentsResponse] Returns comments list for an item.
      def get_comments(arguments = {})
        require "vk/api/market/methods/get_comments"
        method = Methods::GetComments.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/get_comments_response"
        Responses::GetCommentsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  identifier of an item owner community; "Note that community id in the 'owner_id' parameter should be negative number. For example 'owner_id'=-1 matches the [vk.com/apiclub|VK API] community "
      # @option arguments [Integer] :comment_id  comment id
      # @see Vk::API::Market::Methods::DeleteComment
      # @return [Vk::API::Market::Responses::DeleteCommentResponse] Deletes an item's comment
      def delete_comment(arguments = {})
        require "vk/api/market/methods/delete_comment"
        method = Methods::DeleteComment.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/delete_comment_response"
        Responses::DeleteCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  identifier of an item owner community; "Note that community id in the 'owner_id' parameter should be negative number. For example 'owner_id'=-1 matches the [vk.com/apiclub|VK API] community "
      # @option arguments [Integer] :comment_id  deleted comment id
      # @see Vk::API::Market::Methods::RestoreComment
      # @return [Vk::API::Market::Responses::RestoreCommentResponse] Restores a recently deleted comment
      def restore_comment(arguments = {})
        require "vk/api/market/methods/restore_comment"
        method = Methods::RestoreComment.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/restore_comment_response"
        Responses::RestoreCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of an item owner community.
      # @option arguments [Integer] :comment_id  Comment ID.
      # @option arguments [String] :message  New comment text (required if 'attachments' are not specified); ; 2048 symbols maximum.
      # @option arguments [Array] :attachments  Comma-separated list of objects attached to a comment. The field is submitted the following way: ; "'<owner_id>_<media_id>,<owner_id>_<media_id>'"; ; '' - media attachment type:; "'photo' - photo; 'video' - video; 'audio' - audio; 'doc' - document"; ; '<owner_id>' - media owner id; '<media_id>' - media attachment id; ; For example:; "photo100172_166443618,photo66748_265827614";
      # @see Vk::API::Market::Methods::EditComment
      # @return [Vk::API::Market::Responses::EditCommentResponse] Chages item comment's text
      def edit_comment(arguments = {})
        require "vk/api/market/methods/edit_comment"
        method = Methods::EditComment.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/edit_comment_response"
        Responses::EditCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of an item owner community.
      # @option arguments [Integer] :comment_id  Comment ID.
      # @option arguments [Integer] :reason  Complaint reason. Possible values:; *'0' — spam;; *'1' — child porn;; *'2' — extremism;; *'3' — violence;; *'4' — drugs propaganda;; *'5' — adult materials;; *'6' — insult.
      # @see Vk::API::Market::Methods::ReportComment
      # @return [Vk::API::Market::Responses::ReportCommentResponse] Sends a complaint to the item's comment.
      def report_comment(arguments = {})
        require "vk/api/market/methods/report_comment"
        method = Methods::ReportComment.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/report_comment_response"
        Responses::ReportCommentResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :count (10) Number of results to return.
      # @option arguments [Integer] :offset  Offset needed to return a specific subset of results.
      # @see Vk::API::Market::Methods::GetCategories
      # @return [Vk::API::Market::Responses::GetCategoriesResponse] Returns a list of market categories.
      def get_categories(arguments = {})
        require "vk/api/market/methods/get_categories"
        method = Methods::GetCategories.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/get_categories_response"
        Responses::GetCategoriesResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of an item owner community.
      # @option arguments [Integer] :item_id  Item ID.
      # @option arguments [Integer] :reason  Complaint reason. Possible values:; *'0' — spam;; *'1' — child porn;; *'2' — extremism;; *'3' — violence;; *'4' — drugs propaganda;; *'5' — adult materials;; *'6' — insult.
      # @see Vk::API::Market::Methods::Report
      # @return [Vk::API::Market::Responses::ReportResponse] Sends a complaint to the item.
      def report(arguments = {})
        require "vk/api/market/methods/report"
        method = Methods::Report.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/report_response"
        Responses::ReportResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of an item owner community.
      # @option arguments [String] :name  Item name.
      # @option arguments [String] :description  Item description.
      # @option arguments [Integer] :category_id  Item category ID.
      # @option arguments [Number] :price  Item price.
      # @option arguments [Boolean] :deleted  Item status ('1' — deleted, '0' — not deleted).
      # @option arguments [Integer] :main_photo_id  Cover photo ID.
      # @option arguments [Array] :photo_ids  IDs of additional photos.
      # @see Vk::API::Market::Methods::Add
      # @return [Vk::API::Market::Responses::AddResponse] Ads a new item to the market.
      def add(arguments = {})
        require "vk/api/market/methods/add"
        method = Methods::Add.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/add_response"
        Responses::AddResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of an item owner community.
      # @option arguments [Integer] :item_id  Item ID.
      # @option arguments [String] :name  Item name.
      # @option arguments [String] :description  Item description.
      # @option arguments [Integer] :category_id  Item category ID.
      # @option arguments [Number] :price  Item price.
      # @option arguments [Boolean] :deleted  Item status ('1' — deleted, '0' — not deleted).
      # @option arguments [Integer] :main_photo_id  Cover photo ID.
      # @option arguments [Array] :photo_ids  IDs of additional photos.
      # @see Vk::API::Market::Methods::Edit
      # @return [Vk::API::Market::Responses::EditResponse] Edits an item.
      def edit(arguments = {})
        require "vk/api/market/methods/edit"
        method = Methods::Edit.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/edit_response"
        Responses::EditResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of an item owner community.
      # @option arguments [Integer] :item_id  Item ID.
      # @see Vk::API::Market::Methods::Delete
      # @return [Vk::API::Market::Responses::DeleteResponse] Deletes an item.
      def delete(arguments = {})
        require "vk/api/market/methods/delete"
        method = Methods::Delete.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/delete_response"
        Responses::DeleteResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of an item owner community.
      # @option arguments [Integer] :item_id  Deleted item ID.
      # @see Vk::API::Market::Methods::Restore
      # @return [Vk::API::Market::Responses::RestoreResponse] Restores recently deleted item
      def restore(arguments = {})
        require "vk/api/market/methods/restore"
        method = Methods::Restore.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/restore_response"
        Responses::RestoreResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of an item owner community.
      # @option arguments [Integer] :album_id  ID of a collection to reorder items in. Set 0 to reorder full items list.
      # @option arguments [Integer] :item_id  Item ID.
      # @option arguments [Integer] :before  ID of an item to place current item before it.
      # @option arguments [Integer] :after  ID of an item to place current item after it.
      # @see Vk::API::Market::Methods::ReorderItems
      # @return [Vk::API::Market::Responses::ReorderItemsResponse] Changes item place in a collection.
      def reorder_items(arguments = {})
        require "vk/api/market/methods/reorder_items"
        method = Methods::ReorderItems.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/reorder_items_response"
        Responses::ReorderItemsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of an item owner community.
      # @option arguments [Integer] :album_id  Collection ID.
      # @option arguments [Integer] :before  ID of a collection to place current collection before it.
      # @option arguments [Integer] :after  ID of a collection to place current collection after it.
      # @see Vk::API::Market::Methods::ReorderAlbums
      # @return [Vk::API::Market::Responses::ReorderAlbumsResponse] Reorders the collections list.
      def reorder_albums(arguments = {})
        require "vk/api/market/methods/reorder_albums"
        method = Methods::ReorderAlbums.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/reorder_albums_response"
        Responses::ReorderAlbumsResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of an item owner community.
      # @option arguments [String] :title  Collection title.
      # @option arguments [Integer] :photo_id  Cover photo ID.
      # @option arguments [Boolean] :main_album  Set as main ('1' – set, '0' – no).
      # @see Vk::API::Market::Methods::AddAlbum
      # @return [Vk::API::Market::Responses::AddAlbumResponse] Creates new collection of items
      def add_album(arguments = {})
        require "vk/api/market/methods/add_album"
        method = Methods::AddAlbum.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/add_album_response"
        Responses::AddAlbumResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of an collection owner community.
      # @option arguments [Integer] :album_id  Collection ID.
      # @option arguments [String] :title  Collection title.
      # @option arguments [Integer] :photo_id  Cover photo id
      # @option arguments [Boolean] :main_album  Set as main ('1' – set, '0' – no).
      # @see Vk::API::Market::Methods::EditAlbum
      # @return [Vk::API::Market::Responses::EditAlbumResponse] Edits a collection of items
      def edit_album(arguments = {})
        require "vk/api/market/methods/edit_album"
        method = Methods::EditAlbum.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/edit_album_response"
        Responses::EditAlbumResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of an collection owner community.
      # @option arguments [Integer] :album_id  Collection ID.
      # @see Vk::API::Market::Methods::DeleteAlbum
      # @return [Vk::API::Market::Responses::DeleteAlbumResponse] Deletes a collection of items.
      def delete_album(arguments = {})
        require "vk/api/market/methods/delete_album"
        method = Methods::DeleteAlbum.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/delete_album_response"
        Responses::DeleteAlbumResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of an item owner community.
      # @option arguments [Integer] :item_id  Item ID.
      # @option arguments [Array] :album_ids  Collections IDs to remove item from.
      # @see Vk::API::Market::Methods::RemoveFromAlbum
      # @return [Vk::API::Market::Responses::RemoveFromAlbumResponse] Removes an item from one or multiple collections.
      def remove_from_album(arguments = {})
        require "vk/api/market/methods/remove_from_album"
        method = Methods::RemoveFromAlbum.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/remove_from_album_response"
        Responses::RemoveFromAlbumResponse.new(response.deep_symbolize_keys)
      end
      # @param [Hash] arguments
      # @option arguments [Integer] :owner_id  ID of an item owner community.
      # @option arguments [Integer] :item_id  Item ID.
      # @option arguments [Array] :album_ids  Collections IDs to add  item to.
      # @see Vk::API::Market::Methods::AddToAlbum
      # @return [Vk::API::Market::Responses::AddToAlbumResponse] Adds an item to one or multiple collections.
      def add_to_album(arguments = {})
        require "vk/api/market/methods/add_to_album"
        method = Methods::AddToAlbum.new(arguments)
        response = method.call(@client)
        require "vk/api/market/responses/add_to_album_response"
        Responses::AddToAlbumResponse.new(response.deep_symbolize_keys)
      end
    end
  end
end
