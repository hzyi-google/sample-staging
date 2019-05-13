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

// This is a generated sample ("Request", "language_entities_gcs")

// [START language_entities_gcs]
// FIXME: import everything this sample needs
public class LanguageEntitiesGcs
{
    // [START language_entities_gcs_core]
    /// <summary>
    /// Analyze entities in text stored in GCS
    /// </summary>
    public static void SampleAnalyzeEntities(string gcsUr)
    {
        LanguageServiceClient languageServiceClient = LanguageServiceClient.Create();
        // string gcsUr = "gs://cloud-samples-data/language/entity.txt"
        AnalyzeEntitiesRequest request = new AnalyzeEntitiesRequest
        {
            Document = new Document
            {
                Type = Document.Types.Type.PlainText,
                GcsContentUri = "gs://cloud-samples-data/language/entity.txt",
            },
        };
        AnalyzeEntitiesResponse response = languageServiceClient.AnalyzeEntities(request);
        // FIXME: inspect the results
    }
    // [END language_entities_gcs_core]

    // [END language_entities_gcs]
    public static void Main(string[] args)
    {
        CommandLine.Parser.Default.ParseArguments<Options>(args)
            .WithParsed<Options>(opts =>
                SampleAnalyzeEntities(opts.GcsUr));
    }

    public class Options
    {
        [Option("gcs_ur", Default = "gs://cloud-samples-data/language/entity.txt")]
        public string GcsUr { get; set; }
    }
}