// DO NOT EDIT! This is a generated sample ("Request",  "create_dataset")
'use strict';

// sample-metadata:
//   title: Create Dataset
//   description: Create Dataset
//   usage: node samples/v1beta1/automl_create_dataset.js

// [START automl_create_dataset]

const automl = require('@google-cloud/automl').v1beta1;

/** Create Dataset */
function sampleCreateDataset() {
  const client = new automl.AutoMlClient();
  const formattedParent = client.locationPath('hzyi-186423', 'us-central1');
  const displayName = 'my_dataset';
  const sourceLanguageCode = 'en-GB';
  const targetLanguageCode = 'fr-CA';
  const translationDatasetMetadata = {
    sourceLanguageCode: sourceLanguageCode,
    targetLanguageCode: targetLanguageCode,
  };
  const dataset = {
    displayName: displayName,
    translationDatasetMetadata: translationDatasetMetadata,
  };
  const request = {
    parent: formattedParent,
    dataset: dataset,
  };
  client.createDataset(request)
    .then(responses => {
      const response = responses[0];
      console.log(`Dataset name: ${response.name}`);
    })
    .catch(err => {
      console.error(err);
    });
}

// [END automl_create_dataset]
// tslint:disable-next-line:no-any

sampleCreateDataset();