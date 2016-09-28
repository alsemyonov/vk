# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/market_album_upload_response'

RSpec.describe Vk::API::Photos::MarketAlbumUploadResponse do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :gid }
    it { is_expected.to include :server }
    it { is_expected.to include :photo }
    it { is_expected.to include :hash }
  end
end
