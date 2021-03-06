/*
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
// DO NOT EDIT! This is a generated sample ("Request",  "job_search_create_company")
package com.google.cloud.examples.talent.v4beta1;

import com.google.cloud.talent.v4beta1.Company;
import com.google.cloud.talent.v4beta1.CompanyServiceClient;
import com.google.cloud.talent.v4beta1.CreateCompanyRequest;
import com.google.cloud.talent.v4beta1.ProjectName;
import com.google.cloud.talent.v4beta1.TenantOrProjectName;
import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.DefaultParser;
import org.apache.commons.cli.Option;
import org.apache.commons.cli.Options;

public class JobSearchCreateCompany {
  // [START job_search_create_company]
  /*
   * Please include the following imports to run this sample.
   *
   * import com.google.cloud.talent.v4beta1.Company;
   * import com.google.cloud.talent.v4beta1.CompanyServiceClient;
   * import com.google.cloud.talent.v4beta1.CreateCompanyRequest;
   * import com.google.cloud.talent.v4beta1.ProjectName;
   * import com.google.cloud.talent.v4beta1.TenantOrProjectName;
   */

  /**
   * Create Company
   *
   * @param projectId Your Google Cloud Project ID
   */
  public static void sampleCreateCompany(String projectId, String displayName, String externalId) {
    // [START job_search_create_company_core]
    try (CompanyServiceClient companyServiceClient = CompanyServiceClient.create()) {
      // projectId = "Your Google Cloud Project ID";
      // displayName = "My Company Name";
      // externalId = "Identifier of this company in my system";
      TenantOrProjectName parent = ProjectName.of(projectId);
      Company company =
          Company.newBuilder().setDisplayName(displayName).setExternalId(externalId).build();
      CreateCompanyRequest request =
          CreateCompanyRequest.newBuilder()
              .setParent(parent.toString())
              .setCompany(company)
              .build();
      Company response = companyServiceClient.createCompany(request);
      System.out.println("Created Company");
      System.out.printf("Name: %s\n", response.getName());
      System.out.printf("Display Name: %s\n", response.getDisplayName());
      System.out.printf("External ID: %s\n", response.getExternalId());
    } catch (Exception exception) {
      System.err.println("Failed to create the client due to: " + exception);
    }
    // [END job_search_create_company_core]
  }
  // [END job_search_create_company]

  public static void main(String[] args) throws Exception {
    Options options = new Options();
    options.addOption(
        Option.builder("").required(false).hasArg(true).longOpt("project_id").build());
    options.addOption(
        Option.builder("").required(false).hasArg(true).longOpt("display_name").build());
    options.addOption(
        Option.builder("").required(false).hasArg(true).longOpt("external_id").build());

    CommandLine cl = (new DefaultParser()).parse(options, args);
    String projectId = cl.getOptionValue("project_id", "Your Google Cloud Project ID");
    String displayName = cl.getOptionValue("display_name", "My Company Name");
    String externalId = cl.getOptionValue("external_id", "Identifier of this company in my system");

    sampleCreateCompany(projectId, displayName, externalId);
  }
}
