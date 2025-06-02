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
echo "1..89"

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
    --body '{"artifactPath": "VXHpwvNjs5DFohB6", "coreDumpEnabled": false, "image": "VZBLDgWkBMMyHt4H", "imageReplicationsMap": {"RBUWYsG23SPaqy4R": {"failure_code": "gxFOyqfZ4Tbewv3H", "region": "unIWSfdYKqQbEzhh", "status": "aBhtMVdEGNObm2NS", "uri": "3DKO9NB9MOmKi209"}, "TSewDJoulE60cbld": {"failure_code": "uHWbkcqmtbN88tm5", "region": "NhNnsKLUEYM7YJTW", "status": "7s6qOvaRQcDZUQRW", "uri": "JMVPNHNMn2ljo7wL"}, "qzsZsknvyJYKGUi7": {"failure_code": "gOxMAkyAhkv22tjv", "region": "QtjQdNykrYfa6G5A", "status": "NuFUsihYSjkWt3Ng", "uri": "IibQxFiJmrKbuisI"}}, "namespace": "1Nhpze8ePJWf8Zm6", "patchVersion": "Fci60LM9vzkdYMDj", "persistent": false, "ulimitFileSize": 24, "version": "LB30ECHZt4JsGM3M"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "dZUSI2irDqOGf60L", "coreDumpEnabled": true, "dockerPath": "34bWd3Vv0epj1kHG", "image": "d2J25E84sAe4fJJE", "imageSize": 3, "namespace": "6iLmbBshp88Wqad3", "persistent": false, "ulimitFileSize": 79, "version": "T6AYcakKUYuZPHrC"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "58BPL5WXpEtdV0I6", "coreDumpEnabled": false, "dockerPath": "X8HdPv5ru1h0SpAi", "image": "OREOP6CyZ7nrjqYL", "imageSize": 75, "namespace": "zURvEblgAUSKdq0F", "patchVersion": "o5cyQfqkk0L8PPGA", "persistent": true, "ulimitFileSize": 5, "uploaderFlag": "WWq7DbxLUi5csjNa", "version": "FgDORGw6sg8pDMnW"}' \
    > test.out 2>&1
eval_tap $? 6 'CreateImagePatch' test.out

#- 7 GetLowestInstanceSpec
samples/cli/sample-apps Dsmc getLowestInstanceSpec \
    > test.out 2>&1
eval_tap $? 7 'GetLowestInstanceSpec' test.out

#- 8 GetWorkerConfig
samples/cli/sample-apps Dsmc getWorkerConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'GetWorkerConfig' test.out

#- 9 UpdateWorkerConfig
samples/cli/sample-apps Dsmc updateWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": false, "ghost_worker": false, "manual_buffer_override": true, "zombie_worker": false}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateWorkerConfig' test.out

#- 10 CreateWorkerConfig
samples/cli/sample-apps Dsmc createWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": false, "ghost_worker": false, "manual_buffer_override": false, "zombie_worker": true}' \
    > test.out 2>&1
eval_tap $? 10 'CreateWorkerConfig' test.out

#- 11 GetConfig
samples/cli/sample-apps Dsmc getConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetConfig' test.out

#- 12 CreateConfig
samples/cli/sample-apps Dsmc createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"claim_timeout": 2, "creation_timeout": 37, "default_version": "8IMs9uK9iqhF1UJ1", "port": 93, "ports": {"sw02ZLKxFmLynfUd": 7, "8D3a7FRIUmkS9XFr": 76, "v5FWkBAjx43fDpWW": 82}, "protocol": "Puma6nLXSG4bknZD", "providers": ["Vip4ywG6lRgpys6g", "X2pyejJ5PhEkfEEs", "lAhuMwe8BfjfMPIl"], "session_timeout": 67, "unreachable_timeout": 60}' \
    > test.out 2>&1
eval_tap $? 12 'CreateConfig' test.out

#- 13 DeleteConfig
samples/cli/sample-apps Dsmc deleteConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteConfig' test.out

#- 14 UpdateConfig
samples/cli/sample-apps Dsmc updateConfig \
    --namespace $AB_NAMESPACE \
    --body '{"claim_timeout": 94, "creation_timeout": 67, "default_version": "pC003UHGiuPVjxTN", "port": 78, "protocol": "26kste4CTMhoAU8T", "providers": ["1VYSGdkVlyFZOHD7", "5EPFTBG7CZgti7VV", "3pPatgi0Lsy0eru1"], "session_timeout": 40, "unreachable_timeout": 57}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateConfig' test.out

#- 15 ClearCache
samples/cli/sample-apps Dsmc clearCache \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'ClearCache' test.out

#- 16 GetAllDeployment
samples/cli/sample-apps Dsmc getAllDeployment \
    --namespace $AB_NAMESPACE \
    --name '9BPC8cqSzrhK2z96' \
    --count '29' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 16 'GetAllDeployment' test.out

