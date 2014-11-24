require 'spec_helper'

describe Vk::Client do
  describe 'class' do
    subject { Vk::Client }

    it { should respond_to(:auth_key) }
    it { should respond_to(:authenticated?) }
    it { Vk::Client.auth_key(VK_VIEWER_ID).should == VK_AUTH_KEY }
    it { Vk::Client.authenticated?(VK_VIEWER_ID, VK_AUTH_KEY).should be true }
  end

  describe 'instance' do
    let(:request) { Vk::Client.new }
    subject { request }

    it { should respond_to(:request) }
  end
end
