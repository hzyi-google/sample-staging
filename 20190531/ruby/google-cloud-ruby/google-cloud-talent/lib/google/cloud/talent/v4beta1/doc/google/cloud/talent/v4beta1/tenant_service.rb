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
        # The Request of the CreateTenant method.
        # @!attribute [rw] parent
        #   @return [String]
        #     Required.
        #
        #     Resource name of the project under which the tenant is created.
        #
        #     The format is "projects/{project_id}", for example,
        #     "projects/api-test-project".
        # @!attribute [rw] tenant
        #   @return [Google::Cloud::Talent::V4beta1::Tenant]
        #     Required.
        #
        #     The tenant to be created.
        class CreateTenantRequest; end

        # Request for getting a tenant by name.
        # @!attribute [rw] name
        #   @return [String]
        #     Required.
        #
        #     The resource name of the tenant to be retrieved.
        #
        #     The format is "projects/{project_id}/tenants/{tenant_id}", for example,
        #     "projects/api-test-project/tenants/foo".
        class GetTenantRequest; end

        # Request for updating a specified tenant.
        # @!attribute [rw] tenant
        #   @return [Google::Cloud::Talent::V4beta1::Tenant]
        #     Required.
        #
        #     The tenant resource to replace the current resource in the system.
        # @!attribute [rw] update_mask
        #   @return [Google::Protobuf::FieldMask]
        #     Optional but strongly recommended for the best service
        #     experience.
        #
        #     If {Google::Cloud::Talent::V4beta1::UpdateTenantRequest#update_mask update_mask} is provided, only the specified fields in
        #     {Google::Cloud::Talent::V4beta1::UpdateTenantRequest#tenant tenant} are updated. Otherwise all the fields are updated.
        #
        #     A field mask to specify the tenant fields to be updated. Only
        #     top level fields of {Google::Cloud::Talent::V4beta1::Tenant Tenant} are supported.
        class UpdateTenantRequest; end

        # Request to delete a tenant.
        # @!attribute [rw] name
        #   @return [String]
        #     Required.
        #
        #     The resource name of the tenant to be deleted.
        #
        #     The format is "projects/{project_id}/tenants/{tenant_id}", for example,
        #     "projects/api-test-project/tenants/foo".
        class DeleteTenantRequest; end

        # List tenants for which the client has ACL visibility.
        # @!attribute [rw] parent
        #   @return [String]
        #     Required.
        #
        #     Resource name of the project under which the tenant is created.
        #
        #     The format is "projects/{project_id}", for example,
        #     "projects/api-test-project".
        # @!attribute [rw] page_token
        #   @return [String]
        #     Optional.
        #
        #     The starting indicator from which to return results.
        # @!attribute [rw] page_size
        #   @return [Integer]
        #     Optional.
        #
        #     The maximum number of tenants to be returned, at most 100.
        #     Default is 100 if a non-positive number is provided.
        class ListTenantsRequest; end

        # Output only.
        #
        # The List tenants response object.
        # @!attribute [rw] tenants
        #   @return [Array<Google::Cloud::Talent::V4beta1::Tenant>]
        #     Tenants for the current client.
        # @!attribute [rw] next_page_token
        #   @return [String]
        #     A token to retrieve the next page of results.
        # @!attribute [rw] metadata
        #   @return [Google::Cloud::Talent::V4beta1::ResponseMetadata]
        #     Additional information for the API invocation, such as the request
        #     tracking id.
        class ListTenantsResponse; end
      end
    end
  end
end