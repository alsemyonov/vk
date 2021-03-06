# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/friends/responses/get_available_for_call_response'

RSpec.describe Vk::API::Friends::Responses::GetAvailableForCallResponse do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Response }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :response }
  end
end
