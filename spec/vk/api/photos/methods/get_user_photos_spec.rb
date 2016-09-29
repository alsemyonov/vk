# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/methods/get_user_photos'

RSpec.describe Vk::API::Photos::Methods::GetUserPhotos do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_id }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
    it { is_expected.to include :extended }
    it { is_expected.to include :sort }
  end
end
