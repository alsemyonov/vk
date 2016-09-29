# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/friends/methods/get_requests'

RSpec.describe Vk::API::Friends::Methods::GetRequests do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :offset }
    it { is_expected.to include :count }
    it { is_expected.to include :extended }
    it { is_expected.to include :need_mutual }
    it { is_expected.to include :out }
    it { is_expected.to include :sort }
    it { is_expected.to include :suggested }
  end
end
