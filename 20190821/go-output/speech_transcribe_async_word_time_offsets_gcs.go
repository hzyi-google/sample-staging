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

// Code generated by protoc-gen-go_gapic. DO NOT EDIT.

package main

import (
	"context"
	"flag"
	"fmt"
	"log"

	speech "cloud.google.com/go/speech/apiv1"
	speechpb "google.golang.org/genproto/googleapis/cloud/speech/v1"
)

// [START ]

func sampleLongRunningRecognize(storageUri string) error {
	ctx := context.Background()
	c, err := speech.NewClient(ctx)
	if err != nil {
		return err
	}

	// storageUri := "\"gs://cloud-samples-data/speech/brooklyn_bridge.flac\""
	req := &speechpb.LongRunningRecognizeRequest{
		Audio: &speechpb.RecognitionAudio{
			AudioSource: &speechpb.RecognitionAudio_Uri{
				Uri: storageUri,
			},
		},
		Config: &speechpb.RecognitionConfig{
			EnableWordTimeOffsets: True,
			LanguageCode:          "\"en-US\"",
		},
	}
	op, err := c.LongRunningRecognize(ctx, req)
	if err != nil {
		return err
	}

	resp, err := op.Wait(ctx)
	if err != nil {
		return err
	}

	// The first result includes start and end time word offsets
	result := resp.GetResults().Get0()
	// First alternative is the most probable result
	alternative := result.GetAlternatives().Get0()
	fmt.Printf("Transcript: %v\n", alternative.GetTranscript())
	// Print the start and end time of each word
	for _, word := range alternative.GetWords() {
		fmt.Printf("Word: %v\n", word.GetWord())
		fmt.Printf("Start time: %v seconds %v nanos\n", word.GetStartTime().GetSeconds(), word.GetStartTime().GetNanos())
		fmt.Printf("End time: %v seconds %v nanos\n", word.GetEndTime().GetSeconds(), word.GetEndTime().GetNanos())
	}
	return nil
}

// [END ]

func main() {
	storageUri := flag.String("storage_uri", "\"gs://cloud-samples-data/speech/brooklyn_bridge.flac\"", "")
	flag.Parse()
	if err := sampleLongRunningRecognize(*storageUri); err != nil {
		log.Fatal(err)
	}
}