# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/wall/link_rating'

RSpec.describe Vk::Schema::Model::Wall::LinkRating do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :stars }
    it { is_expected.to include :reviews_count }
  end
end
