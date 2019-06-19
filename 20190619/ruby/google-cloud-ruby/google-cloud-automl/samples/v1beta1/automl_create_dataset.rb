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

# DO NOT EDIT! This is a generated sample ("Request",  "create_dataset")

# sample-metadata
#   title: Create Dataset
#   description: Create Dataset
#   bundle exec ruby samples/v1beta1/automl_create_dataset.rb

require "google/cloud/automl/v1_beta1"

# [START automl_create_dataset]

# Create Dataset
def sample_create_dataset
  # Instantiate a client
  auto_ml_client = Google::Cloud::Automl::V1Beta1::AutoMl.new version: :v1beta1

  formatted_parent = auto_ml_client.class.location_path("hzyi-186423", "us-central1")
  display_name = "my_dataset"
  source_language_code = "en-GB"
  target_language_code = "fr-CA"
  translation_dataset_metadata = { source_language_code: source_language_code, target_language_code: target_language_code }
  dataset = { display_name: display_name, translation_dataset_metadata: translation_dataset_metadata }

  response = auto_ml_client.create_dataset(formatted_parent, dataset)
  puts "Dataset name: #{response.name}"
end
# [END automl_create_dataset]


require "optparse"

if $PROGRAM_NAME == __FILE__
  sample_create_dataset
end
