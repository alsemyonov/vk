# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/methods/get_all'

RSpec.describe Vk::API::Photos::Methods::GetAll do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :extended }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
    it { is_expected.to include :photo_sizes }
    it { is_expected.to include :no_service_albums }
    it { is_expected.to include :need_hidden }
    it { is_expected.to include :skip_hidden }
  end
end
