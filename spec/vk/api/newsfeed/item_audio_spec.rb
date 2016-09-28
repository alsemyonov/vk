# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/newsfeed/item_audio'

RSpec.describe Vk::API::Newsfeed::ItemAudio do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :audio }
  end
end
