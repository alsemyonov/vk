# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/photos/photo_full_xtr_real_offset'

RSpec.describe Vk::Schema::Model::Photos::PhotoFullXtrRealOffset do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :album_id }
    it { is_expected.to include :owner_id }
    it { is_expected.to include :user_id }
    it { is_expected.to include :sizes }
    it { is_expected.to include :photo_75 }
    it { is_expected.to include :photo_130 }
    it { is_expected.to include :photo_604 }
    it { is_expected.to include :photo_807 }
    it { is_expected.to include :photo_1280 }
    it { is_expected.to include :post_id }
    it { is_expected.to include :width }
    it { is_expected.to include :height }
    it { is_expected.to include :text }
    it { is_expected.to include :date }
    it { is_expected.to include :lat }
    it { is_expected.to include :long }
    it { is_expected.to include :access_key }
    it { is_expected.to include :likes }
    it { is_expected.to include :reposts }
    it { is_expected.to include :comments }
    it { is_expected.to include :can_comment }
    it { is_expected.to include :tags }
    it { is_expected.to include :hidden }
    it { is_expected.to include :real_offset }
  end
end
