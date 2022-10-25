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
echo "1..69"

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
    --body '{"artifactPath": "w1JUGv8V", "image": "vamGNrpp", "namespace": "KVoKKh5G", "persistent": false, "version": "sCvDlFAE"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "4VGW8J4t", "dockerPath": "JNJmw3UN", "image": "qkdwBOOf", "imageSize": 35, "namespace": "WyZOHOLU", "persistent": true, "version": "qcqZgjXj"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "ewWYPLij", "dockerPath": "W49Co0Wa", "image": "B3c484B4", "imageSize": 13, "namespace": "ZFWZ5ZAZ", "patchVersion": "YEOs2fgv", "persistent": true, "version": "81CusJ49"}' \
    > test.out 2>&1
eval_tap $? 7 'CreateImagePatch' test.out

#- 8 GetConfig
samples/cli/sample-apps Dsmc getConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'GetConfig' test.out

#- 9 CreateConfig
samples/cli/sample-apps Dsmc createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"claim_timeout": 72, "creation_timeout": 90, "default_version": "Byjt9ihb", "port": 66, "ports": {"J4j94cn0": 85, "eTAtY4d5": 21, "Hk9ebaic": 36}, "protocol": "sxLSZcNk", "providers": ["XtqsOSLC", "OMVmLxO3", "jESwYYCE"], "session_timeout": 62, "unreachable_timeout": 24}' \
    > test.out 2>&1
eval_tap $? 9 'CreateConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Dsmc deleteConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Dsmc updateConfig \
    --namespace $AB_NAMESPACE \
    --body '{"claim_timeout": 68, "creation_timeout": 20, "default_version": "6qD6Wie7", "port": 33, "protocol": "bFzm95iX", "providers": ["acSakevs", "PQUpyLSo", "U0oSBn5R"], "session_timeout": 61, "unreachable_timeout": 8}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 ClearCache
samples/cli/sample-apps Dsmc clearCache \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ClearCache' test.out

#- 13 GetAllDeployment
samples/cli/sample-apps Dsmc getAllDeployment \
    --namespace $AB_NAMESPACE \
    --name 'YkJnd4ZA' \
    --count '19' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 13 'GetAllDeployment' test.out

#- 14 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'pSyScASB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetDeployment' test.out

#- 15 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'XSszzHC4' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 25, "buffer_percent": 76, "configuration": "JzHyWO8X", "enable_region_overrides": true, "game_version": "92lZQO28", "max_count": 1, "min_count": 47, "overrides": {"gzBzZjm1": {"buffer_count": 80, "buffer_percent": 88, "configuration": "7nmu4n8x", "enable_region_overrides": true, "game_version": "zxI6HBpI", "max_count": 22, "min_count": 93, "name": "bDd82RaQ", "region_overrides": {"31l2gPB8": {"buffer_count": 5, "buffer_percent": 91, "max_count": 37, "min_count": 62, "name": "EbaNdsSb", "unlimited": true, "use_buffer_percent": true}, "IMpTGGko": {"buffer_count": 68, "buffer_percent": 17, "max_count": 66, "min_count": 37, "name": "rHj393KN", "unlimited": true, "use_buffer_percent": true}, "nLi3o8iT": {"buffer_count": 77, "buffer_percent": 1, "max_count": 47, "min_count": 92, "name": "U2UpWchz", "unlimited": false, "use_buffer_percent": true}}, "regions": ["x7Sx6pee", "jYK2CFbr", "xPPz2aYt"], "session_timeout": 68, "unlimited": true, "use_buffer_percent": true}, "f4YCqV9W": {"buffer_count": 17, "buffer_percent": 9, "configuration": "jtywmcY0", "enable_region_overrides": false, "game_version": "b2kmcsaH", "max_count": 65, "min_count": 52, "name": "CW1fLDea", "region_overrides": {"aICjDOA1": {"buffer_count": 86, "buffer_percent": 20, "max_count": 81, "min_count": 34, "name": "pFA0q1vS", "unlimited": false, "use_buffer_percent": true}, "STtqCGa0": {"buffer_count": 88, "buffer_percent": 42, "max_count": 46, "min_count": 49, "name": "WORERHMQ", "unlimited": false, "use_buffer_percent": false}, "8PJEIL5L": {"buffer_count": 86, "buffer_percent": 43, "max_count": 60, "min_count": 3, "name": "9AAeU8F5", "unlimited": true, "use_buffer_percent": false}}, "regions": ["7EFyZqPR", "IJXap4jx", "0mVpUtsl"], "session_timeout": 34, "unlimited": false, "use_buffer_percent": true}, "VkbauPVF": {"buffer_count": 27, "buffer_percent": 95, "configuration": "VbxsUTIY", "enable_region_overrides": true, "game_version": "iaw4Lb3s", "max_count": 86, "min_count": 55, "name": "RjIjxIGF", "region_overrides": {"JzoO4Kzy": {"buffer_count": 46, "buffer_percent": 90, "max_count": 92, "min_count": 31, "name": "a7y03yG1", "unlimited": true, "use_buffer_percent": false}, "xWXc3ebs": {"buffer_count": 98, "buffer_percent": 47, "max_count": 55, "min_count": 29, "name": "lF2UxjTN", "unlimited": true, "use_buffer_percent": true}, "WreENs3M": {"buffer_count": 37, "buffer_percent": 16, "max_count": 80, "min_count": 2, "name": "Q8lDIDil", "unlimited": false, "use_buffer_percent": true}}, "regions": ["ArbcXuY3", "2pwR79YP", "j6jiuG1m"], "session_timeout": 95, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"8NnHbCfj": {"buffer_count": 79, "buffer_percent": 61, "max_count": 88, "min_count": 65, "name": "BqPNRX8H", "unlimited": true, "use_buffer_percent": false}, "kDkT6BIG": {"buffer_count": 41, "buffer_percent": 90, "max_count": 50, "min_count": 35, "name": "WMZQKG55", "unlimited": true, "use_buffer_percent": true}, "q1p3YDZT": {"buffer_count": 79, "buffer_percent": 41, "max_count": 75, "min_count": 93, "name": "pjrIHGWd", "unlimited": true, "use_buffer_percent": true}}, "regions": ["1TxEdAeK", "K42NtBxH", "nOq35PzF"], "session_timeout": 25, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 15 'CreateDeployment' test.out

