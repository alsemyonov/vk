# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/pages/wikipage_version'

RSpec.describe Vk::Schema::Model::Pages::WikipageVersion do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :length }
    it { is_expected.to include :edited }
    it { is_expected.to include :editor_id }
    it { is_expected.to include :editor_name }
  end
end