#- 17 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment '7YI7r2MMA4bPfQcr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetDeployment' test.out

#- 18 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'GEhN9ePGwiz5ifRt' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 67, "buffer_percent": 65, "configuration": "MhJElL4HKxqxiMST", "enable_region_overrides": true, "extendable_session": true, "game_version": "fLU8dxx4VI7x72cW", "max_count": 10, "min_count": 55, "overrides": {"1dath53vB1tC29T1": {"buffer_count": 65, "buffer_percent": 20, "configuration": "pFsqRNBa3AFd0cGA", "enable_region_overrides": false, "extendable_session": true, "game_version": "3MhQBMcyrZPZeSu5", "max_count": 53, "min_count": 32, "name": "I3lMpf9zMroNoCA3", "region_overrides": {"DgOQfT9LtRcz3BYv": {"buffer_count": 66, "buffer_percent": 61, "max_count": 78, "min_count": 10, "name": "eiYO0IONmCE8ZtAt", "unlimited": false, "use_buffer_percent": true}, "R5oA8292rCw90GXq": {"buffer_count": 36, "buffer_percent": 46, "max_count": 97, "min_count": 59, "name": "5flZA4TDwnQ3YtMt", "unlimited": true, "use_buffer_percent": false}, "y3w0gUY4JRADWei3": {"buffer_count": 23, "buffer_percent": 94, "max_count": 4, "min_count": 34, "name": "m49lKUpTGPJ4umeO", "unlimited": true, "use_buffer_percent": true}}, "regions": ["VInJFRmLyFz8LtBK", "0uvNQY248SdFc4cF", "NawRGUeMAP3LTkmv"], "session_timeout": 45, "unlimited": false, "use_buffer_percent": true}, "WSmpdJUBxVEZlHQk": {"buffer_count": 70, "buffer_percent": 31, "configuration": "H4UxtcqD6Qd6jXLg", "enable_region_overrides": true, "extendable_session": false, "game_version": "xE5JG5kSEwCIg2eZ", "max_count": 57, "min_count": 88, "name": "oJxwGNdoi1LokY1g", "region_overrides": {"1E3jkurF0DWytj8K": {"buffer_count": 25, "buffer_percent": 12, "max_count": 5, "min_count": 70, "name": "Lko7zIauEnKUrJiw", "unlimited": false, "use_buffer_percent": false}, "0LNtfyl6i9MCEvjg": {"buffer_count": 4, "buffer_percent": 34, "max_count": 96, "min_count": 35, "name": "xpbldbXYyPggCsLF", "unlimited": true, "use_buffer_percent": true}, "qHH64VbFda6ubkUt": {"buffer_count": 47, "buffer_percent": 6, "max_count": 61, "min_count": 71, "name": "xnsjBtHru4XyyVtv", "unlimited": true, "use_buffer_percent": false}}, "regions": ["4VbDAg1H49pOyrV4", "BBbGRkZvH82rmJiu", "wLgb96UVGfjNEDpW"], "session_timeout": 20, "unlimited": true, "use_buffer_percent": true}, "ku10Fc6Yraf7ywCO": {"buffer_count": 6, "buffer_percent": 28, "configuration": "FWixg2XRnoR8wGon", "enable_region_overrides": true, "extendable_session": false, "game_version": "xVLlpo6knFK4gMqw", "max_count": 15, "min_count": 95, "name": "3sTiLrXagqSndCgU", "region_overrides": {"XhDM8sH7w39WdqEN": {"buffer_count": 70, "buffer_percent": 69, "max_count": 12, "min_count": 52, "name": "Bc2BZIFRopBebf4s", "unlimited": true, "use_buffer_percent": true}, "6m4MfBGMNuJjFTGv": {"buffer_count": 48, "buffer_percent": 13, "max_count": 0, "min_count": 19, "name": "8SjP0HvHoOMMet6S", "unlimited": false, "use_buffer_percent": false}, "oFkO3qVmiAPX0tlK": {"buffer_count": 62, "buffer_percent": 9, "max_count": 64, "min_count": 79, "name": "ryCHV9tP1SEhNqws", "unlimited": true, "use_buffer_percent": true}}, "regions": ["dvEiIBzLurHhlOj6", "fJSqoemd0tCV2A6P", "PtW7D8NGAen2GO1j"], "session_timeout": 69, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"VuGnlOfKEuXTT1ve": {"buffer_count": 21, "buffer_percent": 77, "max_count": 46, "min_count": 80, "name": "g3Iybbf4Dc9UnyH6", "unlimited": false, "use_buffer_percent": true}, "PmikSN9tnzeBLQQq": {"buffer_count": 59, "buffer_percent": 2, "max_count": 63, "min_count": 90, "name": "0LDPoS56r51XElYG", "unlimited": false, "use_buffer_percent": true}, "fjX1pHPRjmVcHKPG": {"buffer_count": 67, "buffer_percent": 2, "max_count": 71, "min_count": 57, "name": "Q8tj0tUqbR2PGZdL", "unlimited": false, "use_buffer_percent": false}}, "regions": ["YKVZ7Zw032B3NkPj", "wF8USrpGrDJXc4CH", "6uO56KUms3OjNP73"], "session_timeout": 36, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'CreateDeployment' test.out

