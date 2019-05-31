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

// This is a generated sample ("Request", "job_search_create_company")

// [START job_search_create_company]
// FIXME: import everything this sample needs
public class JobSearchCreateCompany
{
    // [START job_search_create_company_core]
    /// <summary>
    /// Create Company
    /// </summary>
    /// <param name="projectId">Your Google Cloud Project ID</param>
    public static void SampleCreateCompany(string projectId, string displayName, string externalId)
    {
        CompanyServiceClient companyServiceClient = CompanyServiceClient.Create();
        // string projectId = "Your Google Cloud Project ID"
        // string displayName = "My Company Name"
        // string externalId = "Identifier of this company in my system"
        CreateCompanyRequest request = new CreateCompanyRequest
        {
            ParentAsTenantOrProjectNameOneof = TenantOrProjectNameOneof.From(new ProjectName(projectId)),
            Company = new Company
            {
                DisplayName = "My Company Name",
                ExternalId = "Identifier of this company in my system",
            },
        };
        Company response = companyServiceClient.CreateCompany(request);
        // FIXME: inspect the results
    }
    // [END job_search_create_company_core]

    // [END job_search_create_company]
    public static void Main(string[] args)
    {
        new Parser(with => with.CaseInsensitiveEnumValues = true).ParseArguments<Options>(args)
            .WithParsed<Options>(opts =>
                SampleCreateCompany(opts.ProjectId, opts.DisplayName, opts.ExternalId));
    }

    public class Options
    {
        [Option("project_id", Default = "Your Google Cloud Project ID")]
        public string ProjectId { get; set; }

        [Option("display_name", Default = "My Company Name")]
        public string DisplayName { get; set; }

        [Option("external_id", Default = "Identifier of this company in my system")]
        public string ExternalId { get; set; }
    }
}