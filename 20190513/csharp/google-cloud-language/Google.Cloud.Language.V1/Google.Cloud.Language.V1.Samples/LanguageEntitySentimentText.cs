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

// This is a generated sample ("Request", "language_entity_sentiment_text")

// [START language_entity_sentiment_text]
// FIXME: import everything this sample needs
public class LanguageEntitySentimentText
{
    // [START language_entity_sentiment_text_core]
    /// <summary>
    /// Analyze Sentiment of Entities in Text
    /// </summary>
    public static void SampleAnalyzeEntitySentiment(string textContent)
    {
        LanguageServiceClient languageServiceClient = LanguageServiceClient.Create();
        // string textContent = "Grapes are good. Bananas are bad."
        AnalyzeEntitySentimentRequest request = new AnalyzeEntitySentimentRequest
        {
            Document = new Document
            {
                Type = Document.Types.Type.PlainText,
                Content = "Grapes are good. Bananas are bad.",
            },
        };
        AnalyzeEntitySentimentResponse response = languageServiceClient.AnalyzeEntitySentiment(request);
        // FIXME: inspect the results
    }
    // [END language_entity_sentiment_text_core]

    // [END language_entity_sentiment_text]
    public static void Main(string[] args)
    {
        CommandLine.Parser.Default.ParseArguments<Options>(args)
            .WithParsed<Options>(opts =>
                SampleAnalyzeEntitySentiment(opts.TextContent));
    }

    public class Options
    {
        [Option("text_content", Default = "Grapes are good. Bananas are bad.")]
        public string TextContent { get; set; }
    }
}