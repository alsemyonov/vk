# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/database/methods/get_cities_by_id'

RSpec.describe Vk::API::Database::Methods::GetCitiesById do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :city_ids }
  end
end
