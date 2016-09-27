# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/groups/group_settings'

RSpec.describe Vk::Schema::Model::Groups::GroupSettings do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :title }
    it { is_expected.to include :description }
    it { is_expected.to include :address }
    it { is_expected.to include :place }
    it { is_expected.to include :wall }
    it { is_expected.to include :photos }
    it { is_expected.to include :video }
    it { is_expected.to include :audio }
    it { is_expected.to include :docs }
    it { is_expected.to include :topics }
    it { is_expected.to include :wiki }
    it { is_expected.to include :obscene_filter }
    it { is_expected.to include :obscene_stopwords }
    it { is_expected.to include :obscene_words }
    it { is_expected.to include :access }
    it { is_expected.to include :subject }
    it { is_expected.to include :subject_list }
    it { is_expected.to include :rss }
    it { is_expected.to include :website }
  end
end
