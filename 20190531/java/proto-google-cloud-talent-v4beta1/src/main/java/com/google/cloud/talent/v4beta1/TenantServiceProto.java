// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/cloud/talent/v4beta1/tenant_service.proto

package com.google.cloud.talent.v4beta1;

public final class TenantServiceProto {
  private TenantServiceProto() {}
  public static void registerAllExtensions(
      com.google.protobuf.ExtensionRegistryLite registry) {
  }

  public static void registerAllExtensions(
      com.google.protobuf.ExtensionRegistry registry) {
    registerAllExtensions(
        (com.google.protobuf.ExtensionRegistryLite) registry);
  }
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_talent_v4beta1_CreateTenantRequest_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_talent_v4beta1_CreateTenantRequest_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_talent_v4beta1_GetTenantRequest_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_talent_v4beta1_GetTenantRequest_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_talent_v4beta1_UpdateTenantRequest_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_talent_v4beta1_UpdateTenantRequest_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_talent_v4beta1_DeleteTenantRequest_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_talent_v4beta1_DeleteTenantRequest_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_talent_v4beta1_ListTenantsRequest_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_talent_v4beta1_ListTenantsRequest_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_google_cloud_talent_v4beta1_ListTenantsResponse_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_google_cloud_talent_v4beta1_ListTenantsResponse_fieldAccessorTable;

