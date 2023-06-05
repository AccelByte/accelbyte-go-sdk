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
echo "1..81"

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
    --body '{"artifactPath": "b3rsJ8JpIZmrcLAr", "image": "xtLw2ze49PtIq0TC", "namespace": "PuOpt0ID2m67UMrT", "persistent": true, "version": "PKPIL4KgyTLBr2aE"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "5eukGWlBlKQY6ubp", "dockerPath": "d7kfu8XeqUudI3HO", "image": "zE1aNttCaSVisj3W", "imageSize": 65, "namespace": "me2wql7W1zleAb8n", "persistent": true, "version": "GaQjg3Z5KyM2pmsv"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "keJDWaOa9GdAMFxZ", "dockerPath": "GQ9lKzY44junwaEy", "image": "4AJItW8u5I35v2Vf", "imageSize": 31, "namespace": "cgdRV1sscqOGfImR", "patchVersion": "8W4AOT4FjwCcveyd", "persistent": false, "uploaderFlags": [{"name": "hKub8IKG5tqCa1Dt", "shorthand": "YXvI8aQZEiueyNWC", "value": "1ZRh1OiL3kwuEkyt"}, {"name": "uiDR01fG1FHjzXel", "shorthand": "9fKmwykdmoz9uTJ1", "value": "xoWdPsX1LEpAuCvq"}, {"name": "d2KAmG8OMV2jFvdQ", "shorthand": "gGYQU4ibHXUaEHbN", "value": "2hnPSQB31MNigeeP"}], "version": "Hl8tOHVC39vVkpAw"}' \
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
    --body '{"claim_timeout": 63, "creation_timeout": 81, "default_version": "zXMtFQNU1HziwaS8", "port": 48, "ports": {"7LbNRthtogM5GXu7": 34, "4em9X4sAdFSx7Ois": 23, "LsUirN4Rhdgevba1": 56}, "protocol": "SfiMwUz3gEn8ajH0", "providers": ["EEKJjju4O2VLxwH5", "ErnEDID3BwFJJs6U", "39E7KNo7A2yLEqps"], "session_timeout": 82, "unreachable_timeout": 9}' \
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
    --body '{"claim_timeout": 50, "creation_timeout": 73, "default_version": "lnVsLJNsgqdDi4Py", "port": 19, "protocol": "Flw3yZXpGSa2JyW7", "providers": ["Y7Dg6rZz7jfYj5U7", "yP6d4YfixToHbeAk", "ReNIi7lhS5NLj9cg"], "session_timeout": 16, "unreachable_timeout": 57}' \
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
    --name 'QkMgWMftg2f5cSJt' \
    --count '47' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'IImlvaWztulXifE7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'Mri1L30Bww6iUEXb' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 40, "buffer_percent": 26, "configuration": "Ql0PrYszElteYguI", "enable_region_overrides": true, "extendable_session": false, "game_version": "N1TK0cRMHlhADf3m", "max_count": 48, "min_count": 25, "overrides": {"DyHdC6WIAIyVvZUh": {"buffer_count": 43, "buffer_percent": 26, "configuration": "hYSg3GvvQs40vnxb", "enable_region_overrides": false, "extendable_session": true, "game_version": "6aZZyBWr9r37nFNY", "max_count": 29, "min_count": 64, "name": "8fTZ2wDYijEVHWL6", "region_overrides": {"tnbDDL7OGnb25ov6": {"buffer_count": 9, "buffer_percent": 0, "max_count": 76, "min_count": 48, "name": "AV8360dWVrX4tIEa", "unlimited": true, "use_buffer_percent": false}, "xQsmOWBMyYjdDG4f": {"buffer_count": 59, "buffer_percent": 79, "max_count": 41, "min_count": 46, "name": "9HhP7cU98ZSms1Ts", "unlimited": true, "use_buffer_percent": true}, "7wQmMgbLPIIjnPDZ": {"buffer_count": 26, "buffer_percent": 38, "max_count": 31, "min_count": 11, "name": "vxCvGH8DXWxZ2eHB", "unlimited": false, "use_buffer_percent": false}}, "regions": ["E4mxaWfd24pSlcyx", "7E92MkPYuXyg39v5", "d7qDIZReUdl6ZMpq"], "session_timeout": 82, "unlimited": false, "use_buffer_percent": false}, "UZ9frZf9rgH0xTNx": {"buffer_count": 89, "buffer_percent": 59, "configuration": "CvB65ghPiJqx5IeW", "enable_region_overrides": true, "extendable_session": true, "game_version": "HpUk58FsBWo5GBCY", "max_count": 52, "min_count": 78, "name": "kYaHc8V7u6RJdHIU", "region_overrides": {"FeO6O4JEXi4Eah0G": {"buffer_count": 86, "buffer_percent": 14, "max_count": 37, "min_count": 58, "name": "qOijDRpPH8Cffnpg", "unlimited": false, "use_buffer_percent": false}, "F0As5OH9DCChwRfp": {"buffer_count": 85, "buffer_percent": 68, "max_count": 62, "min_count": 73, "name": "9LuKNnNNP2r2snVt", "unlimited": false, "use_buffer_percent": true}, "1UdoLNw1OfHd99LM": {"buffer_count": 89, "buffer_percent": 99, "max_count": 77, "min_count": 28, "name": "wYG5WxuD06pKu0bZ", "unlimited": false, "use_buffer_percent": true}}, "regions": ["srPwR6WYkg6JXZGx", "kFz44lh64vuOdO6y", "0FVoSt8ecBnvxfmx"], "session_timeout": 12, "unlimited": false, "use_buffer_percent": true}, "dZWg7cUA0rEgYZKT": {"buffer_count": 48, "buffer_percent": 33, "configuration": "Rbzov3JnwMpoqXpV", "enable_region_overrides": true, "extendable_session": true, "game_version": "mvCooCUWXZfEWNIV", "max_count": 1, "min_count": 96, "name": "ouRT2TsTA02tfDLC", "region_overrides": {"BQLUxAA3Puoj7zgK": {"buffer_count": 64, "buffer_percent": 5, "max_count": 67, "min_count": 2, "name": "Y6y7dkEsny0GKSJR", "unlimited": false, "use_buffer_percent": false}, "yLLF40TfQykxdx7Y": {"buffer_count": 61, "buffer_percent": 36, "max_count": 38, "min_count": 79, "name": "Jm5c7NSpAjSwtKo0", "unlimited": true, "use_buffer_percent": true}, "N1lnly9cx3Osh5Ar": {"buffer_count": 89, "buffer_percent": 5, "max_count": 0, "min_count": 83, "name": "rk4ArLuD5R7WWXaB", "unlimited": false, "use_buffer_percent": false}}, "regions": ["RBg6JVUMcSr30UaX", "4mR0LT5LiiYkCT1m", "3D7yMzAmTmiXHaVS"], "session_timeout": 38, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"deNuDCnVjB3k9jhS": {"buffer_count": 10, "buffer_percent": 83, "max_count": 39, "min_count": 1, "name": "h9aJyFz2fBfhB2BL", "unlimited": false, "use_buffer_percent": true}, "2M6PWI9zpfJC71wE": {"buffer_count": 43, "buffer_percent": 99, "max_count": 4, "min_count": 77, "name": "60LIbFxubJW6kYfB", "unlimited": false, "use_buffer_percent": false}, "MX4rVOoFu1aKpLiK": {"buffer_count": 43, "buffer_percent": 47, "max_count": 74, "min_count": 13, "name": "vW6QnIaYy8FlOLIi", "unlimited": true, "use_buffer_percent": true}}, "regions": ["EcuMed6Uo6TkuL8x", "xoM62whZ1D7GvQc0", "cIUQYKjX4hQNJXfH"], "session_timeout": 55, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'NObFEkmLzA6jG4W0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment '4TFEm2Gxjp7W4nbo' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 40, "buffer_percent": 78, "configuration": "8RXOJCUhItYDVecb", "enable_region_overrides": false, "extendable_session": true, "game_version": "8mmFvu0xbTxd8hl0", "max_count": 80, "min_count": 63, "regions": ["fOMlNIFvbcqCf2ng", "LvFZKabARy5hXpvv", "iqamSjbQvrwWolge"], "session_timeout": 29, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'VULPe1dNIMjMjasp' \
    --namespace $AB_NAMESPACE \
    --region 'pj9AAbWeZoFDmh2s' \
    --body '{"buffer_count": 19, "buffer_percent": 14, "max_count": 60, "min_count": 97, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment '2kSGDhSuXkOeilFg' \
    --namespace $AB_NAMESPACE \
    --region '7Bescw8G049IRXOo' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment '8rGnlEAC1x5IFX4q' \
    --namespace $AB_NAMESPACE \
    --region 'nVSeLQxx2BMfK4KF' \
    --body '{"buffer_count": 89, "buffer_percent": 28, "max_count": 64, "min_count": 88, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'hUf4894TcIti9RqF' \
    --namespace $AB_NAMESPACE \
    --version 'mzqg4nKOYqsCFHOX' \
    --body '{"buffer_count": 21, "buffer_percent": 39, "configuration": "OmNkO5mkb1ytuZz3", "enable_region_overrides": false, "extendable_session": false, "game_version": "ldyyVtYNGIPz60g5", "max_count": 1, "min_count": 22, "region_overrides": {"9iJ6WepKOsbceAEY": {"buffer_count": 57, "buffer_percent": 83, "max_count": 74, "min_count": 56, "name": "2Hcm7uFgVdnv3MOj", "unlimited": false, "use_buffer_percent": false}, "vVm1y3UjC93r8ytf": {"buffer_count": 63, "buffer_percent": 5, "max_count": 39, "min_count": 29, "name": "pl4Ydj3m5I8X9KKO", "unlimited": true, "use_buffer_percent": false}, "siSzrTZb2Rfv3mWd": {"buffer_count": 55, "buffer_percent": 59, "max_count": 4, "min_count": 5, "name": "qlQI0it6ALlbAM8T", "unlimited": true, "use_buffer_percent": false}}, "regions": ["8WqXyFgMJ74yBW1l", "ZdaSUHSbvp7aPW4L", "HK524KgbfIKzkdMN"], "session_timeout": 68, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'zz2fskbnBgfgGAlC' \
    --namespace $AB_NAMESPACE \
    --version '9nuqs1V3o9GBYktB' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'GAidkx9mjWVsMZgk' \
    --namespace $AB_NAMESPACE \
    --version 'rkIPbB0u3s5aRYgD' \
    --body '{"buffer_count": 6, "buffer_percent": 4, "configuration": "HJaW2Gpo5RggbKml", "enable_region_overrides": true, "game_version": "H5BsRF2MVMybYn6h", "max_count": 83, "min_count": 26, "regions": ["eJX3ePLufYU84Aq6", "LSMUhic5MXTe2zHT", "k1YieMuW1Vc4iGaJ"], "session_timeout": 16, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'eCu4z3p1a7rLmUxA' \
    --namespace $AB_NAMESPACE \
    --region 'rJIoig5A5bQ5TVRj' \
    --version 'eRcpBdz8De3P54OA' \
    --body '{"buffer_count": 75, "buffer_percent": 15, "max_count": 30, "min_count": 91, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'ukRrSnOmQwZ5Jaot' \
    --namespace $AB_NAMESPACE \
    --region 'kPBV0AGC1My9tDNW' \
    --version 'KeVLjCpoQLBZfMii' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'la5Jv6qDrSp69ghA' \
    --namespace $AB_NAMESPACE \
    --region 'JGnOMx4qmGCQMzvw' \
    --version 'dxc5ryrW3LJsH9ur' \
    --body '{"buffer_count": 66, "buffer_percent": 91, "max_count": 5, "min_count": 14, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '67' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'bibLIGENnCUUndOt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '0n6G8ipNhAN2m35a' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 5, "mem_limit": 29, "params": "dfIfKSeTOSa8zbjQ"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'OK4Y2GSf9KzO7X7q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'Uhjeg7JcNwXYl4p6' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 61, "mem_limit": 82, "name": "lQaaViQ9hw6aor55", "params": "Ey8C7S2XL0Q5PCpg"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '2J31cEdexT37EzMO' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 29}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '4NB1EDg9L9Zuy9tr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'GWCcrJIpzGOHXLBo' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "0zSTjGmZUHXpSGam", "port": 40}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'V9iybNawAMVXpVu8' \
    --sortBy 'createdAt' \
    --sortDirection 'desc' \
    --count '31' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'lGXzifxebrUbt4n4' \
    --version 'LKkZ0llVCqsJvYyK' \
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
    --imageURI 'yNOUIoaRrJvLCCjP' \
    --version 'DfYbYJwDqCAmw6rJ' \
    --versionPatch '8ZaxejKq3QhnVT4D' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version '2SykI5WFiBZ0Qiyo' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'my8p7fB4hEQwK7BP' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version '1xZveZ3KKGSVCDP6' \
    --versionPatch 'fOfdwHeLwV1DAAOl' \
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
    --region 'MQpgJcOsCHZmbpw5' \
    --count '68' \
    --offset '16' \
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
    --region 'TnIt9XCO1dZNd3Su' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'x05woCiCa78VjmSW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'IaVsC8barxNX6dcO' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'itksJxRYCvEa7JOB' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'lwWCuq8Ky47Tgt4C' \
    --withServer 'false' \
    --count '6' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'hrA8ae3g92Lox1AD' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'T4mFCcp9KWJT1jI2' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "vvniERYyKqagzbWN", "repository": "xgfe20yMi7AZ8iCa"}' \
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
    --name '5ETZ5gKO7bLpCdiK' \
    --count '22' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'xF45sHhSqPysk95n' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 92, "buffer_percent": 26, "configuration": "R76wJy7mgm3ETQ3x", "enable_region_overrides": true, "extendable_session": false, "game_version": "5evqODG4DrcaQo8G", "max_count": 63, "min_count": 66, "overrides": {"FrLloyKPk0VsIr4w": {"buffer_count": 28, "buffer_percent": 66, "configuration": "49AWJUCfqsWeqxT7", "enable_region_overrides": false, "extendable_session": false, "game_version": "HRasrB3j9IlhTHU0", "max_count": 33, "min_count": 65, "name": "ASIY5xA6p1MriQ9a", "region_overrides": {"FnxHmGgifLAU0Ce2": {"buffer_count": 15, "buffer_percent": 83, "max_count": 30, "min_count": 70, "name": "gZhlg7xULNhmPJrK", "unlimited": false, "use_buffer_percent": true}, "MVcmBee27RtEKssi": {"buffer_count": 69, "buffer_percent": 81, "max_count": 61, "min_count": 23, "name": "hDWjv22MDzEeoXNt", "unlimited": false, "use_buffer_percent": true}, "DvSwMpLDQChanBd7": {"buffer_count": 6, "buffer_percent": 27, "max_count": 51, "min_count": 83, "name": "IUbpR04qajGPnefT", "unlimited": true, "use_buffer_percent": true}}, "regions": ["fPUDq58rrBUxpjgr", "J2jqx5kYVyKAAlKA", "cAzkynvCDNGnnEsS"], "session_timeout": 92, "unlimited": false, "use_buffer_percent": true}, "H0TF9XK147U96mHr": {"buffer_count": 38, "buffer_percent": 54, "configuration": "YOMxoqWCbzNYRQ5m", "enable_region_overrides": false, "extendable_session": false, "game_version": "8XFXNfwuz1BrQ8DQ", "max_count": 52, "min_count": 82, "name": "JIWyr9RE2yA33HSS", "region_overrides": {"4aJ5JAJaxyBrDHDG": {"buffer_count": 91, "buffer_percent": 93, "max_count": 89, "min_count": 29, "name": "J1LTYYHEyJVxnNCL", "unlimited": false, "use_buffer_percent": false}, "rmW5sc96ADWE3rbP": {"buffer_count": 46, "buffer_percent": 99, "max_count": 63, "min_count": 81, "name": "SJAWd0eYzVmI6U3L", "unlimited": false, "use_buffer_percent": false}, "BexIGVEHPuyRDOee": {"buffer_count": 44, "buffer_percent": 73, "max_count": 22, "min_count": 82, "name": "pwvHpLek9bz2PGiP", "unlimited": true, "use_buffer_percent": true}}, "regions": ["FcS73sqOQe380Uao", "8IrBxAndI2Keozjn", "jUR5aJ6yzMPLnzRg"], "session_timeout": 46, "unlimited": true, "use_buffer_percent": false}, "bvLpoPywhXaGTK6s": {"buffer_count": 5, "buffer_percent": 48, "configuration": "f6AaEkAEJHJtEJ8R", "enable_region_overrides": true, "extendable_session": false, "game_version": "SbOES6xcAYhw7jZc", "max_count": 17, "min_count": 95, "name": "xh5M4SGOwuvw7WdH", "region_overrides": {"VLaBiFlvJo9GvhCj": {"buffer_count": 58, "buffer_percent": 86, "max_count": 31, "min_count": 51, "name": "iu7B03eF5XzhWkDW", "unlimited": true, "use_buffer_percent": false}, "FUSuOAw28PgiDQCN": {"buffer_count": 19, "buffer_percent": 66, "max_count": 3, "min_count": 27, "name": "XPahL65zlnPup21A", "unlimited": false, "use_buffer_percent": true}, "YCDneycs9C7CPGFO": {"buffer_count": 57, "buffer_percent": 34, "max_count": 0, "min_count": 31, "name": "Gsfn9hny93NMlvvK", "unlimited": true, "use_buffer_percent": false}}, "regions": ["nRHLOkYH8Y5jOViF", "j8qFci5zaBtWIpkz", "FNr39uToYtF8vQ51"], "session_timeout": 17, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"FzDXpKZ8pCzhLLCR": {"buffer_count": 67, "buffer_percent": 79, "max_count": 18, "min_count": 18, "name": "TEvnYT1HLWqk0j3C", "unlimited": true, "use_buffer_percent": false}, "LLj6z1as0lcVPgKD": {"buffer_count": 30, "buffer_percent": 63, "max_count": 28, "min_count": 36, "name": "0H83fYVyX0t147ZM", "unlimited": true, "use_buffer_percent": true}, "V6Ojqb9LhuMA9qYM": {"buffer_count": 76, "buffer_percent": 55, "max_count": 73, "min_count": 29, "name": "dvR1S27jb8j65QHF", "unlimited": true, "use_buffer_percent": false}}, "regions": ["Py4o6muMRXGimt03", "ccg64nE333S4vjAT", "fz19KEkDRQ4gKDZh"], "session_timeout": 13, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'OAydJTr6BcUkgGN7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '23' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'lLelib5JJEnjTnZq' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 79, "mem_limit": 80, "params": "ac3A4IRnxNKAXaLW"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name '1E3Osc49zLzr3zfK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ImageLimitClient
samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'ImageLimitClient' test.out

#- 65 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version 'Ucsk44tjPJbtAnKb' \
    > test.out 2>&1
eval_tap $? 65 'ImageDetailClient' test.out

#- 66 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'KnZIvMlVI7FIblfG' \
    --count '35' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 66 'ListServerClient' test.out

#- 67 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "VR2Mke5O0lIP4Jfd"}' \
    > test.out 2>&1
eval_tap $? 67 'ServerHeartbeat' test.out

#- 68 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "5YJDoBsyqHGG2lzE"}' \
    > test.out 2>&1
eval_tap $? 68 'DeregisterLocalServer' test.out

#- 69 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "PaejDV6jCwm83Eto", "ip": "RhPUEz1zYqlifEoM", "name": "Fwy2HwwpUOjbA36i", "port": 47}' \
    > test.out 2>&1
eval_tap $? 69 'RegisterLocalServer' test.out

#- 70 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "ndcJDpt5S8KiEaMm", "pod_name": "RnbrjY0ef7tjAefN"}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterServer' test.out

#- 71 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "hRvoXCLcAgC4IUbB"}' \
    > test.out 2>&1
eval_tap $? 71 'ShutdownServer' test.out

#- 72 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName '6u33V3zbqgvFFmU4' \
    > test.out 2>&1
eval_tap $? 72 'GetServerSessionTimeout' test.out

#- 73 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'gSMACzR7Lws4QFyl' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSession' test.out

#- 74 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "YxvdsW5pgKS8WM1M", "configuration": "JiPFeiNLhR8jYtJx", "deployment": "4jocG1uTIqhqqjnF", "game_mode": "eKfFexT6hWT6UEXN", "matching_allies": [{"matching_parties": [{"party_attributes": {"dwieM1RFL0ksEH3c": {}, "ci4TMQr3qIwUYchM": {}, "XvR3dgZuVfS3Uwdo": {}}, "party_id": "GsCfWvATGzoDCqr7", "party_members": [{"user_id": "3V9UnZQeW55Y9Key"}, {"user_id": "vlp7Fj1GKxECTT6q"}, {"user_id": "yUB2Olg4tH2QFrxF"}]}, {"party_attributes": {"SBB3nGJsp6cIL1YQ": {}, "vstULZ4Fhl38LqFY": {}, "BF4iLFPmrrZbQph9": {}}, "party_id": "NCtAGVSG3v8nwERZ", "party_members": [{"user_id": "hcbG74338TOmnRin"}, {"user_id": "UEkttIGmnvU59zwF"}, {"user_id": "v8119G3zbWpGBuAR"}]}, {"party_attributes": {"3vmFWg9yAb2T5MWw": {}, "MHL8K2lYixl76zLT": {}, "cZUh0c6WBOoXV7oz": {}}, "party_id": "mjoXSpsu5wfEoXy3", "party_members": [{"user_id": "urxWEjv2OH9NhQ3u"}, {"user_id": "SYvtdKmszrgrEeJF"}, {"user_id": "uHPus6tkpWsO6MLE"}]}]}, {"matching_parties": [{"party_attributes": {"yOuK8mRW5v0kl4K4": {}, "hgYpMGBPCoysKmmW": {}, "1S6IrVn95omCNFYb": {}}, "party_id": "s8BnfUMI0Ao1LOiw", "party_members": [{"user_id": "bNcdgTlTsuTUbm0m"}, {"user_id": "6vSSi746weJCxg0i"}, {"user_id": "aiCe7B0iTB6XTKSL"}]}, {"party_attributes": {"vfN0lhEZXHd5031i": {}, "UxvefUF5lCIr9pd2": {}, "R6VwsIhGyXFZmEDX": {}}, "party_id": "iMrDONrHeLH7xYWD", "party_members": [{"user_id": "tNCFiRoLyTA2gcpc"}, {"user_id": "ucgprS0rFv5sTQjt"}, {"user_id": "GtbzwOg2n9wVI6Aj"}]}, {"party_attributes": {"Jp0WCt19GeDiseo4": {}, "gnd1YKgGLNLTPEAR": {}, "9JxhWkHPzWYzWya6": {}}, "party_id": "kXxApdkVYOhYHawk", "party_members": [{"user_id": "az6B4tCbV2fuosUS"}, {"user_id": "NrbHK7ZPZIcZy6Ft"}, {"user_id": "MuFYpPtzcwWfZQWf"}]}]}, {"matching_parties": [{"party_attributes": {"Gbmqhpy06W7kAm04": {}, "mohrmhXMMLpdR0Rf": {}, "xGSqVnQV5DMdxMDT": {}}, "party_id": "FHe8zzYF2tsnuwZY", "party_members": [{"user_id": "24TsSFzy6cRqIO8r"}, {"user_id": "Mbzl9lL0D8iY6hdr"}, {"user_id": "JlVpYViTclxrkbVq"}]}, {"party_attributes": {"NBy26SAELis2VPFf": {}, "APBgMgzsZP0W7kd3": {}, "H1DJC5TR8hMsAnum": {}}, "party_id": "ixqWniE4JJtfJUza", "party_members": [{"user_id": "DlDLNiNZ5fZ5HQQu"}, {"user_id": "y2Lay4yQXqeZ4Qnw"}, {"user_id": "C7yhMyswlernBtL3"}]}, {"party_attributes": {"vzo0RCia0xHKl8mn": {}, "xLyUihRgE30qwwGV": {}, "XzsJ53xfUm24q8b0": {}}, "party_id": "55vOjOCLGOYguehP", "party_members": [{"user_id": "bDEyIhazCQ5aKtn9"}, {"user_id": "Dwjy155VV2EmQRvp"}, {"user_id": "8O9lOWTFMb2pwZtB"}]}]}], "namespace": "wonJeB6hWroM1q1v", "notification_payload": {}, "pod_name": "LtGNn3oXNbnU1HCL", "region": "GksxU6kMCSOScH7x", "session_id": "fkGC0IbEDbWACi6X"}' \
    > test.out 2>&1
eval_tap $? 74 'CreateSession' test.out

#- 75 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "hCaQAMnIIM026k5I"}' \
    > test.out 2>&1
eval_tap $? 75 'ClaimServer' test.out

#- 76 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '4jHNQPdQRfcc3cGO' \
    > test.out 2>&1
eval_tap $? 76 'GetSession' test.out

#- 77 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'JOq0kUe3gujjmKL5' \
    > test.out 2>&1
eval_tap $? 77 'CancelSession' test.out

#- 78 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 78 'GetDefaultProvider' test.out

#- 79 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 79 'ListProviders' test.out

#- 80 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region 'TGSM8ldgNAr0suYW' \
    > test.out 2>&1
eval_tap $? 80 'ListProvidersByRegion' test.out

#- 81 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 81 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE