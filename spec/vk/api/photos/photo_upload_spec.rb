# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/photo_upload'

RSpec.describe Vk::API::Photos::PhotoUpload do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :upload_url }
    it { is_expected.to include :album_id }
    it { is_expected.to include :user_id }
  end
end
