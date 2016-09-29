# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/friends/methods/edit'

RSpec.describe Vk::API::Friends::Methods::Edit do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_id }
    it { is_expected.to include :list_ids }
  end
end
