# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/pages/methods/clear_cache'

RSpec.describe Vk::API::Pages::Methods::ClearCache do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :url }
  end
end
