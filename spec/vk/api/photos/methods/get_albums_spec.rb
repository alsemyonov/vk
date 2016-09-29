# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/methods/get_albums'

RSpec.describe Vk::API::Photos::Methods::GetAlbums do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :album_ids }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
    it { is_expected.to include :need_system }
    it { is_expected.to include :need_covers }
    it { is_expected.to include :photo_sizes }
  end
end
