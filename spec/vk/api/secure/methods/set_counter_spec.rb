# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/secure/methods/set_counter'

RSpec.describe Vk::API::Secure::Methods::SetCounter do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :counters }
    it { is_expected.to include :user_id }
    it { is_expected.to include :counter }
  end
end
