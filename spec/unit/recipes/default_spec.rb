#
# Cookbook:: python
# Spec:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'python::default' do
  context 'after installing Python 3 ' do
    let(:chef_run) do
      runner = ChefSpec::SoloRunner.new(platform: 'centos', version: '7.4.1708')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    
    it 'installs the right version' do
      expect(chef_run).to install_package('python').with(version: starting_with("3.")) 
    end
  end
end