#- 19 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'rHtaEJZCzxaWLzpD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteDeployment' test.out

#- 20 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'Iobd4uY5cFTIM4FJ' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 33, "buffer_percent": 85, "configuration": "YmRoQmNVvbqWNgkV", "enable_region_overrides": false, "extendable_session": false, "game_version": "fLGQM9gVj8pNJ1Nb", "max_count": 10, "min_count": 18, "regions": ["SVJpAzytY0YzQRjF", "mOwhIx5mw7rISvMj", "nlNzyP7DApAtgY24"], "session_timeout": 75, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateDeployment' test.out

#- 21 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'CCmWMj0U42HiyTnR' \
    --namespace $AB_NAMESPACE \
    --region 'PyxMF2L8l0hbeFTN' \
    --body '{"buffer_count": 92, "buffer_percent": 78, "max_count": 82, "min_count": 14, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'CreateRootRegionOverride' test.out

#- 22 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'UNNru68hu1At19p8' \
    --namespace $AB_NAMESPACE \
    --region 'qE1OcOFlP5ftqpSa' \
    > test.out 2>&1
eval_tap $? 22 'DeleteRootRegionOverride' test.out

#- 23 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'Ad2oKHaLyvctArAh' \
    --namespace $AB_NAMESPACE \
    --region 'cVEJaaGzbLKBM4Kh' \
    --body '{"buffer_count": 42, "buffer_percent": 82, "max_count": 47, "min_count": 44, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateRootRegionOverride' test.out

#- 24 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment '9pTf2PdFmPfbsXHv' \
    --namespace $AB_NAMESPACE \
    --version 'DfvtEg9IE1Up0s5H' \
    --body '{"buffer_count": 68, "buffer_percent": 50, "configuration": "PctJKz9ONYndfTwl", "enable_region_overrides": false, "extendable_session": false, "game_version": "2aF6PS0nz8juMX3d", "max_count": 54, "min_count": 50, "region_overrides": {"O4slzNssOSFGaOUb": {"buffer_count": 16, "buffer_percent": 36, "max_count": 73, "min_count": 65, "name": "RanBy89mYuHmPRgE", "unlimited": true, "use_buffer_percent": false}, "X8xkHeR3JCDoWBml": {"buffer_count": 5, "buffer_percent": 51, "max_count": 6, "min_count": 80, "name": "F49OYWQBbJ3HvU0Z", "unlimited": true, "use_buffer_percent": true}, "DYIIN5RL9niVU98a": {"buffer_count": 69, "buffer_percent": 40, "max_count": 40, "min_count": 73, "name": "mK92u0hYrZH7H7nK", "unlimited": true, "use_buffer_percent": false}}, "regions": ["jJBndmR9CoCVSrty", "czROdflTj6xVRElD", "CFN6Ae7dWDN7Ljyu"], "session_timeout": 59, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'CreateDeploymentOverride' test.out

#- 25 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment '8uB2jd7DOnvky2Ku' \
    --namespace $AB_NAMESPACE \
    --version '0J4NS1fQbE9SHd6r' \
    > test.out 2>&1
eval_tap $? 25 'DeleteDeploymentOverride' test.out

#- 26 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 's7Pc28gpNdaylbdt' \
    --namespace $AB_NAMESPACE \
    --version 'tBlkvC2MbPYy0eO6' \
    --body '{"buffer_count": 24, "buffer_percent": 85, "configuration": "QuSNm1wd41a2pI3E", "enable_region_overrides": false, "game_version": "Zc59NtMkQCVH1oYQ", "max_count": 68, "min_count": 40, "regions": ["XsqIDG5JrpSGBQro", "T0UpStTAAptGVXoJ", "Hq9ZQWpL1idNCI86"], "session_timeout": 20, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateDeploymentOverride' test.out

#- 27 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment '2e5usckhVcLoadGi' \
    --namespace $AB_NAMESPACE \
    --region 'Ptwwl2bhs1di614G' \
    --version 'C1mfID5GNw39QifM' \
    --body '{"buffer_count": 7, "buffer_percent": 97, "max_count": 29, "min_count": 80, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'CreateOverrideRegionOverride' test.out

#- 28 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'Vtd7kta4HD9P5DQK' \
    --namespace $AB_NAMESPACE \
    --region 'qMrX1N75s97H0uVk' \
    --version 'HLv8DsvRaL4wTspu' \
    > test.out 2>&1
