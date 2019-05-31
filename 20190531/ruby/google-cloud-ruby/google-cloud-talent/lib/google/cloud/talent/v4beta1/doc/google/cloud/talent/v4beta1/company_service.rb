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

module Google
  module Cloud
    module Talent
      module V4beta1
        # The Request of the CreateCompany method.
        # @!attribute [rw] parent
        #   @return [String]
        #     Required.
        #
        #     Resource name of the tenant under which the company is created.
        #
        #     The format is "projects/{project_id}/tenants/{tenant_id}", for example,
        #     "projects/api-test-project/tenant/foo".
        #
        #     Tenant id is optional and a default tenant is created if unspecified, for
        #     example, "projects/api-test-project".
        # @!attribute [rw] company
        #   @return [Google::Cloud::Talent::V4beta1::Company]
        #     Required.
        #
        #     The company to be created.
        class CreateCompanyRequest; end

        # Request for getting a company by name.
        # @!attribute [rw] name
        #   @return [String]
        #     Required.
        #
        #     The resource name of the company to be retrieved.
        #
        #     The format is
        #     "projects/{project_id}/tenants/{tenant_id}/companies/{company_id}", for
        #     example, "projects/api-test-project/tenants/foo/companies/bar".
        #
        #     Tenant id is optional and the default tenant is used if unspecified, for
        #     example, "projects/api-test-project/companies/bar".
        class GetCompanyRequest; end

        # Request for updating a specified company.
        # @!attribute [rw] company
        #   @return [Google::Cloud::Talent::V4beta1::Company]
        #     Required.
        #
        #     The company resource to replace the current resource in the system.
        # @!attribute [rw] update_mask
        #   @return [Google::Protobuf::FieldMask]
        #     Optional but strongly recommended for the best service
        #     experience.
        #
        #     If {Google::Cloud::Talent::V4beta1::UpdateCompanyRequest#update_mask update_mask} is provided, only the specified fields in
        #     {Google::Cloud::Talent::V4beta1::UpdateCompanyRequest#company company} are updated. Otherwise all the fields are updated.
        #
        #     A field mask to specify the company fields to be updated. Only
        #     top level fields of {Google::Cloud::Talent::V4beta1::Company Company} are supported.
        class UpdateCompanyRequest; end

        # Request to delete a company.
        # @!attribute [rw] name
        #   @return [String]
        #     Required.
        #
        #     The resource name of the company to be deleted.
        #
        #     The format is
        #     "projects/{project_id}/tenants/{tenant_id}/companies/{company_id}", for
        #     example, "projects/api-test-project/tenants/foo/companies/bar".
        #
        #     Tenant id is optional and the default tenant is used if unspecified, for
        #     example, "projects/api-test-project/companies/bar".
        class DeleteCompanyRequest; end

        # List companies for which the client has ACL visibility.
        # @!attribute [rw] parent
        #   @return [String]
        #     Required.
        #
        #     Resource name of the tenant under which the company is created.
        #
        #     The format is "projects/{project_id}/tenants/{tenant_id}", for example,
        #     "projects/api-test-project/tenant/foo".
        #
        #     Tenant id is optional and the default tenant is used if unspecified, for
        #     example, "projects/api-test-project".
        # @!attribute [rw] page_token
        #   @return [String]
        #     Optional.
        #
        #     The starting indicator from which to return results.
        # @!attribute [rw] page_size
        #   @return [Integer]
        #     Optional.
        #
        #     The maximum number of companies to be returned, at most 100.
        #     Default is 100 if a non-positive number is provided.
        # @!attribute [rw] require_open_jobs
        #   @return [true, false]
        #     Optional.
        #
        #     Set to true if the companies requested must have open jobs.
        #
        #     Defaults to false.
        #
        #     If true, at most {Google::Cloud::Talent::V4beta1::ListCompaniesRequest#page_size page_size} of companies are fetched, among which
        #     only those with open jobs are returned.
        class ListCompaniesRequest; end

        # Output only.
        #
        # The List companies response object.
        # @!attribute [rw] companies
        #   @return [Array<Google::Cloud::Talent::V4beta1::Company>]
        #     Companies for the current client.
        # @!attribute [rw] next_page_token
        #   @return [String]
        #     A token to retrieve the next page of results.
        # @!attribute [rw] metadata
        #   @return [Google::Cloud::Talent::V4beta1::ResponseMetadata]
        #     Additional information for the API invocation, such as the request
        #     tracking id.
        class ListCompaniesResponse; end
      end
    end
  end
end