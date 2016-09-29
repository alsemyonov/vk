# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/utils/methods/get_server_time'

RSpec.describe Vk::API::Utils::Methods::GetServerTime do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

  end
end