  public static com.google.protobuf.Descriptors.FileDescriptor
      getDescriptor() {
    return descriptor;
  }
  private static  com.google.protobuf.Descriptors.FileDescriptor
      descriptor;
  static {
    java.lang.String[] descriptorData = {
      "\n0google/cloud/talent/v4beta1/tenant_ser" +
      "vice.proto\022\033google.cloud.talent.v4beta1\032" +
      "\034google/api/annotations.proto\032(google/cl" +
      "oud/talent/v4beta1/common.proto\032(google/" +
      "cloud/talent/v4beta1/tenant.proto\032\033googl" +
      "e/protobuf/empty.proto\032 google/protobuf/" +
      "field_mask.proto\"Z\n\023CreateTenantRequest\022" +
      "\016\n\006parent\030\001 \001(\t\0223\n\006tenant\030\002 \001(\0132#.google" +
      ".cloud.talent.v4beta1.Tenant\" \n\020GetTenan" +
      "tRequest\022\014\n\004name\030\001 \001(\t\"{\n\023UpdateTenantRe" +
      "quest\0223\n\006tenant\030\001 \001(\0132#.google.cloud.tal" +
      "ent.v4beta1.Tenant\022/\n\013update_mask\030\002 \001(\0132" +
      "\032.google.protobuf.FieldMask\"#\n\023DeleteTen" +
      "antRequest\022\014\n\004name\030\001 \001(\t\"K\n\022ListTenantsR" +
      "equest\022\016\n\006parent\030\001 \001(\t\022\022\n\npage_token\030\002 \001" +
      "(\t\022\021\n\tpage_size\030\003 \001(\005\"\245\001\n\023ListTenantsRes" +
      "ponse\0224\n\007tenants\030\001 \003(\0132#.google.cloud.ta" +
      "lent.v4beta1.Tenant\022\027\n\017next_page_token\030\002" +
      " \001(\t\022?\n\010metadata\030\003 \001(\0132-.google.cloud.ta" +
      "lent.v4beta1.ResponseMetadata2\202\006\n\rTenant" +
      "Service\022\226\001\n\014CreateTenant\0220.google.cloud." +
      "talent.v4beta1.CreateTenantRequest\032#.goo" +
      "gle.cloud.talent.v4beta1.Tenant\"/\202\323\344\223\002)\"" +
      "$/v4beta1/{parent=projects/*}/tenants:\001*" +
      "\022\215\001\n\tGetTenant\022-.google.cloud.talent.v4b" +
      "eta1.GetTenantRequest\032#.google.cloud.tal" +
      "ent.v4beta1.Tenant\",\202\323\344\223\002&\022$/v4beta1/{na" +
      "me=projects/*/tenants/*}\022\235\001\n\014UpdateTenan" +
      "t\0220.google.cloud.talent.v4beta1.UpdateTe" +
      "nantRequest\032#.google.cloud.talent.v4beta" +
      "1.Tenant\"6\202\323\344\223\00202+/v4beta1/{tenant.name=" +
      "projects/*/tenants/*}:\001*\022\206\001\n\014DeleteTenan" +
      "t\0220.google.cloud.talent.v4beta1.DeleteTe" +
      "nantRequest\032\026.google.protobuf.Empty\",\202\323\344" +
      "\223\002&*$/v4beta1/{name=projects/*/tenants/*" +
      "}\022\236\001\n\013ListTenants\022/.google.cloud.talent." +
      "v4beta1.ListTenantsRequest\0320.google.clou" +
      "d.talent.v4beta1.ListTenantsResponse\",\202\323" +
      "\344\223\002&\022$/v4beta1/{parent=projects/*}/tenan" +
      "tsB\200\001\n\037com.google.cloud.talent.v4beta1B\022" +
      "TenantServiceProtoP\001ZAgoogle.golang.org/" +
      "genproto/googleapis/cloud/talent/v4beta1" +
      ";talent\242\002\003CTSb\006proto3"
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
          com.google.cloud.talent.v4beta1.TenantResourceProto.getDescriptor(),
          com.google.protobuf.EmptyProto.getDescriptor(),
          com.google.protobuf.FieldMaskProto.getDescriptor(),
        }, assigner);
    internal_static_google_cloud_talent_v4beta1_CreateTenantRequest_descriptor =
      getDescriptor().getMessageTypes().get(0);
    internal_static_google_cloud_talent_v4beta1_CreateTenantRequest_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_talent_v4beta1_CreateTenantRequest_descriptor,
        new java.lang.String[] { "Parent", "Tenant", });
    internal_static_google_cloud_talent_v4beta1_GetTenantRequest_descriptor =
      getDescriptor().getMessageTypes().get(1);
    internal_static_google_cloud_talent_v4beta1_GetTenantRequest_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_talent_v4beta1_GetTenantRequest_descriptor,
        new java.lang.String[] { "Name", });
    internal_static_google_cloud_talent_v4beta1_UpdateTenantRequest_descriptor =
      getDescriptor().getMessageTypes().get(2);
    internal_static_google_cloud_talent_v4beta1_UpdateTenantRequest_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_talent_v4beta1_UpdateTenantRequest_descriptor,
        new java.lang.String[] { "Tenant", "UpdateMask", });
    internal_static_google_cloud_talent_v4beta1_DeleteTenantRequest_descriptor =
      getDescriptor().getMessageTypes().get(3);
    internal_static_google_cloud_talent_v4beta1_DeleteTenantRequest_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_talent_v4beta1_DeleteTenantRequest_descriptor,
        new java.lang.String[] { "Name", });
    internal_static_google_cloud_talent_v4beta1_ListTenantsRequest_descriptor =
      getDescriptor().getMessageTypes().get(4);
    internal_static_google_cloud_talent_v4beta1_ListTenantsRequest_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_talent_v4beta1_ListTenantsRequest_descriptor,
        new java.lang.String[] { "Parent", "PageToken", "PageSize", });
    internal_static_google_cloud_talent_v4beta1_ListTenantsResponse_descriptor =
      getDescriptor().getMessageTypes().get(5);
    internal_static_google_cloud_talent_v4beta1_ListTenantsResponse_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_google_cloud_talent_v4beta1_ListTenantsResponse_descriptor,
        new java.lang.String[] { "Tenants", "NextPageToken", "Metadata", });
    com.google.protobuf.ExtensionRegistry registry =
        com.google.protobuf.ExtensionRegistry.newInstance();
    registry.add(com.google.api.AnnotationsProto.http);
    com.google.protobuf.Descriptors.FileDescriptor
        .internalUpdateFileDescriptor(descriptor, registry);
    com.google.api.AnnotationsProto.getDescriptor();
    com.google.cloud.talent.v4beta1.CommonProto.getDescriptor();
    com.google.cloud.talent.v4beta1.TenantResourceProto.getDescriptor();
    com.google.protobuf.EmptyProto.getDescriptor();
    com.google.protobuf.FieldMaskProto.getDescriptor();
  }

  // @@protoc_insertion_point(outer_class_scope)
}