eval_tap $? 28 'DeleteOverrideRegionOverride' test.out

#- 29 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'yNPyN3qgX5DQD5Ma' \
    --namespace $AB_NAMESPACE \
    --region 'MCez67U7NIP4VjX6' \
    --version 'IRTjiPWOnl8eryKq' \
    --body '{"buffer_count": 80, "buffer_percent": 31, "max_count": 16, "min_count": 72, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateOverrideRegionOverride' test.out

#- 30 DeleteCreatingServerCountQueue
samples/cli/sample-apps Dsmc deleteCreatingServerCountQueue \
    --deployment 'Ek3tlQFcPV3CXpxr' \
    --namespace $AB_NAMESPACE \
    --version 'Z16XDiNem8q4ZfNG' \
    > test.out 2>&1
eval_tap $? 30 'DeleteCreatingServerCountQueue' test.out

#- 31 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '47' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 31 'GetAllPodConfig' test.out

#- 32 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name '970r6BorU1XnvMgq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPodConfig' test.out

#- 33 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '6CfzcBrt5GVRWd8D' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 59, "mem_limit": 23, "params": "YOQu4Gg142yNTpOJ"}' \
    > test.out 2>&1
eval_tap $? 33 'CreatePodConfig' test.out

#- 34 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name '3gevdBcQeAf4fBnH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePodConfig' test.out

#- 35 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'lABA1LA08Gwv5XDh' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 22, "mem_limit": 55, "name": "oLq72i5fTLLpD66y", "params": "aX1BWDBSaQAeRWMR"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePodConfig' test.out

#- 36 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'ap2Jvo9v9wXOo3j0' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 54}' \
    > test.out 2>&1
eval_tap $? 36 'AddPort' test.out

#- 37 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'OQS5pyt2COjLVJNS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'DeletePort' test.out

#- 38 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'OJQce5zUEC5aWmJM' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "2Z6KnBoJuQGP0rl4", "port": 21}' \
    > test.out 2>&1
eval_tap $? 38 'UpdatePort' test.out

#- 39 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'x8E14M5U2ZyHrbvw' \
    --sortBy 'updatedAt' \
    --sortDirection 'desc' \
    --count '83' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 39 'ListImages' test.out

#- 40 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'bME3MSHgwzzb1TCd' \
    --version 'slC8mtZuxXtHVM8F' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImage' test.out

#- 41 GetImageLimit
samples/cli/sample-apps Dsmc getImageLimit \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'GetImageLimit' test.out

#- 42 DeleteImagePatch
samples/cli/sample-apps Dsmc deleteImagePatch \
    --namespace $AB_NAMESPACE \
    --imageURI 'IA8DBRhQ6hpqpDQ8' \
    --version 'tLaXZfWGtO74r7b9' \
    --versionPatch 'XjkjP4bL4cKSICrk' \
    > test.out 2>&1
eval_tap $? 42 'DeleteImagePatch' test.out

#- 43 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'JkNWnbaSRCKNUxAV' \
    > test.out 2>&1
eval_tap $? 43 'GetImageDetail' test.out

#- 44 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'KSeVaWM985b4TVnq' \
    > test.out 2>&1
eval_tap $? 44 'GetImagePatches' test.out

#- 45 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version '7ubh8kTiAzmHoRIr' \
    --versionPatch 'YXXFncZtZRUINoBR' \
    > test.out 2>&1
eval_tap $? 45 'GetImagePatchDetail' test.out

#- 46 AddBuffer
samples/cli/sample-apps Dsmc addBuffer \
    --namespace $AB_NAMESPACE \
    --body '{"AllocCount": 67, "DeploymentName": "un9QrlSaZKou4Fdv", "JobCount": 46, "JobPriority": 15, "OverrideVersion": "cfJvR9OCNRRRrBzE", "Region": "pLYdB3aFaKW2SYi5"}' \
    > test.out 2>&1
eval_tap $? 46 'AddBuffer' test.out

#- 47 GetRepository
samples/cli/sample-apps Dsmc getRepository \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'GetRepository' test.out

#- 48 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'GNOiFyRcyCETEp55' \
    --count '29' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 48 'ListServer' test.out

#- 49 CountServer
samples/cli/sample-apps Dsmc countServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'CountServer' test.out

#- 50 CountServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace $AB_NAMESPACE \
    --region 'pWSYniM1BS9R2kEe' \
    > test.out 2>&1
eval_tap $? 50 'CountServerDetailed' test.out

#- 51 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'ListLocalServer' test.out

#- 52 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'CH9Fx17D1phD1rUK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteLocalServer' test.out

#- 53 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName '3Lbq0pX0swKdv6Nj' \
    > test.out 2>&1
eval_tap $? 53 'GetServer' test.out

#- 54 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'VY7xVRm5168GgHzH' \
    > test.out 2>&1
