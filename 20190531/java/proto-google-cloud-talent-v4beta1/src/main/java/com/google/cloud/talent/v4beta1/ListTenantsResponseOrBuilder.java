// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/cloud/talent/v4beta1/tenant_service.proto

package com.google.cloud.talent.v4beta1;

public interface ListTenantsResponseOrBuilder extends
    // @@protoc_insertion_point(interface_extends:google.cloud.talent.v4beta1.ListTenantsResponse)
    com.google.protobuf.MessageOrBuilder {

  /**
   * <pre>
   * Tenants for the current client.
   * </pre>
   *
   * <code>repeated .google.cloud.talent.v4beta1.Tenant tenants = 1;</code>
   */
  java.util.List<com.google.cloud.talent.v4beta1.Tenant> 
      getTenantsList();
  /**
   * <pre>
   * Tenants for the current client.
   * </pre>
   *
   * <code>repeated .google.cloud.talent.v4beta1.Tenant tenants = 1;</code>
   */
  com.google.cloud.talent.v4beta1.Tenant getTenants(int index);
  /**
   * <pre>
   * Tenants for the current client.
   * </pre>
   *
   * <code>repeated .google.cloud.talent.v4beta1.Tenant tenants = 1;</code>
   */
  int getTenantsCount();
  /**
   * <pre>
   * Tenants for the current client.
   * </pre>
   *
   * <code>repeated .google.cloud.talent.v4beta1.Tenant tenants = 1;</code>
   */
  java.util.List<? extends com.google.cloud.talent.v4beta1.TenantOrBuilder> 
      getTenantsOrBuilderList();
  /**
   * <pre>
   * Tenants for the current client.
   * </pre>
   *
   * <code>repeated .google.cloud.talent.v4beta1.Tenant tenants = 1;</code>
   */
  com.google.cloud.talent.v4beta1.TenantOrBuilder getTenantsOrBuilder(
      int index);

  /**
   * <pre>
   * A token to retrieve the next page of results.
   * </pre>
   *
   * <code>string next_page_token = 2;</code>
   */
  java.lang.String getNextPageToken();
  /**
   * <pre>
   * A token to retrieve the next page of results.
   * </pre>
   *
   * <code>string next_page_token = 2;</code>
   */
  com.google.protobuf.ByteString
      getNextPageTokenBytes();

  /**
   * <pre>
   * Additional information for the API invocation, such as the request
   * tracking id.
   * </pre>
   *
   * <code>.google.cloud.talent.v4beta1.ResponseMetadata metadata = 3;</code>
   */
  boolean hasMetadata();
  /**
   * <pre>
   * Additional information for the API invocation, such as the request
   * tracking id.
   * </pre>
   *
   * <code>.google.cloud.talent.v4beta1.ResponseMetadata metadata = 3;</code>
   */
  com.google.cloud.talent.v4beta1.ResponseMetadata getMetadata();
  /**
   * <pre>
   * Additional information for the API invocation, such as the request
   * tracking id.
   * </pre>
   *
   * <code>.google.cloud.talent.v4beta1.ResponseMetadata metadata = 3;</code>
   */
  com.google.cloud.talent.v4beta1.ResponseMetadataOrBuilder getMetadataOrBuilder();
}