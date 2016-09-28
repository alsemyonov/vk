# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/photo_album'

RSpec.describe Vk::API::Photos::PhotoAlbum do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :thumb }
    it { is_expected.to include :owner_id }
    it { is_expected.to include :title }
    it { is_expected.to include :description }
    it { is_expected.to include :created }
    it { is_expected.to include :updated }
    it { is_expected.to include :size }
  end
end
