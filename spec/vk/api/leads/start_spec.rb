# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/leads/start'

RSpec.describe Vk::API::Leads::Start do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :test_mode }
    it { is_expected.to include :vk_sid }
  end
end
