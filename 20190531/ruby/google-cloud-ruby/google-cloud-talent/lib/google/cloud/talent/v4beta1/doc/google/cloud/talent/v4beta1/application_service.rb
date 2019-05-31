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
        # The Request of the CreateApplication method.
        # @!attribute [rw] parent
        #   @return [String]
        #     Required.
        #
        #     Resource name of the profile under which the application is created.
        #
        #     The format is
        #     "projects/{project_id}/tenants/{tenant_id}/profiles/{profile_id}", for
        #     example, "projects/test-project/tenants/test-tenant/profiles/test-profile".
        # @!attribute [rw] application
        #   @return [Google::Cloud::Talent::V4beta1::Application]
        #     Required.
        #
        #     The application to be created.
        class CreateApplicationRequest; end

        # Request for getting a application by name.
        # @!attribute [rw] name
        #   @return [String]
        #     Required.
        #
        #     The resource name of the application to be retrieved.
        #
        #     The format is
        #     "projects/{project_id}/tenants/{tenant_id}/profiles/{profile_id}/applications/{application_id}",
        #     for example,
        #     "projects/test-project/tenants/test-tenant/profiles/test-profile/applications/test-application".
        class GetApplicationRequest; end

        # Request for updating a specified application.
        # @!attribute [rw] application
        #   @return [Google::Cloud::Talent::V4beta1::Application]
        #     Required.
        #
        #     The application resource to replace the current resource in the system.
        # @!attribute [rw] update_mask
        #   @return [Google::Protobuf::FieldMask]
        #     Optional but strongly recommended for the best service
        #     experience.
        #
        #     If {Google::Cloud::Talent::V4beta1::UpdateApplicationRequest#update_mask update_mask} is provided, only the specified fields in
        #     {Google::Cloud::Talent::V4beta1::UpdateApplicationRequest#application application} are updated. Otherwise all the fields are updated.
        #
        #     A field mask to specify the application fields to be updated. Only
        #     top level fields of {Google::Cloud::Talent::V4beta1::Application Application} are supported.
        class UpdateApplicationRequest; end

        # Request to delete a application.
        # @!attribute [rw] name
        #   @return [String]
        #     Required.
        #
        #     The resource name of the application to be deleted.
        #
        #     The format is
        #     "projects/{project_id}/tenants/{tenant_id}/profiles/{profile_id}/applications/{application_id}",
        #     for example,
        #     "projects/test-project/tenants/test-tenant/profiles/test-profile/applications/test-application".
        class DeleteApplicationRequest; end

        # List applications for which the client has ACL visibility.
        # @!attribute [rw] parent
        #   @return [String]
        #     Required.
        #
        #     Resource name of the profile under which the application is created.
        #
        #     The format is
        #     "projects/{project_id}/tenants/{tenant_id}/profiles/{profile_id}", for
        #     example, "projects/test-project/tenants/test-tenant/profiles/test-profile".
        # @!attribute [rw] page_token
        #   @return [String]
        #     Optional.
        #
        #     The starting indicator from which to return results.
        # @!attribute [rw] page_size
        #   @return [Integer]
        #     Optional.
        #
        #     The maximum number of applications to be returned, at most 100.
        #     Default is 100 if a non-positive number is provided.
        class ListApplicationsRequest; end

        # Output only.
        #
        # The List applications response object.
        # @!attribute [rw] applications
        #   @return [Array<Google::Cloud::Talent::V4beta1::Application>]
        #     Applications for the current client.
        # @!attribute [rw] next_page_token
        #   @return [String]
        #     A token to retrieve the next page of results.
        # @!attribute [rw] metadata
        #   @return [Google::Cloud::Talent::V4beta1::ResponseMetadata]
        #     Additional information for the API invocation, such as the request
        #     tracking id.
        class ListApplicationsResponse; end
      end
    end
  end
end