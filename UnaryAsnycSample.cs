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
using System;
using System.Threading.Tasks;
using Google.Cloud.Language.V1;
using CommandLine;

namespace samples
{
		// This is a generated sample ("RequestAsync", "language_syntax_gcs")

		// [START language_syntax_gcs]
		// FIXME: import everything this sample needs
		public class AnalyzeSyntaxAsyncRequestAsyncLanguageSyntaxGcs
		{
		    // [START language_syntax_gcs_core]
		    /// <summary>
		    /// Analyze syntax of text in GCS
		    /// </summary>
		    public static async Task SampleAnalyzeSyntaxAsync(string gcsUri)
		    {
		        LanguageServiceClient languageServiceClient = await LanguageServiceClient.CreateAsync();
		        // string gcsUri = "gs://cloud-samples-data/language/syntax-sentence.txt"
		        AnalyzeSyntaxRequest request = new AnalyzeSyntaxRequest
		        {
		            Document = new Document
		            {
		                Type = Document.Types.Type.PlainText,
		                GcsContentUri = "gs://cloud-samples-data/language/syntax-sentence.txt",
		            },
		        };
		        AnalyzeSyntaxResponse response = await languageServiceClient.AnalyzeSyntaxAsync(request);
		        // FIXME: inspect the results
		    }
		    // [END language_syntax_gcs_core]

		    // [END language_syntax_gcs]
		    public static async Task Main(string[] args)
		    {
		        CommandLine.Parser.Default.ParseArguments<Options>(args)
		            .WithParsed<Options>(async opts =>
		                await SampleAnalyzeSyntaxAsync(opts.GcsUri));
		    }

		    public class Options
		    {
		        [Option("gcs_uri", Default = "gs://cloud-samples-data/language/syntax-sentence.txt")]
		        public string GcsUri { get; set; }
		    }
		}
}