# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/video/methods/put_tag'

RSpec.describe Vk::API::Video::Methods::PutTag do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_id }
    it { is_expected.to include :owner_id }
    it { is_expected.to include :video_id }
    it { is_expected.to include :tagged_name }
  end
end
