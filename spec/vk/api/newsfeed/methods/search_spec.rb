# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/newsfeed/methods/search'

RSpec.describe Vk::API::Newsfeed::Methods::Search do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :q }
    it { is_expected.to include :extended }
    it { is_expected.to include :count }
    it { is_expected.to include :latitude }
    it { is_expected.to include :longitude }
    it { is_expected.to include :start_time }
    it { is_expected.to include :end_time }
    it { is_expected.to include :start_from }
    it { is_expected.to include :fields }
  end
end
