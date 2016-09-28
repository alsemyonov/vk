# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/newsfeed/item_photo_tag'

RSpec.describe Vk::API::Newsfeed::ItemPhotoTag do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :photo_tags }
    it { is_expected.to include :post_id }
  end
end
