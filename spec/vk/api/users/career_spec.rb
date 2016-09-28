# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/users/career'

RSpec.describe Vk::API::Users::Career do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :group_id }
    it { is_expected.to include :country_id }
    it { is_expected.to include :city_id }
    it { is_expected.to include :from }
    it { is_expected.to include :until }
    it { is_expected.to include :position }
  end
end
