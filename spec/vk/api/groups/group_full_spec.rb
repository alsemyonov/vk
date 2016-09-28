# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/groups/group_full'

RSpec.describe Vk::API::Groups::GroupFull do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :market }
    it { is_expected.to include :member_status }
    it { is_expected.to include :is_favorite }
    it { is_expected.to include :is_subscribed }
    it { is_expected.to include :city }
    it { is_expected.to include :country }
    it { is_expected.to include :verified }
    it { is_expected.to include :description }
    it { is_expected.to include :wiki_page }
    it { is_expected.to include :members_count }
    it { is_expected.to include :counters }
    it { is_expected.to include :can_post }
    it { is_expected.to include :can_see_all_posts }
    it { is_expected.to include :activity }
    it { is_expected.to include :fixed_post }
    it { is_expected.to include :can_create_topic }
    it { is_expected.to include :can_upload_video }
    it { is_expected.to include :status }
    it { is_expected.to include :main_album_id }
    it { is_expected.to include :links }
    it { is_expected.to include :contacts }
    it { is_expected.to include :site }
    it { is_expected.to include :main_section }
    it { is_expected.to include :can_message }
    it { is_expected.to include :start_date }
    it { is_expected.to include :finish_date }
    it { is_expected.to include :deactivated }
    it { is_expected.to include :age_limits }
  end
end
