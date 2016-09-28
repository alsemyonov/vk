# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/newsfeed/item_topic'

RSpec.describe Vk::API::Newsfeed::ItemTopic do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :post_id }
    it { is_expected.to include :text }
    it { is_expected.to include :comments }
    it { is_expected.to include :likes }
  end
end
