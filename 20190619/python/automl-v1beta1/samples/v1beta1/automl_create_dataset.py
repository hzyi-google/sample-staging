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

# DO NOT EDIT! This is a generated sample ("Request",  "create_dataset")

# To install the latest published package dependency, execute the following:
#   pip install google-cloud-automl

# sample-metadata
#   title: Create Dataset
#   description: Create Dataset
#   usage: python3 samples/v1beta1/automl_create_dataset.py
import sys

# [START automl_create_dataset]

from google.cloud import automl_v1beta1


def sample_create_dataset():
    """Create Dataset"""

    client = automl_v1beta1.AutoMlClient()

    parent = client.location_path('hzyi-186423', 'us-central1')
    display_name = 'my_dataset'
    source_language_code = 'en-GB'
    target_language_code = 'fr-CA'
    translation_dataset_metadata = {
        'source_language_code': source_language_code,
        'target_language_code': target_language_code
    }
    dataset = {
        'display_name': display_name,
        'translation_dataset_metadata': translation_dataset_metadata
    }

    response = client.create_dataset(parent, dataset)
    print(u'Dataset name: {}'.format(response.name))


# [END automl_create_dataset]


def main():
    sample_create_dataset()


if __name__ == '__main__':
    main()
