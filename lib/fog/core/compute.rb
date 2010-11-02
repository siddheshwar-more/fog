module Fog
  class Storage

    def self.new(attributes)
      case attributes.delete(:provider).to_sym
      when :AWS
        require 'fog/aws'
        Fog::AWS::Compute.new(attributes)
      when :Bluebox
        require 'fog/bluebox'
        Fog::Bluebox::Compute.new(attributes)
      when :GoGrid
        require 'fog/go_grid'
        Fog::GoGrid::Compute.new(attributes)
      when :Linode
        require 'fog/linode'
        Fog::Linode::Compute.new(attributes)
      when :NewServers
        require 'fog/new_servers'
        Fog::NewServers::Compute.new(attributes)
      when :Rackspace
        require 'fog/rackspace'
        Fog::Rackspace::Compute.new(attributes)
      when :Slicehost
        require 'fog/slicehost'
        Fog::Slicehost::Compute.new(attributes)
      else
        raise ArgumentError.new("#{provider} is not a recognized storage provider")
      end
    end

  end
end