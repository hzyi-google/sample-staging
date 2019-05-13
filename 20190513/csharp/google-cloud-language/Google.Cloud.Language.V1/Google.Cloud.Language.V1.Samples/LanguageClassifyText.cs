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

// This is a generated sample ("Request", "language_classify_text")

// [START language_classify_text]
// FIXME: import everything this sample needs
public class LanguageClassifyText
{
    // [START language_classify_text_core]
    /// <summary>
    /// Classify text
    /// </summary>
    public static void SampleClassifyText(string textContent)
    {
        LanguageServiceClient languageServiceClient = LanguageServiceClient.Create();
        // string textContent = "This is about film and movies and television and acting and movie theatres and theatre and drama and entertainment and the arts."
        ClassifyTextRequest request = new ClassifyTextRequest
        {
            Document = new Document
            {
                Type = Document.Types.Type.PlainText,
                Content = "This is about film and movies and television and acting and movie theatres and theatre and drama and entertainment and the arts.",
            },
        };
        ClassifyTextResponse response = languageServiceClient.ClassifyText(request);
        // FIXME: inspect the results
    }
    // [END language_classify_text_core]

    // [END language_classify_text]
    public static void Main(string[] args)
    {
        CommandLine.Parser.Default.ParseArguments<Options>(args)
            .WithParsed<Options>(opts =>
                SampleClassifyText(opts.TextContent));
    }

    public class Options
    {
        [Option("text_content", Default = "This is about film and movies and television and acting and movie theatres and theatre and drama and entertainment and the arts.")]
        public string TextContent { get; set; }
    }
}