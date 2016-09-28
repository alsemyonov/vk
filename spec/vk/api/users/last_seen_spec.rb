# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/users/last_seen'

RSpec.describe Vk::API::Users::LastSeen do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :time }
    it { is_expected.to include :platform }
  end
end
