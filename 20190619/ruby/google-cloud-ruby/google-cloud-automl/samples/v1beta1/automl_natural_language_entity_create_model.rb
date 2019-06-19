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

# DO NOT EDIT! This is a generated sample ("LongRunningStartThenCancel",  "create_model")

# sample-metadata
#   title: Create Model
#   description: Create Model
#   bundle exec ruby samples/v1beta1/automl_natural_language_entity_create_model.rb [--project "GCP Project"]

require "google/cloud/automl/v1_beta1"

# [START automl_natural_language_entity_create_model]

# Create Model
def sample_create_model project
  # Instantiate a client
  auto_ml_client = Google::Cloud::Automl::V1Beta1::AutoMl.new version: :v1beta1

  # project = "GCP Project"
  formatted_parent = auto_ml_client.class.location_path(project, "us-central1")
  dataset_id = "mydatasetid"
  display_name = "my_first_dataset"
  translation_model_metadata = {}
  model = {
    dataset_id: dataset_id,
    display_name: display_name,
    translation_model_metadata: translation_model_metadata
  }

  # Make the long-running operation request
  operation = auto_ml_client.create_model(formatted_parent, model)

  # Retrieve the name of the operation.
  puts "Operation name: #{response.name}"
  # Cancel the operation.
  operation.cancel
end
# [END automl_natural_language_entity_create_model]


require "optparse"

if $PROGRAM_NAME == __FILE__

  project = "GCP Project"

  ARGV.options do |opts|
    opts.on("--project=val") { |val| project = val }
    opts.parse!
  end


  sample_create_model(project)
end
