#!/bin/bash

#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

echo "start run Seata e2e test scene"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TEST_DIR="$(dirname "$DIR")"
PROJECT_DIR="$(dirname "$(dirname "$DIR")")"
cd $TEST_DIR
mvn clean install -DskipTests
result=$?
if [ $result -ne 0 ]; then
  echo "Build seata e2e-test failure"
  exit $result
fi
cd $TEST_DIR/e2e-test-runner
mvn clean install -DskipTests
result=$?
if [ $result -ne 0 ]; then
  echo "Build seata e2e-test-runner failure"
  exit $result
fi
cd $PROJECT_DIR
cp $TEST_DIR/e2e-test-runner/target/e2e-test-runner-*-jar-with-dependencies.jar $PROJECT_DIR/e2e-test-runner.jar
echo "start run seata test by skywalking e2e framework"
pwd
java -jar ./e2e-test-runner.jar ./tmp/scene-test
result=$?
if [ $result -ne 0 ]; then
  echo "run seata e2e-test-runner failure"
  exit $result
fi
echo "finish run Seata e2e test scene"