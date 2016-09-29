# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/friends/methods/get_mutual'

RSpec.describe Vk::API::Friends::Methods::GetMutual do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :source_uid }
    it { is_expected.to include :target_uid }
    it { is_expected.to include :target_uids }
    it { is_expected.to include :order }
    it { is_expected.to include :count }
    it { is_expected.to include :offset }
  end
end
