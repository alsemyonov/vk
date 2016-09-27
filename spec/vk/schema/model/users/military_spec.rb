# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/users/military'

RSpec.describe Vk::Schema::Model::Users::Military do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :unit }
    it { is_expected.to include :unit_id }
    it { is_expected.to include :country_id }
    it { is_expected.to include :from }
    it { is_expected.to include :until }
  end
end
