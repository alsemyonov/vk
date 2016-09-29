# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/stats/responses/get_post_reach_response'

RSpec.describe Vk::API::Stats::Responses::GetPostReachResponse do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Response }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :response }
  end
end
