# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/methods/get_by_id'

RSpec.describe Vk::API::Photos::Methods::GetById do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :photos }
    it { is_expected.to include :extended }
    it { is_expected.to include :photo_sizes }
  end
end
