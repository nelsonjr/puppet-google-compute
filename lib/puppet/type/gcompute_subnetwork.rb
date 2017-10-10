# Copyright 2017 Google Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by puppet-codegen and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------

require 'google/compute/property/boolean'
require 'google/compute/property/integer'
require 'google/compute/property/network_selflink'
require 'google/compute/property/region_name'
require 'google/compute/property/string'
require 'google/compute/property/time'
require 'google/object_store'
require 'puppet'

Puppet::Type.newtype(:gcompute_subnetwork) do
  @doc = <<-DOC
    A VPC network is a virtual version of the traditional physical networks
    that exist within and between physical data centers. A VPC network provides
    connectivity for your Compute Engine virtual machine (VM) instances,
    Container Engine containers, App Engine Flex services, and other
    network-related resources. Each GCP project contains one or more VPC
    networks. Each VPC network is a global entity spanning all GCP regions.
    This global VPC network allows VM instances and other resources to
    communicate with each other via internal, private IP addresses. Each VPC
    network is subdivided into subnets, and each subnet is contained within a
    single region. You can have more than one subnet in a region for a given
    VPC network. Each subnet has a contiguous private RFC1918 IP space. You
    create instances, containers, and the like in these subnets. When you
    create an instance, you must create it in a subnet, and the instance draws
    its internal IP address from that subnet. Virtual machine (VM) instances in
    a VPC network can communicate with instances in all other subnets of the
    same VPC network, regardless of region, using their RFC1918 private IP
    addresses. You can isolate portions of the network, even entire subnets,
    using firewall rules.
  DOC

  autorequire(:gauth_credential) do
    credential = self[:credential]
    raise "#{ref}: required property 'credential' is missing" if credential.nil?
    [credential]
  end

  ensurable

  newparam :credential do
    desc <<-DESC
      A gauth_credential name to be used to authenticate with Google Cloud
      Platform.
    DESC
  end

  newparam(:project) do
    desc 'A Google Cloud Platform project to manage.'
  end

  newparam(:name, namevar: true) do
    # TODO(nelsona): Make this description to match the key of the object.
    desc 'The name of the Subnetwork.'
  end

  newproperty(:creation_timestamp, parent: Google::Compute::Property::Time) do
    desc 'Creation timestamp in RFC3339 text format. (output only)'
  end

  newproperty(:description, parent: Google::Compute::Property::String) do
    desc <<-DOC
      An optional description of this resource. Provide this property when you
      create the resource. This field can be set only at resource creation
      time.
    DOC
  end

  newproperty(:gateway_address, parent: Google::Compute::Property::String) do
    desc <<-DOC
      The gateway address for default routes to reach destination addresses
      outside this subnetwork. This field can be set only at resource creation
      time.
    DOC
  end

  newproperty(:id, parent: Google::Compute::Property::Integer) do
    desc 'The unique identifier for the resource. (output only)'
  end

  newproperty(:ip_cidr_range, parent: Google::Compute::Property::String) do
    desc <<-DOC
      The range of internal addresses that are owned by this subnetwork.
      Provide this property when you create the subnetwork. For example,
      10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and non-overlapping
      within a network. Only IPv4 is supported.
    DOC
  end

  newproperty(:name, parent: Google::Compute::Property::String) do
    desc <<-DOC
      The name of the resource, provided by the client when initially creating
      the resource. The name must be 1-63 characters long, and comply with
      RFC1035. Specifically, the name must be 1-63 characters long and match
      the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
      character must be a lowercase letter, and all following characters must
      be a dash, lowercase letter, or digit, except the last character, which
      cannot be a dash.
    DOC
  end

  newproperty(:network, parent: Google::Compute::Property::NetwoSelfLinkRef) do
    desc 'A reference to Network resource'
  end

  newproperty(:private_ip_google_access,
              parent: Google::Compute::Property::Boolean) do
    desc <<-DOC
      Whether the VMs in this subnet can access Google services without
      assigned external IP addresses.
    DOC
    newvalue(:true)
    newvalue(:false)
  end

  newproperty(:region, parent: Google::Compute::Property::RegionNameRef) do
    desc 'A reference to Region resource'
  end

  # Returns all properties that a provider can export to other resources
  def exports
    provider.exports
  end
end
