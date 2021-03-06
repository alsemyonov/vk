# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/fave/methods/get_posts'

RSpec.describe Vk::API::Fave::Methods::GetPosts do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :offset }
    it { is_expected.to include :count }
    it { is_expected.to include :extended }
  end
end
