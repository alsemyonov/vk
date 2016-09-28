# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/groups/user_xtr_ban_info'

RSpec.describe Vk::API::Groups::UserXtrBanInfo do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :first_name }
    it { is_expected.to include :last_name }
    it { is_expected.to include :deactivated }
    it { is_expected.to include :hidden }
    it { is_expected.to include :sex }
    it { is_expected.to include :screen_name }
    it { is_expected.to include :photo_50 }
    it { is_expected.to include :photo_100 }
    it { is_expected.to include :online }
    it { is_expected.to include :nickname }
    it { is_expected.to include :maiden_name }
    it { is_expected.to include :domain }
    it { is_expected.to include :bdate }
    it { is_expected.to include :city }
    it { is_expected.to include :country }
    it { is_expected.to include :timezone }
    it { is_expected.to include :photo_200 }
    it { is_expected.to include :photo_max }
    it { is_expected.to include :photo_200_orig }
    it { is_expected.to include :photo_400_orig }
    it { is_expected.to include :photo_max_orig }
    it { is_expected.to include :photo_id }
    it { is_expected.to include :has_photo }
    it { is_expected.to include :has_mobile }
    it { is_expected.to include :is_friend }
    it { is_expected.to include :friend_status }
    it { is_expected.to include :wall_comments }
    it { is_expected.to include :can_post }
    it { is_expected.to include :can_see_all_posts }
    it { is_expected.to include :can_see_audio }
    it { is_expected.to include :can_write_private_message }
    it { is_expected.to include :can_send_friend_request }
    it { is_expected.to include :mobile_phone }
    it { is_expected.to include :home_phone }
    it { is_expected.to include :skype }
    it { is_expected.to include :facebook }
    it { is_expected.to include :facebook_name }
    it { is_expected.to include :twitter }
    it { is_expected.to include :livejournal }
    it { is_expected.to include :instagram }
    it { is_expected.to include :site }
    it { is_expected.to include :status_audio }
    it { is_expected.to include :status }
    it { is_expected.to include :activity }
    it { is_expected.to include :last_seen }
    it { is_expected.to include :exports }
    it { is_expected.to include :crop_photo }
    it { is_expected.to include :verified }
    it { is_expected.to include :followers_count }
    it { is_expected.to include :blacklisted }
    it { is_expected.to include :blacklisted_by_me }
    it { is_expected.to include :is_favorite }
    it { is_expected.to include :is_hidden_from_feed }
    it { is_expected.to include :common_count }
    it { is_expected.to include :occupation }
    it { is_expected.to include :career }
    it { is_expected.to include :military }
    it { is_expected.to include :university }
    it { is_expected.to include :university_name }
    it { is_expected.to include :faculty }
    it { is_expected.to include :faculty_name }
    it { is_expected.to include :graduation }
    it { is_expected.to include :education_form }
    it { is_expected.to include :education_status }
    it { is_expected.to include :home_town }
    it { is_expected.to include :relation }
    it { is_expected.to include :relation_partner }
    it { is_expected.to include :personal }
    it { is_expected.to include :interests }
    it { is_expected.to include :music }
    it { is_expected.to include :activities }
    it { is_expected.to include :movies }
    it { is_expected.to include :tv }
    it { is_expected.to include :books }
    it { is_expected.to include :games }
    it { is_expected.to include :universities }
    it { is_expected.to include :schools }
    it { is_expected.to include :about }
    it { is_expected.to include :relatives }
    it { is_expected.to include :quotes }
    it { is_expected.to include :ban_info }
  end
end
