# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/methods/get_market_album_upload_server'

RSpec.describe Vk::API::Photos::Methods::GetMarketAlbumUploadServer do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :group_id }
  end
end
