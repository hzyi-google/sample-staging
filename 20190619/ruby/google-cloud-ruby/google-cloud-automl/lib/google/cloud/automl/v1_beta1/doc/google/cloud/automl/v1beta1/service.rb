# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module Google
  module Cloud
    module Automl
      module V1beta1
        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::CreateDataset AutoMl::CreateDataset}.
        # @!attribute [rw] parent
        #   @return [String]
        #     The resource name of the project to create the dataset for.
        # @!attribute [rw] dataset
        #   @return [Google::Cloud::Automl::V1beta1::Dataset]
        #     The dataset to create.
        class CreateDatasetRequest; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::GetDataset AutoMl::GetDataset}.
        # @!attribute [rw] name
        #   @return [String]
        #     The resource name of the dataset to retrieve.
        class GetDatasetRequest; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::ListDatasets AutoMl::ListDatasets}.
        # @!attribute [rw] parent
        #   @return [String]
        #     The resource name of the project from which to list datasets.
        # @!attribute [rw] filter
        #   @return [String]
        #     An expression for filtering the results of the request.
        #
        #     * `dataset_metadata` - for existence of the case (e.g.
        #       image_classification_dataset_metadata:*). Some examples of using the filter are:
        #
        #       * `translation_dataset_metadata:*` --> The dataset has
        #         translation_dataset_metadata.
        # @!attribute [rw] page_size
        #   @return [Integer]
        #     Requested page size. Server may return fewer results than requested.
        #     If unspecified, server will pick a default size.
        # @!attribute [rw] page_token
        #   @return [String]
        #     A token identifying a page of results for the server to return
        #     Typically obtained via
        #     {Google::Cloud::Automl::V1beta1::ListDatasetsResponse#next_page_token ListDatasetsResponse#next_page_token} of the previous
        #     {Google::Cloud::Automl::V1beta1::AutoMl::ListDatasets AutoMl::ListDatasets} call.
        class ListDatasetsRequest; end

        # Response message for {Google::Cloud::Automl::V1beta1::AutoMl::ListDatasets AutoMl::ListDatasets}.
        # @!attribute [rw] datasets
        #   @return [Array<Google::Cloud::Automl::V1beta1::Dataset>]
        #     The datasets read.
        # @!attribute [rw] next_page_token
        #   @return [String]
        #     A token to retrieve next page of results.
        #     Pass to {Google::Cloud::Automl::V1beta1::ListDatasetsRequest#page_token ListDatasetsRequest#page_token} to obtain that page.
        class ListDatasetsResponse; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::UpdateDataset AutoMl::UpdateDataset}
        # @!attribute [rw] dataset
        #   @return [Google::Cloud::Automl::V1beta1::Dataset]
        #     The dataset which replaces the resource on the server.
        # @!attribute [rw] update_mask
        #   @return [Google::Protobuf::FieldMask]
        #     The update mask applies to the resource. For the `FieldMask` definition,
        #     see
        #
        #     https:
        #     //developers.google.com/protocol-buffers
        #     // /docs/reference/google.protobuf#fieldmask
        class UpdateDatasetRequest; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::DeleteDataset AutoMl::DeleteDataset}.
        # @!attribute [rw] name
        #   @return [String]
        #     The resource name of the dataset to delete.
        class DeleteDatasetRequest; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::ImportData AutoMl::ImportData}.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. Dataset name. Dataset must already exist. All imported
        #     annotations and examples will be added.
        # @!attribute [rw] input_config
        #   @return [Google::Cloud::Automl::V1beta1::InputConfig]
        #     Required. The desired input location and its domain specific semantics,
        #     if any.
        class ImportDataRequest; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::ExportData AutoMl::ExportData}.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. The resource name of the dataset.
        # @!attribute [rw] output_config
        #   @return [Google::Cloud::Automl::V1beta1::OutputConfig]
        #     Required. The desired output location.
        class ExportDataRequest; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::GetAnnotationSpec AutoMl::GetAnnotationSpec}.
        # @!attribute [rw] name
        #   @return [String]
        #     The resource name of the annotation spec to retrieve.
        class GetAnnotationSpecRequest; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::GetTableSpec AutoMl::GetTableSpec}.
        # @!attribute [rw] name
        #   @return [String]
        #     The resource name of the table spec to retrieve.
        # @!attribute [rw] field_mask
        #   @return [Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        class GetTableSpecRequest; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::ListTableSpecs AutoMl::ListTableSpecs}.
        # @!attribute [rw] parent
        #   @return [String]
        #     The resource name of the dataset to list table specs from.
        # @!attribute [rw] field_mask
        #   @return [Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        # @!attribute [rw] filter
        #   @return [String]
        #     Filter expression, see go/filtering.
        # @!attribute [rw] page_size
        #   @return [Integer]
        #     Requested page size. The server can return fewer results than requested.
        #     If unspecified, the server will pick a default size.
        # @!attribute [rw] page_token
        #   @return [String]
        #     A token identifying a page of results for the server to return.
        #     Typically obtained from the
        #     {Google::Cloud::Automl::V1beta1::ListTableSpecsResponse#next_page_token ListTableSpecsResponse#next_page_token} field of the previous
        #     {Google::Cloud::Automl::V1beta1::AutoMl::ListTableSpecs AutoMl::ListTableSpecs} call.
        class ListTableSpecsRequest; end

        # Response message for {Google::Cloud::Automl::V1beta1::AutoMl::ListTableSpecs AutoMl::ListTableSpecs}.
        # @!attribute [rw] table_specs
        #   @return [Array<Google::Cloud::Automl::V1beta1::TableSpec>]
        #     The table specs read.
        # @!attribute [rw] next_page_token
        #   @return [String]
        #     A token to retrieve next page of results.
        #     Pass to {Google::Cloud::Automl::V1beta1::ListTableSpecsRequest#page_token ListTableSpecsRequest#page_token} to obtain that page.
        class ListTableSpecsResponse; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::UpdateTableSpec AutoMl::UpdateTableSpec}
        # @!attribute [rw] table_spec
        #   @return [Google::Cloud::Automl::V1beta1::TableSpec]
        #     The table spec which replaces the resource on the server.
        # @!attribute [rw] update_mask
        #   @return [Google::Protobuf::FieldMask]
        #     The update mask applies to the resource. For the `FieldMask` definition,
        #     see
        #
        #     https:
        #     //developers.google.com/protocol-buffers
        #     // /docs/reference/google.protobuf#fieldmask
        class UpdateTableSpecRequest; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::GetColumnSpec AutoMl::GetColumnSpec}.
        # @!attribute [rw] name
        #   @return [String]
        #     The resource name of the column spec to retrieve.
        # @!attribute [rw] field_mask
        #   @return [Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        class GetColumnSpecRequest; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::ListColumnSpecs AutoMl::ListColumnSpecs}.
        # @!attribute [rw] parent
        #   @return [String]
        #     The resource name of the table spec to list column specs from.
        # @!attribute [rw] field_mask
        #   @return [Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        # @!attribute [rw] filter
        #   @return [String]
        #     Filter expression, see go/filtering.
        # @!attribute [rw] page_size
        #   @return [Integer]
        #     Requested page size. The server can return fewer results than requested.
        #     If unspecified, the server will pick a default size.
        # @!attribute [rw] page_token
        #   @return [String]
        #     A token identifying a page of results for the server to return.
        #     Typically obtained from the
        #     {Google::Cloud::Automl::V1beta1::ListColumnSpecsResponse#next_page_token ListColumnSpecsResponse#next_page_token} field of the previous
        #     {Google::Cloud::Automl::V1beta1::AutoMl::ListColumnSpecs AutoMl::ListColumnSpecs} call.
        class ListColumnSpecsRequest; end

        # Response message for {Google::Cloud::Automl::V1beta1::AutoMl::ListColumnSpecs AutoMl::ListColumnSpecs}.
        # @!attribute [rw] column_specs
        #   @return [Array<Google::Cloud::Automl::V1beta1::ColumnSpec>]
        #     The column specs read.
        # @!attribute [rw] next_page_token
        #   @return [String]
        #     A token to retrieve next page of results.
        #     Pass to {Google::Cloud::Automl::V1beta1::ListColumnSpecsRequest#page_token ListColumnSpecsRequest#page_token} to obtain that page.
        class ListColumnSpecsResponse; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::UpdateColumnSpec AutoMl::UpdateColumnSpec}
        # @!attribute [rw] column_spec
        #   @return [Google::Cloud::Automl::V1beta1::ColumnSpec]
        #     The column spec which replaces the resource on the server.
        # @!attribute [rw] update_mask
        #   @return [Google::Protobuf::FieldMask]
        #     The update mask applies to the resource. For the `FieldMask` definition,
        #     see
        #
        #     https:
        #     //developers.google.com/protocol-buffers
        #     // /docs/reference/google.protobuf#fieldmask
        class UpdateColumnSpecRequest; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::CreateModel AutoMl::CreateModel}.
        # @!attribute [rw] parent
        #   @return [String]
        #     Resource name of the parent project where the model is being created.
        # @!attribute [rw] model
        #   @return [Google::Cloud::Automl::V1beta1::Model]
        #     The model to create.
        class CreateModelRequest; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::GetModel AutoMl::GetModel}.
        # @!attribute [rw] name
        #   @return [String]
        #     Resource name of the model.
        class GetModelRequest; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::ListModels AutoMl::ListModels}.
        # @!attribute [rw] parent
        #   @return [String]
        #     Resource name of the project, from which to list the models.
        # @!attribute [rw] filter
        #   @return [String]
        #     An expression for filtering the results of the request.
        #
        #     * `model_metadata` - for existence of the case (e.g.
        #       video_classification_model_metadata:*).
        #       * `dataset_id` - for = or !=. Some examples of using the filter are:
        #
        #       * `image_classification_model_metadata:*` --> The model has
        #         image_classification_model_metadata.
        #       * `dataset_id=5` --> The model was created from a dataset with ID 5.
        # @!attribute [rw] page_size
        #   @return [Integer]
        #     Requested page size.
        # @!attribute [rw] page_token
        #   @return [String]
        #     A token identifying a page of results for the server to return
        #     Typically obtained via
        #     {Google::Cloud::Automl::V1beta1::ListModelsResponse#next_page_token ListModelsResponse#next_page_token} of the previous
        #     {Google::Cloud::Automl::V1beta1::AutoMl::ListModels AutoMl::ListModels} call.
        class ListModelsRequest; end

        # Response message for {Google::Cloud::Automl::V1beta1::AutoMl::ListModels AutoMl::ListModels}.
        # @!attribute [rw] model
        #   @return [Array<Google::Cloud::Automl::V1beta1::Model>]
        #     List of models in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [String]
        #     A token to retrieve next page of results.
        #     Pass to {Google::Cloud::Automl::V1beta1::ListModelsRequest#page_token ListModelsRequest#page_token} to obtain that page.
        class ListModelsResponse; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::DeleteModel AutoMl::DeleteModel}.
        # @!attribute [rw] name
        #   @return [String]
        #     Resource name of the model being deleted.
        class DeleteModelRequest; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::DeployModel AutoMl::DeployModel}.
        # @!attribute [rw] image_object_detection_model_deployment_metadata
        #   @return [Google::Cloud::Automl::V1beta1::ImageObjectDetectionModelDeploymentMetadata]
        #     Model deployment metadata specific to Image Object Detection.
        # @!attribute [rw] name
        #   @return [String]
        #     Resource name of the model to deploy.
        class DeployModelRequest; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::UndeployModel AutoMl::UndeployModel}.
        # @!attribute [rw] name
        #   @return [String]
        #     Resource name of the model to undeploy.
        class UndeployModelRequest; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::ExportModel AutoMl::ExportModel}.
        # Models need to be enabled for exporting, otherwise an error code will be
        # returned.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. The resource name of the model to export.
        # @!attribute [rw] output_config
        #   @return [Google::Cloud::Automl::V1beta1::ModelExportOutputConfig]
        #     Required. The desired output location and configuration.
        class ExportModelRequest; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::ExportEvaluatedExamples AutoMl::ExportEvaluatedExamples}.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. The resource name of the model whose evaluated examples are to
        #     be exported.
        # @!attribute [rw] output_config
        #   @return [Google::Cloud::Automl::V1beta1::ExportEvaluatedExamplesOutputConfig]
        #     Required. The desired output location and configuration.
        class ExportEvaluatedExamplesRequest; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::GetModelEvaluation AutoMl::GetModelEvaluation}.
        # @!attribute [rw] name
        #   @return [String]
        #     Resource name for the model evaluation.
        class GetModelEvaluationRequest; end

        # Request message for {Google::Cloud::Automl::V1beta1::AutoMl::ListModelEvaluations AutoMl::ListModelEvaluations}.
        # @!attribute [rw] parent
        #   @return [String]
        #     Resource name of the model to list the model evaluations for.
        #     If modelId is set as "-", this will list model evaluations from across all
        #     models of the parent location.
        # @!attribute [rw] filter
        #   @return [String]
        #     An expression for filtering the results of the request.
        #
        #     * `annotation_spec_id` - for =, !=  or existence. See example below for
        #       the last.
        #
        #     Some examples of using the filter are:
        #
        #     * `annotation_spec_id!=4` --> The model evaluation was done for
        #       annotation spec with ID different than 4.
        #       * `NOT annotation_spec_id:*` --> The model evaluation was done for
        #         aggregate of all annotation specs.
        # @!attribute [rw] page_size
        #   @return [Integer]
        #     Requested page size.
        # @!attribute [rw] page_token
        #   @return [String]
        #     A token identifying a page of results for the server to return.
        #     Typically obtained via
        #     {Google::Cloud::Automl::V1beta1::ListModelEvaluationsResponse#next_page_token ListModelEvaluationsResponse#next_page_token} of the previous
        #     {Google::Cloud::Automl::V1beta1::AutoMl::ListModelEvaluations AutoMl::ListModelEvaluations} call.
        class ListModelEvaluationsRequest; end

        # Response message for {Google::Cloud::Automl::V1beta1::AutoMl::ListModelEvaluations AutoMl::ListModelEvaluations}.
        # @!attribute [rw] model_evaluation
        #   @return [Array<Google::Cloud::Automl::V1beta1::ModelEvaluation>]
        #     List of model evaluations in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [String]
        #     A token to retrieve next page of results.
        #     Pass to the {Google::Cloud::Automl::V1beta1::ListModelEvaluationsRequest#page_token ListModelEvaluationsRequest#page_token} field of a new
        #     {Google::Cloud::Automl::V1beta1::AutoMl::ListModelEvaluations AutoMl::ListModelEvaluations} request to obtain that page.
        class ListModelEvaluationsResponse; end
      end
    end
  end
end