// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/cloud/talent/v4beta1/company_service.proto

package com.google.cloud.talent.v4beta1;

public final class CompanyServiceProto {
  private CompanyServiceProto() {}
  public static void registerAllExtensions(
      com.google.protobuf.ExtensionRegistryLite registry) {
  }

  public static void registerAllExtensions(
      com.google.protobuf.ExtensionRegistry registry) {
    registerAllExtensions(
        (com.google.protobuf.ExtensionRegistryLite) registry);
  }
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_talent_v4beta1_CreateCompanyRequest_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_talent_v4beta1_CreateCompanyRequest_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_talent_v4beta1_GetCompanyRequest_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_talent_v4beta1_GetCompanyRequest_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_talent_v4beta1_UpdateCompanyRequest_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_talent_v4beta1_UpdateCompanyRequest_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_talent_v4beta1_DeleteCompanyRequest_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_talent_v4beta1_DeleteCompanyRequest_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_talent_v4beta1_ListCompaniesRequest_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_talent_v4beta1_ListCompaniesRequest_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_talent_v4beta1_ListCompaniesResponse_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_talent_v4beta1_ListCompaniesResponse_fieldAccessorTable;

  public static com.google.protobuf.Descriptors.FileDescriptor
      getDescriptor() {
    return descriptor;
  }
  private static  com.google.protobuf.Descriptors.FileDescriptor
      descriptor;
  static {
    java.lang.String[] descriptorData = {
      "\n1google/cloud/talent/v4beta1/company_se" +
      "rvice.proto\022\033google.cloud.talent.v4beta1" +
      "\032\034google/api/annotations.proto\032(google/c" +
      "loud/talent/v4beta1/common.proto\032)google" +
      "/cloud/talent/v4beta1/company.proto\032\033goo" +
      "gle/protobuf/empty.proto\032 google/protobu" +
      "f/field_mask.proto\"]\n\024CreateCompanyReque" +
      "st\022\016\n\006parent\030\001 \001(\t\0225\n\007company\030\002 \001(\0132$.go" +
      "ogle.cloud.talent.v4beta1.Company\"!\n\021Get" +
      "CompanyRequest\022\014\n\004name\030\001 \001(\t\"~\n\024UpdateCo" +
      "mpanyRequest\0225\n\007company\030\001 \001(\0132$.google.c" +
      "loud.talent.v4beta1.Company\022/\n\013update_ma" +
      "sk\030\002 \001(\0132\032.google.protobuf.FieldMask\"$\n\024" +
      "DeleteCompanyRequest\022\014\n\004name\030\001 \001(\t\"h\n\024Li" +
      "stCompaniesRequest\022\016\n\006parent\030\001 \001(\t\022\022\n\npa" +
      "ge_token\030\002 \001(\t\022\021\n\tpage_size\030\003 \001(\005\022\031\n\021req" +
      "uire_open_jobs\030\004 \001(\010\"\252\001\n\025ListCompaniesRe" +
      "sponse\0227\n\tcompanies\030\001 \003(\0132$.google.cloud" +
      ".talent.v4beta1.Company\022\027\n\017next_page_tok" +
      "en\030\002 \001(\t\022?\n\010metadata\030\003 \001(\0132-.google.clou" +
      "d.talent.v4beta1.ResponseMetadata2\261\010\n\016Co" +
      "mpanyService\022\322\001\n\rCreateCompany\0221.google." +
      "cloud.talent.v4beta1.CreateCompanyReques" +
      "t\032$.google.cloud.talent.v4beta1.Company\"" +
      "h\202\323\344\223\002b\"0/v4beta1/{parent=projects/*/ten" +
      "ants/*}/companies:\001*Z+\"&/v4beta1/{parent" +
      "=projects/*}/companies:\001*\022\306\001\n\nGetCompany" +
      "\022..google.cloud.talent.v4beta1.GetCompan" +
      "yRequest\032$.google.cloud.talent.v4beta1.C" +
      "ompany\"b\202\323\344\223\002\\\0220/v4beta1/{name=projects/" +
      "*/tenants/*/companies/*}Z(\022&/v4beta1/{na" +
      "me=projects/*/companies/*}\022\342\001\n\rUpdateCom" +
      "pany\0221.google.cloud.talent.v4beta1.Updat" +
      "eCompanyRequest\032$.google.cloud.talent.v4" +
      "beta1.Company\"x\202\323\344\223\002r28/v4beta1/{company" +
      ".name=projects/*/tenants/*/companies/*}:" +
      "\001*Z32./v4beta1/{company.name=projects/*/" +
      "companies/*}:\001*\022\276\001\n\rDeleteCompany\0221.goog" +
      "le.cloud.talent.v4beta1.DeleteCompanyReq" +
      "uest\032\026.google.protobuf.Empty\"b\202\323\344\223\002\\*0/v" +
      "4beta1/{name=projects/*/tenants/*/compan" +
      "ies/*}Z(*&/v4beta1/{name=projects/*/comp" +
      "anies/*}\022\332\001\n\rListCompanies\0221.google.clou" +
      "d.talent.v4beta1.ListCompaniesRequest\0322." +
      "google.cloud.talent.v4beta1.ListCompanie" +
      "sResponse\"b\202\323\344\223\002\\\0220/v4beta1/{parent=proj" +
      "ects/*/tenants/*}/companiesZ(\022&/v4beta1/" +
      "{parent=projects/*}/companiesB\201\001\n\037com.go" +
      "ogle.cloud.talent.v4beta1B\023CompanyServic" +
      "eProtoP\001ZAgoogle.golang.org/genproto/goo" +
      "gleapis/cloud/talent/v4beta1;talent\242\002\003CT" +
      "Sb\006proto3"
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
          com.google.cloud.talent.v4beta1.CommonProto.getDescriptor(),
          com.google.cloud.talent.v4beta1.CompanyResourceProto.getDescriptor(),
          com.google.protobuf.EmptyProto.getDescriptor(),
          com.google.protobuf.FieldMaskProto.getDescriptor(),
        }, assigner);
    internal_static_google_cloud_talent_v4beta1_CreateCompanyRequest_descriptor =
      getDescriptor().getMessageTypes().get(0);
    internal_static_google_cloud_talent_v4beta1_CreateCompanyRequest_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_talent_v4beta1_CreateCompanyRequest_descriptor,
        new java.lang.String[] { "Parent", "Company", });
    internal_static_google_cloud_talent_v4beta1_GetCompanyRequest_descriptor =
      getDescriptor().getMessageTypes().get(1);
    internal_static_google_cloud_talent_v4beta1_GetCompanyRequest_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_talent_v4beta1_GetCompanyRequest_descriptor,
        new java.lang.String[] { "Name", });
    internal_static_google_cloud_talent_v4beta1_UpdateCompanyRequest_descriptor =
      getDescriptor().getMessageTypes().get(2);
    internal_static_google_cloud_talent_v4beta1_UpdateCompanyRequest_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_talent_v4beta1_UpdateCompanyRequest_descriptor,
        new java.lang.String[] { "Company", "UpdateMask", });
    internal_static_google_cloud_talent_v4beta1_DeleteCompanyRequest_descriptor =
      getDescriptor().getMessageTypes().get(3);
    internal_static_google_cloud_talent_v4beta1_DeleteCompanyRequest_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_talent_v4beta1_DeleteCompanyRequest_descriptor,
        new java.lang.String[] { "Name", });
    internal_static_google_cloud_talent_v4beta1_ListCompaniesRequest_descriptor =
      getDescriptor().getMessageTypes().get(4);
    internal_static_google_cloud_talent_v4beta1_ListCompaniesRequest_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_talent_v4beta1_ListCompaniesRequest_descriptor,
        new java.lang.String[] { "Parent", "PageToken", "PageSize", "RequireOpenJobs", });
    internal_static_google_cloud_talent_v4beta1_ListCompaniesResponse_descriptor =
      getDescriptor().getMessageTypes().get(5);
    internal_static_google_cloud_talent_v4beta1_ListCompaniesResponse_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_talent_v4beta1_ListCompaniesResponse_descriptor,
        new java.lang.String[] { "Companies", "NextPageToken", "Metadata", });
    com.google.protobuf.ExtensionRegistry registry =
        com.google.protobuf.ExtensionRegistry.newInstance();
    registry.add(com.google.api.AnnotationsProto.http);
    com.google.protobuf.Descriptors.FileDescriptor
        .internalUpdateFileDescriptor(descriptor, registry);
    com.google.api.AnnotationsProto.getDescriptor();
    com.google.cloud.talent.v4beta1.CommonProto.getDescriptor();
    com.google.cloud.talent.v4beta1.CompanyResourceProto.getDescriptor();
    com.google.protobuf.EmptyProto.getDescriptor();
    com.google.protobuf.FieldMaskProto.getDescriptor();
  }

  // @@protoc_insertion_point(outer_class_scope)
}
