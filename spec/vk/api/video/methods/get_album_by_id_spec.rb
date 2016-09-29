# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/video/methods/get_album_by_id'

RSpec.describe Vk::API::Video::Methods::GetAlbumById do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :album_id }
  end
end
