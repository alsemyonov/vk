# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/methods/reorder_photos'

RSpec.describe Vk::API::Photos::Methods::ReorderPhotos do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :photo_id }
    it { is_expected.to include :before }
    it { is_expected.to include :after }
  end
end
