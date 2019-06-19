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
 * DO NOT EDIT! This is a generated sample ("LongRunningStartThenCancel",  "create_model")
 */

// sample-metadata
//   title: Create Model
//   description: Create Model
//   usage: php samples/V1beta1/AutomlNaturalLanguageEntityCreateModel.php [--project "GCP Project"]
// [START automl_natural_language_entity_create_model]
require __DIR__ . '/../../vendor/autoload.php';

use Google\Cloud\AutoMl\V1beta1\AutoMlClient;
use Google\Cloud\AutoMl\V1beta1\Model;
use Google\Cloud\AutoMl\V1beta1\TranslationModelMetadata;

/** Create Model */
function sampleCreateModel($project)
{
    $autoMlClient = new AutoMlClient();

    // $project = 'GCP Project';
    $formattedParent = $autoMlClient->locationName($project, 'us-central1');
    $datasetId = 'mydatasetid';
    $displayName = 'my_first_dataset';
    $translationModelMetadata = new TranslationModelMetadata();
    $model = new Model();
    $model->setDatasetId($datasetId);
    $model->setDisplayName($displayName);
    $model->setTranslationModelMetadata($translationModelMetadata);

    try {
        $operation = $autoMlClient->createModel($formattedParent, $model);

        // Retrieve the name of the operation.
        printf("Operation name: %s" . PHP_EOL, $operation->getName());
        // Cancel the operation.
        $autoMlClient.getOperationsClient()->cancelOperation($operation->getName());
    } finally {
        $autoMlClient->close();
    }
}
// [END automl_natural_language_entity_create_model]

$opts = [
    'project::',
];

$defaultOptions = [
    'project' => 'GCP Project',
];

$options = getopt('', $opts);
$options += $defaultOptions;

$project = $options['project'];

sampleCreateModel($project);
