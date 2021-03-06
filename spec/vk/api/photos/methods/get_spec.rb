# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/methods/get'

RSpec.describe Vk::API::Photos::Methods::Get do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :album_id }
    it { is_expected.to include :photo_ids }
    it { is_expected.to include :rev }
    it { is_expected.to include :extended }
    it { is_expected.to include :feed_type }
    it { is_expected.to include :feed }
    it { is_expected.to include :photo_sizes }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
  end
end
