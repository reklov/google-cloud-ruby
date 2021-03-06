# Copyright 2017, Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module Google
  module Protobuf
    # A Duration represents a signed, fixed-length span of time represented
    # as a count of seconds and fractions of seconds at nanosecond
    # resolution. It is independent of any calendar and concepts like "day"
    # or "month". It is related to Timestamp in that the difference between
    # two Timestamp values is a Duration and it can be added or subtracted
    # from a Timestamp. Range is approximately +-10,000 years.
    #
    # Example 1: Compute Duration from two Timestamps in pseudo code.
    #
    #     Timestamp start = ...;
    #     Timestamp end = ...;
    #     Duration duration = ...;
    #
    #     duration.seconds = end.seconds - start.seconds;
    #     duration.nanos = end.nanos - start.nanos;
    #
    #     if (duration.seconds < 0 && duration.nanos > 0) {
    #       duration.seconds += 1;
    #       duration.nanos -= 1000000000;
    #     } else if (durations.seconds > 0 && duration.nanos < 0) {
    #       duration.seconds -= 1;
    #       duration.nanos += 1000000000;
    #     }
    #
    # Example 2: Compute Timestamp from Timestamp + Duration in pseudo code.
    #
    #     Timestamp start = ...;
    #     Duration duration = ...;
    #     Timestamp end = ...;
    #
    #     end.seconds = start.seconds + duration.seconds;
    #     end.nanos = start.nanos + duration.nanos;
    #
    #     if (end.nanos < 0) {
    #       end.seconds -= 1;
    #       end.nanos += 1000000000;
    #     } else if (end.nanos >= 1000000000) {
    #       end.seconds += 1;
    #       end.nanos -= 1000000000;
    #     }
    # @!attribute [rw] seconds
    #   @return [Integer]
    #     Signed seconds of the span of time. Must be from -315,576,000,000
    #     to +315,576,000,000 inclusive.
    # @!attribute [rw] nanos
    #   @return [Integer]
    #     Signed fractions of a second at nanosecond resolution of the span
    #     of time. Durations less than one second are represented with a 0
    #     +seconds+ field and a positive or negative +nanos+ field. For durations
    #     of one second or more, a non-zero value for the +nanos+ field must be
    #     of the same sign as the +seconds+ field. Must be from -999,999,999
    #     to +999,999,999 inclusive.
    class Duration; end
  end
end