# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/video/video_album_full'

RSpec.describe Vk::Schema::Model::Video::VideoAlbumFull do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :owner_id }
    it { is_expected.to include :title }
    it { is_expected.to include :count }
    it { is_expected.to include :photo_160 }
    it { is_expected.to include :photo_320 }
    it { is_expected.to include :updated_time }
    it { is_expected.to include :is_system }
  end
end
