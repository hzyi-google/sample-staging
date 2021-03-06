// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/cloud/automl/v1beta1/io.proto

package com.google.cloud.automl.v1beta1;

public final class Io {
  private Io() {}
  public static void registerAllExtensions(
      com.google.protobuf.ExtensionRegistryLite registry) {
  }

  public static void registerAllExtensions(
      com.google.protobuf.ExtensionRegistry registry) {
    registerAllExtensions(
        (com.google.protobuf.ExtensionRegistryLite) registry);
  }
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_automl_v1beta1_InputConfig_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_automl_v1beta1_InputConfig_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_automl_v1beta1_InputConfig_ParamsEntry_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_automl_v1beta1_InputConfig_ParamsEntry_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_automl_v1beta1_BatchPredictInputConfig_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_automl_v1beta1_BatchPredictInputConfig_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_automl_v1beta1_DocumentInputConfig_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_automl_v1beta1_DocumentInputConfig_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_automl_v1beta1_OutputConfig_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_automl_v1beta1_OutputConfig_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_automl_v1beta1_BatchPredictOutputConfig_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_automl_v1beta1_BatchPredictOutputConfig_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_automl_v1beta1_ModelExportOutputConfig_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_automl_v1beta1_ModelExportOutputConfig_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_automl_v1beta1_ModelExportOutputConfig_ParamsEntry_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_automl_v1beta1_ModelExportOutputConfig_ParamsEntry_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_automl_v1beta1_ExportEvaluatedExamplesOutputConfig_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_automl_v1beta1_ExportEvaluatedExamplesOutputConfig_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_automl_v1beta1_GcsSource_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_automl_v1beta1_GcsSource_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_automl_v1beta1_BigQuerySource_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_automl_v1beta1_BigQuerySource_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_automl_v1beta1_GcsDestination_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_automl_v1beta1_GcsDestination_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_automl_v1beta1_BigQueryDestination_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_automl_v1beta1_BigQueryDestination_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_automl_v1beta1_GcrDestination_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_automl_v1beta1_GcrDestination_fieldAccessorTable;

