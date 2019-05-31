# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# EDITING INSTRUCTIONS
# This file was generated from the file
# https://github.com/googleapis/googleapis/blob/master/google/cloud/talent/v4beta1/completion_service.proto,
# and updates to that file get reflected here through a refresh process.
# For the short term, the refresh process will only be runnable by Google
# engineers.

require "json"
require "pathname"

require "google/gax"

require "google/cloud/talent/v4beta1/completion_service_pb"
require "google/cloud/talent/v4beta1/credentials"

module Google
  module Cloud
    module Talent
      module V4beta1
        # A service handles auto completion.
        #
        # @!attribute [r] completion_stub
        #   @return [Google::Cloud::Talent::V4beta1::Completion::Stub]
        class CompletionClient
          attr_reader :completion_stub

          # The default address of the service.
          SERVICE_ADDRESS = "jobs.googleapis.com".freeze

          # The default port of the service.
          DEFAULT_SERVICE_PORT = 443

          # The default set of gRPC interceptors.
          GRPC_INTERCEPTORS = []

          DEFAULT_TIMEOUT = 30

          # The scopes needed to make gRPC calls to all of the methods defined in
          # this service.
          ALL_SCOPES = [
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/jobs"
          ].freeze


          COMPANY_PATH_TEMPLATE = Google::Gax::PathTemplate.new(
            "projects/{project}/tenants/{tenant}/companies/{company}"
          )

          private_constant :COMPANY_PATH_TEMPLATE

          TENANT_PATH_TEMPLATE = Google::Gax::PathTemplate.new(
            "projects/{project}/tenants/{tenant}"
          )

          private_constant :TENANT_PATH_TEMPLATE

          # Returns a fully-qualified company resource name string.
          # @param project [String]
          # @param tenant [String]
          # @param company [String]
          # @return [String]
          def self.company_path project, tenant, company
            COMPANY_PATH_TEMPLATE.render(
              :"project" => project,
              :"tenant" => tenant,
              :"company" => company
            )
          end

          # Returns a fully-qualified tenant resource name string.
          # @param project [String]
          # @param tenant [String]
          # @return [String]
          def self.tenant_path project, tenant
            TENANT_PATH_TEMPLATE.render(
              :"project" => project,
              :"tenant" => tenant
            )
          end

          # @param credentials [Google::Auth::Credentials, String, Hash, GRPC::Core::Channel, GRPC::Core::ChannelCredentials, Proc]
          #   Provides the means for authenticating requests made by the client. This parameter can
          #   be many types.
          #   A `Google::Auth::Credentials` uses a the properties of its represented keyfile for
          #   authenticating requests made by this client.
          #   A `String` will be treated as the path to the keyfile to be used for the construction of
          #   credentials for this client.
          #   A `Hash` will be treated as the contents of a keyfile to be used for the construction of
          #   credentials for this client.
          #   A `GRPC::Core::Channel` will be used to make calls through.
          #   A `GRPC::Core::ChannelCredentials` for the setting up the RPC client. The channel credentials
          #   should already be composed with a `GRPC::Core::CallCredentials` object.
          #   A `Proc` will be used as an updater_proc for the Grpc channel. The proc transforms the
          #   metadata for requests, generally, to give OAuth credentials.
          # @param scopes [Array<String>]
          #   The OAuth scopes for this service. This parameter is ignored if
          #   an updater_proc is supplied.
          # @param client_config [Hash]
          #   A Hash for call options for each method. See
          #   Google::Gax#construct_settings for the structure of
          #   this data. Falls back to the default config if not specified
          #   or the specified config is missing data points.
          # @param timeout [Numeric]
          #   The default timeout, in seconds, for calls made through this client.
          # @param metadata [Hash]
          #   Default metadata to be sent with each request. This can be overridden on a per call basis.
          # @param exception_transformer [Proc]
          #   An optional proc that intercepts any exceptions raised during an API call to inject
          #   custom error handling.
          def initialize \
              credentials: nil,
              scopes: ALL_SCOPES,
              client_config: {},
              timeout: DEFAULT_TIMEOUT,
              metadata: nil,
              exception_transformer: nil,
              lib_name: nil,
              lib_version: ""
            # These require statements are intentionally placed here to initialize
            # the gRPC module only when it's required.
            # See https://github.com/googleapis/toolkit/issues/446
            require "google/gax/grpc"
            require "google/cloud/talent/v4beta1/completion_service_services_pb"

            credentials ||= Google::Cloud::Talent::V4beta1::Credentials.default

            if credentials.is_a?(String) || credentials.is_a?(Hash)
              updater_proc = Google::Cloud::Talent::V4beta1::Credentials.new(credentials).updater_proc
            end
            if credentials.is_a?(GRPC::Core::Channel)
              channel = credentials
            end
            if credentials.is_a?(GRPC::Core::ChannelCredentials)
              chan_creds = credentials
            end
            if credentials.is_a?(Proc)
              updater_proc = credentials
            end
            if credentials.is_a?(Google::Auth::Credentials)
              updater_proc = credentials.updater_proc
            end

            package_version = Gem.loaded_specs['google-cloud-talent'].version.version

            google_api_client = "gl-ruby/#{RUBY_VERSION}"
            google_api_client << " #{lib_name}/#{lib_version}" if lib_name
            google_api_client << " gapic/#{package_version} gax/#{Google::Gax::VERSION}"
            google_api_client << " grpc/#{GRPC::VERSION}"
            google_api_client.freeze

            headers = { :"x-goog-api-client" => google_api_client }
            headers.merge!(metadata) unless metadata.nil?
            client_config_file = Pathname.new(__dir__).join(
              "completion_client_config.json"
            )
            defaults = client_config_file.open do |f|
              Google::Gax.construct_settings(
                "google.cloud.talent.v4beta1.Completion",
                JSON.parse(f.read),
                client_config,
                Google::Gax::Grpc::STATUS_CODE_NAMES,
                timeout,
                errors: Google::Gax::Grpc::API_ERRORS,
                metadata: headers
              )
            end

            # Allow overriding the service path/port in subclasses.
            service_path = self.class::SERVICE_ADDRESS
            port = self.class::DEFAULT_SERVICE_PORT
            interceptors = self.class::GRPC_INTERCEPTORS
            @completion_stub = Google::Gax::Grpc.create_stub(
              service_path,
              port,
              chan_creds: chan_creds,
              channel: channel,
              updater_proc: updater_proc,
              scopes: scopes,
              interceptors: interceptors,
              &Google::Cloud::Talent::V4beta1::Completion::Stub.method(:new)
            )

            @complete_query = Google::Gax.create_api_call(
              @completion_stub.method(:complete_query),
              defaults["complete_query"],
              exception_transformer: exception_transformer,
              params_extractor: proc do |request|
                {'parent' => request.parent}
              end
            )
          end

          # Service calls

          # Completes the specified prefix with keyword suggestions.
          # Intended for use by a job search auto-complete search box.
          #
          # @param parent [String]
          #   Required.
          #
          #   Resource name of tenant the completion is performed within.
          #
          #   The format is "projects/{project_id}/tenants/{tenant_id}", for example,
          #   "projects/api-test-project/tenant/foo".
          #
          #   Tenant id is optional and the default tenant is used if unspecified, for
          #   example, "projects/api-test-project".
          # @param query [String]
          #   Required.
          #
          #   The query used to generate suggestions.
          #
          #   The maximum number of allowed characters is 255.
          # @param page_size [Integer]
          #   Required.
          #
          #   Completion result count.
          #
          #   The maximum allowed page size is 10.
          # @param language_codes [Array<String>]
          #   Optional.
          #
          #   The list of languages of the query. This is
          #   the BCP-47 language code, such as "en-US" or "sr-Latn".
          #   For more information, see
          #   [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).
          #
          #   For {Google::Cloud::Talent::V4beta1::CompleteQueryRequest::CompletionType::JOB_TITLE CompletionType::JOB_TITLE} type, only open jobs with the same
          #   {Google::Cloud::Talent::V4beta1::CompleteQueryRequest#language_codes language_codes} are returned.
          #
          #   For {Google::Cloud::Talent::V4beta1::CompleteQueryRequest::CompletionType::COMPANY_NAME CompletionType::COMPANY_NAME} type,
          #   only companies having open jobs with the same {Google::Cloud::Talent::V4beta1::CompleteQueryRequest#language_codes language_codes} are
          #   returned.
          #
          #   For {Google::Cloud::Talent::V4beta1::CompleteQueryRequest::CompletionType::COMBINED CompletionType::COMBINED} type, only open jobs with the same
          #   {Google::Cloud::Talent::V4beta1::CompleteQueryRequest#language_codes language_codes} or companies having open jobs with the same
          #   {Google::Cloud::Talent::V4beta1::CompleteQueryRequest#language_codes language_codes} are returned.
          #
          #   The maximum number of allowed characters is 255.
          # @param company [String]
          #   Optional.
          #
          #   If provided, restricts completion to specified company.
          #
          #   The format is
          #   "projects/{project_id}/tenants/{tenant_id}/companies/{company_id}", for
          #   example, "projects/api-test-project/tenants/foo/companies/bar".
          #
          #   Tenant id is optional and the default tenant is used if unspecified, for
          #   example, "projects/api-test-project/companies/bar".
          # @param scope [Google::Cloud::Talent::V4beta1::CompleteQueryRequest::CompletionScope]
          #   Optional.
          #
          #   The scope of the completion. The defaults is {Google::Cloud::Talent::V4beta1::CompleteQueryRequest::CompletionScope::PUBLIC CompletionScope::PUBLIC}.
          # @param type [Google::Cloud::Talent::V4beta1::CompleteQueryRequest::CompletionType]
          #   Optional.
          #
          #   The completion topic. The default is {Google::Cloud::Talent::V4beta1::CompleteQueryRequest::CompletionType::COMBINED CompletionType::COMBINED}.
          # @param options [Google::Gax::CallOptions]
          #   Overrides the default settings for this call, e.g, timeout,
          #   retries, etc.
          # @yield [result, operation] Access the result along with the RPC operation
          # @yieldparam result [Google::Cloud::Talent::V4beta1::CompleteQueryResponse]
          # @yieldparam operation [GRPC::ActiveCall::Operation]
          # @return [Google::Cloud::Talent::V4beta1::CompleteQueryResponse]
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   require "google/cloud/talent"
          #
          #   completion_client = Google::Cloud::Talent::Completion.new(version: :v4beta1)
          #   formatted_parent = Google::Cloud::Talent::V4beta1::CompletionClient.tenant_path("[PROJECT]", "[TENANT]")
          #
          #   # TODO: Initialize `query`:
          #   query = ''
          #
          #   # TODO: Initialize `page_size`:
          #   page_size = 0
          #   response = completion_client.complete_query(formatted_parent, query, page_size)

          def complete_query \
              parent,
              query,
              page_size,
              language_codes: nil,
              company: nil,
              scope: nil,
              type: nil,
              options: nil,
              &block
            req = {
              parent: parent,
              query: query,
              page_size: page_size,
              language_codes: language_codes,
              company: company,
              scope: scope,
              type: type
            }.delete_if { |_, v| v.nil? }
            req = Google::Gax::to_proto(req, Google::Cloud::Talent::V4beta1::CompleteQueryRequest)
            @complete_query.call(req, options, &block)
          end
        end
      end
    end
  end
end
