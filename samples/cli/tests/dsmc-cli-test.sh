#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

eval_tap() {
  if [ $1 -eq 0 ]; then
    echo "ok $2 - $3"
  else
    EXIT_CODE=1
    echo "not ok $2 - $3"
    sed 's/^/# /g' $4
  fi
  rm -f $4
}

echo "TAP version 13"
echo "1..82"

#- 1 Login
samples/cli/sample-apps login \
    -u 'admin' \
    -p 'admin' \
    > test.out 2>&1
eval_tap $? 1 'Login' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 ListConfig
samples/cli/sample-apps Dsmc listConfig \
    > test.out 2>&1
eval_tap $? 2 'ListConfig' test.out

#- 3 SaveConfig
eval_tap 0 3 'SaveConfig # SKIP deprecated' test.out

#- 4 UpdateImage
samples/cli/sample-apps Dsmc updateImage \
    --body '{"artifactPath": "xfcgd2QDywEXDaQA", "coreDumpEnabled": true, "image": "CaJ7bFi7yOqs2m4X", "imageReplicationsMap": {"AIiN42BHl0i9SS5t": {"failure_code": "aA7PTlZ1Bu5btZ3c", "region": "opJ9OAVJO0fkDgzs", "status": "ld3mwcZJqudYW2xE", "uri": "cH0Q3F90kOw9fsPz"}, "JOqdPab9SwPhhnXn": {"failure_code": "rVC5rMRGOps3cl5y", "region": "H1ItPEzZFw33XNyB", "status": "Kl3XPVbQaZjS8EqL", "uri": "kkfbl0d1fCUhiu2V"}, "Ov1eBVxJ5WuN5Ius": {"failure_code": "TNcyComBQOG5d44i", "region": "UEDEUSsWFoHRLWs7", "status": "HSAEYFttBLpNcExv", "uri": "1wZeOcynzXlHdExX"}}, "namespace": "CM4tzUmiK7EgBlqA", "patchVersion": "2aiH1kbiWTmpt2Ea", "persistent": false, "version": "G08TI08kaVQPitiR"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "vC0r7qNyI3sQdaSD", "coreDumpEnabled": false, "dockerPath": "pZMm47Mfdwg7w4wN", "image": "5PhMRm5aGNlFd542", "imageSize": 90, "namespace": "viJHnNw0lr5ojaoW", "persistent": false, "ulimitFileSize": 93, "version": "tSNJPK72MpUAoOSU"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "cfNctCnXN8eBqN2D", "coreDumpEnabled": false, "dockerPath": "zZkEFUHxTaU03aUj", "image": "tMkl6O3zCynFzKgQ", "imageSize": 40, "namespace": "zTkZ5t08kYCdIb69", "patchVersion": "6JcAdRAE8YTYpVmS", "persistent": false, "ulimitFileSize": 46, "uploaderFlag": "0KXWNWAb0kbIPRFS", "version": "oddD4Z8uoK3cZuX0"}' \
    > test.out 2>&1
eval_tap $? 7 'CreateImagePatch' test.out

#- 8 GetLowestInstanceSpec
samples/cli/sample-apps Dsmc getLowestInstanceSpec \
    > test.out 2>&1
eval_tap $? 8 'GetLowestInstanceSpec' test.out

#- 9 GetConfig
samples/cli/sample-apps Dsmc getConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 CreateConfig
samples/cli/sample-apps Dsmc createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"claim_timeout": 48, "creation_timeout": 48, "default_version": "aj6Pgibs0DiZz8OI", "port": 52, "ports": {"Y2iLa3lgMpwswrRV": 82, "Pb0LItQeGIdQ43jm": 76, "L53EvwagnIJalyM5": 4}, "protocol": "t0tRBl8cbos2fbOs", "providers": ["zY1Z2LI8Sh9obWHi", "r5qV1BfYtYQBBnJw", "QVFmEvJ7K0sz0m4X"], "session_timeout": 11, "unreachable_timeout": 69}' \
    > test.out 2>&1
eval_tap $? 10 'CreateConfig' test.out

