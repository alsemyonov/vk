# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/methods/save'

RSpec.describe Vk::API::Photos::Methods::Save do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :album_id }
    it { is_expected.to include :group_id }
    it { is_expected.to include :server }
    it { is_expected.to include :photos_list }
    it { is_expected.to include :hash }
    it { is_expected.to include :latitude }
    it { is_expected.to include :longitude }
    it { is_expected.to include :caption }
  end
end
