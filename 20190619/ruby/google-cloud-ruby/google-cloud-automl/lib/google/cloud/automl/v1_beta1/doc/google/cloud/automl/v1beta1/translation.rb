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

module Google
  module Cloud
    module Automl
      module V1beta1
        # Dataset metadata that is specific to translation.
        # @!attribute [rw] source_language_code
        #   @return [String]
        #     Required. The BCP-47 language code of the source language.
        # @!attribute [rw] target_language_code
        #   @return [String]
        #     Required. The BCP-47 language code of the target language.
        class TranslationDatasetMetadata; end

        # Evaluation metrics for the dataset.
        # @!attribute [rw] bleu_score
        #   @return [Float]
        #     Output only. BLEU score.
        # @!attribute [rw] base_bleu_score
        #   @return [Float]
        #     Output only. BLEU score for base model.
        class TranslationEvaluationMetrics; end

        # Model metadata that is specific to translation.
        # @!attribute [rw] base_model
        #   @return [String]
        #     The resource name of the model to use as a baseline to train the custom
        #     model. If unset, we use the default base model provided by Google
        #     Translate. Format:
        #     `projects/{project_id}/locations/{location_id}/models/{model_id}`
        # @!attribute [rw] source_language_code
        #   @return [String]
        #     Output only. Inferred from the dataset.
        #     The source languge (The BCP-47 language code) that is used for training.
        # @!attribute [rw] target_language_code
        #   @return [String]
        #     Output only. The target languge (The BCP-47 language code) that is used for
        #     training.
        class TranslationModelMetadata; end

        # Annotation details specific to translation.
        # @!attribute [rw] translated_content
        #   @return [Google::Cloud::Automl::V1beta1::TextSnippet]
        #     Output only . The translated content.
        class TranslationAnnotation; end
      end
    end
  end
end