eval_tap $? 54 'DeleteServer' test.out

#- 55 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'EYs3DYybIjAnrQVr' \
    --withServer 'false' \
    --count '43' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 55 'ListSession' test.out

#- 56 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'XgXZqh0MbLdZnrMI' \
    > test.out 2>&1
eval_tap $? 56 'CountSession' test.out

#- 57 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'h06kOMTjUgb92vhu' \
    > test.out 2>&1
eval_tap $? 57 'DeleteSession' test.out

#- 58 RunGhostCleanerRequestHandler
samples/cli/sample-apps Dsmc runGhostCleanerRequestHandler \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'RunGhostCleanerRequestHandler' test.out

#- 59 RunZombieCleanerRequestHandler
samples/cli/sample-apps Dsmc runZombieCleanerRequestHandler \
    --namespace $AB_NAMESPACE \
    --body '{"JobCount": 71, "Region": "wvKYJuEvXkiywpG9", "TimeoutSecond": 66, "ZombieCount": 34}' \
    > test.out 2>&1
eval_tap $? 59 'RunZombieCleanerRequestHandler' test.out

#- 60 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "HcVlV5sO0GAGuJu3", "repository": "71P46SRMoFsmsoT4"}' \
    > test.out 2>&1
eval_tap $? 60 'CreateRepository' test.out

#- 61 ExportConfigV1
samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'ExportConfigV1' test.out

#- 62 ImportConfigV1
samples/cli/sample-apps Dsmc importConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 62 'ImportConfigV1' test.out

#- 63 GetAllDeploymentClient
samples/cli/sample-apps Dsmc getAllDeploymentClient \
    --namespace $AB_NAMESPACE \
    --name 'Gwa1ZwX515HqhaZc' \
    --count '47' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 63 'GetAllDeploymentClient' test.out

#- 64 GetDeploymentClient
samples/cli/sample-apps Dsmc getDeploymentClient \
    --deployment 'tC4mB9yzgSexBXU8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetDeploymentClient' test.out

#- 65 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment '96XqRQDhk2etyTtD' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 88, "buffer_percent": 47, "configuration": "0yft2MHJOyWYUG8x", "enable_region_overrides": true, "extendable_session": true, "game_version": "IPPAwZaNa5KO2bkZ", "max_count": 92, "min_count": 39, "overrides": {"bWjqunxIVvhLv5Y5": {"buffer_count": 75, "buffer_percent": 100, "configuration": "idWw0IlEZUnfaD0q", "enable_region_overrides": false, "extendable_session": false, "game_version": "UZa0PxlUWb7541WJ", "max_count": 32, "min_count": 49, "name": "SG1NXvUvWx7wMFnh", "region_overrides": {"pLGgQtJ79OWgcYjh": {"buffer_count": 74, "buffer_percent": 0, "max_count": 42, "min_count": 85, "name": "nYjwY3E6DGB3YYab", "unlimited": true, "use_buffer_percent": true}, "UIER6UPDbB31HnAI": {"buffer_count": 33, "buffer_percent": 80, "max_count": 99, "min_count": 79, "name": "xemd4ajLQbaAmSNy", "unlimited": false, "use_buffer_percent": true}, "hCOqswAeSM94c06r": {"buffer_count": 21, "buffer_percent": 85, "max_count": 55, "min_count": 74, "name": "A9tVPiTg2exEvhMx", "unlimited": false, "use_buffer_percent": true}}, "regions": ["l9lWWblGVrrNeJx1", "vaIygSp6RS2WpGLU", "PfJq5c84tKPA1UcJ"], "session_timeout": 96, "unlimited": true, "use_buffer_percent": false}, "uQSo9HfuIQVT6YJ6": {"buffer_count": 68, "buffer_percent": 83, "configuration": "DtaOrrPChC7wBzHu", "enable_region_overrides": false, "extendable_session": false, "game_version": "mSWd0A8X2pErzCMA", "max_count": 88, "min_count": 64, "name": "DHHEBpir5krNcT58", "region_overrides": {"aEHLQX85mzBsTehV": {"buffer_count": 16, "buffer_percent": 12, "max_count": 19, "min_count": 8, "name": "t5w8BLRpQ05Ak9pF", "unlimited": false, "use_buffer_percent": true}, "g5NoxlJvPH8LGWbY": {"buffer_count": 37, "buffer_percent": 80, "max_count": 46, "min_count": 63, "name": "oKCLI6cUvPMcvttP", "unlimited": false, "use_buffer_percent": false}, "cnRKLZdfIMe6o0gn": {"buffer_count": 51, "buffer_percent": 26, "max_count": 16, "min_count": 54, "name": "0sWNvgCW4RdwwygG", "unlimited": true, "use_buffer_percent": false}}, "regions": ["7jZ6nPkYFClwfmNA", "FHOXBJNWSnM0V3VS", "KGerMtDKopgj0PK8"], "session_timeout": 87, "unlimited": false, "use_buffer_percent": false}, "BmoGgeQB3kFXjp80": {"buffer_count": 53, "buffer_percent": 13, "configuration": "im8IqMuWsiHeWe8P", "enable_region_overrides": true, "extendable_session": true, "game_version": "Q7k7d6DSzRh9vVyb", "max_count": 49, "min_count": 65, "name": "Z0lSlMvMkT9UJZrt", "region_overrides": {"IoKZxKwDMeoAXnSF": {"buffer_count": 14, "buffer_percent": 27, "max_count": 69, "min_count": 4, "name": "Ru78ySXCBpl9e74i", "unlimited": true, "use_buffer_percent": false}, "xCe9y6TXDPxo9F1Q": {"buffer_count": 58, "buffer_percent": 37, "max_count": 84, "min_count": 52, "name": "pwvmte7pniE44Pkf", "unlimited": false, "use_buffer_percent": false}, "wceEITBGqXwbyRpQ": {"buffer_count": 25, "buffer_percent": 34, "max_count": 47, "min_count": 27, "name": "P8BcgwqayhiXnUeX", "unlimited": false, "use_buffer_percent": false}}, "regions": ["KA1nZfIDbruOOqnT", "rb0K4LeISe8SObGO", "gHQgjd2tnSmSqfOv"], "session_timeout": 76, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"OJtP1SZUDbsIdfcN": {"buffer_count": 55, "buffer_percent": 33, "max_count": 10, "min_count": 9, "name": "p4Z5mP5nCrrFNkUl", "unlimited": true, "use_buffer_percent": false}, "ooWOTEMFZGdjKvVG": {"buffer_count": 17, "buffer_percent": 25, "max_count": 42, "min_count": 81, "name": "N8GBv4F15byNJ4XY", "unlimited": false, "use_buffer_percent": true}, "O4a6Q0X3s0HnCFJe": {"buffer_count": 43, "buffer_percent": 92, "max_count": 88, "min_count": 17, "name": "S1jCUu49kix9RM9I", "unlimited": false, "use_buffer_percent": false}}, "regions": ["3i7RT4ChGCKgOOmF", "Rlm7e8yvM3DYnxvl", "SxKES1P1E3Nmhegx"], "session_timeout": 52, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 65 'CreateDeploymentClient' test.out

