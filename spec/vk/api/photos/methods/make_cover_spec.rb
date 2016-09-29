# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/methods/make_cover'

RSpec.describe Vk::API::Photos::Methods::MakeCover do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :photo_id }
    it { is_expected.to include :album_id }
  end
end
