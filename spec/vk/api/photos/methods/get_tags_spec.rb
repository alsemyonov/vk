# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/methods/get_tags'

RSpec.describe Vk::API::Photos::Methods::GetTags do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :photo_id }
    it { is_expected.to include :access_key }
  end
end
