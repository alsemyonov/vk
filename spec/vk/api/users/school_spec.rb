# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/users/school'

RSpec.describe Vk::API::Users::School do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :country }
    it { is_expected.to include :city }
    it { is_expected.to include :name }
    it { is_expected.to include :year_from }
    it { is_expected.to include :year_to }
    it { is_expected.to include :year_graduated }
    it { is_expected.to include :class }
    it { is_expected.to include :type }
    it { is_expected.to include :type_str }
  end
end
