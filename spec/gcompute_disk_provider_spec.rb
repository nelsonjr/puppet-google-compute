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

require 'spec_helper'

describe Puppet::Type.type(:gcompute_disk).provider(:google) do
  before(:all) do
    cred = Google::FakeAuthorization.new
    Puppet::Type.type(:gauth_credential)
                .define_singleton_method(:fetch) { |_resource| cred }
  end

  D_PROJECT_DATA = %w[
    test\ project#0\ data
    test\ project#1\ data
    test\ project#2\ data
    test\ project#3\ data
    test\ project#4\ data
  ].freeze

  D_ZONE_DATA = %w[
    test\ zone#0\ data
    test\ zone#1\ data
    test\ zone#2\ data
    test\ zone#3\ data
    test\ zone#4\ data
  ].freeze

  D_NAME_DATA = %w[
    test\ name#0\ data
    test\ name#1\ data
    test\ name#2\ data
    test\ name#3\ data
    test\ name#4\ data
  ].freeze

  it '#instances' do
    expect { described_class.instances }.to raise_error(StandardError,
                                                        /not supported/)
  end

  context 'ensure == present' do
    context 'resource exists' do
      # Ensure present: resource exists, no change
      context 'no changes == no action' do
        # Ensure present: resource exists, no change, no name
        context 'title == name' do
          # Ensure present: resource exists, no change, no name, pass
          context 'title == name (pass)' do
            before do
              allow(Time).to receive(:now).and_return(
                Time.new(2017, 1, 2, 3, 4, 5)
              )
              expect_network_get_success 1, name: 'title0'
              expect_network_get_success 2, name: 'title1'
              expect_network_get_success 3, name: 'title2'
            end

            let(:catalog) do
              apply_compiled_manifest(
                <<-MANIFEST
                gcompute_disk { 'title0':
                  ensure                         => present,
                  description                    => 'test description#0 data',
                  disk_encryption_key            => {
                    raw_key => 'test raw_key#0 data',
                    sha256  => 'test sha256#0 data',
                  },
                  licenses                       => ['ww', 'xx'],
                  size_gb                        => 2858499398,
                  source_image                   => 'test source_image#0 data',
                  source_image_encryption_key    => {
                    raw_key => 'test raw_key#0 data',
                    sha256  => 'test sha256#0 data',
                  },
                  source_snapshot                =>
                  'test source_snapshot#0 data',
                  source_snapshot_encryption_key => {
                    raw_key => 'test raw_key#0 data',
                    sha256  => 'test sha256#0 data',
                  },
                  zone                           => 'test zone#0 data',
                  project                        => 'test project#0 data',
                  credential                     => 'cred0'
                }
                gcompute_disk { 'title1':
                  ensure                         => present,
                  description                    => 'test description#1 data',
                  disk_encryption_key            => {
                    raw_key => 'test raw_key#1 data',
                    sha256  => 'test sha256#1 data',
                  },
                  licenses                       => ['uu', 'vv'],
                  size_gb                        => 5716998797,
                  source_image                   => 'test source_image#1 data',
                  source_image_encryption_key    => {
                    raw_key => 'test raw_key#1 data',
                    sha256  => 'test sha256#1 data',
                  },
                  source_snapshot                =>
                  'test source_snapshot#1 data',
                  source_snapshot_encryption_key => {
                    raw_key => 'test raw_key#1 data',
                    sha256  => 'test sha256#1 data',
                  },
                  zone                           => 'test zone#1 data',
                  project                        => 'test project#1 data',
                  credential                     => 'cred1'
                }
                gcompute_disk { 'title2':
                  ensure                         => present,
                  description                    => 'test description#2 data',
                  disk_encryption_key            => {
                    raw_key => 'test raw_key#2 data',
                    sha256  => 'test sha256#2 data',
                  },
                  licenses                       => ['tt', 'uu', 'vv'],
                  size_gb                        => 8575498196,
                  source_image                   => 'test source_image#2 data',
                  source_image_encryption_key    => {
                    raw_key => 'test raw_key#2 data',
                    sha256  => 'test sha256#2 data',
                  },
                  source_snapshot                =>
                  'test source_snapshot#2 data',
                  source_snapshot_encryption_key => {
                    raw_key => 'test raw_key#2 data',
                    sha256  => 'test sha256#2 data',
                  },
                  zone                           => 'test zone#2 data',
                  project                        => 'test project#2 data',
                  credential                     => 'cred2'
                }
                MANIFEST
              ).catalog
            end

            context 'Gcompute_disk[title0]' do
              subject do
                catalog.resource('Gcompute_disk[title0]').provider
              end

              it do
                is_expected
                  .to have_attributes(
                    creation_timestamp: '2045-05-23T12:08:10+00:00'
                  )
              end
              it do
                is_expected
                  .to have_attributes(description: 'test description#0 data')
              end
              it { is_expected.to have_attributes(id: 2_149_500_871) }
              it do
                is_expected
                  .to have_attributes(
                    last_attach_timestamp: '2052-04-11T10:26:47+00:00'
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    last_detach_timestamp: '1986-08-30T10:54:51+00:00'
                  )
              end
              it { is_expected.to have_attributes(licenses: %w[ww xx]) }
              it { is_expected.to have_attributes(name: 'title0') }
              it { is_expected.to have_attributes(size_gb: 2_858_499_398) }
              it do
                is_expected
                  .to have_attributes(source_image: 'test source_image#0 data')
              end
              it { is_expected.to have_attributes(type: 'test type#0 data') }
              it { is_expected.to have_attributes(users: %w[ww xx yy zz]) }
            end

            context 'Gcompute_disk[title1]' do
              subject do
                catalog.resource('Gcompute_disk[title1]').provider
              end

              it do
                is_expected
                  .to have_attributes(
                    creation_timestamp: '2120-10-14T00:16:21+00:00'
                  )
              end
              it do
                is_expected
                  .to have_attributes(description: 'test description#1 data')
              end
              it { is_expected.to have_attributes(id: 4_299_001_743) }
              it do
                is_expected
                  .to have_attributes(
                    last_attach_timestamp: '2134-07-22T20:53:35+00:00'
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    last_detach_timestamp: '2003-04-28T21:49:42+00:00'
                  )
              end
              it { is_expected.to have_attributes(licenses: %w[uu vv]) }
              it { is_expected.to have_attributes(name: 'title1') }
              it { is_expected.to have_attributes(size_gb: 5_716_998_797) }
              it do
                is_expected
                  .to have_attributes(source_image: 'test source_image#1 data')
              end
              it { is_expected.to have_attributes(type: 'test type#1 data') }
              it { is_expected.to have_attributes(users: %w[uu vv]) }
            end

            context 'Gcompute_disk[title2]' do
              subject do
                catalog.resource('Gcompute_disk[title2]').provider
              end

              it do
                is_expected
                  .to have_attributes(
                    creation_timestamp: '2196-03-05T12:24:32+00:00'
                  )
              end
              it do
                is_expected
                  .to have_attributes(description: 'test description#2 data')
              end
              it { is_expected.to have_attributes(id: 6_448_502_614) }
              it do
                is_expected
                  .to have_attributes(
                    last_attach_timestamp: '2216-11-01T07:20:23+00:00'
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    last_detach_timestamp: '2019-12-26T08:44:33+00:00'
                  )
              end
              it { is_expected.to have_attributes(licenses: %w[tt uu vv]) }
              it { is_expected.to have_attributes(name: 'title2') }
              it { is_expected.to have_attributes(size_gb: 8_575_498_196) }
              it do
                is_expected
                  .to have_attributes(source_image: 'test source_image#2 data')
              end
              it { is_expected.to have_attributes(type: 'test type#2 data') }
              it { is_expected.to have_attributes(users: %w[ss tt uu vv]) }
            end
          end

          # Ensure present: resource exists, no change, no name, fail
          context 'title == name (fail)' do
            # TODO(nelsonjr): Implement new test format.
            subject { -> { raise '[placeholder] This should fail.' } }
            it { is_expected.to raise_error(RuntimeError, /placeholder/) }
          end
        end

        # Ensure present: resource exists, no change, has name
        context 'title != name' do
          # Ensure present: resource exists, no change, has name, pass
          context 'title != name (pass)' do
            before do
              allow(Time).to receive(:now).and_return(
                Time.new(2017, 1, 2, 3, 4, 5)
              )
              expect_network_get_success 1
              expect_network_get_success 2
              expect_network_get_success 3
            end

            let(:catalog) do
              apply_compiled_manifest(
                <<-MANIFEST
                gcompute_disk { 'title0':
                  ensure                         => present,
                  description                    => 'test description#0 data',
                  disk_encryption_key            => {
                    raw_key => 'test raw_key#0 data',
                    sha256  => 'test sha256#0 data',
                  },
                  licenses                       => ['ww', 'xx'],
                  name                           => 'test name#0 data',
                  size_gb                        => 2858499398,
                  source_image                   => 'test source_image#0 data',
                  source_image_encryption_key    => {
                    raw_key => 'test raw_key#0 data',
                    sha256  => 'test sha256#0 data',
                  },
                  source_snapshot                =>
                  'test source_snapshot#0 data',
                  source_snapshot_encryption_key => {
                    raw_key => 'test raw_key#0 data',
                    sha256  => 'test sha256#0 data',
                  },
                  zone                           => 'test zone#0 data',
                  project                        => 'test project#0 data',
                  credential                     => 'cred0'
                }
                gcompute_disk { 'title1':
                  ensure                         => present,
                  description                    => 'test description#1 data',
                  disk_encryption_key            => {
                    raw_key => 'test raw_key#1 data',
                    sha256  => 'test sha256#1 data',
                  },
                  licenses                       => ['uu', 'vv'],
                  name                           => 'test name#1 data',
                  size_gb                        => 5716998797,
                  source_image                   => 'test source_image#1 data',
                  source_image_encryption_key    => {
                    raw_key => 'test raw_key#1 data',
                    sha256  => 'test sha256#1 data',
                  },
                  source_snapshot                =>
                  'test source_snapshot#1 data',
                  source_snapshot_encryption_key => {
                    raw_key => 'test raw_key#1 data',
                    sha256  => 'test sha256#1 data',
                  },
                  zone                           => 'test zone#1 data',
                  project                        => 'test project#1 data',
                  credential                     => 'cred1'
                }
                gcompute_disk { 'title2':
                  ensure                         => present,
                  description                    => 'test description#2 data',
                  disk_encryption_key            => {
                    raw_key => 'test raw_key#2 data',
                    sha256  => 'test sha256#2 data',
                  },
                  licenses                       => ['tt', 'uu', 'vv'],
                  name                           => 'test name#2 data',
                  size_gb                        => 8575498196,
                  source_image                   => 'test source_image#2 data',
                  source_image_encryption_key    => {
                    raw_key => 'test raw_key#2 data',
                    sha256  => 'test sha256#2 data',
                  },
                  source_snapshot                =>
                  'test source_snapshot#2 data',
                  source_snapshot_encryption_key => {
                    raw_key => 'test raw_key#2 data',
                    sha256  => 'test sha256#2 data',
                  },
                  zone                           => 'test zone#2 data',
                  project                        => 'test project#2 data',
                  credential                     => 'cred2'
                }
                MANIFEST
              ).catalog
            end

            context 'Gcompute_disk[title0]' do
              subject do
                catalog.resource('Gcompute_disk[title0]').provider
              end

              it do
                is_expected
                  .to have_attributes(
                    creation_timestamp: '2045-05-23T12:08:10+00:00'
                  )
              end
              it do
                is_expected
                  .to have_attributes(description: 'test description#0 data')
              end
              it { is_expected.to have_attributes(id: 2_149_500_871) }
              it do
                is_expected
                  .to have_attributes(
                    last_attach_timestamp: '2052-04-11T10:26:47+00:00'
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    last_detach_timestamp: '1986-08-30T10:54:51+00:00'
                  )
              end
              it { is_expected.to have_attributes(licenses: %w[ww xx]) }
              it { is_expected.to have_attributes(name: 'test name#0 data') }
              it { is_expected.to have_attributes(size_gb: 2_858_499_398) }
              it do
                is_expected
                  .to have_attributes(source_image: 'test source_image#0 data')
              end
              it { is_expected.to have_attributes(type: 'test type#0 data') }
              it { is_expected.to have_attributes(users: %w[ww xx yy zz]) }
            end

            context 'Gcompute_disk[title1]' do
              subject do
                catalog.resource('Gcompute_disk[title1]').provider
              end

              it do
                is_expected
                  .to have_attributes(
                    creation_timestamp: '2120-10-14T00:16:21+00:00'
                  )
              end
              it do
                is_expected
                  .to have_attributes(description: 'test description#1 data')
              end
              it { is_expected.to have_attributes(id: 4_299_001_743) }
              it do
                is_expected
                  .to have_attributes(
                    last_attach_timestamp: '2134-07-22T20:53:35+00:00'
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    last_detach_timestamp: '2003-04-28T21:49:42+00:00'
                  )
              end
              it { is_expected.to have_attributes(licenses: %w[uu vv]) }
              it { is_expected.to have_attributes(name: 'test name#1 data') }
              it { is_expected.to have_attributes(size_gb: 5_716_998_797) }
              it do
                is_expected
                  .to have_attributes(source_image: 'test source_image#1 data')
              end
              it { is_expected.to have_attributes(type: 'test type#1 data') }
              it { is_expected.to have_attributes(users: %w[uu vv]) }
            end

            context 'Gcompute_disk[title2]' do
              subject do
                catalog.resource('Gcompute_disk[title2]').provider
              end

              it do
                is_expected
                  .to have_attributes(
                    creation_timestamp: '2196-03-05T12:24:32+00:00'
                  )
              end
              it do
                is_expected
                  .to have_attributes(description: 'test description#2 data')
              end
              it { is_expected.to have_attributes(id: 6_448_502_614) }
              it do
                is_expected
                  .to have_attributes(
                    last_attach_timestamp: '2216-11-01T07:20:23+00:00'
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    last_detach_timestamp: '2019-12-26T08:44:33+00:00'
                  )
              end
              it { is_expected.to have_attributes(licenses: %w[tt uu vv]) }
              it { is_expected.to have_attributes(name: 'test name#2 data') }
              it { is_expected.to have_attributes(size_gb: 8_575_498_196) }
              it do
                is_expected
                  .to have_attributes(source_image: 'test source_image#2 data')
              end
              it { is_expected.to have_attributes(type: 'test type#2 data') }
              it { is_expected.to have_attributes(users: %w[ss tt uu vv]) }
            end
          end

          # Ensure present: resource exists, no change, has name, fail
          context 'title != name (fail)' do
            # TODO(nelsonjr): Implement new test format.
            subject { -> { raise '[placeholder] This should fail.' } }
            it { is_expected.to raise_error(RuntimeError, /placeholder/) }
          end
        end
      end

      # Ensure present: resource exists, changes
      context 'changes == action' do
        # Ensure present: resource exists, changes, no name
        context 'title == name' do
          # Ensure present: resource exists, changes, no name, pass
          context 'title == name (pass)' do
            # TODO(nelsonjr): Implement new test format.
          end

          # Ensure present: resource exists, changes, no name, fail
          context 'title == name (fail)' do
            # TODO(nelsonjr): Implement new test format.
            subject { -> { raise '[placeholder] This should fail.' } }
            it { is_expected.to raise_error(RuntimeError, /placeholder/) }
          end
        end

        # Ensure present: resource exists, changes, has name
        context 'title != name' do
          # Ensure present: resource exists, changes, has name, pass
          context 'title != name (pass)' do
            # TODO(nelsonjr): Implement new test format.
          end

          # Ensure present: resource exists, changes, has name, fail
          context 'title != name (fail)' do
            # TODO(nelsonjr): Implement new test format.
            subject { -> { raise '[placeholder] This should fail.' } }
            it { is_expected.to raise_error(RuntimeError, /placeholder/) }
          end
        end
      end
    end

    context 'resource missing' do
      # Ensure present: resource missing, ignore, no name
      context 'title == name' do
        # Ensure present: resource missing, ignore, no name, pass
        context 'title == name (pass)' do
          before(:each) do
            expect_network_get_failed 1, name: 'title0'
            expect_network_create \
              1,
              {
                'kind' => 'compute#disk',
                'description' => 'test description#0 data',
                'licenses' => %w[ww xx],
                'name' => 'title0',
                'sizeGb' => 2_858_499_398,
                'sourceImage' => 'test source_image#0 data',
                'diskEncryptionKey' => {
                  'rawKey' => 'test raw_key#0 data',
                  'sha256' => 'test sha256#0 data'
                },
                'sourceImageEncryptionKey' => {
                  'rawKey' => 'test raw_key#0 data',
                  'sha256' => 'test sha256#0 data'
                },
                'sourceSnapshotEncryptionKey' => {
                  'rawKey' => 'test raw_key#0 data',
                  'sha256' => 'test sha256#0 data'
                }
              },
              name: 'title0'
            expect_network_get_async 1, name: 'title0'
          end

          subject do
            apply_compiled_manifest(
              <<-MANIFEST
              gcompute_disk { 'title0':
                ensure                         => present,
                description                    => 'test description#0 data',
                disk_encryption_key            => {
                  raw_key => 'test raw_key#0 data',
                  sha256  => 'test sha256#0 data',
                },
                licenses                       => ['ww', 'xx'],
                size_gb                        => 2858499398,
                source_image                   => 'test source_image#0 data',
                source_image_encryption_key    => {
                  raw_key => 'test raw_key#0 data',
                  sha256  => 'test sha256#0 data',
                },
                source_snapshot                => 'test source_snapshot#0 data',
                source_snapshot_encryption_key => {
                  raw_key => 'test raw_key#0 data',
                  sha256  => 'test sha256#0 data',
                },
                zone                           => 'test zone#0 data',
                project                        => 'test project#0 data',
                credential                     => 'cred0'
              }
              MANIFEST
            ).catalog.resource('Gcompute_disk[title0]').provider.ensure
          end

          it { is_expected.to eq :present }
        end

        # Ensure present: resource missing, ignore, no name, fail
        context 'title == name (fail)' do
          # TODO(nelsonjr): Implement new test format.
          subject { -> { raise '[placeholder] This should fail.' } }
          it { is_expected.to raise_error(RuntimeError, /placeholder/) }
        end
      end

      # Ensure present: resource missing, ignore, has name
      context 'title != name' do
        # Ensure present: resource missing, ignore, has name, pass
        context 'title != name (pass)' do
          before(:each) do
            expect_network_get_failed 1
            expect_network_create \
              1,
              'kind' => 'compute#disk',
              'description' => 'test description#0 data',
              'licenses' => %w[ww xx],
              'name' => 'test name#0 data',
              'sizeGb' => 2_858_499_398,
              'sourceImage' => 'test source_image#0 data',
              'diskEncryptionKey' => {
                'rawKey' => 'test raw_key#0 data',
                'sha256' => 'test sha256#0 data'
              },
              'sourceImageEncryptionKey' => {
                'rawKey' => 'test raw_key#0 data',
                'sha256' => 'test sha256#0 data'
              },
              'sourceSnapshotEncryptionKey' => {
                'rawKey' => 'test raw_key#0 data',
                'sha256' => 'test sha256#0 data'
              }
            expect_network_get_async 1
          end

          subject do
            apply_compiled_manifest(
              <<-MANIFEST
              gcompute_disk { 'title0':
                ensure                         => present,
                description                    => 'test description#0 data',
                disk_encryption_key            => {
                  raw_key => 'test raw_key#0 data',
                  sha256  => 'test sha256#0 data',
                },
                licenses                       => ['ww', 'xx'],
                name                           => 'test name#0 data',
                size_gb                        => 2858499398,
                source_image                   => 'test source_image#0 data',
                source_image_encryption_key    => {
                  raw_key => 'test raw_key#0 data',
                  sha256  => 'test sha256#0 data',
                },
                source_snapshot                => 'test source_snapshot#0 data',
                source_snapshot_encryption_key => {
                  raw_key => 'test raw_key#0 data',
                  sha256  => 'test sha256#0 data',
                },
                zone                           => 'test zone#0 data',
                project                        => 'test project#0 data',
                credential                     => 'cred0'
              }
              MANIFEST
            ).catalog.resource('Gcompute_disk[title0]').provider.ensure
          end

          it { is_expected.to eq :present }
        end

        # Ensure present: resource missing, ignore, has name, fail
        context 'title != name (fail)' do
          # TODO(nelsonjr): Implement new test format.
          subject { -> { raise '[placeholder] This should fail.' } }
          it { is_expected.to raise_error(RuntimeError, /placeholder/) }
        end
      end
    end
  end

  context 'ensure == absent' do
    context 'resource missing' do
      # Ensure absent: resource missing, ignore, no name
      context 'title == name' do
        # Ensure absent: resource missing, ignore, no name, pass
        context 'title == name (pass)' do
          before(:each) do
            expect_network_get_failed 1, name: 'title0'
          end

          subject do
            apply_compiled_manifest(
              <<-MANIFEST
              gcompute_disk { 'title0':
                ensure     => absent,
                zone       => 'test zone#0 data',
                project    => 'test project#0 data',
                credential => 'cred0'
              }
            MANIFEST
            ).catalog.resource('Gcompute_disk[title0]')
              .provider.ensure
          end

          it { is_expected.to eq :absent }
        end

        # Ensure absent: resource missing, ignore, no name, fail
        context 'title == name (fail)' do
          # TODO(nelsonjr): Implement new test format.
          subject { -> { raise '[placeholder] This should fail.' } }
          it { is_expected.to raise_error(RuntimeError, /placeholder/) }
        end
      end

      # Ensure absent: resource missing, ignore, has name
      context 'title != name' do
        # Ensure absent: resource missing, ignore, has name, pass
        context 'title != name (pass)' do
          before(:each) do
            expect_network_get_failed 1
          end

          subject do
            apply_compiled_manifest(
              <<-MANIFEST
              gcompute_disk { 'title0':
                ensure     => absent,
                name       => 'test name#0 data',
                zone       => 'test zone#0 data',
                project    => 'test project#0 data',
                credential => 'cred0'
              }
            MANIFEST
            ).catalog.resource('Gcompute_disk[title0]')
              .provider.ensure
          end

          it { is_expected.to eq :absent }
        end

        # Ensure absent: resource missing, ignore, has name, fail
        context 'title != name (fail)' do
          # TODO(nelsonjr): Implement new test format.
          subject { -> { raise '[placeholder] This should fail.' } }
          it { is_expected.to raise_error(RuntimeError, /placeholder/) }
        end
      end
    end

    context 'resource exists' do
      # Ensure absent: resource exists, ignore, no name
      context 'title == name' do
        # Ensure absent: resource exists, ignore, no name, pass
        context 'title == name (pass)' do
          before(:each) do
            expect_network_get_success 1, name: 'title0'
            expect_network_delete 1, 'title0'
            expect_network_get_async 1, name: 'title0'
          end

          subject do
            apply_compiled_manifest(
              <<-MANIFEST
              gcompute_disk { 'title0':
                ensure     => absent,
                zone       => 'test zone#0 data',
                project    => 'test project#0 data',
                credential => 'cred0'
              }
              MANIFEST
            ).catalog.resource('Gcompute_disk[title0]')
              .provider.ensure
          end

          it { is_expected.to eq :absent }
        end

        # Ensure absent: resource exists, ignore, no name, fail
        context 'title == name (fail)' do
          # TODO(nelsonjr): Implement new test format.
          subject { -> { raise '[placeholder] This should fail.' } }
          it { is_expected.to raise_error(RuntimeError, /placeholder/) }
        end
      end

      # Ensure absent: resource exists, ignore, has name
      context 'title != name' do
        # Ensure absent: resource exists, ignore, has name, pass
        context 'title != name (pass)' do
          before(:each) do
            expect_network_get_success 1
            expect_network_delete 1
            expect_network_get_async 1
          end

          subject do
            apply_compiled_manifest(
              <<-MANIFEST
              gcompute_disk { 'title0':
                ensure     => absent,
                name       => 'test name#0 data',
                zone       => 'test zone#0 data',
                project    => 'test project#0 data',
                credential => 'cred0'
              }
              MANIFEST
            ).catalog.resource('Gcompute_disk[title0]')
              .provider.ensure
          end

          it { is_expected.to eq :absent }
        end

        # Ensure absent: resource exists, ignore, has name, fail
        context 'title != name (fail)' do
          # TODO(nelsonjr): Implement new test format.
          subject { -> { raise '[placeholder] This should fail.' } }
          it { is_expected.to raise_error(RuntimeError, /placeholder/) }
        end
      end
    end
  end

  context '#flush' do
    subject do
      Puppet::Type.type(:gcompute_disk).new(
        ensure: :present,
        name: 'my-name'
      ).provider
    end
    context 'no-op' do
      it { subject.flush }
    end
    context 'modified object' do
      before do
        subject.dirty :some_property, 'current', 'newvalue'
      end
      context 'no-op if created' do
        before { subject.instance_variable_set(:@created, true) }
        it { expect { subject.flush }.not_to raise_error }
      end
      context 'no-op if deleted' do
        before { subject.instance_variable_set(:@deleted, true) }
        it { expect { subject.flush }.not_to raise_error }
      end
    end
  end

  private

  def expect_network_get_success(id, data = {})
    id_data = data.fetch(:name, '').include?('title') ? 'title' : 'name'
    body = load_network_result("success#{id}~#{id_data}.yaml").to_json

    request = double('request')
    allow(request).to receive(:send).and_return(http_success(body))

    expect(Google::Compute::Network::Get).to receive(:new)
      .with(self_link(uri_data(id).merge(data)),
            instance_of(Google::FakeAuthorization)) do |args|
      debug ">> GET #{args}"
      request
    end
  end

  def http_success(body)
    response = Net::HTTPOK.new(1.0, 200, 'OK')
    response.body = body
    response.instance_variable_set(:@read, true)
    response
  end

  def expect_network_get_async(id, data = {})
    body = { kind: 'compute#disk' }.to_json

    request = double('request')
    allow(request).to receive(:send).and_return(http_success(body))

    expect(Google::Compute::Network::Get).to receive(:new)
      .with(self_link(uri_data(id).merge(data)),
            instance_of(Google::FakeAuthorization)) do |args|
      debug ">> GET <async> #{args}"
      request
    end
  end

  def expect_network_get_failed(id, data = {})
    request = double('request')
    allow(request).to receive(:send).and_return(http_failed_object_missing)

    expect(Google::Compute::Network::Get).to receive(:new)
      .with(self_link(uri_data(id).merge(data)),
            instance_of(Google::FakeAuthorization)) do |args|
      debug ">> GET [failed] #{args}"
      request
    end
  end

  def http_failed_object_missing
    Net::HTTPNotFound.new(1.0, 404, 'Not Found')
  end

  def expect_network_create(id, expected_body, data = {})
    body = { kind: 'compute#operation',
             status: 'DONE',
             targetLink: self_link(uri_data(id).merge(data)) }.to_json

    request = double('request')
    allow(request).to receive(:send).and_return(http_success(body))

    expect(Google::Compute::Network::Post).to receive(:new)
      .with(collection(uri_data(id).merge(data)),
            instance_of(Google::FakeAuthorization),
            'application/json', expected_body.to_json) do |args|
      debug ">> POST #{args} = body(#{body})"
      request
    end
  end

  def expect_network_delete(id, name = nil, data = {})
    delete_data = uri_data(id).merge(data)
    delete_data[:name] = name unless name.nil?
    body = { kind: 'compute#operation',
             status: 'DONE',
             targetLink: self_link(delete_data) }.to_json

    request = double('request')
    allow(request).to receive(:send).and_return(http_success(body))

    expect(Google::Compute::Network::Delete).to receive(:new)
      .with(self_link(delete_data),
            instance_of(Google::FakeAuthorization)) do |args|
      debug ">> DELETE #{args}"
      request
    end
  end

  def load_network_result(file)
    results = File.join(File.dirname(__FILE__), 'data', 'network',
                        'gcompute_disk', file)
    debug("Loading result file: #{results}")
    raise "Network result data file #{results}" unless File.exist?(results)
    data = YAML.safe_load(File.read(results))
    raise "Invalid network results #{results}" unless data.class <= Hash
    data
  end

  def debug(message)
    puts(message) if ENV['RSPEC_DEBUG']
  end

  def create_type(id)
    Puppet::Type.type(:gcompute_disk).new(
      ensure: :present,
      title: "title#{id - 1}",
      credential: "cred#{id - 1}",
      project: D_PROJECT_DATA[(id - 1) % D_PROJECT_DATA.size],
      zone: D_ZONE_DATA[(id - 1) % D_ZONE_DATA.size],
      name: D_NAME_DATA[(id - 1) % D_NAME_DATA.size]
    )
  end

  def expand_variables(template, data, extra_data = {})
    Puppet::Type.type(:gcompute_disk).provider(:google)
                .expand_variables(template, data, extra_data)
  end

  def collection(data)
    URI.join(
      'https://www.googleapis.com/compute/v1/',
      expand_variables(
        'projects/{{project}}/zones/{{zone}}/disks',
        data
      )
    )
  end

  def self_link(data)
    URI.join(
      'https://www.googleapis.com/compute/v1/',
      expand_variables(
        'projects/{{project}}/zones/{{zone}}/disks/{{name}}',
        data
      )
    )
  end

  # Creates variable test data to comply with self_link URI parameters
  def uri_data(id)
    {
      project: D_PROJECT_DATA[(id - 1) % D_PROJECT_DATA.size],
      zone: D_ZONE_DATA[(id - 1) % D_ZONE_DATA.size],
      name: D_NAME_DATA[(id - 1) % D_NAME_DATA.size]
    }
  end
end
