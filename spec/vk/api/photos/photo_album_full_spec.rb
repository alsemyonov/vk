# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/photo_album_full'

RSpec.describe Vk::API::Photos::PhotoAlbumFull do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :thumb_id }
    it { is_expected.to include :thumb_src }
    it { is_expected.to include :owner_id }
    it { is_expected.to include :title }
    it { is_expected.to include :description }
    it { is_expected.to include :created }
    it { is_expected.to include :updated }
    it { is_expected.to include :size }
    it { is_expected.to include :privacy_view }
    it { is_expected.to include :privacy_comment }
    it { is_expected.to include :upload_by_admins_only }
    it { is_expected.to include :comments_disabled }
    it { is_expected.to include :can_upload }
    it { is_expected.to include :thumb_is_last }
    it { is_expected.to include :sizes }
  end
end
