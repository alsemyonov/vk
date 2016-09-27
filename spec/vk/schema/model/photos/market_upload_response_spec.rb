# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/photos/market_upload_response'

RSpec.describe Vk::Schema::Model::Photos::MarketUploadResponse do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :group_id }
    it { is_expected.to include :server }
    it { is_expected.to include :photo }
    it { is_expected.to include :hash }
    it { is_expected.to include :crop_data }
    it { is_expected.to include :crop_hash }
  end
end
