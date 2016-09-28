# frozen_string_literal: true
require 'vk/client'
require 'vk/api/methods'

module Vk
  class Client
    # @!group DSL

    # @return [Vk::API::Users]
    def users
      # require "vk/api/users"
      @users ||= Vk::API::Users.new('users', self)
    end
    # @return [Vk::API::Auth]
    def auth
      # require "vk/api/auth"
      @auth ||= Vk::API::Auth.new('auth', self)
    end
    # @return [Vk::API::Wall]
    def wall
      # require "vk/api/wall"
      @wall ||= Vk::API::Wall.new('wall', self)
    end
    # @return [Vk::API::Photos]
    def photos
      # require "vk/api/photos"
      @photos ||= Vk::API::Photos.new('photos', self)
    end
    # @return [Vk::API::Friends]
    def friends
      # require "vk/api/friends"
      @friends ||= Vk::API::Friends.new('friends', self)
    end
    # @return [Vk::API::Widgets]
    def widgets
      # require "vk/api/widgets"
      @widgets ||= Vk::API::Widgets.new('widgets', self)
    end
    # @return [Vk::API::Secure]
    def secure
      # require "vk/api/secure"
      @secure ||= Vk::API::Secure.new('secure', self)
    end
    # @return [Vk::API::Storage]
    def storage
      # require "vk/api/storage"
      @storage ||= Vk::API::Storage.new('storage', self)
    end
    # @return [Vk::API::Orders]
    def orders
      # require "vk/api/orders"
      @orders ||= Vk::API::Orders.new('orders', self)
    end
    # @return [Vk::API::Status]
    def status
      # require "vk/api/status"
      @status ||= Vk::API::Status.new('status', self)
    end
    # @return [Vk::API::Audio]
    def audio
      # require "vk/api/audio"
      @audio ||= Vk::API::Audio.new('audio', self)
    end
    # @return [Vk::API::Leads]
    def leads
      # require "vk/api/leads"
      @leads ||= Vk::API::Leads.new('leads', self)
    end
    # @return [Vk::API::Pages]
    def pages
      # require "vk/api/pages"
      @pages ||= Vk::API::Pages.new('pages', self)
    end
    # @return [Vk::API::Groups]
    def groups
      # require "vk/api/groups"
      @groups ||= Vk::API::Groups.new('groups', self)
    end
    # @return [Vk::API::Board]
    def board
      # require "vk/api/board"
      @board ||= Vk::API::Board.new('board', self)
    end
    # @return [Vk::API::Video]
    def video
      # require "vk/api/video"
      @video ||= Vk::API::Video.new('video', self)
    end
    # @return [Vk::API::Notes]
    def notes
      # require "vk/api/notes"
      @notes ||= Vk::API::Notes.new('notes', self)
    end
    # @return [Vk::API::Places]
    def places
      # require "vk/api/places"
      @places ||= Vk::API::Places.new('places', self)
    end
    # @return [Vk::API::Account]
    def account
      # require "vk/api/account"
      @account ||= Vk::API::Account.new('account', self)
    end
    # @return [Vk::API::Messages]
    def messages
      # require "vk/api/messages"
      @messages ||= Vk::API::Messages.new('messages', self)
    end
    # @return [Vk::API::Newsfeed]
    def newsfeed
      # require "vk/api/newsfeed"
      @newsfeed ||= Vk::API::Newsfeed.new('newsfeed', self)
    end
    # @return [Vk::API::Likes]
    def likes
      # require "vk/api/likes"
      @likes ||= Vk::API::Likes.new('likes', self)
    end
    # @return [Vk::API::Polls]
    def polls
      # require "vk/api/polls"
      @polls ||= Vk::API::Polls.new('polls', self)
    end
    # @return [Vk::API::Docs]
    def docs
      # require "vk/api/docs"
      @docs ||= Vk::API::Docs.new('docs', self)
    end
    # @return [Vk::API::Fave]
    def fave
      # require "vk/api/fave"
      @fave ||= Vk::API::Fave.new('fave', self)
    end
    # @return [Vk::API::Notifications]
    def notifications
      # require "vk/api/notifications"
      @notifications ||= Vk::API::Notifications.new('notifications', self)
    end
    # @return [Vk::API::Stats]
    def stats
      # require "vk/api/stats"
      @stats ||= Vk::API::Stats.new('stats', self)
    end
    # @return [Vk::API::Search]
    def search
      # require "vk/api/search"
      @search ||= Vk::API::Search.new('search', self)
    end
    # @return [Vk::API::Apps]
    def apps
      # require "vk/api/apps"
      @apps ||= Vk::API::Apps.new('apps', self)
    end
    # @return [Vk::API::Utils]
    def utils
      # require "vk/api/utils"
      @utils ||= Vk::API::Utils.new('utils', self)
    end
    # @return [Vk::API::Database]
    def database
      # require "vk/api/database"
      @database ||= Vk::API::Database.new('database', self)
    end
    # @return [Vk::API::Gifts]
    def gifts
      # require "vk/api/gifts"
      @gifts ||= Vk::API::Gifts.new('gifts', self)
    end
    # @return [Vk::API::Ads]
    def ads
      # require "vk/api/ads"
      @ads ||= Vk::API::Ads.new('ads', self)
    end
    # @return [Vk::API::Market]
    def market
      # require "vk/api/market"
      @market ||= Vk::API::Market.new('market', self)
    end
    # @return [Vk::API::Base]
    def base
      # require "vk/api/base"
      @base ||= Vk::API::Base.new('base', self)
    end
    # @return [Vk::API::Oauth]
    def oauth
      # require "vk/api/oauth"
      @oauth ||= Vk::API::Oauth.new('oauth', self)
    end
  end
end
