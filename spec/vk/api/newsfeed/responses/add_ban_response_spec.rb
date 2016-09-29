# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/newsfeed/responses/add_ban_response'

RSpec.describe Vk::API::Newsfeed::Responses::AddBanResponse do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Response }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :response }
  end
end