  public static com.google.protobuf.Descriptors.FileDescriptor
      getDescriptor() {
    return descriptor;
  }
  private static  com.google.protobuf.Descriptors.FileDescriptor
      descriptor;
  static {
    java.lang.String[] descriptorData = {
      "\n$google/cloud/automl/v1beta1/io.proto\022\033" +
      "google.cloud.automl.v1beta1\032\034google/api/" +
      "annotations.proto\"\222\002\n\013InputConfig\022<\n\ngcs" +
      "_source\030\001 \001(\0132&.google.cloud.automl.v1be" +
      "ta1.GcsSourceH\000\022F\n\017bigquery_source\030\003 \001(\013" +
      "2+.google.cloud.automl.v1beta1.BigQueryS" +
      "ourceH\000\022D\n\006params\030\002 \003(\01324.google.cloud.a" +
      "utoml.v1beta1.InputConfig.ParamsEntry\032-\n" +
      "\013ParamsEntry\022\013\n\003key\030\001 \001(\t\022\r\n\005value\030\002 \001(\t" +
      ":\0028\001B\010\n\006source\"\251\001\n\027BatchPredictInputConf" +
      "ig\022<\n\ngcs_source\030\001 \001(\0132&.google.cloud.au" +
      "toml.v1beta1.GcsSourceH\000\022F\n\017bigquery_sou" +
      "rce\030\002 \001(\0132+.google.cloud.automl.v1beta1." +
      "BigQuerySourceH\000B\010\n\006source\"Q\n\023DocumentIn" +
      "putConfig\022:\n\ngcs_source\030\001 \001(\0132&.google.c" +
      "loud.automl.v1beta1.GcsSource\"\267\001\n\014Output" +
      "Config\022F\n\017gcs_destination\030\001 \001(\0132+.google" +
      ".cloud.automl.v1beta1.GcsDestinationH\000\022P" +
      "\n\024bigquery_destination\030\002 \001(\01320.google.cl" +
      "oud.automl.v1beta1.BigQueryDestinationH\000" +
      "B\r\n\013destination\"\303\001\n\030BatchPredictOutputCo" +
      "nfig\022F\n\017gcs_destination\030\001 \001(\0132+.google.c" +
      "loud.automl.v1beta1.GcsDestinationH\000\022P\n\024" +
      "bigquery_destination\030\002 \001(\01320.google.clou" +
      "d.automl.v1beta1.BigQueryDestinationH\000B\r" +
      "\n\013destination\"\317\002\n\027ModelExportOutputConfi" +
      "g\022F\n\017gcs_destination\030\001 \001(\0132+.google.clou" +
      "d.automl.v1beta1.GcsDestinationH\000\022F\n\017gcr" +
      "_destination\030\003 \001(\0132+.google.cloud.automl" +
      ".v1beta1.GcrDestinationH\000\022\024\n\014model_forma" +
      "t\030\004 \001(\t\022P\n\006params\030\002 \003(\0132@.google.cloud.a" +
      "utoml.v1beta1.ModelExportOutputConfig.Pa" +
      "ramsEntry\032-\n\013ParamsEntry\022\013\n\003key\030\001 \001(\t\022\r\n" +
      "\005value\030\002 \001(\t:\0028\001B\r\n\013destination\"\206\001\n#Expo" +
      "rtEvaluatedExamplesOutputConfig\022P\n\024bigqu" +
      "ery_destination\030\002 \001(\01320.google.cloud.aut" +
      "oml.v1beta1.BigQueryDestinationH\000B\r\n\013des" +
      "tination\"\037\n\tGcsSource\022\022\n\ninput_uris\030\001 \003(" +
      "\t\"#\n\016BigQuerySource\022\021\n\tinput_uri\030\001 \001(\t\"+" +
      "\n\016GcsDestination\022\031\n\021output_uri_prefix\030\001 " +
      "\001(\t\")\n\023BigQueryDestination\022\022\n\noutput_uri" +
      "\030\001 \001(\t\"$\n\016GcrDestination\022\022\n\noutput_uri\030\001" +
      " \001(\tB\204\001\n\037com.google.cloud.automl.v1beta1" +
      "P\001ZAgoogle.golang.org/genproto/googleapi" +
      "s/cloud/automl/v1beta1;automl\312\002\033Google\\C" +
      "loud\\AutoMl\\V1beta1b\006proto3"
    };
    com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner assigner =
        new com.google.protobuf.Descriptors.FileDescriptor.    InternalDescriptorAssigner() {
          public com.google.protobuf.ExtensionRegistry assignDescriptors(
              com.google.protobuf.Descriptors.FileDescriptor root) {
            descriptor = root;
            return null;
          }
        };
    com.google.protobuf.Descriptors.FileDescriptor
      .internalBuildGeneratedFileFrom(descriptorData,
        new com.google.protobuf.Descriptors.FileDescriptor[] {
          com.google.api.AnnotationsProto.getDescriptor(),
        }, assigner);
    internal_static_google_cloud_automl_v1beta1_InputConfig_descriptor =
      getDescriptor().getMessageTypes().get(0);
    internal_static_google_cloud_automl_v1beta1_InputConfig_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_automl_v1beta1_InputConfig_descriptor,
        new java.lang.String[] { "GcsSource", "BigquerySource", "Params", "Source", });
    internal_static_google_cloud_automl_v1beta1_InputConfig_ParamsEntry_descriptor =
      internal_static_google_cloud_automl_v1beta1_InputConfig_descriptor.getNestedTypes().get(0);
    internal_static_google_cloud_automl_v1beta1_InputConfig_ParamsEntry_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_automl_v1beta1_InputConfig_ParamsEntry_descriptor,
        new java.lang.String[] { "Key", "Value", });
    internal_static_google_cloud_automl_v1beta1_BatchPredictInputConfig_descriptor =
      getDescriptor().getMessageTypes().get(1);
    internal_static_google_cloud_automl_v1beta1_BatchPredictInputConfig_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_automl_v1beta1_BatchPredictInputConfig_descriptor,
        new java.lang.String[] { "GcsSource", "BigquerySource", "Source", });
    internal_static_google_cloud_automl_v1beta1_DocumentInputConfig_descriptor =
      getDescriptor().getMessageTypes().get(2);
    internal_static_google_cloud_automl_v1beta1_DocumentInputConfig_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_automl_v1beta1_DocumentInputConfig_descriptor,
        new java.lang.String[] { "GcsSource", });
    internal_static_google_cloud_automl_v1beta1_OutputConfig_descriptor =
      getDescriptor().getMessageTypes().get(3);
    internal_static_google_cloud_automl_v1beta1_OutputConfig_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_automl_v1beta1_OutputConfig_descriptor,
        new java.lang.String[] { "GcsDestination", "BigqueryDestination", "Destination", });
    internal_static_google_cloud_automl_v1beta1_BatchPredictOutputConfig_descriptor =
      getDescriptor().getMessageTypes().get(4);
    internal_static_google_cloud_automl_v1beta1_BatchPredictOutputConfig_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_automl_v1beta1_BatchPredictOutputConfig_descriptor,
        new java.lang.String[] { "GcsDestination", "BigqueryDestination", "Destination", });
    internal_static_google_cloud_automl_v1beta1_ModelExportOutputConfig_descriptor =
      getDescriptor().getMessageTypes().get(5);
    internal_static_google_cloud_automl_v1beta1_ModelExportOutputConfig_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_automl_v1beta1_ModelExportOutputConfig_descriptor,
        new java.lang.String[] { "GcsDestination", "GcrDestination", "ModelFormat", "Params", "Destination", });
    internal_static_google_cloud_automl_v1beta1_ModelExportOutputConfig_ParamsEntry_descriptor =
      internal_static_google_cloud_automl_v1beta1_ModelExportOutputConfig_descriptor.getNestedTypes().get(0);
    internal_static_google_cloud_automl_v1beta1_ModelExportOutputConfig_ParamsEntry_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_automl_v1beta1_ModelExportOutputConfig_ParamsEntry_descriptor,
        new java.lang.String[] { "Key", "Value", });
    internal_static_google_cloud_automl_v1beta1_ExportEvaluatedExamplesOutputConfig_descriptor =
      getDescriptor().getMessageTypes().get(6);
    internal_static_google_cloud_automl_v1beta1_ExportEvaluatedExamplesOutputConfig_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_automl_v1beta1_ExportEvaluatedExamplesOutputConfig_descriptor,
        new java.lang.String[] { "BigqueryDestination", "Destination", });
    internal_static_google_cloud_automl_v1beta1_GcsSource_descriptor =
      getDescriptor().getMessageTypes().get(7);
    internal_static_google_cloud_automl_v1beta1_GcsSource_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_automl_v1beta1_GcsSource_descriptor,
        new java.lang.String[] { "InputUris", });
    internal_static_google_cloud_automl_v1beta1_BigQuerySource_descriptor =
      getDescriptor().getMessageTypes().get(8);
    internal_static_google_cloud_automl_v1beta1_BigQuerySource_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_automl_v1beta1_BigQuerySource_descriptor,
        new java.lang.String[] { "InputUri", });
    internal_static_google_cloud_automl_v1beta1_GcsDestination_descriptor =
      getDescriptor().getMessageTypes().get(9);
    internal_static_google_cloud_automl_v1beta1_GcsDestination_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_automl_v1beta1_GcsDestination_descriptor,
        new java.lang.String[] { "OutputUriPrefix", });
    internal_static_google_cloud_automl_v1beta1_BigQueryDestination_descriptor =
      getDescriptor().getMessageTypes().get(10);
    internal_static_google_cloud_automl_v1beta1_BigQueryDestination_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_automl_v1beta1_BigQueryDestination_descriptor,
        new java.lang.String[] { "OutputUri", });
    internal_static_google_cloud_automl_v1beta1_GcrDestination_descriptor =
      getDescriptor().getMessageTypes().get(11);
    internal_static_google_cloud_automl_v1beta1_GcrDestination_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_automl_v1beta1_GcrDestination_descriptor,
        new java.lang.String[] { "OutputUri", });
    com.google.api.AnnotationsProto.getDescriptor();
  }

  // @@protoc_insertion_point(outer_class_scope)
}
