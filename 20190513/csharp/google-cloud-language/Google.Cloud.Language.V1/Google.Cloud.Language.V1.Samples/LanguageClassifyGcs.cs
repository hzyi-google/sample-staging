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

// This is a generated sample ("Request", "language_classify_gcs")

// [START language_classify_gcs]
// FIXME: import everything this sample needs
public class LanguageClassifyGcs
{
    // [START language_classify_gcs_core]
    /// <summary>
    /// Classify text in GCS
    /// </summary>
    public static void SampleClassifyText(string gcsUrs)
    {
        LanguageServiceClient languageServiceClient = LanguageServiceClient.Create();
        // string gcsUrs = "gs://cloud-samples-data/language/classify-entertainment.txt"
        ClassifyTextRequest request = new ClassifyTextRequest
        {
            Document = new Document
            {
                Type = Document.Types.Type.PlainText,
                GcsContentUri = "gs://cloud-samples-data/language/classify-entertainment.txt",
            },
        };
        ClassifyTextResponse response = languageServiceClient.ClassifyText(request);
        // FIXME: inspect the results
    }
    // [END language_classify_gcs_core]

    // [END language_classify_gcs]
    public static void Main(string[] args)
    {
        CommandLine.Parser.Default.ParseArguments<Options>(args)
            .WithParsed<Options>(opts =>
                SampleClassifyText(opts.GcsUrs));
    }

    public class Options
    {
        [Option("gcs_urs", Default = "gs://cloud-samples-data/language/classify-entertainment.txt")]
        public string GcsUrs { get; set; }
    }
}