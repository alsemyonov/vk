# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/newsfeed/list'

RSpec.describe Vk::API::Newsfeed::List do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :title }
    it { is_expected.to include :no_reposts }
    it { is_expected.to include :source_ids }
  end
end
