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
// DO NOT EDIT! This is a generated sample ("Request",  "create_dataset")
// sample-metadata:
//   title: Create Dataset
//   description: Create Dataset
//   usage: gradle run -PmainClass=com.google.cloud.examples.automl.v1beta1.AutomlCreateDataset

package com.google.cloud.examples.automl.v1beta1;

import com.google.cloud.automl.v1beta1.AutoMlClient;
import com.google.cloud.automl.v1beta1.CreateDatasetRequest;
import com.google.cloud.automl.v1beta1.Dataset;
import com.google.cloud.automl.v1beta1.LocationName;
import com.google.cloud.automl.v1beta1.TranslationDatasetMetadata;

public class AutomlCreateDataset {
  // [START automl_create_dataset]
  /*
   * Please include the following imports to run this sample.
   *
   * import com.google.cloud.automl.v1beta1.AutoMlClient;
   * import com.google.cloud.automl.v1beta1.CreateDatasetRequest;
   * import com.google.cloud.automl.v1beta1.Dataset;
   * import com.google.cloud.automl.v1beta1.LocationName;
   * import com.google.cloud.automl.v1beta1.TranslationDatasetMetadata;
   */

  /** Create Dataset */
  public static void sampleCreateDataset() {
    try (AutoMlClient autoMlClient = AutoMlClient.create()) {
      LocationName parent = LocationName.of("hzyi-186423", "us-central1");
      String displayName = "my_dataset";
      String sourceLanguageCode = "en-GB";
      String targetLanguageCode = "fr-CA";
      TranslationDatasetMetadata translationDatasetMetadata =
          TranslationDatasetMetadata.newBuilder()
              .setSourceLanguageCode(sourceLanguageCode)
              .setTargetLanguageCode(targetLanguageCode)
              .build();
      Dataset dataset =
          Dataset.newBuilder()
              .setDisplayName(displayName)
              .setTranslationDatasetMetadata(translationDatasetMetadata)
              .build();
      CreateDatasetRequest request =
          CreateDatasetRequest.newBuilder()
              .setParent(parent.toString())
              .setDataset(dataset)
              .build();
      Dataset response = autoMlClient.createDataset(request);
      System.out.printf("Dataset name: %s\n", response.getName());
    } catch (Exception exception) {
      System.err.println("Failed to create the client due to: " + exception);
    }
  }
  // [END automl_create_dataset]

  public static void main(String[] args) {
    sampleCreateDataset();
  }
}
