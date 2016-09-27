# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/base/geo'

RSpec.describe Vk::Schema::Model::Base::Geo do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :type }
    it { is_expected.to include :coordinates }
    it { is_expected.to include :place }
    it { is_expected.to include :showmap }
  end
end
