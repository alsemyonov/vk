# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/stats/methods/get'

RSpec.describe Vk::API::Stats::Methods::Get do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :group_id }
    it { is_expected.to include :app_id }
    it { is_expected.to include :date_from }
    it { is_expected.to include :date_to }
  end
end
