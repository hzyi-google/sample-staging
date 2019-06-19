// DO NOT EDIT! This is a generated sample ("LongRunningStartThenCancel",  "create_model")
'use strict';

// sample-metadata:
//   title: Create Model
//   description: Create Model
//   usage: node samples/v1beta1/automl_natural_language_entity_create_model.js [--project "GCP Project"]

// [START automl_natural_language_entity_create_model]

const automl = require('@google-cloud/automl').v1beta1;

/** Create Model */
async function sampleCreateModel(project) {
  const client = new automl.AutoMlClient();
  // const project = 'GCP Project';
  const formattedParent = client.locationPath(project, 'us-central1');
  const datasetId = 'mydatasetid';
  const displayName = 'my_first_dataset';
  const translationModelMetadata = {};
  const model = {
    datasetId: datasetId,
    displayName: displayName,
    translationModelMetadata: translationModelMetadata,
  };
  const request = {
    parent: formattedParent,
    model: model,
  };
  const [operation] = await client.createModel(request);

  // Retrieve the name of the operation.
  console.log(`Operation name: ${operation.name}`);
  // Cancel the operation.
  await client.operationsClient.cancelOperation({name: operation.name});
}

// [END automl_natural_language_entity_create_model]
// tslint:disable-next-line:no-any

const argv = require(`yargs`)
  .option('project', {
    default: 'GCP Project',
    string: true
  })
  .argv;

sampleCreateModel(argv.project);