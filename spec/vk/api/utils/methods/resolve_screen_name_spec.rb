# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/utils/methods/resolve_screen_name'

RSpec.describe Vk::API::Utils::Methods::ResolveScreenName do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :screen_name }
  end
end
