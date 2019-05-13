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

// This is a generated sample ("Request", "language_syntax_text")

// [START language_syntax_text]
// FIXME: import everything this sample needs
public class LanguageSyntaxText
{
    // [START language_syntax_text_core]
    /// <summary>
    /// Analyze syntax of text
    /// </summary>
    public static void SampleAnalyzeSyntax(string textContent)
    {
        LanguageServiceClient languageServiceClient = LanguageServiceClient.Create();
        // string textContent = "This is a short sentence."
        AnalyzeSyntaxRequest request = new AnalyzeSyntaxRequest
        {
            Document = new Document
            {
                Type = Document.Types.Type.PlainText,
                Content = "This is a short sentence.",
            },
        };
        AnalyzeSyntaxResponse response = languageServiceClient.AnalyzeSyntax(request);
        // FIXME: inspect the results
    }
    // [END language_syntax_text_core]

    // [END language_syntax_text]
    public static void Main(string[] args)
    {
        CommandLine.Parser.Default.ParseArguments<Options>(args)
            .WithParsed<Options>(opts =>
                SampleAnalyzeSyntax(opts.TextContent));
    }

    public class Options
    {
        [Option("text_content", Default = "This is a short sentence.")]
        public string TextContent { get; set; }
    }
}