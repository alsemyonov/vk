# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/apps/methods/delete_app_requests'

RSpec.describe Vk::API::Apps::Methods::DeleteAppRequests do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

  end
end
