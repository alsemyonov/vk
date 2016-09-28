# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/video/save_result'

RSpec.describe Vk::API::Video::SaveResult do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :upload_url }
    it { is_expected.to include :video_id }
    it { is_expected.to include :owner_id }
    it { is_expected.to include :title }
    it { is_expected.to include :description }
  end
end
