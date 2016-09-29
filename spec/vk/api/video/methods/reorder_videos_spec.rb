# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/video/methods/reorder_videos'

RSpec.describe Vk::API::Video::Methods::ReorderVideos do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :target_id }
    it { is_expected.to include :album_id }
    it { is_expected.to include :owner_id }
    it { is_expected.to include :video_id }
    it { is_expected.to include :before_owner_id }
    it { is_expected.to include :before_video_id }
    it { is_expected.to include :after_owner_id }
    it { is_expected.to include :after_video_id }
  end
end
