# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/users/occupation'

RSpec.describe Vk::API::Users::Occupation do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :type }
    it { is_expected.to include :id }
    it { is_expected.to include :name }
  end
end
