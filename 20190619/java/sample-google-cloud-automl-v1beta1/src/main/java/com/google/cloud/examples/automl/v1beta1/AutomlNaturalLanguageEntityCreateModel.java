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
// DO NOT EDIT! This is a generated sample ("LongRunningStartThenCancel",  "create_model")
// sample-metadata:
//   title: Create Model
//   description: Create Model
//   usage: gradle run -PmainClass=com.google.cloud.examples.automl.v1beta1.AutomlNaturalLanguageEntityCreateModel [--args='[--project "GCP Project"]']

package com.google.cloud.examples.automl.v1beta1;

import com.google.api.gax.longrunning.OperationFuture;
import com.google.cloud.automl.v1beta1.AutoMlClient;
import com.google.cloud.automl.v1beta1.CreateModelRequest;
import com.google.cloud.automl.v1beta1.LocationName;
import com.google.cloud.automl.v1beta1.Model;
import com.google.cloud.automl.v1beta1.OperationMetadata;
import com.google.cloud.automl.v1beta1.TranslationModelMetadata;
import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.DefaultParser;
import org.apache.commons.cli.Option;
import org.apache.commons.cli.Options;

public class AutomlNaturalLanguageEntityCreateModel {
  // [START automl_natural_language_entity_create_model]
  /*
   * Please include the following imports to run this sample.
   *
   * import com.google.api.gax.longrunning.OperationFuture;
   * import com.google.cloud.automl.v1beta1.AutoMlClient;
   * import com.google.cloud.automl.v1beta1.CreateModelRequest;
   * import com.google.cloud.automl.v1beta1.LocationName;
   * import com.google.cloud.automl.v1beta1.Model;
   * import com.google.cloud.automl.v1beta1.OperationMetadata;
   * import com.google.cloud.automl.v1beta1.TranslationModelMetadata;
   */

  /** Create Model */
  public static void sampleCreateModel(String project) {
    try (AutoMlClient autoMlClient = AutoMlClient.create()) {
      // project = "GCP Project";
      LocationName parent = LocationName.of(project, "us-central1");
      String datasetId = "TRL6298379685339451709";
      String displayName = "my_first_dataset";
      TranslationModelMetadata translationModelMetadata =
          TranslationModelMetadata.newBuilder().build();
      Model model =
          Model.newBuilder()
              .setDatasetId(datasetId)
              .setDisplayName(displayName)
              .setTranslationModelMetadata(translationModelMetadata)
              .build();
      CreateModelRequest request =
          CreateModelRequest.newBuilder().setParent(parent.toString()).setModel(model).build();
      OperationFuture<Model, OperationMetadata> operation =
          autoMlClient.createModelOperationCallable().futureCall(request);

      // Retrieve the name of the operation.
      System.out.printf("Operation name: %s\n", operation.getName());
      // Cancel the operation.
      autoMlClient.getOperationsClient().cancelOperation(operation.getName());
    } catch (Exception exception) {
      System.err.println("Failed to create the client due to: " + exception);
    }
  }
  // [END automl_natural_language_entity_create_model]

  public static void main(String[] args) throws Exception {
    Options options = new Options();
    options.addOption(Option.builder("").required(false).hasArg(true).longOpt("project").build());

    CommandLine cl = (new DefaultParser()).parse(options, args);
    String project = cl.getOptionValue("project", "GCP Project");

    sampleCreateModel(project);
  }
}