#- 11 DeleteConfig
samples/cli/sample-apps Dsmc deleteConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteConfig' test.out

#- 12 UpdateConfig
samples/cli/sample-apps Dsmc updateConfig \
    --namespace $AB_NAMESPACE \
    --body '{"claim_timeout": 75, "creation_timeout": 82, "default_version": "C0ZMCZMocTSI5h9N", "port": 48, "protocol": "9ORsYUT8eTqr9JhW", "providers": ["m8oRUa37psnfg4Nk", "pqfatsHgB0oMKHt9", "tCPuwUK2OtERaoig"], "session_timeout": 19, "unreachable_timeout": 36}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateConfig' test.out

#- 13 ClearCache
samples/cli/sample-apps Dsmc clearCache \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'ClearCache' test.out

#- 14 GetAllDeployment
samples/cli/sample-apps Dsmc getAllDeployment \
    --namespace $AB_NAMESPACE \
    --name '00mExjyxoA0JRtXS' \
    --count '35' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment '21bVUfWw45YwmkSD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'xKIC0xccAzz54qj0' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 3, "buffer_percent": 94, "configuration": "7XsWXWGevb8rCt7x", "enable_region_overrides": true, "extendable_session": true, "game_version": "oq1bwSHZIj9X2MUs", "max_count": 67, "min_count": 42, "overrides": {"PwLmNMnfyl7Cud3c": {"buffer_count": 8, "buffer_percent": 3, "configuration": "sRF4XhTtgCSs7kbd", "enable_region_overrides": true, "extendable_session": true, "game_version": "Ijyp4yzXIr163FU1", "max_count": 12, "min_count": 50, "name": "3IBiklThhIotQS5A", "region_overrides": {"y7dUdZgF1s30T25y": {"buffer_count": 79, "buffer_percent": 47, "max_count": 80, "min_count": 19, "name": "sctYBNj66ZB5PAVl", "unlimited": true, "use_buffer_percent": true}, "c6uSIKRvNRIEfT7X": {"buffer_count": 56, "buffer_percent": 32, "max_count": 21, "min_count": 51, "name": "eXy0kcNNogHbMlvQ", "unlimited": false, "use_buffer_percent": false}, "hUVsmtV0IEtSKT5z": {"buffer_count": 23, "buffer_percent": 64, "max_count": 42, "min_count": 17, "name": "wnq1VWFElq4uyDDa", "unlimited": true, "use_buffer_percent": true}}, "regions": ["P3xcZOCMeIRLApgc", "4NQQbiGeIPtCYih1", "pSDY9bUJRQZETnvO"], "session_timeout": 51, "unlimited": false, "use_buffer_percent": true}, "60WCRYJJT1fjrD9e": {"buffer_count": 79, "buffer_percent": 24, "configuration": "uhYGetrbrhw51nig", "enable_region_overrides": false, "extendable_session": false, "game_version": "6PsPC0TcqfOdesRE", "max_count": 50, "min_count": 71, "name": "5EkL0iblVmEaPCEy", "region_overrides": {"PviyG39DV8nlPvs9": {"buffer_count": 70, "buffer_percent": 30, "max_count": 93, "min_count": 26, "name": "4JIXdB3G5uEa5RsZ", "unlimited": false, "use_buffer_percent": false}, "AqedffRKak7A4KZV": {"buffer_count": 29, "buffer_percent": 90, "max_count": 62, "min_count": 98, "name": "1CYRFDqaUoDqWUMt", "unlimited": false, "use_buffer_percent": false}, "5u9E8LApeVI6MBcf": {"buffer_count": 24, "buffer_percent": 64, "max_count": 88, "min_count": 1, "name": "4J6I2BhHuDp7KVUj", "unlimited": false, "use_buffer_percent": false}}, "regions": ["4r9kuCL8OPA5jHmw", "ghU3LI0ysTKL51EP", "Xj978udX5xwhSHcX"], "session_timeout": 86, "unlimited": false, "use_buffer_percent": true}, "0PGpztHU2cDOGMt7": {"buffer_count": 4, "buffer_percent": 75, "configuration": "B013NKzPOKBBRgpc", "enable_region_overrides": true, "extendable_session": false, "game_version": "EKQy3rzMX43jh9dL", "max_count": 31, "min_count": 16, "name": "xcrGnJl7b4Fy7s5v", "region_overrides": {"t32RPBkqZUHREakl": {"buffer_count": 53, "buffer_percent": 83, "max_count": 68, "min_count": 61, "name": "9jjoMMydlyLMBzVL", "unlimited": false, "use_buffer_percent": true}, "H958qc0cAyl6w6Vi": {"buffer_count": 95, "buffer_percent": 3, "max_count": 76, "min_count": 96, "name": "cL01y7icAFLfqVqo", "unlimited": false, "use_buffer_percent": true}, "mWQlBIV2hm0cUqrB": {"buffer_count": 89, "buffer_percent": 63, "max_count": 7, "min_count": 58, "name": "PxNx38l3QMFaWpw0", "unlimited": false, "use_buffer_percent": false}}, "regions": ["tiVCJYiaJiiJygjG", "qQoNJD9O80Ulmr8G", "vw53Wq3vu3ppo8E3"], "session_timeout": 54, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"7DFFmCVMfjajBcDv": {"buffer_count": 20, "buffer_percent": 83, "max_count": 87, "min_count": 2, "name": "SK2BxN0GiXDo7h5N", "unlimited": true, "use_buffer_percent": false}, "fO3cxymLBsMPyJYa": {"buffer_count": 56, "buffer_percent": 47, "max_count": 57, "min_count": 25, "name": "CC7bVMr0m3btCsgq", "unlimited": true, "use_buffer_percent": true}, "dR5lzWK22r1UgMkR": {"buffer_count": 26, "buffer_percent": 21, "max_count": 79, "min_count": 92, "name": "5zGHmld0qN1AOQln", "unlimited": false, "use_buffer_percent": true}}, "regions": ["kilEMjbqykhQ6rPe", "fHz14OnNe5YMlqZp", "tuur6pZw8pN8H2tl"], "session_timeout": 92, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'qvyrw5ulVtcqe5zB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment '1qL3XCzw8sIIEKzK' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 80, "buffer_percent": 14, "configuration": "2aYgyVrcAba2JLwL", "enable_region_overrides": false, "extendable_session": true, "game_version": "dZB7aAVFSY76QOTj", "max_count": 4, "min_count": 51, "regions": ["jpoitnwzNXzc4Xzl", "fSzO6gQzitH1TY5R", "sL2o41IlBF0hEGS0"], "session_timeout": 20, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'fO65wIoxyoOO6cA9' \
    --namespace $AB_NAMESPACE \
    --region 'MAhbMUSboVIpHUd9' \
    --body '{"buffer_count": 85, "buffer_percent": 58, "max_count": 44, "min_count": 12, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'r4D7fiGRTGoWwoek' \
    --namespace $AB_NAMESPACE \
    --region '3h3CSfm3MfaBBgUR' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment '89EghkBz20PhVnTc' \
    --namespace $AB_NAMESPACE \
    --region 'DvrpgZfC67xiDm4l' \
    --body '{"buffer_count": 19, "buffer_percent": 14, "max_count": 15, "min_count": 37, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'zY55tWdfTqHX5XV5' \
    --namespace $AB_NAMESPACE \
    --version 'SfnXf1UdDVxJrcP6' \
    --body '{"buffer_count": 11, "buffer_percent": 93, "configuration": "6otw1gqiebqsACwj", "enable_region_overrides": false, "extendable_session": false, "game_version": "ISSWcRtF6EFVukMH", "max_count": 28, "min_count": 38, "region_overrides": {"MZj47qxn702R3qnN": {"buffer_count": 49, "buffer_percent": 11, "max_count": 85, "min_count": 30, "name": "GUKsKvrAlaOJiWDc", "unlimited": false, "use_buffer_percent": true}, "XHAVqwkjKNRJYpKG": {"buffer_count": 92, "buffer_percent": 22, "max_count": 35, "min_count": 93, "name": "1Lg5oBkSM80VDRPi", "unlimited": true, "use_buffer_percent": true}, "rfPY5GLEF0DWF6ZJ": {"buffer_count": 18, "buffer_percent": 67, "max_count": 90, "min_count": 24, "name": "VwzfZ7axB2851mRf", "unlimited": false, "use_buffer_percent": true}}, "regions": ["Lw3vtHrVVrN5KGPQ", "q28LUQpukiviq1Ey", "2E5H3xGBnY9cNc29"], "session_timeout": 95, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'vs2igrV2qFNym7aX' \
    --namespace $AB_NAMESPACE \
    --version 'Dbu6ASLlHY4PviTg' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'BbrKLcPXqHynKs2w' \
    --namespace $AB_NAMESPACE \
    --version 'htr8dtD7Ta4zmcJm' \
    --body '{"buffer_count": 13, "buffer_percent": 99, "configuration": "A23XVImcTEQ4IZsU", "enable_region_overrides": false, "game_version": "65tyqok3X5EXau9z", "max_count": 36, "min_count": 77, "regions": ["oOQgEAgp8ohct34T", "pg9dEtvfPkqXR1ya", "DcIDB8IONOZ2AxYH"], "session_timeout": 93, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'dEQaoaVXy5uj8p2A' \
    --namespace $AB_NAMESPACE \
    --region 'sX3Z2jwLsirqAn3o' \
    --version 'jAgpqecqrHvy308T' \
    --body '{"buffer_count": 78, "buffer_percent": 46, "max_count": 1, "min_count": 13, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'WbZigD9jG8B30RwP' \
    --namespace $AB_NAMESPACE \
    --region 'AEAdyTKDkRoE01aL' \
    --version '92hye8o5h8tpdUf3' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'Db9lyfP6jc6rI6V1' \
    --namespace $AB_NAMESPACE \
    --region '8gCP5ktq11zghuTQ' \
    --version 'P7kzdgRPGBHC55HX' \
    --body '{"buffer_count": 82, "buffer_percent": 37, "max_count": 81, "min_count": 82, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '9' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'HTeRCw1Dr3cJEKxb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '52oIspZAUvQKvHau' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 38, "mem_limit": 49, "params": "KDsjPShG8UB4Rafy"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'X0C6eL9zjNloDkZP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'Qnf7GPNjdGlIG7tu' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 1, "mem_limit": 26, "name": "953VA6BvYrH0CE6o", "params": "MZoJAgdaWC6fODej"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 's7rxjuYQ7SStiucF' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 13}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'CPOCgQAIqC6P9lrD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'uyq42tN0KYrvnNUc' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "b8JLCkwY3rAgXql5", "port": 90}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'BnZU1rZUSMkhqfFH' \
    --sortBy 'createdAt' \
    --sortDirection 'asc' \
    --count '19' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'yLIiZc8sD6j9Am9D' \
    --version '9g4KcUuTC1BfxmNu' \
    > test.out 2>&1
eval_tap $? 37 'DeleteImage' test.out

#- 38 ExportImages
samples/cli/sample-apps Dsmc exportImages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'ExportImages' test.out

#- 39 GetImageLimit
samples/cli/sample-apps Dsmc getImageLimit \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'GetImageLimit' test.out

#- 40 DeleteImagePatch
samples/cli/sample-apps Dsmc deleteImagePatch \
    --namespace $AB_NAMESPACE \
    --imageURI 'POEDolfXFO1ZlF4F' \
    --version 'VM0XJAel09AfOrpi' \
    --versionPatch 'Fit6FxpX0MWy9mAb' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'D9008i0d4VDa9Dmm' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'RBGSyEYGpNbn7PHb' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'cUpcWOGWnVUpmt8W' \
    --versionPatch 'RXSdnDxCXj2F0hXp' \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 GetRepository
samples/cli/sample-apps Dsmc getRepository \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'GetRepository' test.out

#- 45 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'zlJ3crzEEQhjCv55' \
    --count '52' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 45 'ListServer' test.out

#- 46 CountServer
samples/cli/sample-apps Dsmc countServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'CountServer' test.out

#- 47 CountServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace $AB_NAMESPACE \
    --region '9R1slKbuiF2mpti1' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'gfOrccWKxwUb4sG2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'I9OaxoBWZB1lCEZT' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'uaRFyAj31ePxN99z' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'zhaHQuJ9taZO7eH8' \
    --withServer 'false' \
    --count '9' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region '9aCY43GqHA61NT7b' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'axQTYKAYY29rDSHI' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "WPSSCeesf7mrfvOZ", "repository": "MHYbkdiZCYyPJzCL"}' \
    > test.out 2>&1
eval_tap $? 55 'CreateRepository' test.out

#- 56 ExportConfigV1
samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'ExportConfigV1' test.out

#- 57 ImportConfigV1
samples/cli/sample-apps Dsmc importConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 57 'ImportConfigV1' test.out

#- 58 GetAllDeploymentClient
samples/cli/sample-apps Dsmc getAllDeploymentClient \
    --namespace $AB_NAMESPACE \
    --name 'IlJHucefqu64gNrc' \
    --count '85' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'kGM9egwjHHsbTjTp' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 64, "buffer_percent": 100, "configuration": "ILdLvzkeFsiNYz1Z", "enable_region_overrides": false, "extendable_session": true, "game_version": "EyV4srsyYXpBp9RZ", "max_count": 16, "min_count": 89, "overrides": {"4oq6Wo3uh32P6BQe": {"buffer_count": 9, "buffer_percent": 45, "configuration": "cjIEtRG8zucMtt0s", "enable_region_overrides": true, "extendable_session": false, "game_version": "OSyqNpxQSToN84P5", "max_count": 66, "min_count": 29, "name": "bVHeHkiyaCAp1oHL", "region_overrides": {"SvsZEo9fuBlxisLE": {"buffer_count": 20, "buffer_percent": 68, "max_count": 24, "min_count": 35, "name": "cuXphXWHKkS3fETg", "unlimited": true, "use_buffer_percent": false}, "kPI1KvkQ9iQWm5sc": {"buffer_count": 34, "buffer_percent": 83, "max_count": 89, "min_count": 29, "name": "KbblzK4UMyAP2QKy", "unlimited": true, "use_buffer_percent": true}, "QZJQIFIeGt3NAC9o": {"buffer_count": 37, "buffer_percent": 40, "max_count": 82, "min_count": 62, "name": "bBR5jixEMKL1wOqD", "unlimited": true, "use_buffer_percent": false}}, "regions": ["426W2fWoUaHGcVcX", "Xa5LtSPiZOscTITl", "8JgSHee03RnZktk8"], "session_timeout": 43, "unlimited": false, "use_buffer_percent": false}, "DurLF5XxWACuuVjV": {"buffer_count": 72, "buffer_percent": 26, "configuration": "UKpg9Yh7zfymPsHG", "enable_region_overrides": false, "extendable_session": true, "game_version": "h3Zxm0TYodrCDCG1", "max_count": 31, "min_count": 55, "name": "75cmFM79WkUcK3dp", "region_overrides": {"vGaq91VC3voFSilf": {"buffer_count": 10, "buffer_percent": 64, "max_count": 62, "min_count": 38, "name": "Ndor1VdVbqP8ZcLm", "unlimited": false, "use_buffer_percent": true}, "YpDIPhytuEcJxBTy": {"buffer_count": 56, "buffer_percent": 46, "max_count": 55, "min_count": 41, "name": "JNJLziXLARKdoNT1", "unlimited": true, "use_buffer_percent": true}, "zMoYonXEKJ6Nzptl": {"buffer_count": 68, "buffer_percent": 95, "max_count": 10, "min_count": 81, "name": "0gsqHLmTtpeMu0ft", "unlimited": true, "use_buffer_percent": false}}, "regions": ["T0a2OcKmjcGrZXKW", "5g3YcNuHuqoQ8yOh", "KoYxN8VzCKbs0vRR"], "session_timeout": 68, "unlimited": true, "use_buffer_percent": true}, "TEWKZIKEaEPkVEWe": {"buffer_count": 13, "buffer_percent": 42, "configuration": "4ofrrdrqDhgqVlgF", "enable_region_overrides": true, "extendable_session": true, "game_version": "7x5RriOvazh3pqjL", "max_count": 24, "min_count": 6, "name": "QknS7iyM2k4N67Zq", "region_overrides": {"MV4gxDn0okRF3RxJ": {"buffer_count": 0, "buffer_percent": 3, "max_count": 54, "min_count": 45, "name": "BpLKC6WTdrTUBbNw", "unlimited": true, "use_buffer_percent": true}, "pQzmgPwZxufrVWu8": {"buffer_count": 96, "buffer_percent": 51, "max_count": 56, "min_count": 37, "name": "5NU4wrpuhuSbFsLJ", "unlimited": true, "use_buffer_percent": false}, "F7GcINjBD1aTPEXT": {"buffer_count": 20, "buffer_percent": 69, "max_count": 36, "min_count": 73, "name": "7lmIXXnWv7IqOZUB", "unlimited": true, "use_buffer_percent": true}}, "regions": ["MALbw0WBhVSW2JvS", "W3b6UGbmpTOYerRA", "x2yuzbUlLEKUnhXE"], "session_timeout": 6, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"4UfdVNw2eCXnfCao": {"buffer_count": 0, "buffer_percent": 41, "max_count": 37, "min_count": 21, "name": "9G4c90qgdUrnO51o", "unlimited": true, "use_buffer_percent": true}, "XgWdF0fboiW7Kdo0": {"buffer_count": 89, "buffer_percent": 99, "max_count": 59, "min_count": 32, "name": "mtD93Iy3RzYauKpA", "unlimited": false, "use_buffer_percent": true}, "JGyOMoJs0DUVh1Qh": {"buffer_count": 74, "buffer_percent": 2, "max_count": 28, "min_count": 28, "name": "OsPP6CaKhCmjt85b", "unlimited": true, "use_buffer_percent": false}}, "regions": ["kZR52ImZIjNfmjNg", "ebh0eVOYX5Y0pA9y", "M8VO4402Yam9oBRW"], "session_timeout": 49, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'PwQYzdUaHXQDawhm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '60' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name '8m3Co6z62u9YiXN4' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 24, "mem_limit": 91, "params": "9IBD2dQdSEKZug10"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name '3OPACRVYpWngRKjd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '91' \
    --offset '62' \
    --q 'GvsgDVFSEz5vBOcZ' \
    --sortBy 'updatedAt' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 64 'ListImagesClient' test.out

#- 65 ImageLimitClient
samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'ImageLimitClient' test.out

#- 66 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version 'ag0Wke3GEHLmT0nI' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'Hk5ewepZ195rszVC' \
    --count '32' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "g3CPstFvAAsqx3XW"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "4cv5TNPBZNy5Mndf"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "GZwFRBFLfmWH6SCh", "ip": "5V74LVWRdVbjtd0o", "name": "wSnxkPF31rKEOd1F", "port": 91}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "yOId18il8ozV0d7I", "pod_name": "KMKlXpEW8RNa57bj"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "u84TsA1tM228xlGl"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'C97Ure6tAuETIk1e' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'DBcfpl9SYVyYeUPu' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "R2OuM35auTIOgykG", "configuration": "iqKubrznGVA7W0xz", "deployment": "n9vY7i4pew1XEUVy", "game_mode": "FaDAwrdmbgmwTxFr", "matching_allies": [{"matching_parties": [{"party_attributes": {"G2LZC8g3KvVGZYe3": {}, "a8QPV8EaLvG9RCp8": {}, "9uS6b1eX8DICfCMw": {}}, "party_id": "8IpZZQ6WHe7KD2zK", "party_members": [{"user_id": "oYMfSU8S32es4FbQ"}, {"user_id": "Gh5eufb6FeCJKT8K"}, {"user_id": "B5d9EvJh5wcqO5hw"}]}, {"party_attributes": {"IjhgYCaOoErsOwNf": {}, "yzSnikJyTJyu5VcF": {}, "RNa5Bol7cKmk9jHh": {}}, "party_id": "1Wt1ydHL3Jw98QLB", "party_members": [{"user_id": "qZEmSplnzk8HcuCr"}, {"user_id": "lQel9ENIDxtOqImo"}, {"user_id": "rmSviBi7hVql4Z3j"}]}, {"party_attributes": {"8WnhkEPY3g6LUwmX": {}, "ZXbiCkLrrywcrzIP": {}, "Ji9ePs9e5CDcNbF5": {}}, "party_id": "aCiQa10jyjzozm1o", "party_members": [{"user_id": "F5qTZI2piYTO5Mce"}, {"user_id": "olLHwnfiZYC8Ud9s"}, {"user_id": "lxnxkP2ch6akVaQE"}]}]}, {"matching_parties": [{"party_attributes": {"Z2whPowAgCLfD0Su": {}, "65JTMXfaI3P5zYfz": {}, "y97RWeRRYvESp3oR": {}}, "party_id": "NOQ9j0DlJS54S17q", "party_members": [{"user_id": "JQJSFapELsozKa7M"}, {"user_id": "X6Mul0Ohxs4z2pJM"}, {"user_id": "q2Lf8d6rpauL8r6x"}]}, {"party_attributes": {"JBVrRlu358hsILM2": {}, "eHMcrq9mul3zHSYg": {}, "96pG4MUjwJgxyur0": {}}, "party_id": "hbwkGDCkrLoclI5z", "party_members": [{"user_id": "f0NkLF99SMSpxRu1"}, {"user_id": "SW7tCOK2TaMKdYuG"}, {"user_id": "M1z8YEBh01FpKaxe"}]}, {"party_attributes": {"GYOryzDMD17dgLqG": {}, "kcJdRstGw1yfuH1u": {}, "YXFVwi5AKI9rx85l": {}}, "party_id": "xOKKnnktAxuFPNLY", "party_members": [{"user_id": "VfCloetdJzSHqabp"}, {"user_id": "fdadUU8k5BH6Pqgn"}, {"user_id": "Sf4p7tZV8W7D6q7b"}]}]}, {"matching_parties": [{"party_attributes": {"snwfX8WQq8GnmqmI": {}, "h6Lvc3xZeUYAnWul": {}, "D0sKDggIm4lWwZGu": {}}, "party_id": "6n5KhAuYyIAjfa4A", "party_members": [{"user_id": "ImHqFAZgZt3yely7"}, {"user_id": "KIIpbGxeP96IPQZb"}, {"user_id": "ZGaq7HFhgsrIEevq"}]}, {"party_attributes": {"BvOaSiNgfLIpwJEC": {}, "JHUlY7JU9Xh9U0E8": {}, "dMSLgj0lkIQCczuG": {}}, "party_id": "BbYyJuxBLSd4r71f", "party_members": [{"user_id": "XacUogVLJiaWksl0"}, {"user_id": "RDKXVhkhlgrOgJLG"}, {"user_id": "aSfnV0IZpf6KDL5x"}]}, {"party_attributes": {"FjG3LZWfBYT3GFb3": {}, "3kkfavxShc2Bxh8g": {}, "O4uCG8Aj9TN1vk1s": {}}, "party_id": "UOOgppryKcoar8V0", "party_members": [{"user_id": "1wloAUD07hNSfGOk"}, {"user_id": "xV2dG2d0CySydqMB"}, {"user_id": "PsAEpUEfN4YCctfv"}]}]}], "namespace": "1fqkbQ4Gob306DiU", "notification_payload": {}, "pod_name": "uukfKD8u5kJaNfR1", "region": "lKji4alePaNywZO7", "session_id": "DQbLLnrETUtwt2LW"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "FFf5DWmXNynKY0Z1"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '4ULqdkPOsqyxpIDT' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'gfeniXPmAnZJZzc1' \
    > test.out 2>&1
eval_tap $? 78 'CancelSession' test.out

#- 79 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 79 'GetDefaultProvider' test.out

#- 80 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 80 'ListProviders' test.out

#- 81 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region 'byeeQ5YAXb0xGDax' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE