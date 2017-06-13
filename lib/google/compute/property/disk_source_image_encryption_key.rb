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
# ----------------------------------------------------------------------------

require 'google/compute/property/array'
require 'puppet/property'

module Google
  module Compute
    module Data
      # A class to manage data for source_image_encryption_key for disk.
      class DiskSourImagEncrKey
        include Comparable

        attr_reader :raw_key
        attr_reader :sha256

        def initialize(args)
          @raw_key = Google::Compute::Property::String.parse(
            args['raw_key'] || args['rawKey']
          )
          @sha256 = Google::Compute::Property::String.parse(args['sha256'])
        end

        def to_json(_arg = nil)
          {
            'rawKey' => raw_key,
            'sha256' => sha256
          }.to_json
        end

        def to_s
          {
            raw_key: raw_key,
            sha256: sha256
          }.map { |k, v| "#{k}: #{v}" }.join(', ')
        end

        def ==(other)
          return false if other == :absent
          return false if other.class != self.class
          return false if raw_key != other.raw_key
          return false if sha256 != other.sha256
          true
        end

        def <=>(other)
          result = raw_key.<=>(other.raw_key)
          return result unless result.zero?
          result = sha256.<=>(other.sha256)
          return result unless result.zero?
          0
        end
      end
    end

    module Property
      # A class to manage input to source_image_encryption_key for disk.
      class DiskSourImagEncrKey < Puppet::Property
        def unsafe_munge(value)
          self.class.parse(value)
        end

        def self.parse(value)
          return if value.nil?
          Data::DiskSourImagEncrKey.new(value)
        end
      end
    end
  end
end
