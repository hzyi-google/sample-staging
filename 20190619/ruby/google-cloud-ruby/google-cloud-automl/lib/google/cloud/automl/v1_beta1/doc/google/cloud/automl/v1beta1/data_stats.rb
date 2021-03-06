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
        # The data statistics of a series of values that share the same DataType.
        # @!attribute [rw] float64_stats
        #   @return [Google::Cloud::Automl::V1beta1::Float64Stats]
        #     The statistics for FLOAT64 DataType.
        # @!attribute [rw] string_stats
        #   @return [Google::Cloud::Automl::V1beta1::StringStats]
        #     The statistics for STRING DataType.
        # @!attribute [rw] timestamp_stats
        #   @return [Google::Cloud::Automl::V1beta1::TimestampStats]
        #     The statistics for TIMESTAMP DataType.
        # @!attribute [rw] array_stats
        #   @return [Google::Cloud::Automl::V1beta1::ArrayStats]
        #     The statistics for ARRAY DataType.
        # @!attribute [rw] struct_stats
        #   @return [Google::Cloud::Automl::V1beta1::StructStats]
        #     The statistics for STRUCT DataType.
        # @!attribute [rw] category_stats
        #   @return [Google::Cloud::Automl::V1beta1::CategoryStats]
        #     The statistics for CATEGORY DataType.
        # @!attribute [rw] distinct_value_count
        #   @return [Integer]
        #     The number of distinct values.
        # @!attribute [rw] null_value_count
        #   @return [Integer]
        #     The number of values that are null.
        # @!attribute [rw] valid_value_count
        #   @return [Integer]
        #     The number of values that are valid.
        class DataStats; end

        # The data statistics of a series of FLOAT64 values.
        # @!attribute [rw] mean
        #   @return [Float]
        #     The mean of the series.
        # @!attribute [rw] standard_deviation
        #   @return [Float]
        #     The standard deviation of the series.
        # @!attribute [rw] quantiles
        #   @return [Array<Float>]
        #     Ordered from 0 to k k-quantile values of the data series of n values.
        #     The value at index i is, approximately, the i*n/k-th smallest value in the
        #     series; for i = 0 and i = k these are, respectively, the min and max
        #     values.
        # @!attribute [rw] histogram_buckets
        #   @return [Array<Google::Cloud::Automl::V1beta1::Float64Stats::HistogramBucket>]
        #     Histogram buckets of the data series. Sorted by the min value of the
        #     bucket, ascendingly, and the number of the buckets is dynamically
        #     generated. The buckets are non-overlapping and completely cover whole
        #     FLOAT64 range with min of first bucket being `"-Infinity"`, and max of
        #     the last one being `"Infinity"`.
        class Float64Stats
          # A bucket of a histogram.
          # @!attribute [rw] min
          #   @return [Float]
          #     The minimum value of the bucket, inclusive.
          # @!attribute [rw] max
          #   @return [Float]
          #     The maximum value of the bucket, exclusive unless max = `"Infinity"`, in
          #     which case it's inclusive.
          # @!attribute [rw] count
          #   @return [Integer]
          #     The number of data values that are in the bucket, i.e. are between
          #     min and max values.
          class HistogramBucket; end
        end

        # The data statistics of a series of STRING values.
        # @!attribute [rw] top_unigram_stats
        #   @return [Array<Google::Cloud::Automl::V1beta1::StringStats::UnigramStats>]
        #     The statistics of the top 20 unigrams, ordered by
        #     {Google::Cloud::Automl::V1beta1::StringStats::UnigramStats#count count}.
        class StringStats
          # The statistics of a unigram.
          # @!attribute [rw] value
          #   @return [String]
          #     The unigram.
          # @!attribute [rw] count
          #   @return [Integer]
          #     The number of occurrences of this unigram in the series.
          class UnigramStats; end
        end

        # The data statistics of a series of TIMESTAMP values.
        # @!attribute [rw] granular_stats
        #   @return [Hash{String => Google::Cloud::Automl::V1beta1::TimestampStats::GranularStats}]
        #     The string key is the pre-defined granularity. Currently supported:
        #     hour_of_day, day_of_week, month_of_year.
        #     Granularities finer that the granularity of timestamp data are not
        #     populated (e.g. if timestamps are at day granularity, then hour_of_day
        #     is not populated).
        class TimestampStats
          # Stats split by a defined in context granularity.
          # @!attribute [rw] buckets
          #   @return [Hash{Integer => Integer}]
          #     A map from granularity key to example count for that key.
          #     E.g. for hour_of_day `13` means 1pm, or for month_of_year `5` means May).
          class GranularStats; end
        end

        # The data statistics of a series of ARRAY values.
        # @!attribute [rw] member_stats
        #   @return [Google::Cloud::Automl::V1beta1::DataStats]
        #     Stats of all the values of all arrays, as if they were a single long
        #     series of data. The type depends on the element type of the array.
        class ArrayStats; end

        # The data statistics of a series of STRUCT values.
        # @!attribute [rw] field_stats
        #   @return [Hash{String => Google::Cloud::Automl::V1beta1::DataStats}]
        #     Map from a field name of the struct to data stats aggregated over series
        #     of all data in that field across all the structs.
        class StructStats; end

        # The data statistics of a series of CATEGORY values.
        # @!attribute [rw] top_category_stats
        #   @return [Array<Google::Cloud::Automl::V1beta1::CategoryStats::SingleCategoryStats>]
        #     The statistics of the top 20 CATEGORY values, ordered by
        #
        #     {Google::Cloud::Automl::V1beta1::CategoryStats::SingleCategoryStats#count count}.
        class CategoryStats
          # The statistics of a single CATEGORY value.
          # @!attribute [rw] value
          #   @return [String]
          #     The CATEGORY value.
          # @!attribute [rw] count
          #   @return [Integer]
          #     The number of occurrences of this value in the series.
          class SingleCategoryStats; end
        end

        # A correlation statistics between two series of DataType values. The series
        # may have differing DataType-s, but within a single series the DataType must
        # be the same.
        # @!attribute [rw] cramers_v
        #   @return [Float]
        #     The correlation value using the Cramer's V measure.
        class CorrelationStats; end
      end
    end
  end
end