#- 66 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'FxSvFYEV5sDZhs7S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteDeploymentClient' test.out

#- 67 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '19' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 67 'GetAllPodConfigClient' test.out

#- 68 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'HEOtVD3RF7Z8ibMn' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 42, "mem_limit": 62, "params": "2sAiEQzfiFNRWvfz"}' \
    > test.out 2>&1
eval_tap $? 68 'CreatePodConfigClient' test.out

#- 69 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'Vtq4L7Wb4F6xs31S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePodConfigClient' test.out

#- 70 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '80' \
    --offset '83' \
    --q 'ER15GSLM65B5aIXK' \
    --sortBy 'updatedAt' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 70 'ListImagesClient' test.out

#- 71 ImageLimitClient
samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'ImageLimitClient' test.out

#- 72 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version 'DoEeurb474nRDHaT' \
    > test.out 2>&1
eval_tap $? 72 'ImageDetailClient' test.out

#- 73 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'C5ROSKEkxdMw3pOh' \
    --count '99' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 73 'ListServerClient' test.out

#- 74 CountServerDetailedClient
samples/cli/sample-apps Dsmc countServerDetailedClient \
    --namespace $AB_NAMESPACE \
    --region 'ihAzQJQYxvSpnO1V' \
    > test.out 2>&1
eval_tap $? 74 'CountServerDetailedClient' test.out

#- 75 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "mntvfraNKIA7Nu30"}' \
    > test.out 2>&1
eval_tap $? 75 'ServerHeartbeat' test.out

#- 76 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "FZy0OVDY9sQzgNuQ"}' \
    > test.out 2>&1
eval_tap $? 76 'DeregisterLocalServer' test.out

#- 77 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "S6O4QDmQtr7om34h", "ip": "wrBETNnfIHnti76V", "name": "kU9P9xKLejssJ2iG", "port": 13}' \
    > test.out 2>&1
eval_tap $? 77 'RegisterLocalServer' test.out

#- 78 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "R5WQY5DdwrFJwzaD", "pod_name": "DBNTZ2zryk5E9UlA"}' \
    > test.out 2>&1
eval_tap $? 78 'RegisterServer' test.out

#- 79 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "jQBeD1yEcFx3Fqd2"}' \
    > test.out 2>&1
eval_tap $? 79 'ShutdownServer' test.out

#- 80 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'XVjRms78bqrt6iVT' \
    > test.out 2>&1
eval_tap $? 80 'GetServerSessionTimeout' test.out

