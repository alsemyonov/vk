# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/base/likes'

RSpec.describe Vk::API::Base::Likes do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_likes }
    it { is_expected.to include :count }
  end
end
