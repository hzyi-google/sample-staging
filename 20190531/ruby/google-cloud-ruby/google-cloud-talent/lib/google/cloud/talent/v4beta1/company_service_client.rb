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
# https://github.com/googleapis/googleapis/blob/master/google/cloud/talent/v4beta1/company_service.proto,
# and updates to that file get reflected here through a refresh process.
# For the short term, the refresh process will only be runnable by Google
# engineers.

require "json"
require "pathname"

require "google/gax"

require "google/cloud/talent/v4beta1/company_service_pb"
require "google/cloud/talent/v4beta1/credentials"

module Google
  module Cloud
    module Talent
      module V4beta1
        # A service that handles company management, including CRUD and enumeration.
        #
        # @!attribute [r] company_service_stub
        #   @return [Google::Cloud::Talent::V4beta1::CompanyService::Stub]
        class CompanyServiceClient
          attr_reader :company_service_stub

          # The default address of the service.
          SERVICE_ADDRESS = "jobs.googleapis.com".freeze

          # The default port of the service.
          DEFAULT_SERVICE_PORT = 443

          # The default set of gRPC interceptors.
          GRPC_INTERCEPTORS = []

          DEFAULT_TIMEOUT = 30

          PAGE_DESCRIPTORS = {
            "list_companies" => Google::Gax::PageDescriptor.new(
              "page_token",
              "next_page_token",
              "companies")
          }.freeze

          private_constant :PAGE_DESCRIPTORS

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
            require "google/cloud/talent/v4beta1/company_service_services_pb"

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
              "company_service_client_config.json"
            )
            defaults = client_config_file.open do |f|
              Google::Gax.construct_settings(
                "google.cloud.talent.v4beta1.CompanyService",
                JSON.parse(f.read),
                client_config,
                Google::Gax::Grpc::STATUS_CODE_NAMES,
                timeout,
                page_descriptors: PAGE_DESCRIPTORS,
                errors: Google::Gax::Grpc::API_ERRORS,
                metadata: headers
              )
            end

            # Allow overriding the service path/port in subclasses.
            service_path = self.class::SERVICE_ADDRESS
            port = self.class::DEFAULT_SERVICE_PORT
            interceptors = self.class::GRPC_INTERCEPTORS
            @company_service_stub = Google::Gax::Grpc.create_stub(
              service_path,
              port,
              chan_creds: chan_creds,
              channel: channel,
              updater_proc: updater_proc,
              scopes: scopes,
              interceptors: interceptors,
              &Google::Cloud::Talent::V4beta1::CompanyService::Stub.method(:new)
            )

            @create_company = Google::Gax.create_api_call(
              @company_service_stub.method(:create_company),
              defaults["create_company"],
              exception_transformer: exception_transformer,
              params_extractor: proc do |request|
                {'parent' => request.parent}
              end
            )
            @get_company = Google::Gax.create_api_call(
              @company_service_stub.method(:get_company),
              defaults["get_company"],
              exception_transformer: exception_transformer,
              params_extractor: proc do |request|
                {'name' => request.name}
              end
            )
            @update_company = Google::Gax.create_api_call(
              @company_service_stub.method(:update_company),
              defaults["update_company"],
              exception_transformer: exception_transformer,
              params_extractor: proc do |request|
                {'company.name' => request.company.name}
              end
            )
            @delete_company = Google::Gax.create_api_call(
              @company_service_stub.method(:delete_company),
              defaults["delete_company"],
              exception_transformer: exception_transformer,
              params_extractor: proc do |request|
                {'name' => request.name}
              end
            )
            @list_companies = Google::Gax.create_api_call(
              @company_service_stub.method(:list_companies),
              defaults["list_companies"],
              exception_transformer: exception_transformer,
              params_extractor: proc do |request|
                {'parent' => request.parent}
              end
            )
          end

          # Service calls

          # Creates a new company entity.
          #
          # @param parent [String]
          #   Required.
          #
          #   Resource name of the tenant under which the company is created.
          #
          #   The format is "projects/{project_id}/tenants/{tenant_id}", for example,
          #   "projects/api-test-project/tenant/foo".
          #
          #   Tenant id is optional and a default tenant is created if unspecified, for
          #   example, "projects/api-test-project".
          # @param company [Google::Cloud::Talent::V4beta1::Company | Hash]
          #   Required.
          #
          #   The company to be created.
          #   A hash of the same form as `Google::Cloud::Talent::V4beta1::Company`
          #   can also be provided.
          # @param options [Google::Gax::CallOptions]
          #   Overrides the default settings for this call, e.g, timeout,
          #   retries, etc.
          # @yield [result, operation] Access the result along with the RPC operation
          # @yieldparam result [Google::Cloud::Talent::V4beta1::Company]
          # @yieldparam operation [GRPC::ActiveCall::Operation]
          # @return [Google::Cloud::Talent::V4beta1::Company]
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   require "google/cloud/talent"
          #
          #   company_client = Google::Cloud::Talent::Company.new(version: :v4beta1)
          #   formatted_parent = Google::Cloud::Talent::V4beta1::CompanyServiceClient.tenant_path("[PROJECT]", "[TENANT]")
          #
          #   # TODO: Initialize `company`:
          #   company = {}
          #   response = company_client.create_company(formatted_parent, company)

          def create_company \
              parent,
              company,
              options: nil,
              &block
            req = {
              parent: parent,
              company: company
            }.delete_if { |_, v| v.nil? }
            req = Google::Gax::to_proto(req, Google::Cloud::Talent::V4beta1::CreateCompanyRequest)
            @create_company.call(req, options, &block)
          end

          # Retrieves specified company.
          #
          # @param name [String]
          #   Required.
          #
          #   The resource name of the company to be retrieved.
          #
          #   The format is
          #   "projects/{project_id}/tenants/{tenant_id}/companies/{company_id}", for
          #   example, "projects/api-test-project/tenants/foo/companies/bar".
          #
          #   Tenant id is optional and the default tenant is used if unspecified, for
          #   example, "projects/api-test-project/companies/bar".
          # @param options [Google::Gax::CallOptions]
          #   Overrides the default settings for this call, e.g, timeout,
          #   retries, etc.
          # @yield [result, operation] Access the result along with the RPC operation
          # @yieldparam result [Google::Cloud::Talent::V4beta1::Company]
          # @yieldparam operation [GRPC::ActiveCall::Operation]
          # @return [Google::Cloud::Talent::V4beta1::Company]
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   require "google/cloud/talent"
          #
          #   company_client = Google::Cloud::Talent::Company.new(version: :v4beta1)
          #   formatted_name = Google::Cloud::Talent::V4beta1::CompanyServiceClient.company_path("[PROJECT]", "[TENANT]", "[COMPANY]")
          #   response = company_client.get_company(formatted_name)

          def get_company \
              name,
              options: nil,
              &block
            req = {
              name: name
            }.delete_if { |_, v| v.nil? }
            req = Google::Gax::to_proto(req, Google::Cloud::Talent::V4beta1::GetCompanyRequest)
            @get_company.call(req, options, &block)
          end

          # Updates specified company.
          #
          # @param company [Google::Cloud::Talent::V4beta1::Company | Hash]
          #   Required.
          #
          #   The company resource to replace the current resource in the system.
          #   A hash of the same form as `Google::Cloud::Talent::V4beta1::Company`
          #   can also be provided.
          # @param update_mask [Google::Protobuf::FieldMask | Hash]
          #   Optional but strongly recommended for the best service
          #   experience.
          #
          #   If {Google::Cloud::Talent::V4beta1::UpdateCompanyRequest#update_mask update_mask} is provided, only the specified fields in
          #   {Google::Cloud::Talent::V4beta1::UpdateCompanyRequest#company company} are updated. Otherwise all the fields are updated.
          #
          #   A field mask to specify the company fields to be updated. Only
          #   top level fields of {Google::Cloud::Talent::V4beta1::Company Company} are supported.
          #   A hash of the same form as `Google::Protobuf::FieldMask`
          #   can also be provided.
          # @param options [Google::Gax::CallOptions]
          #   Overrides the default settings for this call, e.g, timeout,
          #   retries, etc.
          # @yield [result, operation] Access the result along with the RPC operation
          # @yieldparam result [Google::Cloud::Talent::V4beta1::Company]
          # @yieldparam operation [GRPC::ActiveCall::Operation]
          # @return [Google::Cloud::Talent::V4beta1::Company]
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   require "google/cloud/talent"
          #
          #   company_client = Google::Cloud::Talent::Company.new(version: :v4beta1)
          #
          #   # TODO: Initialize `company`:
          #   company = {}
          #   response = company_client.update_company(company)

          def update_company \
              company,
              update_mask: nil,
              options: nil,
              &block
            req = {
              company: company,
              update_mask: update_mask
            }.delete_if { |_, v| v.nil? }
            req = Google::Gax::to_proto(req, Google::Cloud::Talent::V4beta1::UpdateCompanyRequest)
            @update_company.call(req, options, &block)
          end

          # Deletes specified company.
          # Prerequisite: The company has no jobs associated with it.
          #
          # @param name [String]
          #   Required.
          #
          #   The resource name of the company to be deleted.
          #
          #   The format is
          #   "projects/{project_id}/tenants/{tenant_id}/companies/{company_id}", for
          #   example, "projects/api-test-project/tenants/foo/companies/bar".
          #
          #   Tenant id is optional and the default tenant is used if unspecified, for
          #   example, "projects/api-test-project/companies/bar".
          # @param options [Google::Gax::CallOptions]
          #   Overrides the default settings for this call, e.g, timeout,
          #   retries, etc.
          # @yield [result, operation] Access the result along with the RPC operation
          # @yieldparam result []
          # @yieldparam operation [GRPC::ActiveCall::Operation]
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   require "google/cloud/talent"
          #
          #   company_client = Google::Cloud::Talent::Company.new(version: :v4beta1)
          #   formatted_name = Google::Cloud::Talent::V4beta1::CompanyServiceClient.company_path("[PROJECT]", "[TENANT]", "[COMPANY]")
          #   company_client.delete_company(formatted_name)

          def delete_company \
              name,
              options: nil,
              &block
            req = {
              name: name
            }.delete_if { |_, v| v.nil? }
            req = Google::Gax::to_proto(req, Google::Cloud::Talent::V4beta1::DeleteCompanyRequest)
            @delete_company.call(req, options, &block)
            nil
          end

          # Lists all companies associated with the project.
          #
          # @param parent [String]
          #   Required.
          #
          #   Resource name of the tenant under which the company is created.
          #
          #   The format is "projects/{project_id}/tenants/{tenant_id}", for example,
          #   "projects/api-test-project/tenant/foo".
          #
          #   Tenant id is optional and the default tenant is used if unspecified, for
          #   example, "projects/api-test-project".
          # @param page_size [Integer]
          #   The maximum number of resources contained in the underlying API
          #   response. If page streaming is performed per-resource, this
          #   parameter does not affect the return value. If page streaming is
          #   performed per-page, this determines the maximum number of
          #   resources in a page.
          # @param require_open_jobs [true, false]
          #   Optional.
          #
          #   Set to true if the companies requested must have open jobs.
          #
          #   Defaults to false.
          #
          #   If true, at most {Google::Cloud::Talent::V4beta1::ListCompaniesRequest#page_size page_size} of companies are fetched, among which
          #   only those with open jobs are returned.
          # @param options [Google::Gax::CallOptions]
          #   Overrides the default settings for this call, e.g, timeout,
          #   retries, etc.
          # @yield [result, operation] Access the result along with the RPC operation
          # @yieldparam result [Google::Gax::PagedEnumerable<Google::Cloud::Talent::V4beta1::Company>]
          # @yieldparam operation [GRPC::ActiveCall::Operation]
          # @return [Google::Gax::PagedEnumerable<Google::Cloud::Talent::V4beta1::Company>]
          #   An enumerable of Google::Cloud::Talent::V4beta1::Company instances.
          #   See Google::Gax::PagedEnumerable documentation for other
          #   operations such as per-page iteration or access to the response
          #   object.
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   require "google/cloud/talent"
          #
          #   company_client = Google::Cloud::Talent::Company.new(version: :v4beta1)
          #   formatted_parent = Google::Cloud::Talent::V4beta1::CompanyServiceClient.tenant_path("[PROJECT]", "[TENANT]")
          #
          #   # Iterate over all results.
          #   company_client.list_companies(formatted_parent).each do |element|
          #     # Process element.
          #   end
          #
          #   # Or iterate over results one page at a time.
          #   company_client.list_companies(formatted_parent).each_page do |page|
          #     # Process each page at a time.
          #     page.each do |element|
          #       # Process element.
          #     end
          #   end

          def list_companies \
              parent,
              page_size: nil,
              require_open_jobs: nil,
              options: nil,
              &block
            req = {
              parent: parent,
              page_size: page_size,
              require_open_jobs: require_open_jobs
            }.delete_if { |_, v| v.nil? }
            req = Google::Gax::to_proto(req, Google::Cloud::Talent::V4beta1::ListCompaniesRequest)
            @list_companies.call(req, options, &block)
          end
        end
      end
    end
  end
end
