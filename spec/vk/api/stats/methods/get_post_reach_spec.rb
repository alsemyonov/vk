# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/stats/methods/get_post_reach'

RSpec.describe Vk::API::Stats::Methods::GetPostReach do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :post_id }
  end
end
