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
    --body '{"artifactPath": "vzRMxdDf", "image": "RLoQw7kz", "namespace": "E8hQSj7Z", "persistent": true, "version": "VmOWdTMR"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "ANJF3T0k", "dockerPath": "u4CUvKR1", "image": "1QLLSqEf", "imageSize": 21, "namespace": "49Q24xJ6", "persistent": true, "version": "pDvDQTLq"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "68KLm74D", "dockerPath": "xT7gaZOZ", "image": "oTkSuunK", "imageSize": 81, "namespace": "q4hSjlHB", "patchVersion": "ZlP1b8Vu", "persistent": false, "version": "lMqs1U7s"}' \
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
    --body '{"claim_timeout": 72, "creation_timeout": 29, "default_version": "txztXJz8", "port": 71, "ports": {"MLGFGtDi": 3, "TO4wK4Dx": 84, "WSDCoVud": 12}, "protocol": "HsUGEL1K", "providers": ["buy5FSkr", "7wizAMG5", "fChnQF0W"], "session_timeout": 68, "unreachable_timeout": 11}' \
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
    --body '{"claim_timeout": 4, "creation_timeout": 48, "default_version": "k2n3JRUR", "port": 2, "protocol": "LiEqst1B", "providers": ["3TrPdkqo", "Shzg3BEg", "593oYozB"], "session_timeout": 28, "unreachable_timeout": 58}' \
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
    --name 'XLwSNpo6' \
    --count '45' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'rOOATYES' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'kzWGhU8y' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 29, "buffer_percent": 76, "configuration": "Mu1hcr3I", "enable_region_overrides": false, "game_version": "gt3SkzEy", "max_count": 97, "min_count": 6, "overrides": {"KcBDVV9Q": {"buffer_count": 24, "buffer_percent": 74, "configuration": "mWd4Wsgl", "enable_region_overrides": true, "game_version": "rk98JkHK", "max_count": 73, "min_count": 61, "name": "xYrpWa8F", "region_overrides": {"DDEvWGwY": {"buffer_count": 38, "buffer_percent": 4, "max_count": 28, "min_count": 45, "name": "V4HsnV4l", "unlimited": false, "use_buffer_percent": true}, "4nxgkdYJ": {"buffer_count": 62, "buffer_percent": 6, "max_count": 1, "min_count": 69, "name": "t9K4fgRo", "unlimited": true, "use_buffer_percent": false}, "FQSJr3c1": {"buffer_count": 41, "buffer_percent": 72, "max_count": 17, "min_count": 31, "name": "Lwg12L5p", "unlimited": false, "use_buffer_percent": true}}, "regions": ["h1ZkMwdz", "ykrcgwyl", "sl9smPre"], "session_timeout": 12, "unlimited": true, "use_buffer_percent": false}, "hVnxPbMO": {"buffer_count": 89, "buffer_percent": 57, "configuration": "WIshRrgH", "enable_region_overrides": false, "game_version": "OMr2yuT8", "max_count": 39, "min_count": 44, "name": "wZ5co3l5", "region_overrides": {"jsusWX2m": {"buffer_count": 63, "buffer_percent": 76, "max_count": 64, "min_count": 68, "name": "ZX8bCJY4", "unlimited": false, "use_buffer_percent": true}, "4El88rhX": {"buffer_count": 72, "buffer_percent": 59, "max_count": 35, "min_count": 37, "name": "FrNh4mU2", "unlimited": false, "use_buffer_percent": false}, "oPQGCqpx": {"buffer_count": 33, "buffer_percent": 6, "max_count": 65, "min_count": 69, "name": "4acEo7eZ", "unlimited": true, "use_buffer_percent": true}}, "regions": ["1MT0uQeh", "EjQQcFZg", "GWCdgBk3"], "session_timeout": 31, "unlimited": true, "use_buffer_percent": false}, "L6ZH4P7e": {"buffer_count": 3, "buffer_percent": 51, "configuration": "LnKe819z", "enable_region_overrides": false, "game_version": "yhiI4PWG", "max_count": 35, "min_count": 82, "name": "CqiMempB", "region_overrides": {"Ru16J0mu": {"buffer_count": 74, "buffer_percent": 50, "max_count": 1, "min_count": 30, "name": "WOCO7HA2", "unlimited": false, "use_buffer_percent": false}, "l0c2MhMy": {"buffer_count": 53, "buffer_percent": 59, "max_count": 89, "min_count": 7, "name": "rvrSkHMn", "unlimited": false, "use_buffer_percent": true}, "5yeLToMd": {"buffer_count": 87, "buffer_percent": 24, "max_count": 94, "min_count": 100, "name": "ENd8DGGD", "unlimited": true, "use_buffer_percent": true}}, "regions": ["QpNhFL8C", "uW80Z9dr", "WdHpS4Iv"], "session_timeout": 46, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"0fYPpY3e": {"buffer_count": 44, "buffer_percent": 83, "max_count": 48, "min_count": 34, "name": "UdhzPy9l", "unlimited": true, "use_buffer_percent": true}, "DNNlXksL": {"buffer_count": 26, "buffer_percent": 87, "max_count": 92, "min_count": 46, "name": "EKSJ3QOA", "unlimited": false, "use_buffer_percent": false}, "9aRKuypW": {"buffer_count": 1, "buffer_percent": 43, "max_count": 83, "min_count": 65, "name": "c6MrkJyj", "unlimited": true, "use_buffer_percent": true}}, "regions": ["AgvmCePn", "6kqO0b35", "18dSNZ5r"], "session_timeout": 67, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'BOSDcKr7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'qqQHEV1a' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 29, "buffer_percent": 99, "configuration": "5hZjBoTX", "enable_region_overrides": false, "game_version": "XmrSUw9A", "max_count": 11, "min_count": 69, "regions": ["TWkxZrFf", "zRg5Li0g", "nPIbilSI"], "session_timeout": 92, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'RrfisWxP' \
    --namespace $AB_NAMESPACE \
    --region 'Eeg7n7eq' \
    --body '{"buffer_count": 28, "buffer_percent": 38, "max_count": 14, "min_count": 87, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'sAs3zOlE' \
    --namespace $AB_NAMESPACE \
    --region 'fk9vLyPK' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'JSDeaDKd' \
    --namespace $AB_NAMESPACE \
    --region 'PDkMoCyQ' \
    --body '{"buffer_count": 77, "buffer_percent": 51, "max_count": 43, "min_count": 95, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'l1X9xlJG' \
    --namespace $AB_NAMESPACE \
    --version '16SJdpOS' \
    --body '{"buffer_count": 81, "buffer_percent": 97, "configuration": "U3J3uums", "enable_region_overrides": true, "game_version": "gBUqRZRn", "max_count": 67, "min_count": 0, "region_overrides": {"xAHbtEJo": {"buffer_count": 54, "buffer_percent": 62, "max_count": 39, "min_count": 30, "name": "Ov4qmlwm", "unlimited": false, "use_buffer_percent": false}, "kq1l2Mrt": {"buffer_count": 67, "buffer_percent": 37, "max_count": 32, "min_count": 69, "name": "r7J51tie", "unlimited": true, "use_buffer_percent": false}, "wfICg6Ks": {"buffer_count": 79, "buffer_percent": 69, "max_count": 19, "min_count": 25, "name": "vEghFZcJ", "unlimited": false, "use_buffer_percent": false}}, "regions": ["3PSv9Rcs", "Mi7jxo2A", "j1pAXpYS"], "session_timeout": 82, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'g8iNv1OG' \
    --namespace $AB_NAMESPACE \
    --version 'kaeadif0' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'yabppi3l' \
    --namespace $AB_NAMESPACE \
    --version 'P0vRLQt6' \
    --body '{"buffer_count": 80, "buffer_percent": 67, "configuration": "5l0dmx0B", "enable_region_overrides": false, "game_version": "9l6TEDOH", "max_count": 80, "min_count": 85, "regions": ["omqYvrUO", "hN1pIHNs", "PZcEVGXe"], "session_timeout": 58, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'utF62Dfe' \
    --namespace $AB_NAMESPACE \
    --region 'QSOpgDqz' \
    --version 'D4vxQ8Fh' \
    --body '{"buffer_count": 73, "buffer_percent": 14, "max_count": 69, "min_count": 53, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'qLRtmTiK' \
    --namespace $AB_NAMESPACE \
    --region 'Yh8dy6cT' \
    --version 'OciLehWh' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'UouRczBe' \
    --namespace $AB_NAMESPACE \
    --region 'koGTwfhH' \
    --version 'ScOeYzap' \
    --body '{"buffer_count": 29, "buffer_percent": 86, "max_count": 52, "min_count": 68, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '58' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'wAi1qDqP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '1PpyskZz' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 84, "mem_limit": 84, "params": "7wuHtDPi"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name '6cEttEOT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'loLbZaJM' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 74, "mem_limit": 36, "name": "9PBbkifr", "params": "XDWkbYhI"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'aWWKaAPS' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 40}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '5I1Ry5ZJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'kFBIavSx' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "h25pvZIc", "port": 40}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'kbI7Eifq' \
    --sortBy 'version' \
    --sortDirection 'desc' \
    --count '11' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'l7i5985z' \
    --version '9ESFvgkn' \
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
    --imageURI 'JHtvpXEV' \
    --version 'LY7CaP94' \
    --versionPatch 'JhSSVl7l' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'lDbdCDjN' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'xU6LdChR' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'gd4SG9xV' \
    --versionPatch 'ZsL7vFSQ' \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'HcuJVOCg' \
    --count '95' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 44 'ListServer' test.out

#- 45 CountServer
samples/cli/sample-apps Dsmc countServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'CountServer' test.out

#- 46 CountServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace $AB_NAMESPACE \
    --region 'cH6WXH1s' \
    > test.out 2>&1
eval_tap $? 46 'CountServerDetailed' test.out

#- 47 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'ListLocalServer' test.out

#- 48 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'ijolD9SU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'cme5xk0X' \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'eFna1GOh' \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region '0kkPiHyL' \
    --withServer 'false' \
    --count '45' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region '5gH7yGK9' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'YCr5p9xc' \
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
    --version '9Vp8JaUQ' \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "o0UrPq6l"}' \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "1VG8PyIH", "ip": "lljFKsNC", "name": "nSuWCLIe", "port": 9}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "y95jeXFd", "pod_name": "oeJNLZqW"}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "l4hhYlyb"}' \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'Hh2avWJC' \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "Exom4wND", "configuration": "MqDaFLWu", "deployment": "GKymqkCi", "game_mode": "iUxwFiSq", "matching_allies": [{"matching_parties": [{"party_attributes": {"bLJzwT2B": {}, "nBa2st0d": {}, "qsSzxYYS": {}}, "party_id": "cfEq9q7S", "party_members": [{"user_id": "6pCA2dFx"}, {"user_id": "b6CioVsk"}, {"user_id": "uCr8AuyO"}]}, {"party_attributes": {"TGik3dU1": {}, "KZoyPVcQ": {}, "zUoPoNGX": {}}, "party_id": "Yo2ZqE6F", "party_members": [{"user_id": "8LK6lR0V"}, {"user_id": "yfLWX3hH"}, {"user_id": "tX3ahlsZ"}]}, {"party_attributes": {"54SxGsU1": {}, "oAvNCVgg": {}, "Eiy91gNo": {}}, "party_id": "0pJAixFG", "party_members": [{"user_id": "rkCXm09S"}, {"user_id": "VvEF9Ka3"}, {"user_id": "0T60CsN2"}]}]}, {"matching_parties": [{"party_attributes": {"7yl2e50z": {}, "fsxJULFw": {}, "iEbest18": {}}, "party_id": "PyApl0W7", "party_members": [{"user_id": "WjnQnL4I"}, {"user_id": "Htq0GsJL"}, {"user_id": "A7brQOu4"}]}, {"party_attributes": {"Tj0ifVlv": {}, "ZzJGOHKX": {}, "2jCCj8gy": {}}, "party_id": "FRmeJUgB", "party_members": [{"user_id": "ilTVE3AP"}, {"user_id": "AU2VOSmL"}, {"user_id": "9Lv3T1nG"}]}, {"party_attributes": {"IhMjPPA4": {}, "rkBKE0YU": {}, "6j3s1kv4": {}}, "party_id": "9jNOWsiV", "party_members": [{"user_id": "QLN8EzZK"}, {"user_id": "TfCvgaPS"}, {"user_id": "mnIY7QPE"}]}]}, {"matching_parties": [{"party_attributes": {"yisqyjLN": {}, "NV8lsoTH": {}, "XZVodBGy": {}}, "party_id": "j9cAvu38", "party_members": [{"user_id": "5ykUjodw"}, {"user_id": "0B96TyE4"}, {"user_id": "QDvo28oE"}]}, {"party_attributes": {"KWGOsNFF": {}, "ZpSYQ1wo": {}, "eb5cSyez": {}}, "party_id": "6g5p2Ve8", "party_members": [{"user_id": "AdhdChKZ"}, {"user_id": "or4dLjjL"}, {"user_id": "bBUl4z6T"}]}, {"party_attributes": {"8LPlar62": {}, "GpXE7B2i": {}, "r0Tna1LF": {}}, "party_id": "OcOL9DiY", "party_members": [{"user_id": "c1x1BVHF"}, {"user_id": "Uv8PlO4w"}, {"user_id": "uFC0NWUh"}]}]}], "namespace": "5TeA5ryN", "notification_payload": {}, "pod_name": "rkzwu1TF", "region": "1bFyyUs3", "session_id": "R9L9qloP"}' \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "nLq3NJ2y"}' \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'jhzQIGRl' \
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
    --region 'wXCNdA0i' \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE