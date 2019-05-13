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

// This is a generated sample ("Request", "language_sentiment_text")

// [START language_sentiment_text]
// FIXME: import everything this sample needs
public class LanguageSentimentText
{
    // [START language_sentiment_text_core]
    /// <summary>
    /// Analyze sentiment of text
    /// </summary>
    public static void SampleAnalyzeSentiment(string textContent, Document.Types.Type type)
    {
        LanguageServiceClient languageServiceClient = LanguageServiceClient.Create();
        // string textContent = "I am so happy and joyful."
        // Document.Types.Type type = Document.Types.Type.PlainText
        AnalyzeSentimentRequest request = new AnalyzeSentimentRequest
        {
            Document = new Document
            {
                Type = Document.Types.Type.PlainText,
                Content = "I am so happy and joyful.",
            },
        };
        AnalyzeSentimentResponse response = languageServiceClient.AnalyzeSentiment(request);
        // FIXME: inspect the results
    }
    // [END language_sentiment_text_core]

    // [END language_sentiment_text]
    public static void Main(string[] args)
    {
        CommandLine.Parser.Default.ParseArguments<Options>(args)
            .WithParsed<Options>(opts =>
                SampleAnalyzeSentiment(opts.TextContent, opts.Type));
    }

    public class Options
    {
        [Option("text_content", Default = "I am so happy and joyful.")]
        public string TextContent { get; set; }

        [Option("type", Default = Document.Types.Type.PlainText)]
        public Document.Types.Type Type { get; set; }
    }
}