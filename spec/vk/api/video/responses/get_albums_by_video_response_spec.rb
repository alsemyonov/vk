# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/video/responses/get_albums_by_video_response'

RSpec.describe Vk::API::Video::Responses::GetAlbumsByVideoResponse do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Response }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :response }
  end
end
