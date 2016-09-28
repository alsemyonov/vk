# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/newsfeed/item_note'

RSpec.describe Vk::API::Newsfeed::ItemNote do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :notes }
  end
end
