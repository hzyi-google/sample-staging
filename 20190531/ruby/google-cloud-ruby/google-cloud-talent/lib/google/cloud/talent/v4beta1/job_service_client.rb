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
# https://github.com/googleapis/googleapis/blob/master/google/cloud/talent/v4beta1/job_service.proto,
# and updates to that file get reflected here through a refresh process.
# For the short term, the refresh process will only be runnable by Google
# engineers.

require "json"
require "pathname"

require "google/gax"

require "google/cloud/talent/v4beta1/job_service_pb"
require "google/cloud/talent/v4beta1/credentials"

module Google
  module Cloud
    module Talent
      module V4beta1
        # A service handles job management, including job CRUD, enumeration and search.
        #
        # @!attribute [r] job_service_stub
        #   @return [Google::Cloud::Talent::V4beta1::JobService::Stub]
        class JobServiceClient
          attr_reader :job_service_stub

          # The default address of the service.
          SERVICE_ADDRESS = "jobs.googleapis.com".freeze

          # The default port of the service.
          DEFAULT_SERVICE_PORT = 443

          # The default set of gRPC interceptors.
          GRPC_INTERCEPTORS = []

          DEFAULT_TIMEOUT = 30

          PAGE_DESCRIPTORS = {
            "list_jobs" => Google::Gax::PageDescriptor.new(
              "page_token",
              "next_page_token",
              "jobs"),
            "search_jobs" => Google::Gax::PageDescriptor.new(
              "page_token",
              "next_page_token",
              "matching_jobs"),
            "search_jobs_for_alert" => Google::Gax::PageDescriptor.new(
              "page_token",
              "next_page_token",
              "matching_jobs")
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

          JOB_PATH_TEMPLATE = Google::Gax::PathTemplate.new(
            "projects/{project}/tenants/{tenant}/jobs/{jobs}"
          )

          private_constant :JOB_PATH_TEMPLATE

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

          # Returns a fully-qualified job resource name string.
          # @param project [String]
          # @param tenant [String]
          # @param jobs [String]
          # @return [String]
          def self.job_path project, tenant, jobs
            JOB_PATH_TEMPLATE.render(
              :"project" => project,
              :"tenant" => tenant,
              :"jobs" => jobs
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
            require "google/cloud/talent/v4beta1/job_service_services_pb"

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
              "job_service_client_config.json"
            )
            defaults = client_config_file.open do |f|
              Google::Gax.construct_settings(
                "google.cloud.talent.v4beta1.JobService",
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
            @job_service_stub = Google::Gax::Grpc.create_stub(
              service_path,
              port,
              chan_creds: chan_creds,
              channel: channel,
              updater_proc: updater_proc,
              scopes: scopes,
              interceptors: interceptors,
              &Google::Cloud::Talent::V4beta1::JobService::Stub.method(:new)
            )

            @create_job = Google::Gax.create_api_call(
              @job_service_stub.method(:create_job),
              defaults["create_job"],
              exception_transformer: exception_transformer,
              params_extractor: proc do |request|
                {'parent' => request.parent}
              end
            )
            @get_job = Google::Gax.create_api_call(
              @job_service_stub.method(:get_job),
              defaults["get_job"],
              exception_transformer: exception_transformer,
              params_extractor: proc do |request|
                {'name' => request.name}
              end
            )
            @update_job = Google::Gax.create_api_call(
              @job_service_stub.method(:update_job),
              defaults["update_job"],
              exception_transformer: exception_transformer,
              params_extractor: proc do |request|
                {'job.name' => request.job.name}
              end
            )
            @delete_job = Google::Gax.create_api_call(
              @job_service_stub.method(:delete_job),
              defaults["delete_job"],
              exception_transformer: exception_transformer,
              params_extractor: proc do |request|
                {'name' => request.name}
              end
            )
            @list_jobs = Google::Gax.create_api_call(
              @job_service_stub.method(:list_jobs),
              defaults["list_jobs"],
              exception_transformer: exception_transformer,
              params_extractor: proc do |request|
                {'parent' => request.parent}
              end
            )
            @batch_delete_jobs = Google::Gax.create_api_call(
              @job_service_stub.method(:batch_delete_jobs),
              defaults["batch_delete_jobs"],
              exception_transformer: exception_transformer,
              params_extractor: proc do |request|
                {'parent' => request.parent}
              end
            )
            @search_jobs = Google::Gax.create_api_call(
              @job_service_stub.method(:search_jobs),
              defaults["search_jobs"],
              exception_transformer: exception_transformer,
              params_extractor: proc do |request|
                {'parent' => request.parent}
              end
            )
            @search_jobs_for_alert = Google::Gax.create_api_call(
              @job_service_stub.method(:search_jobs_for_alert),
              defaults["search_jobs_for_alert"],
              exception_transformer: exception_transformer,
              params_extractor: proc do |request|
                {'parent' => request.parent}
              end
            )
          end

          # Service calls

          # Creates a new job.
          #
          # Typically, the job becomes searchable within 10 seconds, but it may take
          # up to 5 minutes.
          #
          # @param parent [String]
          #   Required.
          #
          #   The resource name of the tenant under which the job is created.
          #
          #   The format is "projects/{project_id}/tenants/{tenant_id}", for example,
          #   "projects/api-test-project/tenant/foo".
          #
          #   Tenant id is optional and a default tenant is created if unspecified, for
          #   example, "projects/api-test-project".
          # @param job [Google::Cloud::Talent::V4beta1::Job | Hash]
          #   Required.
          #
          #   The Job to be created.
          #   A hash of the same form as `Google::Cloud::Talent::V4beta1::Job`
          #   can also be provided.
          # @param options [Google::Gax::CallOptions]
          #   Overrides the default settings for this call, e.g, timeout,
          #   retries, etc.
          # @yield [result, operation] Access the result along with the RPC operation
          # @yieldparam result [Google::Cloud::Talent::V4beta1::Job]
          # @yieldparam operation [GRPC::ActiveCall::Operation]
          # @return [Google::Cloud::Talent::V4beta1::Job]
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   require "google/cloud/talent"
          #
          #   job_client = Google::Cloud::Talent::Job.new(version: :v4beta1)
          #   formatted_parent = Google::Cloud::Talent::V4beta1::JobServiceClient.tenant_path("[PROJECT]", "[TENANT]")
          #
          #   # TODO: Initialize `job`:
          #   job = {}
          #   response = job_client.create_job(formatted_parent, job)

          def create_job \
              parent,
              job,
              options: nil,
              &block
            req = {
              parent: parent,
              job: job
            }.delete_if { |_, v| v.nil? }
            req = Google::Gax::to_proto(req, Google::Cloud::Talent::V4beta1::CreateJobRequest)
            @create_job.call(req, options, &block)
          end

          # Retrieves the specified job, whose status is OPEN or recently EXPIRED
          # within the last 90 days.
          #
          # @param name [String]
          #   Required.
          #
          #   The resource name of the job to retrieve.
          #
          #   The format is
          #   "projects/{project_id}/tenants/{tenant_id}/jobs/{job_id}", for
          #   example, "projects/api-test-project/tenants/foo/jobs/1234".
          #
          #   Tenant id is optional and the default tenant is used if unspecified, for
          #   example, "projects/api-test-project/jobs/1234".
          # @param options [Google::Gax::CallOptions]
          #   Overrides the default settings for this call, e.g, timeout,
          #   retries, etc.
          # @yield [result, operation] Access the result along with the RPC operation
          # @yieldparam result [Google::Cloud::Talent::V4beta1::Job]
          # @yieldparam operation [GRPC::ActiveCall::Operation]
          # @return [Google::Cloud::Talent::V4beta1::Job]
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   require "google/cloud/talent"
          #
          #   job_client = Google::Cloud::Talent::Job.new(version: :v4beta1)
          #   formatted_name = Google::Cloud::Talent::V4beta1::JobServiceClient.job_path("[PROJECT]", "[TENANT]", "[JOBS]")
          #   response = job_client.get_job(formatted_name)

          def get_job \
              name,
              options: nil,
              &block
            req = {
              name: name
            }.delete_if { |_, v| v.nil? }
            req = Google::Gax::to_proto(req, Google::Cloud::Talent::V4beta1::GetJobRequest)
            @get_job.call(req, options, &block)
          end

          # Updates specified job.
          #
          # Typically, updated contents become visible in search results within 10
          # seconds, but it may take up to 5 minutes.
          #
          # @param job [Google::Cloud::Talent::V4beta1::Job | Hash]
          #   Required.
          #
          #   The Job to be updated.
          #   A hash of the same form as `Google::Cloud::Talent::V4beta1::Job`
          #   can also be provided.
          # @param update_mask [Google::Protobuf::FieldMask | Hash]
          #   Optional but strongly recommended to be provided for the best service
          #   experience.
          #
          #   If {Google::Cloud::Talent::V4beta1::UpdateJobRequest#update_mask update_mask} is provided, only the specified fields in
          #   {Google::Cloud::Talent::V4beta1::UpdateJobRequest#job job} are updated. Otherwise all the fields are updated.
          #
          #   A field mask to restrict the fields that are updated. Only
          #   top level fields of {Google::Cloud::Talent::V4beta1::Job Job} are supported.
          #   A hash of the same form as `Google::Protobuf::FieldMask`
          #   can also be provided.
          # @param options [Google::Gax::CallOptions]
          #   Overrides the default settings for this call, e.g, timeout,
          #   retries, etc.
          # @yield [result, operation] Access the result along with the RPC operation
          # @yieldparam result [Google::Cloud::Talent::V4beta1::Job]
          # @yieldparam operation [GRPC::ActiveCall::Operation]
          # @return [Google::Cloud::Talent::V4beta1::Job]
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   require "google/cloud/talent"
          #
          #   job_client = Google::Cloud::Talent::Job.new(version: :v4beta1)
          #
          #   # TODO: Initialize `job`:
          #   job = {}
          #   response = job_client.update_job(job)

          def update_job \
              job,
              update_mask: nil,
              options: nil,
              &block
            req = {
              job: job,
              update_mask: update_mask
            }.delete_if { |_, v| v.nil? }
            req = Google::Gax::to_proto(req, Google::Cloud::Talent::V4beta1::UpdateJobRequest)
            @update_job.call(req, options, &block)
          end

          # Deletes the specified job.
          #
          # Typically, the job becomes unsearchable within 10 seconds, but it may take
          # up to 5 minutes.
          #
          # @param name [String]
          #   Required.
          #
          #   The resource name of the job to be deleted.
          #
          #   The format is
          #   "projects/{project_id}/tenants/{tenant_id}/jobs/{job_id}", for
          #   example, "projects/api-test-project/tenants/foo/jobs/1234".
          #
          #   Tenant id is optional and the default tenant is used if unspecified, for
          #   example, "projects/api-test-project/jobs/1234".
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
          #   job_client = Google::Cloud::Talent::Job.new(version: :v4beta1)
          #   formatted_name = Google::Cloud::Talent::V4beta1::JobServiceClient.job_path("[PROJECT]", "[TENANT]", "[JOBS]")
          #   job_client.delete_job(formatted_name)

          def delete_job \
              name,
              options: nil,
              &block
            req = {
              name: name
            }.delete_if { |_, v| v.nil? }
            req = Google::Gax::to_proto(req, Google::Cloud::Talent::V4beta1::DeleteJobRequest)
            @delete_job.call(req, options, &block)
            nil
          end

          # Lists jobs by filter.
          #
          # @param parent [String]
          #   Required.
          #
          #   The resource name of the tenant under which the job is created.
          #
          #   The format is "projects/{project_id}/tenants/{tenant_id}", for example,
          #   "projects/api-test-project/tenant/foo".
          #
          #   Tenant id is optional and the default tenant is used if unspecified, for
          #   example, "projects/api-test-project".
          # @param filter [String]
          #   Required.
          #
          #   The filter string specifies the jobs to be enumerated.
          #
          #   Supported operator: =, AND
          #
          #   The fields eligible for filtering are:
          #
          #   * `companyName` (Required)
          #   * `requisitionId` (Optional)
          #   * `status` (Optional) Available values: OPEN, EXPIRED, ALL. Defaults to
          #     OPEN if no value is specified.
          #
          #   Sample Query:
          #
          #   * companyName = "projects/api-test-project/tenants/foo/companies/bar"
          #   * companyName = "projects/api-test-project/tenants/foo/companies/bar" AND
          #     requisitionId = "req-1"
          #   * companyName = "projects/api-test-project/tenants/foo/companies/bar" AND
          #     status = "EXPIRED"
          # @param page_size [Integer]
          #   The maximum number of resources contained in the underlying API
          #   response. If page streaming is performed per-resource, this
          #   parameter does not affect the return value. If page streaming is
          #   performed per-page, this determines the maximum number of
          #   resources in a page.
          # @param job_view [Google::Cloud::Talent::V4beta1::JobView]
          #   Optional.
          #
          #   The desired job attributes returned for jobs in the
          #   search response. Defaults to {Google::Cloud::Talent::V4beta1::JobView::JOB_VIEW_FULL JobView::JOB_VIEW_FULL} if no value is
          #   specified.
          # @param options [Google::Gax::CallOptions]
          #   Overrides the default settings for this call, e.g, timeout,
          #   retries, etc.
          # @yield [result, operation] Access the result along with the RPC operation
          # @yieldparam result [Google::Gax::PagedEnumerable<Google::Cloud::Talent::V4beta1::Job>]
          # @yieldparam operation [GRPC::ActiveCall::Operation]
          # @return [Google::Gax::PagedEnumerable<Google::Cloud::Talent::V4beta1::Job>]
          #   An enumerable of Google::Cloud::Talent::V4beta1::Job instances.
          #   See Google::Gax::PagedEnumerable documentation for other
          #   operations such as per-page iteration or access to the response
          #   object.
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   require "google/cloud/talent"
          #
          #   job_client = Google::Cloud::Talent::Job.new(version: :v4beta1)
          #   formatted_parent = Google::Cloud::Talent::V4beta1::JobServiceClient.tenant_path("[PROJECT]", "[TENANT]")
          #
          #   # TODO: Initialize `filter`:
          #   filter = ''
          #
          #   # Iterate over all results.
          #   job_client.list_jobs(formatted_parent, filter).each do |element|
          #     # Process element.
          #   end
          #
          #   # Or iterate over results one page at a time.
          #   job_client.list_jobs(formatted_parent, filter).each_page do |page|
          #     # Process each page at a time.
          #     page.each do |element|
          #       # Process element.
          #     end
          #   end

          def list_jobs \
              parent,
              filter,
              page_size: nil,
              job_view: nil,
              options: nil,
              &block
            req = {
              parent: parent,
              filter: filter,
              page_size: page_size,
              job_view: job_view
            }.delete_if { |_, v| v.nil? }
            req = Google::Gax::to_proto(req, Google::Cloud::Talent::V4beta1::ListJobsRequest)
            @list_jobs.call(req, options, &block)
          end

          # Deletes a list of {Google::Cloud::Talent::V4beta1::Job Job}s by filter.
          #
          # @param parent [String]
          #   Required.
          #
          #   The resource name of the tenant under which the job is created.
          #
          #   The format is "projects/{project_id}/tenants/{tenant_id}", for example,
          #   "projects/api-test-project/tenant/foo".
          #
          #   Tenant id is optional and the default tenant is used if unspecified, for
          #   example, "projects/api-test-project".
          # @param filter [String]
          #   Required.
          #
          #   The filter string specifies the jobs to be deleted.
          #
          #   Supported operator: =, AND
          #
          #   The fields eligible for filtering are:
          #
          #   * `companyName` (Required)
          #   * `requisitionId` (Required)
          #
          #   Sample Query: companyName = "projects/api-test-project/companies/123" AND
          #   requisitionId = "req-1"
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
          #   job_client = Google::Cloud::Talent::Job.new(version: :v4beta1)
          #   formatted_parent = Google::Cloud::Talent::V4beta1::JobServiceClient.tenant_path("[PROJECT]", "[TENANT]")
          #
          #   # TODO: Initialize `filter`:
          #   filter = ''
          #   job_client.batch_delete_jobs(formatted_parent, filter)

          def batch_delete_jobs \
              parent,
              filter,
              options: nil,
              &block
            req = {
              parent: parent,
              filter: filter
            }.delete_if { |_, v| v.nil? }
            req = Google::Gax::to_proto(req, Google::Cloud::Talent::V4beta1::BatchDeleteJobsRequest)
            @batch_delete_jobs.call(req, options, &block)
            nil
          end

          # Searches for jobs using the provided {Google::Cloud::Talent::V4beta1::SearchJobsRequest SearchJobsRequest}.
          #
          # This call constrains the {Google::Cloud::Talent::V4beta1::Job#visibility visibility} of jobs
          # present in the database, and only returns jobs that the caller has
          # permission to search against.
          #
          # @param parent [String]
          #   Required.
          #
          #   The resource name of the tenant to search within.
          #
          #   The format is "projects/{project_id}/tenants/{tenant_id}", for example,
          #   "projects/api-test-project/tenant/foo".
          #
          #   Tenant id is optional and the default tenant is used if unspecified, for
          #   example, "projects/api-test-project".
          # @param request_metadata [Google::Cloud::Talent::V4beta1::RequestMetadata | Hash]
          #   Required.
          #
          #   The meta information collected about the job searcher, used to improve the
          #   search quality of the service.. The identifiers, (such as `user_id`) are
          #   provided by users, and must be unique and consistent.
          #   A hash of the same form as `Google::Cloud::Talent::V4beta1::RequestMetadata`
          #   can also be provided.
          # @param search_mode [Google::Cloud::Talent::V4beta1::SearchJobsRequest::SearchMode]
          #   Optional.
          #
          #   Mode of a search.
          #
          #   Defaults to {Google::Cloud::Talent::V4beta1::SearchJobsRequest::SearchMode::JOB_SEARCH SearchMode::JOB_SEARCH}.
          # @param job_query [Google::Cloud::Talent::V4beta1::JobQuery | Hash]
          #   Optional.
          #
          #   Query used to search against jobs, such as keyword, location filters, etc.
          #   A hash of the same form as `Google::Cloud::Talent::V4beta1::JobQuery`
          #   can also be provided.
          # @param enable_broadening [true, false]
          #   Optional.
          #
          #   Controls whether to broaden the search when it produces sparse results.
          #   Broadened queries append results to the end of the matching results
          #   list.
          #
          #   Defaults to false.
          # @param require_precise_result_size [true, false]
          #   Optional.
          #
          #   Controls if the search job request requires the return of a precise
          #   count of the first 300 results. Setting this to `true` ensures
          #   consistency in the number of results per page. Best practice is to set this
          #   value to true if a client allows users to jump directly to a
          #   non-sequential search results page.
          #
          #   Enabling this flag may adversely impact performance.
          #
          #   Defaults to false.
          # @param histogram_queries [Array<Google::Cloud::Talent::V4beta1::HistogramQuery | Hash>]
          #   Optional.
          #
          #   An expression specifies a histogram request against matching jobs.
          #
          #   Expression syntax is an aggregation function call with histogram facets and
          #   other options.
          #
          #   Available aggregation function calls are:
          #   * `count(string_histogram_facet)`: Count the number of matching entities,
          #     for each distinct attribute value.
          #   * `count(numeric_histogram_facet, list of buckets)`: Count the number of
          #     matching entities within each bucket.
          #
          #   Data types:
          #
          #   * Histogram facet: facet names with format [a-zA-Z][a-zA-Z0-9_]+.
          #   * String: string like "any string with backslash escape for quote(\")."
          #   * Number: whole number and floating point number like 10, -1 and -0.01.
          #   * List: list of elements with comma(,) separator surrounded by square
          #     brackets, for example, [1, 2, 3] and ["one", "two", "three"].
          #
          #   Built-in constants:
          #
          #   * MIN (minimum number similar to java Double.MIN_VALUE)
          #   * MAX (maximum number similar to java Double.MAX_VALUE)
          #
          #   Built-in functions:
          #
          #   * bucket(start, end[, label]): bucket built-in function creates a bucket
          #     with range of [start, end). Note that the end is exclusive, for example,
          #     bucket(1, MAX, "positive number") or bucket(1, 10).
          #
          #   Job histogram facets:
          #
          #   * company_id: histogram by {Job#distributor_company_id}.
          #   * company_display_name: histogram by {Google::Cloud::Talent::V4beta1::Job#company_display_name Job#company_display_name}.
          #   * employment_type: histogram by {Google::Cloud::Talent::V4beta1::Job#employment_types Job#employment_types}, for example,
          #     "FULL_TIME", "PART_TIME".
          #   * company_size: histogram by {Google::Cloud::Talent::V4beta1::CompanySize CompanySize}, for example, "SMALL",
          #     "MEDIUM", "BIG".
          #   * publish_time_in_month: histogram by the {Job#publish_time} in months.
          #     Must specify list of numeric buckets in spec.
          #   * publish_time_in_year: histogram by the {Job#publish_time} in years.
          #     Must specify list of numeric buckets in spec.
          #   * degree_type: histogram by the {Job#degree_type}, for example,
          #     "Bachelors", "Masters".
          #   * job_level: histogram by the {Google::Cloud::Talent::V4beta1::Job#job_level Job#job_level}, for example, "Entry
          #     Level".
          #   * country: histogram by the country code of jobs, for example, "US", "FR".
          #   * admin1: histogram by the admin1 code of jobs, which is a global
          #     placeholder referring to the state, province, or the particular term a
          #     country uses to define the geographic structure below the country level,
          #     for example, "CA", "IL".
          #   * city: histogram by a combination of the "city name, admin1 code". For
          #     example,  "Mountain View, CA", "New York, NY".
          #   * admin1_country: histogram by a combination of the "admin1 code, country",
          #     for example, "CA, US", "IL, US".
          #   * city_coordinate: histogram by the city center's GPS coordinates (latitude
          #     and longitude), for example, 37.4038522,-122.0987765. Since the coordinates
          #     of a city center can change, customers may need to refresh them
          #     periodically.
          #   * locale: histogram by the {Google::Cloud::Talent::V4beta1::Job#language_code Job#language_code}, for example, "en-US",
          #     "fr-FR".
          #   * language: histogram by the language subtag of the {Google::Cloud::Talent::V4beta1::Job#language_code Job#language_code},
          #     for example, "en", "fr".
          #   * category: histogram by the {Google::Cloud::Talent::V4beta1::JobCategory JobCategory}, for example,
          #     "COMPUTER_AND_IT", "HEALTHCARE".
          #   * base_compensation_unit: histogram by the {CompensationUnit} of base
          #     salary, for example, "WEEKLY", "MONTHLY".
          #   * base_compensation: histogram by the base salary. Must specify list of
          #     numeric buckets to group results by.
          #   * annualized_base_compensation: histogram by the base annualized salary.
          #     Must specify list of numeric buckets to group results by.
          #   * annualized_total_compensation: histogram by the total annualized salary.
          #     Must specify list of numeric buckets to group results by.
          #   * string_custom_attribute: histogram by string {Google::Cloud::Talent::V4beta1::Job#custom_attributes Job#custom_attributes}.
          #     Values can be accessed via square bracket notations like
          #     string_custom_attribute["key1"].
          #   * numeric_custom_attribute: histogram by numeric {Google::Cloud::Talent::V4beta1::Job#custom_attributes Job#custom_attributes}.
          #     Values can be accessed via square bracket notations like
          #     numeric_custom_attribute["key1"]. Must specify list of numeric buckets to
          #     group results by.
          #
          #   Example expressions:
          #   * count(admin1)
          #   * count(base_compensation, [bucket(1000, 10000), bucket(10000, 100000),
          #     bucket(100000, MAX)])
          #   * count(string_custom_attribute["some-string-custom-attribute"])
          #   * count(numeric_custom_attribute["some-numeric-custom-attribute"],
          #     [bucket(MIN, 0, "negative"), bucket(0, MAX, "non-negative"])
          #   A hash of the same form as `Google::Cloud::Talent::V4beta1::HistogramQuery`
          #   can also be provided.
          # @param job_view [Google::Cloud::Talent::V4beta1::JobView]
          #   Optional.
          #
          #   The desired job attributes returned for jobs in the
          #   search response. Defaults to {JobView::SMALL} if no value is specified.
          # @param offset [Integer]
          #   Optional.
          #
          #   An integer that specifies the current offset (that is, starting result
          #   location, amongst the jobs deemed by the API as relevant) in search
          #   results. This field is only considered if {Google::Cloud::Talent::V4beta1::SearchJobsRequest#page_token page_token} is unset.
          #
          #   For example, 0 means to  return results starting from the first matching
          #   job, and 10 means to return from the 11th job. This can be used for
          #   pagination, (for example, pageSize = 10 and offset = 10 means to return
          #   from the second page).
          # @param page_size [Integer]
          #   The maximum number of resources contained in the underlying API
          #   response. If page streaming is performed per-resource, this
          #   parameter does not affect the return value. If page streaming is
          #   performed per-page, this determines the maximum number of
          #   resources in a page.
          # @param order_by [String]
          #   Optional.
          #
          #   The criteria determining how search results are sorted. Default is
          #   "relevance desc".
          #
          #   Supported options are:
          #
          #   * "relevance desc": By relevance descending, as determined by the API
          #     algorithms. Relevance thresholding of query results is only available
          #     with this ordering.
          #   * "posting`_`publish`_`time desc": By {Google::Cloud::Talent::V4beta1::Job#posting_publish_time Job#posting_publish_time}
          #     descending.
          #   * "posting`_`update`_`time desc": By {Google::Cloud::Talent::V4beta1::Job#posting_update_time Job#posting_update_time}
          #     descending.
          #   * "title": By {Google::Cloud::Talent::V4beta1::Job#title Job#title} ascending.
          #   * "title desc": By {Google::Cloud::Talent::V4beta1::Job#title Job#title} descending.
          #   * "annualized`_`base`_`compensation": By job's
          #     {Google::Cloud::Talent::V4beta1::CompensationInfo#annualized_base_compensation_range CompensationInfo#annualized_base_compensation_range} ascending. Jobs
          #     whose annualized base compensation is unspecified are put at the end of
          #     search results.
          #   * "annualized`_`base`_`compensation desc": By job's
          #     {Google::Cloud::Talent::V4beta1::CompensationInfo#annualized_base_compensation_range CompensationInfo#annualized_base_compensation_range} descending. Jobs
          #     whose annualized base compensation is unspecified are put at the end of
          #     search results.
          #   * "annualized`_`total`_`compensation": By job's
          #     {Google::Cloud::Talent::V4beta1::CompensationInfo#annualized_total_compensation_range CompensationInfo#annualized_total_compensation_range} ascending. Jobs
          #     whose annualized base compensation is unspecified are put at the end of
          #     search results.
          #   * "annualized`_`total`_`compensation desc": By job's
          #     {Google::Cloud::Talent::V4beta1::CompensationInfo#annualized_total_compensation_range CompensationInfo#annualized_total_compensation_range} descending. Jobs
          #     whose annualized base compensation is unspecified are put at the end of
          #     search results.
          #   * "custom`_`ranking desc": By the relevance score adjusted to the
          #     {SearchJobsRequest#custom_ranking_info#ranking_expression} with weight
          #     factor assigned by
          #     {SearchJobsRequest#custom_ranking_info#importance_level} in descending
          #     order.
          #   * "location`_`distance": By the distance between the location on jobs and
          #     locations specified in the
          #     {SearchJobsRequest#job_query#location_filters}.
          #     When this order is selected, the
          #     {SearchJobsRequest#job_query#location_filters} must not be empty. When
          #     a job has multiple locations, the location closest to one of the locations
          #     specified in the location filter will be used to calculate location
          #     distance. Distance is calculated by the distance between two lat/long
          #     coordinates, with a precision of 10e-4 degrees (11.3 meters).
          #     Jobs that don't have locations specified will be ranked below jobs having
          #     locations.
          #     Diversification strategy is still applied unless explicitly disabled in
          #     {Google::Cloud::Talent::V4beta1::SearchJobsRequest#diversification_level SearchJobsRequest#diversification_level}.
          # @param diversification_level [Google::Cloud::Talent::V4beta1::SearchJobsRequest::DiversificationLevel]
          #   Optional.
          #
          #   Controls whether highly similar jobs are returned next to each other in
          #   the search results. Jobs are identified as highly similar based on
          #   their titles, job categories, and locations. Highly similar results are
          #   clustered so that only one representative job of the cluster is
          #   displayed to the job seeker higher up in the results, with the other jobs
          #   being displayed lower down in the results.
          #
          #   Defaults to {Google::Cloud::Talent::V4beta1::SearchJobsRequest::DiversificationLevel::SIMPLE DiversificationLevel::SIMPLE} if no value
          #   is specified.
          # @param custom_ranking_info [Google::Cloud::Talent::V4beta1::SearchJobsRequest::CustomRankingInfo | Hash]
          #   Optional.
          #
          #   Controls over how job documents get ranked on top of existing relevance
          #   score (determined by API algorithm).
          #   A hash of the same form as `Google::Cloud::Talent::V4beta1::SearchJobsRequest::CustomRankingInfo`
          #   can also be provided.
          # @param disable_keyword_match [true, false]
          #   Optional.
          #
          #   Controls whether to disable exact keyword match on {Job#job_title},
          #   {Google::Cloud::Talent::V4beta1::Job#description Job#description}, {Google::Cloud::Talent::V4beta1::Job#company_display_name Job#company_display_name}, [Job.locations][0],
          #   {Google::Cloud::Talent::V4beta1::Job#qualifications Job#qualifications}. When disable keyword match is turned off, a
          #   keyword match returns jobs that do not match given category filters when
          #   there are matching keywords. For example, for the query "program manager,"
          #   a result is returned even if the job posting has the title "software
          #   developer," which doesn't fall into "program manager" ontology, but does
          #   have "program manager" appearing in its description.
          #
          #   For queries like "cloud" that don't contain title or
          #   location specific ontology, jobs with "cloud" keyword matches are returned
          #   regardless of this flag's value.
          #
          #   Please use {Company#keyword_searchable_custom_fields} or
          #   {Company#keyword_searchable_custom_attributes} if company specific
          #   globally matched custom field/attribute string values is needed. Enabling
          #   keyword match improves recall of subsequent search requests.
          #
          #   Defaults to false.
          # @param options [Google::Gax::CallOptions]
          #   Overrides the default settings for this call, e.g, timeout,
          #   retries, etc.
          # @yield [result, operation] Access the result along with the RPC operation
          # @yieldparam result [Google::Gax::PagedEnumerable<Google::Cloud::Talent::V4beta1::SearchJobsResponse::MatchingJob>]
          # @yieldparam operation [GRPC::ActiveCall::Operation]
          # @return [Google::Gax::PagedEnumerable<Google::Cloud::Talent::V4beta1::SearchJobsResponse::MatchingJob>]
          #   An enumerable of Google::Cloud::Talent::V4beta1::SearchJobsResponse::MatchingJob instances.
          #   See Google::Gax::PagedEnumerable documentation for other
          #   operations such as per-page iteration or access to the response
          #   object.
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   require "google/cloud/talent"
          #
          #   job_client = Google::Cloud::Talent::Job.new(version: :v4beta1)
          #   formatted_parent = Google::Cloud::Talent::V4beta1::JobServiceClient.tenant_path("[PROJECT]", "[TENANT]")
          #
          #   # TODO: Initialize `request_metadata`:
          #   request_metadata = {}
          #
          #   # Iterate over all results.
          #   job_client.search_jobs(formatted_parent, request_metadata).each do |element|
          #     # Process element.
          #   end
          #
          #   # Or iterate over results one page at a time.
          #   job_client.search_jobs(formatted_parent, request_metadata).each_page do |page|
          #     # Process each page at a time.
          #     page.each do |element|
          #       # Process element.
          #     end
          #   end

          def search_jobs \
              parent,
              request_metadata,
              search_mode: nil,
              job_query: nil,
              enable_broadening: nil,
              require_precise_result_size: nil,
              histogram_queries: nil,
              job_view: nil,
              offset: nil,
              page_size: nil,
              order_by: nil,
              diversification_level: nil,
              custom_ranking_info: nil,
              disable_keyword_match: nil,
              options: nil,
              &block
            req = {
              parent: parent,
              request_metadata: request_metadata,
              search_mode: search_mode,
              job_query: job_query,
              enable_broadening: enable_broadening,
              require_precise_result_size: require_precise_result_size,
              histogram_queries: histogram_queries,
              job_view: job_view,
              offset: offset,
              page_size: page_size,
              order_by: order_by,
              diversification_level: diversification_level,
              custom_ranking_info: custom_ranking_info,
              disable_keyword_match: disable_keyword_match
            }.delete_if { |_, v| v.nil? }
            req = Google::Gax::to_proto(req, Google::Cloud::Talent::V4beta1::SearchJobsRequest)
            @search_jobs.call(req, options, &block)
          end

          # Searches for jobs using the provided {Google::Cloud::Talent::V4beta1::SearchJobsRequest SearchJobsRequest}.
          #
          # This API call is intended for the use case of targeting passive job
          # seekers (for example, job seekers who have signed up to receive email
          # alerts about potential job opportunities), and has different algorithmic
          # adjustments that are targeted to passive job seekers.
          #
          # This call constrains the {Google::Cloud::Talent::V4beta1::Job#visibility visibility} of jobs
          # present in the database, and only returns jobs the caller has
          # permission to search against.
          #
          # @param parent [String]
          #   Required.
          #
          #   The resource name of the tenant to search within.
          #
          #   The format is "projects/{project_id}/tenants/{tenant_id}", for example,
          #   "projects/api-test-project/tenant/foo".
          #
          #   Tenant id is optional and the default tenant is used if unspecified, for
          #   example, "projects/api-test-project".
          # @param request_metadata [Google::Cloud::Talent::V4beta1::RequestMetadata | Hash]
          #   Required.
          #
          #   The meta information collected about the job searcher, used to improve the
          #   search quality of the service.. The identifiers, (such as `user_id`) are
          #   provided by users, and must be unique and consistent.
          #   A hash of the same form as `Google::Cloud::Talent::V4beta1::RequestMetadata`
          #   can also be provided.
          # @param search_mode [Google::Cloud::Talent::V4beta1::SearchJobsRequest::SearchMode]
          #   Optional.
          #
          #   Mode of a search.
          #
          #   Defaults to {Google::Cloud::Talent::V4beta1::SearchJobsRequest::SearchMode::JOB_SEARCH SearchMode::JOB_SEARCH}.
          # @param job_query [Google::Cloud::Talent::V4beta1::JobQuery | Hash]
          #   Optional.
          #
          #   Query used to search against jobs, such as keyword, location filters, etc.
          #   A hash of the same form as `Google::Cloud::Talent::V4beta1::JobQuery`
          #   can also be provided.
          # @param enable_broadening [true, false]
          #   Optional.
          #
          #   Controls whether to broaden the search when it produces sparse results.
          #   Broadened queries append results to the end of the matching results
          #   list.
          #
          #   Defaults to false.
          # @param require_precise_result_size [true, false]
          #   Optional.
          #
          #   Controls if the search job request requires the return of a precise
          #   count of the first 300 results. Setting this to `true` ensures
          #   consistency in the number of results per page. Best practice is to set this
          #   value to true if a client allows users to jump directly to a
          #   non-sequential search results page.
          #
          #   Enabling this flag may adversely impact performance.
          #
          #   Defaults to false.
          # @param histogram_queries [Array<Google::Cloud::Talent::V4beta1::HistogramQuery | Hash>]
          #   Optional.
          #
          #   An expression specifies a histogram request against matching jobs.
          #
          #   Expression syntax is an aggregation function call with histogram facets and
          #   other options.
          #
          #   Available aggregation function calls are:
          #   * `count(string_histogram_facet)`: Count the number of matching entities,
          #     for each distinct attribute value.
          #   * `count(numeric_histogram_facet, list of buckets)`: Count the number of
          #     matching entities within each bucket.
          #
          #   Data types:
          #
          #   * Histogram facet: facet names with format [a-zA-Z][a-zA-Z0-9_]+.
          #   * String: string like "any string with backslash escape for quote(\")."
          #   * Number: whole number and floating point number like 10, -1 and -0.01.
          #   * List: list of elements with comma(,) separator surrounded by square
          #     brackets, for example, [1, 2, 3] and ["one", "two", "three"].
          #
          #   Built-in constants:
          #
          #   * MIN (minimum number similar to java Double.MIN_VALUE)
          #   * MAX (maximum number similar to java Double.MAX_VALUE)
          #
          #   Built-in functions:
          #
          #   * bucket(start, end[, label]): bucket built-in function creates a bucket
          #     with range of [start, end). Note that the end is exclusive, for example,
          #     bucket(1, MAX, "positive number") or bucket(1, 10).
          #
          #   Job histogram facets:
          #
          #   * company_id: histogram by {Job#distributor_company_id}.
          #   * company_display_name: histogram by {Google::Cloud::Talent::V4beta1::Job#company_display_name Job#company_display_name}.
          #   * employment_type: histogram by {Google::Cloud::Talent::V4beta1::Job#employment_types Job#employment_types}, for example,
          #     "FULL_TIME", "PART_TIME".
          #   * company_size: histogram by {Google::Cloud::Talent::V4beta1::CompanySize CompanySize}, for example, "SMALL",
          #     "MEDIUM", "BIG".
          #   * publish_time_in_month: histogram by the {Job#publish_time} in months.
          #     Must specify list of numeric buckets in spec.
          #   * publish_time_in_year: histogram by the {Job#publish_time} in years.
          #     Must specify list of numeric buckets in spec.
          #   * degree_type: histogram by the {Job#degree_type}, for example,
          #     "Bachelors", "Masters".
          #   * job_level: histogram by the {Google::Cloud::Talent::V4beta1::Job#job_level Job#job_level}, for example, "Entry
          #     Level".
          #   * country: histogram by the country code of jobs, for example, "US", "FR".
          #   * admin1: histogram by the admin1 code of jobs, which is a global
          #     placeholder referring to the state, province, or the particular term a
          #     country uses to define the geographic structure below the country level,
          #     for example, "CA", "IL".
          #   * city: histogram by a combination of the "city name, admin1 code". For
          #     example,  "Mountain View, CA", "New York, NY".
          #   * admin1_country: histogram by a combination of the "admin1 code, country",
          #     for example, "CA, US", "IL, US".
          #   * city_coordinate: histogram by the city center's GPS coordinates (latitude
          #     and longitude), for example, 37.4038522,-122.0987765. Since the coordinates
          #     of a city center can change, customers may need to refresh them
          #     periodically.
          #   * locale: histogram by the {Google::Cloud::Talent::V4beta1::Job#language_code Job#language_code}, for example, "en-US",
          #     "fr-FR".
          #   * language: histogram by the language subtag of the {Google::Cloud::Talent::V4beta1::Job#language_code Job#language_code},
          #     for example, "en", "fr".
          #   * category: histogram by the {Google::Cloud::Talent::V4beta1::JobCategory JobCategory}, for example,
          #     "COMPUTER_AND_IT", "HEALTHCARE".
          #   * base_compensation_unit: histogram by the {CompensationUnit} of base
          #     salary, for example, "WEEKLY", "MONTHLY".
          #   * base_compensation: histogram by the base salary. Must specify list of
          #     numeric buckets to group results by.
          #   * annualized_base_compensation: histogram by the base annualized salary.
          #     Must specify list of numeric buckets to group results by.
          #   * annualized_total_compensation: histogram by the total annualized salary.
          #     Must specify list of numeric buckets to group results by.
          #   * string_custom_attribute: histogram by string {Google::Cloud::Talent::V4beta1::Job#custom_attributes Job#custom_attributes}.
          #     Values can be accessed via square bracket notations like
          #     string_custom_attribute["key1"].
          #   * numeric_custom_attribute: histogram by numeric {Google::Cloud::Talent::V4beta1::Job#custom_attributes Job#custom_attributes}.
          #     Values can be accessed via square bracket notations like
          #     numeric_custom_attribute["key1"]. Must specify list of numeric buckets to
          #     group results by.
          #
          #   Example expressions:
          #   * count(admin1)
          #   * count(base_compensation, [bucket(1000, 10000), bucket(10000, 100000),
          #     bucket(100000, MAX)])
          #   * count(string_custom_attribute["some-string-custom-attribute"])
          #   * count(numeric_custom_attribute["some-numeric-custom-attribute"],
          #     [bucket(MIN, 0, "negative"), bucket(0, MAX, "non-negative"])
          #   A hash of the same form as `Google::Cloud::Talent::V4beta1::HistogramQuery`
          #   can also be provided.
          # @param job_view [Google::Cloud::Talent::V4beta1::JobView]
          #   Optional.
          #
          #   The desired job attributes returned for jobs in the
          #   search response. Defaults to {JobView::SMALL} if no value is specified.
          # @param offset [Integer]
          #   Optional.
          #
          #   An integer that specifies the current offset (that is, starting result
          #   location, amongst the jobs deemed by the API as relevant) in search
          #   results. This field is only considered if {Google::Cloud::Talent::V4beta1::SearchJobsRequest#page_token page_token} is unset.
          #
          #   For example, 0 means to  return results starting from the first matching
          #   job, and 10 means to return from the 11th job. This can be used for
          #   pagination, (for example, pageSize = 10 and offset = 10 means to return
          #   from the second page).
          # @param page_size [Integer]
          #   The maximum number of resources contained in the underlying API
          #   response. If page streaming is performed per-resource, this
          #   parameter does not affect the return value. If page streaming is
          #   performed per-page, this determines the maximum number of
          #   resources in a page.
          # @param order_by [String]
          #   Optional.
          #
          #   The criteria determining how search results are sorted. Default is
          #   "relevance desc".
          #
          #   Supported options are:
          #
          #   * "relevance desc": By relevance descending, as determined by the API
          #     algorithms. Relevance thresholding of query results is only available
          #     with this ordering.
          #   * "posting`_`publish`_`time desc": By {Google::Cloud::Talent::V4beta1::Job#posting_publish_time Job#posting_publish_time}
          #     descending.
          #   * "posting`_`update`_`time desc": By {Google::Cloud::Talent::V4beta1::Job#posting_update_time Job#posting_update_time}
          #     descending.
          #   * "title": By {Google::Cloud::Talent::V4beta1::Job#title Job#title} ascending.
          #   * "title desc": By {Google::Cloud::Talent::V4beta1::Job#title Job#title} descending.
          #   * "annualized`_`base`_`compensation": By job's
          #     {Google::Cloud::Talent::V4beta1::CompensationInfo#annualized_base_compensation_range CompensationInfo#annualized_base_compensation_range} ascending. Jobs
          #     whose annualized base compensation is unspecified are put at the end of
          #     search results.
          #   * "annualized`_`base`_`compensation desc": By job's
          #     {Google::Cloud::Talent::V4beta1::CompensationInfo#annualized_base_compensation_range CompensationInfo#annualized_base_compensation_range} descending. Jobs
          #     whose annualized base compensation is unspecified are put at the end of
          #     search results.
          #   * "annualized`_`total`_`compensation": By job's
          #     {Google::Cloud::Talent::V4beta1::CompensationInfo#annualized_total_compensation_range CompensationInfo#annualized_total_compensation_range} ascending. Jobs
          #     whose annualized base compensation is unspecified are put at the end of
          #     search results.
          #   * "annualized`_`total`_`compensation desc": By job's
          #     {Google::Cloud::Talent::V4beta1::CompensationInfo#annualized_total_compensation_range CompensationInfo#annualized_total_compensation_range} descending. Jobs
          #     whose annualized base compensation is unspecified are put at the end of
          #     search results.
          #   * "custom`_`ranking desc": By the relevance score adjusted to the
          #     {SearchJobsRequest#custom_ranking_info#ranking_expression} with weight
          #     factor assigned by
          #     {SearchJobsRequest#custom_ranking_info#importance_level} in descending
          #     order.
          #   * "location`_`distance": By the distance between the location on jobs and
          #     locations specified in the
          #     {SearchJobsRequest#job_query#location_filters}.
          #     When this order is selected, the
          #     {SearchJobsRequest#job_query#location_filters} must not be empty. When
          #     a job has multiple locations, the location closest to one of the locations
          #     specified in the location filter will be used to calculate location
          #     distance. Distance is calculated by the distance between two lat/long
          #     coordinates, with a precision of 10e-4 degrees (11.3 meters).
          #     Jobs that don't have locations specified will be ranked below jobs having
          #     locations.
          #     Diversification strategy is still applied unless explicitly disabled in
          #     {Google::Cloud::Talent::V4beta1::SearchJobsRequest#diversification_level SearchJobsRequest#diversification_level}.
          # @param diversification_level [Google::Cloud::Talent::V4beta1::SearchJobsRequest::DiversificationLevel]
          #   Optional.
          #
          #   Controls whether highly similar jobs are returned next to each other in
          #   the search results. Jobs are identified as highly similar based on
          #   their titles, job categories, and locations. Highly similar results are
          #   clustered so that only one representative job of the cluster is
          #   displayed to the job seeker higher up in the results, with the other jobs
          #   being displayed lower down in the results.
          #
          #   Defaults to {Google::Cloud::Talent::V4beta1::SearchJobsRequest::DiversificationLevel::SIMPLE DiversificationLevel::SIMPLE} if no value
          #   is specified.
          # @param custom_ranking_info [Google::Cloud::Talent::V4beta1::SearchJobsRequest::CustomRankingInfo | Hash]
          #   Optional.
          #
          #   Controls over how job documents get ranked on top of existing relevance
          #   score (determined by API algorithm).
          #   A hash of the same form as `Google::Cloud::Talent::V4beta1::SearchJobsRequest::CustomRankingInfo`
          #   can also be provided.
          # @param disable_keyword_match [true, false]
          #   Optional.
          #
          #   Controls whether to disable exact keyword match on {Job#job_title},
          #   {Google::Cloud::Talent::V4beta1::Job#description Job#description}, {Google::Cloud::Talent::V4beta1::Job#company_display_name Job#company_display_name}, [Job.locations][0],
          #   {Google::Cloud::Talent::V4beta1::Job#qualifications Job#qualifications}. When disable keyword match is turned off, a
          #   keyword match returns jobs that do not match given category filters when
          #   there are matching keywords. For example, for the query "program manager,"
          #   a result is returned even if the job posting has the title "software
          #   developer," which doesn't fall into "program manager" ontology, but does
          #   have "program manager" appearing in its description.
          #
          #   For queries like "cloud" that don't contain title or
          #   location specific ontology, jobs with "cloud" keyword matches are returned
          #   regardless of this flag's value.
          #
          #   Please use {Company#keyword_searchable_custom_fields} or
          #   {Company#keyword_searchable_custom_attributes} if company specific
          #   globally matched custom field/attribute string values is needed. Enabling
          #   keyword match improves recall of subsequent search requests.
          #
          #   Defaults to false.
          # @param options [Google::Gax::CallOptions]
          #   Overrides the default settings for this call, e.g, timeout,
          #   retries, etc.
          # @yield [result, operation] Access the result along with the RPC operation
          # @yieldparam result [Google::Gax::PagedEnumerable<Google::Cloud::Talent::V4beta1::SearchJobsResponse::MatchingJob>]
          # @yieldparam operation [GRPC::ActiveCall::Operation]
          # @return [Google::Gax::PagedEnumerable<Google::Cloud::Talent::V4beta1::SearchJobsResponse::MatchingJob>]
          #   An enumerable of Google::Cloud::Talent::V4beta1::SearchJobsResponse::MatchingJob instances.
          #   See Google::Gax::PagedEnumerable documentation for other
          #   operations such as per-page iteration or access to the response
          #   object.
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   require "google/cloud/talent"
          #
          #   job_client = Google::Cloud::Talent::Job.new(version: :v4beta1)
          #   formatted_parent = Google::Cloud::Talent::V4beta1::JobServiceClient.tenant_path("[PROJECT]", "[TENANT]")
          #
          #   # TODO: Initialize `request_metadata`:
          #   request_metadata = {}
          #
          #   # Iterate over all results.
          #   job_client.search_jobs_for_alert(formatted_parent, request_metadata).each do |element|
          #     # Process element.
          #   end
          #
          #   # Or iterate over results one page at a time.
          #   job_client.search_jobs_for_alert(formatted_parent, request_metadata).each_page do |page|
          #     # Process each page at a time.
          #     page.each do |element|
          #       # Process element.
          #     end
          #   end

          def search_jobs_for_alert \
              parent,
              request_metadata,
              search_mode: nil,
              job_query: nil,
              enable_broadening: nil,
              require_precise_result_size: nil,
              histogram_queries: nil,
              job_view: nil,
              offset: nil,
              page_size: nil,
              order_by: nil,
              diversification_level: nil,
              custom_ranking_info: nil,
              disable_keyword_match: nil,
              options: nil,
              &block
            req = {
              parent: parent,
              request_metadata: request_metadata,
              search_mode: search_mode,
              job_query: job_query,
              enable_broadening: enable_broadening,
              require_precise_result_size: require_precise_result_size,
              histogram_queries: histogram_queries,
              job_view: job_view,
              offset: offset,
              page_size: page_size,
              order_by: order_by,
              diversification_level: diversification_level,
              custom_ranking_info: custom_ranking_info,
              disable_keyword_match: disable_keyword_match
            }.delete_if { |_, v| v.nil? }
            req = Google::Gax::to_proto(req, Google::Cloud::Talent::V4beta1::SearchJobsRequest)
            @search_jobs_for_alert.call(req, options, &block)
          end
        end
      end
    end
  end
end
