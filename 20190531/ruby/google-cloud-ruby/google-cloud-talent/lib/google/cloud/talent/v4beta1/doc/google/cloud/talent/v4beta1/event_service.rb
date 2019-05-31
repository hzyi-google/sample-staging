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
        # The report event request.
        # @!attribute [rw] parent
        #   @return [String]
        #     Required.
        #
        #     Resource name of the tenant under which the event is created.
        #
        #     The format is "projects/{project_id}/tenants/{tenant_id}", for example,
        #     "projects/api-test-project/tenant/foo".
        #
        #     Tenant id is optional and a default tenant is created if unspecified, for
        #     example, "projects/api-test-project".
        # @!attribute [rw] client_event
        #   @return [Google::Cloud::Talent::V4beta1::ClientEvent]
        #     Required.
        #
        #     Events issued when end user interacts with customer's application that
        #     uses Cloud Talent Solution.
        class CreateClientEventRequest; end
      end
    end
  end
end