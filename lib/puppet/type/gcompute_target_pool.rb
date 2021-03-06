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

require 'google/compute/property/double'
require 'google/compute/property/enum'
require 'google/compute/property/httphealthcheck_selflink'
require 'google/compute/property/instance_selflink'
require 'google/compute/property/integer'
require 'google/compute/property/region_name'
require 'google/compute/property/string'
require 'google/compute/property/targetpool_selflink'
require 'google/compute/property/time'
require 'google/object_store'
require 'puppet'

Puppet::Type.newtype(:gcompute_target_pool) do
  @doc = 'Represents a TargetPool resource, used for Load Balancing.'

  autorequire(:gauth_credential) do
    credential = self[:credential]
    raise "#{ref}: required property 'credential' is missing" if credential.nil?
    [credential]
  end

  autorequire(:gcompute_region) do
    reference = self[:region]
    raise "#{ref} required property 'region' is missing" if reference.nil?
    reference.autorequires
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
    desc 'The name of the TargetPool.'
  end

  newparam(:region, parent: Google::Compute::Property::RegionNameRef) do
    desc 'A reference to Region resource'
  end

  newproperty(:backup_pool,
              parent: Google::Compute::Property::TargPoolSelfLinkRef) do
    desc 'A reference to TargetPool resource'
  end

  newproperty(:creation_timestamp, parent: Google::Compute::Property::Time) do
    desc 'Creation timestamp in RFC3339 text format. (output only)'
  end

  newproperty(:description, parent: Google::Compute::Property::String) do
    desc 'An optional description of this resource.'
  end

  newproperty(:failover_ratio, parent: Google::Compute::Property::Double) do
    desc <<-DOC
      This field is applicable only when the containing target pool is serving
      a forwarding rule as the primary pool (i.e., not as a backup pool to some
      other target pool). The value of the field must be in [0, 1]. If set,
      backupPool must also be set. They together define the fallback behavior
      of the primary target pool: if the ratio of the healthy instances in the
      primary pool is at or below this number, traffic arriving at the
      load-balanced IP will be directed to the backup pool. In case where
      failoverRatio is not set or all the instances in the backup pool are
      unhealthy, the traffic will be directed back to the primary pool in the
      "force" mode, where traffic will be spread to the healthy instances with
      the best effort, or to all instances when no instance is healthy.
    DOC
  end

  newproperty(:health_check,
              parent: Google::Compute::Property::HttHeaCheSelLinRef) do
    desc 'A reference to HttpHealthCheck resource'
  end

  newproperty(:id, parent: Google::Compute::Property::Integer) do
    desc 'The unique identifier for the resource. (output only)'
  end

  newproperty(:instances,
              parent: Google::Compute::Property::InstaSelfLinkRefArray) do
    desc <<-DOC
      A list of virtual machine instances serving this pool. They must live in
      zones contained in the same region as this pool.
    DOC
  end

  newproperty(:name, parent: Google::Compute::Property::String) do
    desc <<-DOC
      Name of the resource. Provided by the client when the resource is
      created. The name must be 1-63 characters long, and comply with RFC1035.
      Specifically, the name must be 1-63 characters long and match the regular
      expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character
      must be a lowercase letter, and all following characters must be a dash,
      lowercase letter, or digit, except the last character, which cannot be a
      dash.
    DOC
  end

  newproperty(:session_affinity, parent: Google::Compute::Property::Enum) do
    desc <<-DOC
      Session affinity option. Must be one of these values: - NONE: Connections
      from the same client IP may go to any instance in  the pool. - CLIENT_IP:
      Connections from the same client IP will go to the same  instance in the
      pool while that instance remains healthy. - CLIENT_IP_PROTO: Connections
      from the same client IP with the same  IP protocol will go to the same
      instance in the pool while that  instance remains healthy.
    DOC
    newvalue(:NONE)
    newvalue(:CLIENT_IP)
    newvalue(:CLIENT_IP_PROTO)
  end

  # Returns all properties that a provider can export to other resources
  def exports
    provider.exports
  end
end