#- 16 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment '6ZGdIeow' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteDeployment' test.out

#- 17 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'm9D6n6rl' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 49, "buffer_percent": 41, "configuration": "suqgZzV8", "enable_region_overrides": true, "game_version": "GOSGKn3m", "max_count": 35, "min_count": 23, "regions": ["dGKINv0u", "phlirCAi", "fOmeRKGy"], "session_timeout": 74, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateDeployment' test.out

#- 18 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'rIcyQNl1' \
    --namespace $AB_NAMESPACE \
    --region 'MWxRPs5v' \
    --body '{"buffer_count": 34, "buffer_percent": 44, "max_count": 78, "min_count": 37, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'CreateRootRegionOverride' test.out

#- 19 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'eXSEIV8n' \
    --namespace $AB_NAMESPACE \
    --region 'bc9546qO' \
    > test.out 2>&1
eval_tap $? 19 'DeleteRootRegionOverride' test.out

#- 20 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'S8J2Sj5c' \
    --namespace $AB_NAMESPACE \
    --region 'un53IApb' \
    --body '{"buffer_count": 78, "buffer_percent": 30, "max_count": 20, "min_count": 29, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateRootRegionOverride' test.out

#- 21 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'wQyTGf7q' \
    --namespace $AB_NAMESPACE \
    --version 'woZ3hNLT' \
    --body '{"buffer_count": 89, "buffer_percent": 65, "configuration": "B75fi5Gi", "enable_region_overrides": false, "game_version": "h9Uxrj3R", "max_count": 96, "min_count": 0, "region_overrides": {"II1gylN3": {"buffer_count": 18, "buffer_percent": 28, "max_count": 6, "min_count": 87, "name": "gaixaJ29", "unlimited": true, "use_buffer_percent": true}, "fJVwuzxj": {"buffer_count": 99, "buffer_percent": 20, "max_count": 22, "min_count": 62, "name": "il08kElP", "unlimited": false, "use_buffer_percent": true}, "JNPrmeYc": {"buffer_count": 43, "buffer_percent": 29, "max_count": 71, "min_count": 56, "name": "95QNgc7E", "unlimited": false, "use_buffer_percent": true}}, "regions": ["ckbcRkez", "RimfCGQx", "e3qpkyIz"], "session_timeout": 38, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'CreateDeploymentOverride' test.out

#- 22 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'q2zbRMwa' \
    --namespace $AB_NAMESPACE \
    --version 'umIKhiX0' \
    > test.out 2>&1
eval_tap $? 22 'DeleteDeploymentOverride' test.out

