// Copyright 2019 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Generated code. DO NOT EDIT!

// This is a generated sample ("Request", "language_entity_sentiment_gcs")

// [START language_entity_sentiment_gcs]
// FIXME: import everything this sample needs
public class LanguageEntitySentimentGcs
{
    // [START language_entity_sentiment_gcs_core]
    /// <summary>
    /// Analyze Sentiment of Entities in Text stored in GCS
    /// </summary>
    public static void SampleAnalyzeEntitySentiment(string gcsUr)
    {
        LanguageServiceClient languageServiceClient = LanguageServiceClient.Create();
        // string gcsUr = "gs://cloud-samples-data/language/entity-sentiment.txt"
        AnalyzeEntitySentimentRequest request = new AnalyzeEntitySentimentRequest
        {
            Document = new Document
            {
                Type = Document.Types.Type.PlainText,
                GcsContentUri = "gs://cloud-samples-data/language/entity-sentiment.txt",
            },
        };
        AnalyzeEntitySentimentResponse response = languageServiceClient.AnalyzeEntitySentiment(request);
        // FIXME: inspect the results
    }
    // [END language_entity_sentiment_gcs_core]

    // [END language_entity_sentiment_gcs]
    public static void Main(string[] args)
    {
        CommandLine.Parser.Default.ParseArguments<Options>(args)
            .WithParsed<Options>(opts =>
                SampleAnalyzeEntitySentiment(opts.GcsUr));
    }

    public class Options
    {
        [Option("gcs_ur", Default = "gs://cloud-samples-data/language/entity-sentiment.txt")]
        public string GcsUr { get; set; }
    }
}