#- 81 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'OCMRnssU7aTb1joB' \
    > test.out 2>&1
eval_tap $? 81 'GetServerSession' test.out

#- 82 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "MNEkmz5ykYFvR9oW", "configuration": "nMYv3fatllfaTctp", "deployment": "ooGGWnrO1GyJWtAw", "game_mode": "mY4duEgdr2tO08PE", "matching_allies": [{"matching_parties": [{"party_attributes": {"RqpALc1Wmi6Irp9k": {}, "fRPwVyYCVdyNvgii": {}, "TFQEXFJPAqgUTs6m": {}}, "party_id": "Q7JHbIexWdpNBlSZ", "party_members": [{"user_id": "QSyAWyxrMyMMWgbd"}, {"user_id": "xeSv0RDQiFU9NamO"}, {"user_id": "3NMQwin7At9FNpp4"}]}, {"party_attributes": {"Zk1Gzyfm3V8mdCku": {}, "dz9f60ad1ftyyLsR": {}, "IuLcGe0o2W8IjHaa": {}}, "party_id": "ZXpoq4TmbL8pvCWw", "party_members": [{"user_id": "1yHGu4Aqscrt8zUF"}, {"user_id": "ZG88sjkfaaP6lDLl"}, {"user_id": "Ia9wtykZeGAHpMzB"}]}, {"party_attributes": {"5Vz14LhTrXZj9s88": {}, "5a4rqn6Alshk5771": {}, "6KDoukm8F4lTmKee": {}}, "party_id": "T3EVDVMCVO9HCibb", "party_members": [{"user_id": "uFBHSXz1qQZkjZUh"}, {"user_id": "LRPOZ8meU3jNmcTD"}, {"user_id": "xeE2WccqsT9OikE7"}]}]}, {"matching_parties": [{"party_attributes": {"CrxCqBZrVbrAfcsz": {}, "eySGN2a60S27VP1p": {}, "itZzXfllnrHkQLmZ": {}}, "party_id": "VvSDaAHyI3KVy6NU", "party_members": [{"user_id": "xOnl7Il7b3thlno4"}, {"user_id": "xque5rZb82GUT7w2"}, {"user_id": "NhVgRryPrN9CkRsq"}]}, {"party_attributes": {"4b7b7oH52Hit8YLT": {}, "heDrTmspemAEpXgW": {}, "c5WU4XMFsDeUuibq": {}}, "party_id": "ZSFkz9djomcQ2c7L", "party_members": [{"user_id": "c1aAs8FlyfKWuNkI"}, {"user_id": "r5LzfYoBk2RoYqAV"}, {"user_id": "6uWLQ7EbZ4AMjvAV"}]}, {"party_attributes": {"YYsHcrv8afnHl9dP": {}, "AKUoxzRE5j0pir88": {}, "MCekMYuwg2uiSJtU": {}}, "party_id": "nsF8oRFMITynqtdQ", "party_members": [{"user_id": "S7ZrYBDIXi7kgzMK"}, {"user_id": "Q1tMHFXv208nZ8rk"}, {"user_id": "p8mZEDCtaC7RKPib"}]}]}, {"matching_parties": [{"party_attributes": {"7bT7cxSr02G5mNQF": {}, "rZ4hH9DINluzRiKt": {}, "snE1T8PYLRApg7Ea": {}}, "party_id": "5tbVVID8MI8jwmp7", "party_members": [{"user_id": "g1GBPEUPIMpBiF3T"}, {"user_id": "sVcPq8LkL9c3fjvl"}, {"user_id": "3GFZ1Kr1sDkl8UvF"}]}, {"party_attributes": {"BOVFyZznMl77IbmY": {}, "ZTLYJrMWcuTcHORL": {}, "sH1yZTCgr1HX6LSd": {}}, "party_id": "PRn8P4L9IcF7wze3", "party_members": [{"user_id": "wtcC0EkwsfdUZFjA"}, {"user_id": "ZJ3EIQtYixxcSOdC"}, {"user_id": "KzfhiEroFhsvg0zt"}]}, {"party_attributes": {"TeGGx7Kt9jkSxpNL": {}, "KaU0ICTW0WRB9gdo": {}, "2ZvZCvNO2HU0ASDq": {}}, "party_id": "oL6Lpf4pX9sqoFcY", "party_members": [{"user_id": "LzWqQaRj1UcriYbb"}, {"user_id": "OufM2D685vwKbPSx"}, {"user_id": "TAh2x9DMVEAzR4FS"}]}]}], "namespace": "Wh6TRfIRY54rn79x", "notification_payload": {}, "pod_name": "ToqZyglUQ4Nh7v83", "region": "Jc6Ujl2EJbP7QM2a", "session_id": "wcs6ECDwysmYGuJJ"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateSession' test.out

