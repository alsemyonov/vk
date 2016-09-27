# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/utils/link_checked'

RSpec.describe Vk::Schema::Model::Utils::LinkChecked do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :status }
    it { is_expected.to include :link }
  end
end
