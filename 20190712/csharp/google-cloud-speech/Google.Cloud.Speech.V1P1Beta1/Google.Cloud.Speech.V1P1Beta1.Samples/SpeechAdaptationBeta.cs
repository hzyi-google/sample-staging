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

// This is a generated sample ("Request", "speech_adaptation_beta")

// sample-metadata
//   title:
//   description: Performs synchronous speech recognition with speech adaptation.
//   usage: dotnet run [--sample_rate_hertz 44100] [--language_code "en-US"] [--phrase "Brooklyn Bridge"] [--boost 20] [--uri_path "gs://cloud-samples-data/speech/brooklyn_bridge.mp3"]

using CommandLine;

// [START speech_adaptation_beta]
namespace Google.Cloud.Speech.V1P1Beta1.Samples
{
    using Google.Cloud.Speech.V1P1Beta1;
    using System;
    using System.Collections.Generic;

    public class SpeechAdaptationBeta
    {
        /// <summary>
        /// Performs synchronous speech recognition with speech adaptation.
        /// </summary>
        /// <param name="sampleRateHertz">Sample rate in Hertz of the audio data sent in all `RecognitionAudio`
        /// messages. Valid values are: 8000-48000.</param>
        /// <param name="languageCode">The language of the supplied audio.</param>
        /// <param name="phrase">Phrase "hints" help Speech-to-Text API recognize the specified phrases from
        /// your audio data.</param>
        /// <param name="boost">Positive value will increase the probability that a specific phrase will be
        /// recognized over other similar sounding phrases.</param>
        /// <param name="uriPath">Path to the audio file stored on GCS.</param>
        public static void SampleRecognize(int sampleRateHertz, string languageCode, string phrase, float boost, string uriPath)
        {
            SpeechClient speechClient = SpeechClient.Create();
            // int sampleRateHertz = 44100
            // string languageCode = "en-US"
            // string phrase = "Brooklyn Bridge"
            // float boost = 20f
            // string uriPath = "gs://cloud-samples-data/speech/brooklyn_bridge.mp3"
            RecognizeRequest request = new RecognizeRequest
            {
                Config = new RecognitionConfig
                {
                    Encoding = RecognitionConfig.Types.AudioEncoding.Mp3,
                    // Sample rate in Hertz of the audio data sent in all `RecognitionAudio` messages. Valid values are:
                    // 8000-48000.
                    SampleRateHertz = 44100,
                    // The language of the supplied audio.
                    LanguageCode = "en-US",
                    SpeechContexts = {
                                         new SpeechContext
                                         {
                                             Phrases = {
                                                           "Brooklyn Bridge",
                                                       },
                                             // Positive value will increase the probability that a specific phrase will be recognized over other
                                             // similar sounding phrases.
                                             Boost = 20f,
                                         },
                                     },
                },
                Audio = new RecognitionAudio
                {
                    // Path to the audio file stored on GCS.
                    Uri = "gs://cloud-samples-data/speech/brooklyn_bridge.mp3",
                },
            };
            RecognizeResponse response = speechClient.Recognize(request);
            foreach (var result in response.Results) {
                // First alternative is the most probable result
                SpeechRecognitionAlternative alternative = result.Alternatives[0];
                Console.WriteLine($"Transcript: {alternative.Transcript}");
            }
        }
        // [END speech_adaptation_beta]
        public static void Main(string[] args)
        {
            new Parser(with => with.CaseInsensitiveEnumValues = true).ParseArguments<Options>(args)
                .WithParsed<Options>(opts =>
                    SampleRecognize(opts.SampleRateHertz, opts.LanguageCode, opts.Phrase, opts.Boost, opts.UriPath));
        }

        public class Options
        {
            [Option("sample_rate_hertz", Default = 44100)]
            public int SampleRateHertz { get; set; }

            [Option("language_code", Default = "en-US")]
            public string LanguageCode { get; set; }

            [Option("phrase", Default = "Brooklyn Bridge")]
            public string Phrase { get; set; }

            [Option("boost", Default = 20f)]
            public float Boost { get; set; }

            [Option("uri_path", Default = "gs://cloud-samples-data/speech/brooklyn_bridge.mp3")]
            public string UriPath { get; set; }
        }
    }
}