# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/messages/methods/search'

RSpec.describe Vk::API::Messages::Methods::Search do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :q }
    it { is_expected.to include :peer_id }
    it { is_expected.to include :date }
    it { is_expected.to include :count }
  end
end
