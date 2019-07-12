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

// This is a generated sample ("Request", "speech_transcribe_multilanguage_beta")

// sample-metadata
//   title: Detecting language spoken automatically (Local File) (Beta)
//   description: Transcribe a short audio file with language detected from a list of possible languages
//   usage: dotnet run [--local_file_path "resources/brooklyn_bridge.flac"]

using CommandLine;

// [START speech_transcribe_multilanguage_beta]
namespace Google.Cloud.Speech.V1P1Beta1.Samples
{
    using Google.Cloud.Speech.V1P1Beta1;
    using Google.Protobuf;
    using System;
    using System.Collections.Generic;
    using System.IO;

    public class SpeechTranscribeMultilanguageBeta
    {
        /// <summary>
        /// Transcribe a short audio file with language detected from a list of possible languages
        /// </summary>
        /// <param name="localFilePath">Path to local audio file, e.g. /path/audio.wav</param>
        public static void SampleRecognize(string localFilePath)
        {
            SpeechClient speechClient = SpeechClient.Create();
            // string localFilePath = "resources/brooklyn_bridge.flac"
            RecognizeRequest request = new RecognizeRequest
            {
                Config = new RecognitionConfig
                {
                    // The language of the supplied audio. Even though additional languages are
                    // provided by alternative_language_codes, a primary language is still required.
                    LanguageCode = "fr",
                    AlternativeLanguageCodes = {
                                                   "es",
                                                   "en",
                                               },
                },
                Audio = new RecognitionAudio
                {
                    Content = ByteString.CopyFrom(File.ReadAllBytes(localFilePath)),
                },
            };
            RecognizeResponse response = speechClient.Recognize(request);
            foreach (var result in response.Results) {
                // The languageCode which was detected as the most likely being spoken in the audio
                Console.WriteLine($"Detected language: {result.LanguageCode}");
                // First alternative is the most probable result
                SpeechRecognitionAlternative alternative = result.Alternatives[0];
                Console.WriteLine($"Transcript: {alternative.Transcript}");
            }
        }
        // [END speech_transcribe_multilanguage_beta]
        public static void Main(string[] args)
        {
            new Parser(with => with.CaseInsensitiveEnumValues = true).ParseArguments<Options>(args)
                .WithParsed<Options>(opts =>
                    SampleRecognize(opts.LocalFilePath));
        }

        public class Options
        {
            [Option("local_file_path", Default = "resources/brooklyn_bridge.flac")]
            public string LocalFilePath { get; set; }
        }
    }
}