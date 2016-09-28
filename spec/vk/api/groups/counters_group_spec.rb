# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/groups/counters_group'

RSpec.describe Vk::API::Groups::CountersGroup do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :photos }
    it { is_expected.to include :albums }
    it { is_expected.to include :topics }
    it { is_expected.to include :videos }
    it { is_expected.to include :audios }
    it { is_expected.to include :docs }
    it { is_expected.to include :market }
  end
end
