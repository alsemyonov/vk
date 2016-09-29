# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/users/methods/get_nearby'

RSpec.describe Vk::API::Users::Methods::GetNearby do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :latitude }
    it { is_expected.to include :longitude }
    it { is_expected.to include :accuracy }
    it { is_expected.to include :timeout }
    it { is_expected.to include :radius }
    it { is_expected.to include :fields }
    it { is_expected.to include :name_case }
  end
end