#- 83 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"game_mode": "xVu3WPuxVQ4naykg", "matching_allies": [{"matching_parties": [{"party_attributes": {"AJp3lf9zp8SLDlxm": {}, "Xdtp7BKJUJIa4L2X": {}, "n6VaiqYSg2XKDNWN": {}}, "party_id": "5EjhEVHa73QEs26I", "party_members": [{"user_id": "wyEhXnAoCCoiGZDB"}, {"user_id": "xIwB4U0siYD6naFd"}, {"user_id": "yDYk8zpfuCyqjREn"}]}, {"party_attributes": {"PM7ZGkr1VyOsHFLF": {}, "xqjlYNWM1y8n4A1k": {}, "CG8GAbebWx6oVJKC": {}}, "party_id": "JcQjvscVa406mnxa", "party_members": [{"user_id": "tPURa3957FMVxsZE"}, {"user_id": "MbZcAnknnr17TTpU"}, {"user_id": "DNsh0UrzudoUuxjy"}]}, {"party_attributes": {"rmCVDTxk7u3LgdXg": {}, "3MnS7VAYSZ3WiTXy": {}, "n7uvO5s8tAdesW4g": {}}, "party_id": "2VZBm3habRfcSAye", "party_members": [{"user_id": "E4LpDBslnhMbMpEV"}, {"user_id": "XRompFnsZawgARue"}, {"user_id": "0V1P4MO4fIr7ZkrE"}]}]}, {"matching_parties": [{"party_attributes": {"763iRB2vqq92QvBh": {}, "qP7WEF2ZrCJlQRgC": {}, "osyrZyF4kAYuvaFz": {}}, "party_id": "U4aZSD9xLLE6MUVX", "party_members": [{"user_id": "lpFPFeuDpyPtaNEg"}, {"user_id": "zqMoFS4lnkVb5cc2"}, {"user_id": "WLJsKl5NIEEEJIyf"}]}, {"party_attributes": {"Kn7aFeroFYKTabuo": {}, "k3oDcyJmpQ0hqNCo": {}, "PxuSgro51DHY0hWc": {}}, "party_id": "eu42wQPxLPzhL4Vj", "party_members": [{"user_id": "qyS4srciulmLseJ6"}, {"user_id": "OCHU5AXkLbF9SgJC"}, {"user_id": "gdSh604I12wlyt9v"}]}, {"party_attributes": {"OxgFDvSffiQVnAC8": {}, "bZ6mhaFSRUHKEYEi": {}, "QjYwuhEQFyX2W4uw": {}}, "party_id": "PAKREhQgizNPZLQR", "party_members": [{"user_id": "UbIgBeEFMDyaEvLw"}, {"user_id": "ccM4eV3cmwhxWyvF"}, {"user_id": "XMuvL5eCP3Rr6Wju"}]}]}, {"matching_parties": [{"party_attributes": {"kUotf95mLfWB6eFi": {}, "Xbm69OIcVB82Ja2R": {}, "ViAhgXWmd2DGiio1": {}}, "party_id": "cf0Tgvb4WY1y2uhR", "party_members": [{"user_id": "fIk5CmKjsZavC548"}, {"user_id": "QTRRjpm44QYrsHxq"}, {"user_id": "6fx7wi0sNmlNibnf"}]}, {"party_attributes": {"0HhatwgeMqkJhzXn": {}, "6TJt0TE8rv3nYUV2": {}, "LIsv2EW30b0rWDHW": {}}, "party_id": "LNJGDOuMmb0UcHWr", "party_members": [{"user_id": "xti9mK1K2H78myOt"}, {"user_id": "xuXP6QosgnHiy0uU"}, {"user_id": "gHFHD2jDlIwOQ1tI"}]}, {"party_attributes": {"ylBRiosIcBlh6Pai": {}, "ngMEGVWTkzarfeue": {}, "lIzEnaC0voKnCydP": {}}, "party_id": "vCua1MCXpiVazWzC", "party_members": [{"user_id": "2rIjTg0WGLF1J0Qf"}, {"user_id": "RAJGw9KpyFV52kLq"}, {"user_id": "Nra4BG6QRwcSotly"}]}]}], "namespace": "AjFgy4kmF7f2gZp4", "notification_payload": {}, "session_id": "MXON4oZ1WPtHmSUk"}' \
    > test.out 2>&1
eval_tap $? 83 'ClaimServer' test.out

#- 84 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'K8PcLIP8gfxwAb5X' \
    > test.out 2>&1
eval_tap $? 84 'GetSession' test.out

#- 85 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'RGaSrFIQSQSRWJeM' \
    > test.out 2>&1
eval_tap $? 85 'CancelSession' test.out

#- 86 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 86 'GetDefaultProvider' test.out

#- 87 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 87 'ListProviders' test.out

#- 88 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region 'Py1qlJrBKbbfXib4' \
    > test.out 2>&1
eval_tap $? 88 'ListProvidersByRegion' test.out

#- 89 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 89 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE