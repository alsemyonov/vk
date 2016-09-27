# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/docs/doc_types'

RSpec.describe Vk::Schema::Model::Docs::DocTypes do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :title }
    it { is_expected.to include :count }
  end
end
