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

require 'puppet/property'

module Google
  module Compute
    module Data
      # A class to manage data for disk_encryption_key for instance.
      class InstaDiskEncryKey
        include Comparable

        attr_reader :raw_key
        attr_reader :rsa_encrypted_key
        attr_reader :sha256

        def to_json(_arg = nil)
          {
            'rawKey' => raw_key,
            'rsaEncryptedKey' => rsa_encrypted_key,
            'sha256' => sha256
          }.reject { |_k, v| v.nil? }.to_json
        end

        def to_s
          {
            raw_key: raw_key,
            rsa_encrypted_key: rsa_encrypted_key,
            sha256: sha256
          }.reject { |_k, v| v.nil? }.map { |k, v| "#{k}: #{v}" }.join(', ')
        end

        def ==(other)
          return false unless other.is_a? InstaDiskEncryKey
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            return false if compare[:self] != compare[:other]
          end
          true
        end

        def <=>(other)
          return false unless other.is_a? InstaDiskEncryKey
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            result = compare[:self] <=> compare[:other]
            return result unless result.zero?
          end
          0
        end

        private

        def compare_fields(other)
          [
            { self: raw_key, other: other.raw_key },
            { self: rsa_encrypted_key, other: other.rsa_encrypted_key },
            { self: sha256, other: other.sha256 }
          ]
        end
      end

      # Manages a InstaDiskEncryKey nested object
      # Data is coming from the GCP API
      class InstaDiskEncryKeyApi < InstaDiskEncryKey
        def initialize(args)
          @raw_key = Google::Compute::Property::String.api_munge(args['rawKey'])
          @rsa_encrypted_key =
            Google::Compute::Property::String.api_munge(args['rsaEncryptedKey'])
          @sha256 = Google::Compute::Property::String.api_munge(args['sha256'])
        end
      end

      # Manages a InstaDiskEncryKey nested object
      # Data is coming from the Puppet manifest
      class InstaDiskEncryKeyCatalog < InstaDiskEncryKey
        def initialize(args)
          @raw_key =
            Google::Compute::Property::String.unsafe_munge(args['raw_key'])
          @rsa_encrypted_key = Google::Compute::Property::String.unsafe_munge(
            args['rsa_encrypted_key']
          )
          @sha256 =
            Google::Compute::Property::String.unsafe_munge(args['sha256'])
        end
      end
    end

    module Property
      # A class to manage input to disk_encryption_key for instance.
      class InstaDiskEncryKey < Puppet::Property
        # Used for parsing Puppet catalog
        def unsafe_munge(value)
          self.class.unsafe_munge(value)
        end

        # Used for parsing Puppet catalog
        def self.unsafe_munge(value)
          return if value.nil?
          Data::InstaDiskEncryKeyCatalog.new(value)
        end

        # Used for parsing GCP API responses
        def self.api_munge(value)
          return if value.nil?
          Data::InstaDiskEncryKeyApi.new(value)
        end
      end
    end
  end
end
