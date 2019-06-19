# -*- coding: utf-8 -*-
#
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

# To install the latest published package dependency, execute the following:
#   pip install google-cloud-automl

# sample-metadata
#   title: Create Model
#   description: Create Model
#   usage: python3 samples/v1beta1/automl_natural_language_entity_create_model.py [--project "GCP Project"]
import sys

# [START automl_natural_language_entity_create_model]

from google.cloud import automl_v1beta1


def sample_create_model(project):
    """Create Model"""

    client = automl_v1beta1.AutoMlClient()

    # project = 'GCP Project'
    parent = client.location_path(project, 'us-central1')
    dataset_id = 'mydatasetid'
    display_name = 'my_first_dataset'
    translation_model_metadata = {}
    model = {
        'dataset_id': dataset_id,
        'display_name': display_name,
        'translation_model_metadata': translation_model_metadata
    }

    operation = client.create_model(parent, model).operation

    # Retrieve the name of the operation.
    print(u'Operation name: {}'.format(operation.name))
    # Cancel the operation.
    client.transport._operations_client.cancel_operation(operation.name)


# [END automl_natural_language_entity_create_model]


def main():
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument('--project', type=str, default='GCP Project')
    args = parser.parse_args()

    sample_create_model(args.project)


if __name__ == '__main__':
    main()