#- 23 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'afdBMC1y' \
    --namespace $AB_NAMESPACE \
    --version 'lTY4YHeI' \
    --body '{"buffer_count": 87, "buffer_percent": 60, "configuration": "chEQsY9p", "enable_region_overrides": true, "game_version": "SpywlbsK", "max_count": 79, "min_count": 84, "regions": ["aqd3im3F", "ezMw0b6F", "H9IYIvcf"], "session_timeout": 14, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateDeploymentOverride' test.out

#- 24 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'MU4Q3xEJ' \
    --namespace $AB_NAMESPACE \
    --region 'OKMoot5x' \
    --version 'EG6CSfHG' \
    --body '{"buffer_count": 11, "buffer_percent": 22, "max_count": 19, "min_count": 90, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'CreateOverrideRegionOverride' test.out

#- 25 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment '9Zn0oFgw' \
    --namespace $AB_NAMESPACE \
    --region 'fYwtz2Wl' \
    --version 'NlynBaqh' \
    > test.out 2>&1
eval_tap $? 25 'DeleteOverrideRegionOverride' test.out

#- 26 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '7vYbqYRM' \
    --namespace $AB_NAMESPACE \
    --region 'J7r7twzX' \
    --version '0mL96Vbt' \
    --body '{"buffer_count": 96, "buffer_percent": 93, "max_count": 30, "min_count": 11, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateOverrideRegionOverride' test.out

#- 27 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '38' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 27 'GetAllPodConfig' test.out

#- 28 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'lUI5HtrL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetPodConfig' test.out

#- 29 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'jKDQFJBA' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 94, "mem_limit": 64, "params": "N1pZWgEX"}' \
    > test.out 2>&1
eval_tap $? 29 'CreatePodConfig' test.out

#- 30 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'XGruqF5P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeletePodConfig' test.out

#- 31 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'JgLAgnih' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 34, "mem_limit": 77, "name": "BtOSOmRf", "params": "lmSCYilo"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdatePodConfig' test.out

#- 32 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '427NSUrS' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 86}' \
    > test.out 2>&1
eval_tap $? 32 'AddPort' test.out

#- 33 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'WOrs3SQj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeletePort' test.out

#- 34 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'MqBvU1Af' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "FemfO1jL", "port": 12}' \
    > test.out 2>&1
eval_tap $? 34 'UpdatePort' test.out

#- 35 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'xttQizMY' \
    --sortBy 'createdAt' \
    --sortDirection 'desc' \
    --count '94' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 35 'ListImages' test.out

#- 36 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI '8Woza5De' \
    --version 'xFTjv2WM' \
    > test.out 2>&1
eval_tap $? 36 'DeleteImage' test.out

#- 37 ExportImages
samples/cli/sample-apps Dsmc exportImages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'ExportImages' test.out

#- 38 GetImageLimit
samples/cli/sample-apps Dsmc getImageLimit \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'GetImageLimit' test.out

#- 39 DeleteImagePatch
samples/cli/sample-apps Dsmc deleteImagePatch \
    --namespace $AB_NAMESPACE \
    --imageURI 'oxvEwi68' \
    --version 'CH7DUJoB' \
    --versionPatch 'P4vuvEq1' \
    > test.out 2>&1
eval_tap $? 39 'DeleteImagePatch' test.out

#- 40 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'T73lF6JZ' \
    > test.out 2>&1
eval_tap $? 40 'GetImageDetail' test.out

#- 41 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'SLTfe9KC' \
    > test.out 2>&1
eval_tap $? 41 'GetImagePatches' test.out

#- 42 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'nM5wKlnd' \
    --versionPatch 'kkT8lVZM' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatchDetail' test.out

#- 43 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'brU9l0dX' \
    --count '37' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 43 'ListServer' test.out

#- 44 CountServer
samples/cli/sample-apps Dsmc countServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'CountServer' test.out

#- 45 CountServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace $AB_NAMESPACE \
    --region '30rDW5cG' \
    > test.out 2>&1
eval_tap $? 45 'CountServerDetailed' test.out

#- 46 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'ListLocalServer' test.out

#- 47 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'bk1PfRtP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteLocalServer' test.out

#- 48 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'FngkgyMC' \
    > test.out 2>&1
eval_tap $? 48 'GetServer' test.out

#- 49 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'dUBaBMuV' \
    > test.out 2>&1
eval_tap $? 49 'DeleteServer' test.out

#- 50 GetServerLogs
samples/cli/sample-apps Dsmc getServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'cRCyqCou' \
    > test.out 2>&1
