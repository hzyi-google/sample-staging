<?php
/*
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/*
 * DO NOT EDIT! This is a generated sample ("Request",  "create_dataset")
 */

// sample-metadata
//   title: Create Dataset
//   description: Create Dataset
//   usage: php samples/V1beta1/AutomlCreateDataset.php
// [START automl_create_dataset]
require __DIR__ . '/../../vendor/autoload.php';

use Google\Cloud\AutoMl\V1beta1\AutoMlClient;
use Google\Cloud\AutoMl\V1beta1\Dataset;
use Google\Cloud\AutoMl\V1beta1\TranslationDatasetMetadata;

/** Create Dataset */
function sampleCreateDataset()
{
    $autoMlClient = new AutoMlClient();

    $formattedParent = $autoMlClient->locationName('hzyi-186423', 'us-central1');
    $displayName = 'my_dataset';
    $sourceLanguageCode = 'en-GB';
    $targetLanguageCode = 'fr-CA';
    $translationDatasetMetadata = new TranslationDatasetMetadata();
    $translationDatasetMetadata->setSourceLanguageCode($sourceLanguageCode);
    $translationDatasetMetadata->setTargetLanguageCode($targetLanguageCode);
    $dataset = new Dataset();
    $dataset->setDisplayName($displayName);
    $dataset->setTranslationDatasetMetadata($translationDatasetMetadata);

    try {
        $response = $autoMlClient->createDataset($formattedParent, $dataset);
        printf("Dataset name: %s" . PHP_EOL, $response->getName());
    } finally {
        $autoMlClient->close();
    }
}
// [END automl_create_dataset]

sampleCreateDataset();
