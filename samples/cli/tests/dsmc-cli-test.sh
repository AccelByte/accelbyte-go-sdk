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
    --body '{"artifactPath": "bazRleVsJT00rP0E", "coreDumpEnabled": true, "image": "qWzz0Jezt3XeVgVy", "imageReplicationsMap": {"mgN3ZhsNiQ3eG0SR": {"failure_code": "jnfpN0rYRPhYzpME", "region": "MOX8org3eJ4FP1JB", "status": "k3hoebzuqgDvt8P4", "uri": "0r4bhZCO2dk0u4fp"}, "aBTXU4HPbOoELoce": {"failure_code": "ge1ktlQfyZzmf1zl", "region": "kscnZoQ2C5ZxcbEz", "status": "K34kiKXJAr5sTuhA", "uri": "4Hhd4jOdNXYLWKFl"}, "HH5qpiIvKLnOXBto": {"failure_code": "niqo0jxcpu7m9zaC", "region": "IQvd8LtxrW3zLciG", "status": "l3P6DfNz74ZiCt63", "uri": "7z4XH0bCXb3bhChS"}}, "namespace": "RPFNzVvpAP4FqU3m", "patchVersion": "W5GYXIUqoNU4GXd2", "persistent": false, "version": "7CXOg5w1o0nciRSn"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "JWbzzAoX7I2RNvb3", "coreDumpEnabled": false, "dockerPath": "iYQRRqKzKk5aKApL", "image": "bB7hE6pguOvy0czd", "imageSize": 39, "namespace": "JkE0UVBOeXD88uR4", "persistent": true, "ulimitFileSize": 21, "version": "QguFoiYrzaERIpMn"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "hc7z0pcb48dt3NCm", "coreDumpEnabled": true, "dockerPath": "ZTlWosFqqWtcIgLs", "image": "mGUnLzl4jxmw8ddH", "imageSize": 58, "namespace": "BvRbDQREUojt4QfB", "patchVersion": "xR0MmbgdbUSFSZUx", "persistent": true, "ulimitFileSize": 74, "uploaderFlag": "cnfYaSyxEQRny4wf", "version": "Qz76fbPsKwVcAyGX"}' \
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
    --body '{"claim_timeout": 66, "creation_timeout": 63, "default_version": "cUPGDUsCNKmDrBSD", "port": 54, "ports": {"JzVx23VmXspEDmw2": 74, "aBrrIbQSINm6fbQc": 9, "NAe6GHYqcLQ9vSTg": 3}, "protocol": "38Ts0KyDg75KA5vd", "providers": ["71qC31zuvJCAyVon", "NNzzXUYV19HimRpA", "oJRo9JJkYs8plo6g"], "session_timeout": 27, "unreachable_timeout": 47}' \
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
    --body '{"claim_timeout": 96, "creation_timeout": 25, "default_version": "eKFQgg1e36eiF3o9", "port": 93, "protocol": "zJ1UipOsfaDxVbrS", "providers": ["sFedkwUvKUvC0yxj", "43AelBgJOHr6aY6p", "8933VfWVtN7A2nLh"], "session_timeout": 25, "unreachable_timeout": 25}' \
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
    --name 'Q26jmi9IeYvU2tbR' \
    --count '32' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment '5gBXzageI1bLvkmj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'DAlGhDbWQYsXDoUS' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 15, "buffer_percent": 53, "configuration": "iFe0EtFwzo7G9DWS", "enable_region_overrides": false, "extendable_session": false, "game_version": "B14AQyr0oIzyUEHE", "max_count": 75, "min_count": 75, "overrides": {"402mGI2QbnVi8wUg": {"buffer_count": 36, "buffer_percent": 58, "configuration": "idnhXoLgpxjZ3ZmV", "enable_region_overrides": false, "extendable_session": false, "game_version": "myeZ3CMWtXPWGsTh", "max_count": 45, "min_count": 35, "name": "CFyW4pA24bD32q3r", "region_overrides": {"MzaSwZtlmzMGqkpC": {"buffer_count": 8, "buffer_percent": 1, "max_count": 45, "min_count": 34, "name": "81B5rguXXV8Avu8A", "unlimited": false, "use_buffer_percent": false}, "NBDLxt7rzoZrKwb6": {"buffer_count": 62, "buffer_percent": 26, "max_count": 78, "min_count": 16, "name": "pFHzyBmgnk42C3kX", "unlimited": false, "use_buffer_percent": true}, "3BQxP0kOJmxwmMoX": {"buffer_count": 50, "buffer_percent": 37, "max_count": 96, "min_count": 39, "name": "5X567YUgDIDGa2Ji", "unlimited": false, "use_buffer_percent": true}}, "regions": ["MaHGHBE3YuaTL6uf", "GF8VgOWMQBsek66R", "WlG9HtaXRs1E8crC"], "session_timeout": 92, "unlimited": false, "use_buffer_percent": true}, "Gerh86Aa29pSZobS": {"buffer_count": 100, "buffer_percent": 41, "configuration": "06NUgPtUNDgUo3bo", "enable_region_overrides": false, "extendable_session": true, "game_version": "12K0QeiPAwEor0eM", "max_count": 48, "min_count": 100, "name": "iu6WDFDwMccgJozO", "region_overrides": {"U6H3DoySJtn5Gwrf": {"buffer_count": 10, "buffer_percent": 54, "max_count": 80, "min_count": 2, "name": "3WTYOFfHzd4SZGTE", "unlimited": false, "use_buffer_percent": true}, "iJ6J7VEss6TNtkY4": {"buffer_count": 48, "buffer_percent": 31, "max_count": 16, "min_count": 40, "name": "CVuNk6rWRE1MNRGt", "unlimited": false, "use_buffer_percent": true}, "GcJlRTY9hBiXiJd7": {"buffer_count": 49, "buffer_percent": 32, "max_count": 91, "min_count": 0, "name": "Xue1fhEbTmOaMkF0", "unlimited": false, "use_buffer_percent": false}}, "regions": ["GiVvvqBMpEWWMUFC", "GLWpeL5v0hqFbvuq", "gNUjKNiMZvVnnvbQ"], "session_timeout": 0, "unlimited": true, "use_buffer_percent": false}, "iAZVdbarvOAdcdwH": {"buffer_count": 73, "buffer_percent": 57, "configuration": "7VMC0PVrtzmY9S58", "enable_region_overrides": true, "extendable_session": true, "game_version": "BUT7cxCUflfRxgD6", "max_count": 79, "min_count": 22, "name": "En9bITtLuhmcFJpZ", "region_overrides": {"HVCEjtnmKF2ucglV": {"buffer_count": 2, "buffer_percent": 5, "max_count": 71, "min_count": 32, "name": "X4A1NUQO5w8X6HZj", "unlimited": true, "use_buffer_percent": false}, "4SW0UPJoRHzh7Gzz": {"buffer_count": 87, "buffer_percent": 77, "max_count": 57, "min_count": 82, "name": "96DJwjwm0vVXXj9J", "unlimited": false, "use_buffer_percent": false}, "lj1L5FbhmiYV0MrX": {"buffer_count": 17, "buffer_percent": 69, "max_count": 80, "min_count": 25, "name": "cYp5gAcjnJM6RYDS", "unlimited": true, "use_buffer_percent": true}}, "regions": ["NilTmCSm7kYSdvJE", "yxq1rOIiC1ovaQ3l", "h1T7a7LbIZkZUKom"], "session_timeout": 46, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"sk2NJzUBDtIv8P0t": {"buffer_count": 38, "buffer_percent": 20, "max_count": 41, "min_count": 89, "name": "FKw52t5kIQlk03ip", "unlimited": true, "use_buffer_percent": false}, "lL1xT2gRqf6WbiMa": {"buffer_count": 1, "buffer_percent": 79, "max_count": 95, "min_count": 33, "name": "97GjeheSSyLU3Dgh", "unlimited": false, "use_buffer_percent": true}, "rfSofjGRtTUJH8iO": {"buffer_count": 57, "buffer_percent": 34, "max_count": 44, "min_count": 49, "name": "1xk0VkjuuAs3dCn0", "unlimited": true, "use_buffer_percent": false}}, "regions": ["3KpnNbGmbYXJYFHl", "cHPvz7H1ujldTvsn", "Cw7qeGhQZQmwxEmX"], "session_timeout": 95, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'a3GtGpZYLM6cOLHr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment '35JVbPd0l8POeOBE' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 95, "buffer_percent": 23, "configuration": "YJXuEn3NyaqfQOps", "enable_region_overrides": false, "extendable_session": true, "game_version": "5nmbT4WpZ6onFDB5", "max_count": 83, "min_count": 29, "regions": ["mRyg3ejMFDadSgvF", "2H5LbPe33DN3bm4Q", "g0LRoc9lrcSiWkc7"], "session_timeout": 46, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'uHgSkVUexBUIzA8T' \
    --namespace $AB_NAMESPACE \
    --region 'YxZxddhuHtAqMw6T' \
    --body '{"buffer_count": 22, "buffer_percent": 25, "max_count": 6, "min_count": 16, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'tA2pNbKKGUwyP2w3' \
    --namespace $AB_NAMESPACE \
    --region '0DiUu2pJNPZBghBt' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'eF5aH5weumUj7NZ7' \
    --namespace $AB_NAMESPACE \
    --region 'FORNQAypx5CbiTEW' \
    --body '{"buffer_count": 81, "buffer_percent": 89, "max_count": 38, "min_count": 30, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'DcWLPBnEGOJOkBfY' \
    --namespace $AB_NAMESPACE \
    --version 'PvG6Ca6F2Nxg9RwL' \
    --body '{"buffer_count": 35, "buffer_percent": 44, "configuration": "F2zBMDejnT3pzENZ", "enable_region_overrides": true, "extendable_session": false, "game_version": "FQniFE2CMGfUAaFa", "max_count": 62, "min_count": 61, "region_overrides": {"y4hBzqwdMxRsm9pd": {"buffer_count": 43, "buffer_percent": 12, "max_count": 76, "min_count": 96, "name": "1Wtwe1dIFBi0a4bq", "unlimited": true, "use_buffer_percent": true}, "9isChf1A4dvP7vBe": {"buffer_count": 39, "buffer_percent": 85, "max_count": 6, "min_count": 18, "name": "9o9JKiptey6Hr73C", "unlimited": false, "use_buffer_percent": true}, "wgSBCJx37Ed6pbTH": {"buffer_count": 83, "buffer_percent": 65, "max_count": 43, "min_count": 97, "name": "r5TIcez7toHI1RZt", "unlimited": true, "use_buffer_percent": true}}, "regions": ["4lQo97Fp7rBzFMBI", "nXfvwIDesdhZVaoY", "iElL7FFUQltasy5r"], "session_timeout": 47, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'laK8D3MLuba7eohp' \
    --namespace $AB_NAMESPACE \
    --version 'fGhp6v24zAfJbDBh' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'elwsyuOOoT35KK5l' \
    --namespace $AB_NAMESPACE \
    --version 'QTcmq5rm8e87ALQv' \
    --body '{"buffer_count": 22, "buffer_percent": 18, "configuration": "V65Ek6dStxlBrBZe", "enable_region_overrides": true, "game_version": "tWhH3aTLhajAA9JW", "max_count": 20, "min_count": 60, "regions": ["GT3bqv1DuNbbbxzU", "8FCRAsDsPt7RWSmQ", "Zjw7K7DAm9eRF79X"], "session_timeout": 85, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment '43Up2BrPfKOIMJsL' \
    --namespace $AB_NAMESPACE \
    --region 'Si1zwNKWRZ1NlXja' \
    --version 'ZZBpFQV4wr9gVNOd' \
    --body '{"buffer_count": 64, "buffer_percent": 96, "max_count": 87, "min_count": 74, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'HgIlGAxmOqOoqfU0' \
    --namespace $AB_NAMESPACE \
    --region 'zcpW0uIIeOvTX9Ra' \
    --version 'kM60W8uHsNPi2KKM' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'ywGP5mor1RIeJvx4' \
    --namespace $AB_NAMESPACE \
    --region 'nrUPWZ8cWTd7a1HF' \
    --version 'pKZf39T4FbwqPBsP' \
    --body '{"buffer_count": 74, "buffer_percent": 53, "max_count": 78, "min_count": 41, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '75' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'wicB5ZJl3ijGxxgA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'O141G4qHtnkwp5JS' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 91, "mem_limit": 34, "params": "VT0DbUsXHbyeCn8q"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'NA9MtqsIpMxUL5At' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'T8tOf4ICXZtUnFpk' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 55, "mem_limit": 75, "name": "ZY374k7LHD7t6VgI", "params": "36fsfF0HtTr5IwL6"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '5DJk1UjfIKU39O9M' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 3}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'vLvnpIHsVCUv0AH1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'Whdf6YThhjYbxzg4' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "hruzBLV9Fb9jMk7b", "port": 0}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'AGNCCjlbwx7ACMY5' \
    --sortBy 'createdAt' \
    --sortDirection 'asc' \
    --count '88' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'xfK8RsaeaJsYv2O9' \
    --version '3f8szcKMSXfbJT0U' \
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
    --imageURI 'ljxdyf3qgwgK0pNB' \
    --version 'iBoQIqzjaMezsOMX' \
    --versionPatch 'xcxsLWDuchIJaBxI' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version '4t4MVBs6QHsD9OkK' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'mDvftqZjMZ6iODz0' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'QkuEAbJYBqY92xaW' \
    --versionPatch 'K22Qj0ZLfqr1L43N' \
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
    --region '38XIwWCijkZkqTRH' \
    --count '3' \
    --offset '65' \
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
    --region 'np98LDYCm5lvQYyG' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'MqBKCS5bWpHmyXIw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'Nu62KphjUxG0blQK' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'QkBHfQG42j4leAHA' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'xh0fJhsa6W9bkg3S' \
    --withServer 'true' \
    --count '67' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'K5VuPOf7Jl4OQH5A' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'UTiVgY3KjyVDnsmD' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "DVFX8QGVU2j7i73J", "repository": "9gU6hIwxdxQa8Nxy"}' \
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
    --name 'qGUmWnC7BH11kVSR' \
    --count '17' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment '3qghXZnyr8VQbQw1' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 71, "buffer_percent": 8, "configuration": "y2Wf5vOW1sbD08Ge", "enable_region_overrides": true, "extendable_session": true, "game_version": "kl1TvRFetgxSe6rZ", "max_count": 4, "min_count": 44, "overrides": {"b7P6L3jDpjVtKsHF": {"buffer_count": 41, "buffer_percent": 57, "configuration": "3Hh6xw9vaadNKBKH", "enable_region_overrides": false, "extendable_session": false, "game_version": "5yTtWIBuILofU7bp", "max_count": 78, "min_count": 56, "name": "CnT1hivDSlKeZEv1", "region_overrides": {"YPFTKuuQvqTtMriF": {"buffer_count": 39, "buffer_percent": 27, "max_count": 71, "min_count": 65, "name": "SKcER1IvKjEZanK6", "unlimited": false, "use_buffer_percent": true}, "Zal4pRnbVPzwLjUc": {"buffer_count": 97, "buffer_percent": 23, "max_count": 16, "min_count": 50, "name": "7vUfl2tsd1sj65J8", "unlimited": true, "use_buffer_percent": false}, "kpvV9FVE0WBUC4qG": {"buffer_count": 91, "buffer_percent": 12, "max_count": 90, "min_count": 17, "name": "4lR5a0b4nNmkpGau", "unlimited": true, "use_buffer_percent": false}}, "regions": ["30gK7luvxpGXuVdT", "jAByzz39rL1buyyW", "0uhPH5K9oouECbTw"], "session_timeout": 24, "unlimited": true, "use_buffer_percent": false}, "Y9zMiN2qlsssGGiP": {"buffer_count": 16, "buffer_percent": 78, "configuration": "InodF343u4rQgou0", "enable_region_overrides": true, "extendable_session": true, "game_version": "8C6XHkJjfekPDURq", "max_count": 11, "min_count": 38, "name": "Avbov5MwOfqY9O7E", "region_overrides": {"LORoeTYPJmeWfVB4": {"buffer_count": 70, "buffer_percent": 79, "max_count": 93, "min_count": 88, "name": "a2cwkvFPebbL6RpL", "unlimited": true, "use_buffer_percent": true}, "f63wkrE70cScFds8": {"buffer_count": 55, "buffer_percent": 22, "max_count": 58, "min_count": 10, "name": "8PU8h759MU77p6Vg", "unlimited": true, "use_buffer_percent": true}, "LTLeAK4yxBtKW6D2": {"buffer_count": 22, "buffer_percent": 62, "max_count": 46, "min_count": 39, "name": "95KKWtmpLjOHGPsd", "unlimited": true, "use_buffer_percent": false}}, "regions": ["lkRQRjc5BiDmyfUw", "DfnwWxupkZMYR2AP", "ixD03lnls3RCBVWU"], "session_timeout": 14, "unlimited": true, "use_buffer_percent": true}, "u77iXplPTtqR6uLy": {"buffer_count": 96, "buffer_percent": 66, "configuration": "thIKTiP7aXVs70m1", "enable_region_overrides": true, "extendable_session": true, "game_version": "NcbgGhV6Tvfx99EM", "max_count": 38, "min_count": 24, "name": "ZKLBZzdC2txxnpS9", "region_overrides": {"fNR7J2VdjMf7R71i": {"buffer_count": 50, "buffer_percent": 7, "max_count": 72, "min_count": 23, "name": "CnWfZaZbs0HHlPH0", "unlimited": true, "use_buffer_percent": true}, "bYTK0Ud2cZg1JHj7": {"buffer_count": 42, "buffer_percent": 63, "max_count": 20, "min_count": 81, "name": "arCg5Ydw27tvLsXm", "unlimited": false, "use_buffer_percent": false}, "9LQGlifIiZktBASz": {"buffer_count": 99, "buffer_percent": 100, "max_count": 2, "min_count": 6, "name": "GDqtz5dgsybAF7a1", "unlimited": true, "use_buffer_percent": true}}, "regions": ["QtEywgULPCtAOLow", "i7NzTGUbLXrtCret", "Et3wML6dQKpcQBQS"], "session_timeout": 0, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"mer8BSh74Yh3Hmqp": {"buffer_count": 83, "buffer_percent": 23, "max_count": 12, "min_count": 91, "name": "cEfnF30JhQDZUmUj", "unlimited": false, "use_buffer_percent": true}, "0qwDQjk9zd14LPnI": {"buffer_count": 36, "buffer_percent": 35, "max_count": 47, "min_count": 50, "name": "fxJ5ARQeIOBhQDyO", "unlimited": true, "use_buffer_percent": true}, "SiGQbsONu8IzZKLq": {"buffer_count": 20, "buffer_percent": 24, "max_count": 67, "min_count": 48, "name": "DTvXm7nzJ79hJ7ku", "unlimited": false, "use_buffer_percent": false}}, "regions": ["97fChWIqTRB1gQnc", "FjbGUgWfS9TJQ1H2", "TZ6AftUvZ1nw6PW2"], "session_timeout": 25, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'sDA9XmD3gHvXgxUy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '7' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'RTcFsx5WvL81HYeG' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 79, "mem_limit": 77, "params": "IsOVv2uZjyoVn4Ap"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'd3r7V8NMDS84NFS9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '85' \
    --offset '50' \
    --q 'c9FYP0o1TnOb8Tce' \
    --sortBy 'version' \
    --sortDirection 'asc' \
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
    --version 'GIK7MisNAE2UYzcN' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'fkiM6NAHlvP4WsJt' \
    --count '92' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "gsG48FVezKhMrXyW"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "mRFYRktEh9kIRnOY"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "dD4ME3JJ3Ly3w7LF", "ip": "UigtuVRekUSsKKK0", "name": "5n0qR4o0MjmXPqCl", "port": 74}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "01qxqQYLJFGkklzs", "pod_name": "OHjJCUzZQvtpsjP9"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "jZpaoFhmNBrutRTZ"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'WCeoLyswH6OGizpd' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'wVomJcvmRqcFGjrj' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "2tdEBzcr40bYOCBT", "configuration": "eYtduGSQ6AeTrKXc", "deployment": "4aXZbIGAFUuUE5Gl", "game_mode": "nwJRj8UdNPpXG198", "matching_allies": [{"matching_parties": [{"party_attributes": {"rhsgUPskJ1sMYgRv": {}, "DaiY9Nzh6KPxxTVH": {}, "uk7YV0vlN5TvR7cu": {}}, "party_id": "z8CGIuIMXzS7NvU1", "party_members": [{"user_id": "N1kOGwD401GayMGl"}, {"user_id": "RAhKRWdov3Pf7ile"}, {"user_id": "Eq6vtwMLusSIjdIG"}]}, {"party_attributes": {"a8Mxf71BA0Up7gIw": {}, "WYNF7jrB8EkVazOO": {}, "VQNpbt9J6lPFg3ab": {}}, "party_id": "bV5DVziWXdgO6wul", "party_members": [{"user_id": "SJnVUktjpujlZLqZ"}, {"user_id": "axE28B5Kx25nFYaQ"}, {"user_id": "5BzOTJkGwPLEt68A"}]}, {"party_attributes": {"F92Ef4fYgoLeARva": {}, "IoC727VbdjIy68EB": {}, "VYlRmTJfj4n98Coh": {}}, "party_id": "8Id99bHUAXJXRg13", "party_members": [{"user_id": "LKkStc8lAqtW3dy0"}, {"user_id": "54W6zjdjtUNMGu2s"}, {"user_id": "1ZU2roeclQJRH1hw"}]}]}, {"matching_parties": [{"party_attributes": {"S0Fx28vGOQUn42jl": {}, "AVU6flbNxOigjH0h": {}, "1qfAwKNJuAk7clgj": {}}, "party_id": "35Bk5gfch4TGPVBS", "party_members": [{"user_id": "IfZGnRIknXn5AnT3"}, {"user_id": "HacVAzX35V7g4ERe"}, {"user_id": "ceVRKfswUMMNhtg8"}]}, {"party_attributes": {"ruSTb1TK3kSOqD3Q": {}, "qZshGAjLQt60Niel": {}, "ylK4JvfzeDScvkig": {}}, "party_id": "YR2XxeT3ykjSri7x", "party_members": [{"user_id": "uSt2J8lEGJNNyTDU"}, {"user_id": "znMFLwb3zoPrJyCI"}, {"user_id": "Ej73lnMdUDUk3oKM"}]}, {"party_attributes": {"q6pYEmWCA3Bp8L4H": {}, "kYlKrVT5MkDWdAzj": {}, "0oa1uuSI05EfLrRr": {}}, "party_id": "Qs0sT1LFME28HHnP", "party_members": [{"user_id": "QpsyaJwip2ez1Hko"}, {"user_id": "Zak3e4u5Tfkazyda"}, {"user_id": "WYWeKfRO7w7kW8F4"}]}]}, {"matching_parties": [{"party_attributes": {"CdfLEMpC6IPtKqTh": {}, "NbGuY6HlkEoOs1wp": {}, "oDfhF3hVWYIJzrI2": {}}, "party_id": "dskMyKzUOKDv5hU9", "party_members": [{"user_id": "n3fx5i1YHaJ4kppX"}, {"user_id": "tEwii3NmcMsBWFb8"}, {"user_id": "XoTSWQ9yBJFsQv0w"}]}, {"party_attributes": {"WexOOhgecXMovvr0": {}, "vZk6UemvCl9Ajifu": {}, "l4ztmUko0agS3IX6": {}}, "party_id": "hRfZi7QN3iBFVdjC", "party_members": [{"user_id": "kksCRonG1oJy1oEt"}, {"user_id": "3clJqCSS9w0g4dc5"}, {"user_id": "w9YTUr7dnddWNZqA"}]}, {"party_attributes": {"wa8g7i0JAy5KOvOn": {}, "ovurhcviwkin6mRe": {}, "wffE7cwATHrv2Mzs": {}}, "party_id": "eLZAwzFi8HgMKsn2", "party_members": [{"user_id": "aSZTYtTfw6fe4lkd"}, {"user_id": "ac6BpGpAz2pPL8gv"}, {"user_id": "vAFGKxSSfjwMuTYT"}]}]}], "namespace": "1P2GZtnmfYGzo3xX", "notification_payload": {}, "pod_name": "ugZPSJe9FQjU0FeY", "region": "JqTX11NZK7xdkmIg", "session_id": "pzzo6kIXDvWM3WyA"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "xO8CXJewpvwe1zCx"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'shlZliwHR4regdRj' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID '81kYuZsjpL7VwFEj' \
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
    --region 'DJR2e3Hj41wSiWuI' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE