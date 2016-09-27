# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/base/error'

RSpec.describe Vk::Schema::Model::Base::Error do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :error_code }
    it { is_expected.to include :error_msg }
    it { is_expected.to include :request_params }
  end
end
