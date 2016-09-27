# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/pages/wikipage_full'

RSpec.describe Vk::Schema::Model::Pages::WikipageFull do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :group_id }
    it { is_expected.to include :title }
    it { is_expected.to include :current_user_can_edit }
    it { is_expected.to include :current_user_can_edit_access }
    it { is_expected.to include :who_can_view }
    it { is_expected.to include :who_can_edit }
    it { is_expected.to include :edited }
    it { is_expected.to include :created }
    it { is_expected.to include :views }
    it { is_expected.to include :editor_id }
    it { is_expected.to include :creator_id }
    it { is_expected.to include :source }
    it { is_expected.to include :html }
    it { is_expected.to include :view_url }
  end
end
