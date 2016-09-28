# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/wall/link_button'

RSpec.describe Vk::API::Wall::LinkButton do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :url }
    it { is_expected.to include :title }
  end
end
