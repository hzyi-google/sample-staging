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

// This is a generated sample ("Request", "analyze_text_sentiment")

// [START analyze_text_sentiment]
// FIXME: import everything this sample needs
public class AnalyzeTextSentiment
{
    // [START analyze_text_sentiment_core]
    /// <summary>
    /// This sample demonstrates analyzing the sentiment of text
    /// </summary>
    public static void SampleAnalyzeSentiment()
    {
        LanguageServiceClient languageServiceClient = LanguageServiceClient.Create();
        AnalyzeSentimentRequest request = new AnalyzeSentimentRequest
        {
            Document = new Document
            {
                Type = Document.Types.Type.PlainText,
                Content = "I am so happy",
            },
        };
        AnalyzeSentimentResponse response = languageServiceClient.AnalyzeSentiment(request);
        // FIXME: inspect the results
    }
    // [END analyze_text_sentiment_core]

    // [END analyze_text_sentiment]
    public static void Main(string[] args)
    {
        SampleAnalyzeSentiment();
    }
}