eval_tap $? 50 'GetServerLogs' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'z3nP9aX4' \
    --withServer 'true' \
    --count '23' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'LbKPpaLI' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '3ciwBO9X' \
    > test.out 2>&1
eval_tap $? 53 'DeleteSession' test.out

#- 54 ExportConfigV1
samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'ExportConfigV1' test.out

#- 55 ImportConfigV1
samples/cli/sample-apps Dsmc importConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 55 'ImportConfigV1' test.out

#- 56 ImageLimitClient
samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'ImageLimitClient' test.out

#- 57 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version 'A77gTQsu' \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Nw5nD2Ww"}' \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "JmrKPMMx", "ip": "DvcM2OtM", "name": "9jMKXyja", "port": 57}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "WpuQzrRu", "pod_name": "66Q0QX3b"}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "DxnsPtDW"}' \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'jweqLcsl' \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "NwSOHPAu", "configuration": "5xrsVCGV", "deployment": "nXdsP7Ku", "game_mode": "Z47R0pEi", "matching_allies": [{"matching_parties": [{"party_attributes": {"9qiuvuVk": {}, "UTP76Zpk": {}, "zbRXx6H0": {}}, "party_id": "JAjzMnlh", "party_members": [{"user_id": "XqEbbT39"}, {"user_id": "3zmoh1je"}, {"user_id": "dgoc0plT"}]}, {"party_attributes": {"7ZK25uzy": {}, "5TWDZjgv": {}, "J2XQyTCQ": {}}, "party_id": "RO2BZiTa", "party_members": [{"user_id": "MkzsCyeD"}, {"user_id": "gsQhg2rQ"}, {"user_id": "3N3XZyKZ"}]}, {"party_attributes": {"RrS3cjic": {}, "osZlV34T": {}, "ZOkaeeSw": {}}, "party_id": "owNTEwW6", "party_members": [{"user_id": "sG20iTMD"}, {"user_id": "WPA3bmb4"}, {"user_id": "3GDdyY6r"}]}]}, {"matching_parties": [{"party_attributes": {"vOH5srtB": {}, "KBxwlSuX": {}, "HOBuRXff": {}}, "party_id": "WmQhBJA3", "party_members": [{"user_id": "WAbjLOj5"}, {"user_id": "kSmM1Y6x"}, {"user_id": "gnEQg7DM"}]}, {"party_attributes": {"vntBSmcW": {}, "v7ei4Uq2": {}, "liZ5w2ir": {}}, "party_id": "4s9QNZE4", "party_members": [{"user_id": "neTwA0bD"}, {"user_id": "zHufSQqz"}, {"user_id": "x6eKvrwt"}]}, {"party_attributes": {"Uw1ppsy0": {}, "wgFWCBcc": {}, "4FdIuj8a": {}}, "party_id": "PEcVkcFr", "party_members": [{"user_id": "OFLmLzXO"}, {"user_id": "bs0IHdvZ"}, {"user_id": "RmRUWDM2"}]}]}, {"matching_parties": [{"party_attributes": {"Xc35Wcng": {}, "IHINBKAS": {}, "S2htMYIA": {}}, "party_id": "ednZwkQa", "party_members": [{"user_id": "7Efcr2CN"}, {"user_id": "I6m7LQ6L"}, {"user_id": "Er11XpuQ"}]}, {"party_attributes": {"TgWTJpXF": {}, "lntHElgP": {}, "Id6j7HHq": {}}, "party_id": "FXFdjbFU", "party_members": [{"user_id": "5f6T1091"}, {"user_id": "Syxn2z2h"}, {"user_id": "5y6uxpIn"}]}, {"party_attributes": {"z5Z8zcdu": {}, "FOcndAid": {}, "EfXgTLfH": {}}, "party_id": "LPvWNmVD", "party_members": [{"user_id": "qUcb9ndT"}, {"user_id": "8ujr4HQ2"}, {"user_id": "PLR1W5nv"}]}]}], "namespace": "uLvU0FZw", "notification_payload": {}, "pod_name": "O3X9ryUC", "region": "p0X7RAj9", "session_id": "FUmuSAn8"}' \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "UqzPLBGs"}' \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'a1w4J6AB' \
    > test.out 2>&1
eval_tap $? 65 'GetSession' test.out

#- 66 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 66 'GetDefaultProvider' test.out

#- 67 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 67 'ListProviders' test.out

#- 68 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region 'xblOG3QA' \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE