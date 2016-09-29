# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/groups/methods/set_callback_settings'

RSpec.describe Vk::API::Groups::Methods::SetCallbackSettings do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :group_id }
    it { is_expected.to include :message_new }
    it { is_expected.to include :photo_new }
    it { is_expected.to include :audio_new }
    it { is_expected.to include :video_new }
    it { is_expected.to include :wall_reply_new }
    it { is_expected.to include :wall_reply_edit }
    it { is_expected.to include :wall_post_new }
    it { is_expected.to include :board_post_new }
    it { is_expected.to include :board_post_edit }
    it { is_expected.to include :board_post_restore }
    it { is_expected.to include :board_post_delete }
    it { is_expected.to include :photo_comment_new }
    it { is_expected.to include :video_comment_new }
    it { is_expected.to include :market_comment_new }
    it { is_expected.to include :group_join }
    it { is_expected.to include :group_leave }
  end
end
