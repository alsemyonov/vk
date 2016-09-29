# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/leads/methods/complete'

RSpec.describe Vk::API::Leads::Methods::Complete do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :vk_sid }
    it { is_expected.to include :secret }
    it { is_expected.to include :comment }
  end
end
