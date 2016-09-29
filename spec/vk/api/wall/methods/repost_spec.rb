# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/wall/methods/repost'

RSpec.describe Vk::API::Wall::Methods::Repost do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :object }
    it { is_expected.to include :message }
    it { is_expected.to include :group_id }
    it { is_expected.to include :mark_as_ads }
  end
end
