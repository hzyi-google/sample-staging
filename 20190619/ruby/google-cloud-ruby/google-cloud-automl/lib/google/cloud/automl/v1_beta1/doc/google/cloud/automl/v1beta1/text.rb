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
        # Dataset metadata for classification.
        # @!attribute [rw] classification_type
        #   @return [Google::Cloud::Automl::V1beta1::ClassificationType]
        #     Required.
        #     Type of the classification problem.
        class TextClassificationDatasetMetadata; end

        # Model metadata that is specific to text classification.
        class TextClassificationModelMetadata; end

        # Dataset metadata that is specific to text extraction
        class TextExtractionDatasetMetadata; end

        # Model metadata that is specific to text extraction.
        class TextExtractionModelMetadata; end

        # Dataset metadata for text sentiment.
        # @!attribute [rw] sentiment_max
        #   @return [Integer]
        #     Required.
        #     A sentiment is expressed as an integer ordinal, where higher value
        #     means a more positive sentiment. The range of sentiments that will be used
        #     is between 0 and sentiment_max (inclusive on both ends), and all the values
        #     in the range must be represented in the dataset before a model can be
        #     created.
        #     sentiment_max value must be between 1 and 10 (inclusive).
        class TextSentimentDatasetMetadata; end

        # Model metadata that is specific to text sentiment.
        class TextSentimentModelMetadata; end
      end
    end
  end
end