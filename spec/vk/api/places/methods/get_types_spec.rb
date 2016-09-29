# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/places/methods/get_types'

RSpec.describe Vk::API::Places::Methods::GetTypes do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

  end
end
