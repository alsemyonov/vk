# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/base/error'

RSpec.describe Vk::API::Base::Error do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :error_code }
    it { is_expected.to include :error_msg }
    it { is_expected.to include :request_params }
  end
end
