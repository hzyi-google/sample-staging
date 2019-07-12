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

// This is a generated sample ("Request", "speech_contexts_classes_beta")

// sample-metadata
//   title:
//   description: Performs synchronous speech recognition with static context classes.
//   usage: dotnet run [--sample_rate_hertz 24000] [--language_code "en-US"] [--phrase "$TIME"] [--uri_path "gs://cloud-samples-data/speech/time.mp3"]

using CommandLine;

// [START speech_contexts_classes_beta]
namespace Google.Cloud.Speech.V1P1Beta1.Samples
{
    using Google.Cloud.Speech.V1P1Beta1;
    using System;
    using System.Collections.Generic;

    public class SpeechContextsClassesBeta
    {
        /// <summary>
        /// Performs synchronous speech recognition with static context classes.
        /// </summary>
        /// <param name="sampleRateHertz">Sample rate in Hertz of the audio data sent in all `RecognitionAudio`
        /// messages. Valid values are: 8000-48000.</param>
        /// <param name="languageCode">The language of the supplied audio.</param>
        /// <param name="phrase">Phrase "hints" help Speech-to-Text API recognize the specified phrases from
        /// your audio data. In this sample we are using a static class phrase ($TIME). Classes represent
        /// groups of words that represent common concepts that occur in natural language. We recommend
        /// checking out the docs page for more info on static classes.</param>
        /// <param name="uriPath">Path to the audio file stored on GCS.</param>
        public static void SampleRecognize(int sampleRateHertz, string languageCode, string phrase, string uriPath)
        {
            SpeechClient speechClient = SpeechClient.Create();
            // int sampleRateHertz = 24000
            // string languageCode = "en-US"
            // string phrase = "$TIME"
            // string uriPath = "gs://cloud-samples-data/speech/time.mp3"
            RecognizeRequest request = new RecognizeRequest
            {
                Config = new RecognitionConfig
                {
                    Encoding = RecognitionConfig.Types.AudioEncoding.Mp3,
                    // Sample rate in Hertz of the audio data sent in all `RecognitionAudio` messages. Valid values are:
                    // 8000-48000.
                    SampleRateHertz = 24000,
                    // The language of the supplied audio.
                    LanguageCode = "en-US",
                    SpeechContexts = {
                                         new SpeechContext
                                         {
                                             Phrases = {
                                                           "$TIME",
                                                       },
                                         },
                                     },
                },
                Audio = new RecognitionAudio
                {
                    // Path to the audio file stored on GCS.
                    Uri = "gs://cloud-samples-data/speech/time.mp3",
                },
            };
            RecognizeResponse response = speechClient.Recognize(request);
            foreach (var result in response.Results) {
                // First alternative is the most probable result
                SpeechRecognitionAlternative alternative = result.Alternatives[0];
                Console.WriteLine($"Transcript: {alternative.Transcript}");
            }
        }
        // [END speech_contexts_classes_beta]
        public static void Main(string[] args)
        {
            new Parser(with => with.CaseInsensitiveEnumValues = true).ParseArguments<Options>(args)
                .WithParsed<Options>(opts =>
                    SampleRecognize(opts.SampleRateHertz, opts.LanguageCode, opts.Phrase, opts.UriPath));
        }

        public class Options
        {
            [Option("sample_rate_hertz", Default = 24000)]
            public int SampleRateHertz { get; set; }

            [Option("language_code", Default = "en-US")]
            public string LanguageCode { get; set; }

            [Option("phrase", Default = "$TIME")]
            public string Phrase { get; set; }

            [Option("uri_path", Default = "gs://cloud-samples-data/speech/time.mp3")]
            public string UriPath { get; set; }
        }
    }
}