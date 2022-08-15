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
echo "1..68"

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
    --body '{"artifactPath": "oKZbWPqI", "image": "D6EA7Li3", "namespace": "uOUVFfNg", "persistent": true, "version": "mdN2tysQ"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "j5uNbNoK", "dockerPath": "qRbHmOCv", "image": "iY3yTKfU", "imageSize": 60, "namespace": "unpc67ag", "persistent": false, "version": "3v1GGaDt"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "5qbz0zhe", "dockerPath": "BqeJEZzf", "image": "SJ7V5bVx", "imageSize": 38, "namespace": "XyYl8r2k", "patchVersion": "Ax9vxkYj", "persistent": true, "version": "PpR73Phl"}' \
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
    --body '{"claim_timeout": 61, "creation_timeout": 98, "default_version": "uEs8vbTm", "port": 48, "ports": {"lWvCT2Fx": 100, "0CY1B2Hf": 39, "KxDm9Nm6": 37}, "protocol": "p1vw0A6E", "providers": ["LJRt8RiX", "6uFehJ8T", "YgsNbCii"], "session_timeout": 63, "unreachable_timeout": 67}' \
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
    --body '{"claim_timeout": 62, "creation_timeout": 32, "default_version": "xCJCMIKq", "port": 2, "protocol": "kjtjaQ8F", "providers": ["zPPkfCV6", "ZBLnv5H8", "u20gCZL1"], "session_timeout": 97, "unreachable_timeout": 11}' \
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
    --name '7rq6E2DX' \
    --count '52' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 13 'GetAllDeployment' test.out

#- 14 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'kghNgwzl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetDeployment' test.out

#- 15 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'TKeTBOzM' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 21, "buffer_percent": 65, "configuration": "BHApdhxr", "enable_region_overrides": true, "game_version": "KiDFGEQr", "max_count": 16, "min_count": 91, "overrides": {"6WqisYFW": {"buffer_count": 65, "buffer_percent": 21, "configuration": "0MtLtYC1", "enable_region_overrides": true, "game_version": "APJSHfef", "max_count": 56, "min_count": 90, "name": "Mf1XPjDM", "region_overrides": {"vAGaVsi9": {"buffer_count": 73, "buffer_percent": 62, "max_count": 88, "min_count": 16, "name": "dNPd3Kpn", "use_buffer_percent": true}, "LKAWwWBy": {"buffer_count": 37, "buffer_percent": 77, "max_count": 75, "min_count": 91, "name": "jQdFSdKf", "use_buffer_percent": true}, "c5v6kAVc": {"buffer_count": 61, "buffer_percent": 3, "max_count": 1, "min_count": 77, "name": "TKe1Qbx5", "use_buffer_percent": true}}, "regions": ["fZLSI5kf", "HqrkHpyb", "AALIVx5f"], "session_timeout": 4, "use_buffer_percent": false}, "HQ56axWw": {"buffer_count": 42, "buffer_percent": 1, "configuration": "OTQjwjK0", "enable_region_overrides": false, "game_version": "YssF3XXt", "max_count": 93, "min_count": 67, "name": "Pqr2evvC", "region_overrides": {"jZEWIdtO": {"buffer_count": 7, "buffer_percent": 51, "max_count": 92, "min_count": 8, "name": "gpoESL2h", "use_buffer_percent": false}, "8meOZ9fN": {"buffer_count": 75, "buffer_percent": 49, "max_count": 51, "min_count": 95, "name": "HPpYGpks", "use_buffer_percent": false}, "93265Okt": {"buffer_count": 55, "buffer_percent": 98, "max_count": 14, "min_count": 7, "name": "WDru72z4", "use_buffer_percent": false}}, "regions": ["NdmPfR4A", "ofG3SO4k", "77S033vt"], "session_timeout": 6, "use_buffer_percent": false}, "u6uBKdwj": {"buffer_count": 71, "buffer_percent": 95, "configuration": "RrmWIFtt", "enable_region_overrides": true, "game_version": "CpvMVM5X", "max_count": 60, "min_count": 9, "name": "Fvs1DqkB", "region_overrides": {"jnOEGB2H": {"buffer_count": 59, "buffer_percent": 35, "max_count": 28, "min_count": 51, "name": "X0mSn9nN", "use_buffer_percent": true}, "qP7X03bg": {"buffer_count": 93, "buffer_percent": 83, "max_count": 50, "min_count": 82, "name": "y2VEwLIh", "use_buffer_percent": false}, "Ka84gOjE": {"buffer_count": 76, "buffer_percent": 70, "max_count": 18, "min_count": 57, "name": "yfhdtdUd", "use_buffer_percent": true}}, "regions": ["5IOPZ84D", "3xIJiPqV", "x4CYFYLe"], "session_timeout": 9, "use_buffer_percent": false}}, "region_overrides": {"fDJxOB3a": {"buffer_count": 19, "buffer_percent": 57, "max_count": 67, "min_count": 29, "name": "tBnXKJkA", "use_buffer_percent": false}, "2Pb6tXbw": {"buffer_count": 65, "buffer_percent": 66, "max_count": 76, "min_count": 22, "name": "PFgXSqWa", "use_buffer_percent": false}, "O19xnTYT": {"buffer_count": 9, "buffer_percent": 93, "max_count": 77, "min_count": 89, "name": "7A2Oz1z0", "use_buffer_percent": false}}, "regions": ["DfAwQH6K", "TuRy4zdG", "TyXQ3kzz"], "session_timeout": 39, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 15 'CreateDeployment' test.out

#- 16 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'pSAPcGP4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteDeployment' test.out

#- 17 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment '0oXtjNTa' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 68, "buffer_percent": 52, "configuration": "B7iphheX", "enable_region_overrides": false, "game_version": "NZ7G0YEK", "max_count": 4, "min_count": 7, "regions": ["iGE97pc0", "YyUvkQCW", "CEhjZl6V"], "session_timeout": 29, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateDeployment' test.out

#- 18 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'OlSLlCUy' \
    --namespace $AB_NAMESPACE \
    --region 'YqU22NgW' \
    --body '{"buffer_count": 79, "buffer_percent": 60, "max_count": 85, "min_count": 34, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'CreateRootRegionOverride' test.out

#- 19 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'z65TEOk6' \
    --namespace $AB_NAMESPACE \
    --region '9wMlQ30B' \
    > test.out 2>&1
eval_tap $? 19 'DeleteRootRegionOverride' test.out

#- 20 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'T6eKpzGP' \
    --namespace $AB_NAMESPACE \
    --region 'QIa60Ovf' \
    --body '{"buffer_count": 24, "buffer_percent": 74, "max_count": 39, "min_count": 50, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateRootRegionOverride' test.out

#- 21 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'SIjrBnXW' \
    --namespace $AB_NAMESPACE \
    --version 'oO6LGNwc' \
    --body '{"buffer_count": 97, "buffer_percent": 33, "configuration": "mAy84aNh", "enable_region_overrides": false, "game_version": "Lu3o8zAP", "max_count": 49, "min_count": 52, "region_overrides": {"n6zfqQ7W": {"buffer_count": 46, "buffer_percent": 12, "max_count": 4, "min_count": 97, "name": "Q4MmF4A4", "use_buffer_percent": false}, "jj5ujWih": {"buffer_count": 69, "buffer_percent": 74, "max_count": 72, "min_count": 70, "name": "vrZ27rMx", "use_buffer_percent": false}, "D1ZyODbP": {"buffer_count": 2, "buffer_percent": 52, "max_count": 62, "min_count": 69, "name": "Buu0NHqO", "use_buffer_percent": false}}, "regions": ["1V84emKs", "ikKWtBt2", "jadLBOmc"], "session_timeout": 98, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'CreateDeploymentOverride' test.out

#- 22 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'yH5uvpmU' \
    --namespace $AB_NAMESPACE \
    --version 'UQFZJpdE' \
    > test.out 2>&1
eval_tap $? 22 'DeleteDeploymentOverride' test.out

#- 23 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'iz7Kwy7b' \
    --namespace $AB_NAMESPACE \
    --version 'L2oYp7Bx' \
    --body '{"buffer_count": 76, "buffer_percent": 68, "configuration": "oVNbrjr9", "enable_region_overrides": false, "game_version": "uT9osOWh", "max_count": 19, "min_count": 95, "regions": ["MdwVTaHj", "yqk1DoPq", "emdyLVLI"], "session_timeout": 22, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateDeploymentOverride' test.out

#- 24 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'ur2CfAih' \
    --namespace $AB_NAMESPACE \
    --region 'VtvBK8VH' \
    --version 'NlCbduoA' \
    --body '{"buffer_count": 82, "buffer_percent": 29, "max_count": 0, "min_count": 81, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'CreateOverrideRegionOverride' test.out

#- 25 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'y2dFKjHV' \
    --namespace $AB_NAMESPACE \
    --region 'R0JQDQ8a' \
    --version 'K4eNUt5J' \
    > test.out 2>&1
eval_tap $? 25 'DeleteOverrideRegionOverride' test.out

#- 26 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'rm2SqEeS' \
    --namespace $AB_NAMESPACE \
    --region 'kBU2owmd' \
    --version 'X04ORLly' \
    --body '{"buffer_count": 11, "buffer_percent": 19, "max_count": 6, "min_count": 36, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateOverrideRegionOverride' test.out

#- 27 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '42' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 27 'GetAllPodConfig' test.out

#- 28 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'rIVZCDS7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetPodConfig' test.out

#- 29 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'wNZEBuNz' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 64, "mem_limit": 48, "params": "839OMirS"}' \
    > test.out 2>&1
eval_tap $? 29 'CreatePodConfig' test.out

#- 30 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'OuWdXyvs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeletePodConfig' test.out

#- 31 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'uixHiWtF' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 49, "mem_limit": 72, "name": "zS35QSSI", "params": "QHuR2JDc"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdatePodConfig' test.out

#- 32 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'ErnwzTX3' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 93}' \
    > test.out 2>&1
eval_tap $? 32 'AddPort' test.out

#- 33 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '3ne26PqM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeletePort' test.out

#- 34 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'JnlwISd1' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "o1opwSBH", "port": 57}' \
    > test.out 2>&1
eval_tap $? 34 'UpdatePort' test.out

#- 35 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'OPUNdZRy' \
    --sortBy 'createdAt' \
    --sortDirection 'desc' \
    --count '0' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 35 'ListImages' test.out

#- 36 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'xbHREMDM' \
    --version 'teEYWomC' \
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
    --imageURI 'OiLWo2Eb' \
    --version 'RRFmDknn' \
    --versionPatch 'OcwRmKaJ' \
    > test.out 2>&1
eval_tap $? 39 'DeleteImagePatch' test.out

#- 40 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'upr8kUX0' \
    > test.out 2>&1
eval_tap $? 40 'GetImageDetail' test.out

#- 41 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'SnMMnQtu' \
    > test.out 2>&1
eval_tap $? 41 'GetImagePatches' test.out

#- 42 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'aZmNlSZ9' \
    --versionPatch 'f7NQ9QCj' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatchDetail' test.out

#- 43 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'iZcBPowW' \
    --count '18' \
    --offset '31' \
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
    --region 'I0U2mkT1' \
    > test.out 2>&1
eval_tap $? 45 'CountServerDetailed' test.out

#- 46 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'ListLocalServer' test.out

#- 47 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'Ssal5I6s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteLocalServer' test.out

#- 48 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'ipKVr2Zh' \
    > test.out 2>&1
eval_tap $? 48 'GetServer' test.out

#- 49 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'IM3s7Xpy' \
    > test.out 2>&1
eval_tap $? 49 'DeleteServer' test.out

#- 50 GetServerLogs
samples/cli/sample-apps Dsmc getServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '0D9jHUld' \
    > test.out 2>&1
eval_tap $? 50 'GetServerLogs' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'Zz135W8C' \
    --withServer 'false' \
    --count '15' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'gPprPuvn' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '5XM6rM6V' \
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

#- 56 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version 'pSzjKOey' \
    > test.out 2>&1
eval_tap $? 56 'ImageDetailClient' test.out

#- 57 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "vj0dUbRS"}' \
    > test.out 2>&1
eval_tap $? 57 'DeregisterLocalServer' test.out

#- 58 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "KIBczkRZ", "ip": "XnaFcd15", "name": "YpTtnIX8", "port": 80}' \
    > test.out 2>&1
eval_tap $? 58 'RegisterLocalServer' test.out

#- 59 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "blncQdrj", "pod_name": "SBkhwJ6f"}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterServer' test.out

#- 60 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "BoQ8EDlD"}' \
    > test.out 2>&1
eval_tap $? 60 'ShutdownServer' test.out

#- 61 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'mFGzmH78' \
    > test.out 2>&1
eval_tap $? 61 'GetServerSession' test.out

#- 62 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "oAQmw9G6", "configuration": "rrMT9BA6", "deployment": "RCxPUXOn", "game_mode": "Qj4gAeEn", "matching_allies": [{"matching_parties": [{"party_attributes": {"mhqYnzUS": {}, "nw5fJmAL": {}, "zhj1x9I3": {}}, "party_id": "c7Z5fmHy", "party_members": [{"user_id": "zUDbjmHy"}, {"user_id": "MOQctbto"}, {"user_id": "w5m8CbL4"}]}, {"party_attributes": {"yTz12TkA": {}, "OM8JxcEO": {}, "4Rus5nO6": {}}, "party_id": "peaxo0CQ", "party_members": [{"user_id": "4esOFYi1"}, {"user_id": "fzd83ezG"}, {"user_id": "WElkN3pf"}]}, {"party_attributes": {"l4MbVfXT": {}, "XEWbp6G8": {}, "sFxGzWn7": {}}, "party_id": "Poga7Y6Y", "party_members": [{"user_id": "KgZWAFDd"}, {"user_id": "p89Uq01n"}, {"user_id": "2DYGfb2p"}]}]}, {"matching_parties": [{"party_attributes": {"pAcSHcot": {}, "Fh72d0gJ": {}, "CjWq0qE3": {}}, "party_id": "HRtkCTRM", "party_members": [{"user_id": "Uk7FLIUh"}, {"user_id": "4WcCjHjY"}, {"user_id": "1Istv9Hw"}]}, {"party_attributes": {"7VCUI7az": {}, "m7WhHW1S": {}, "UhvLiU7M": {}}, "party_id": "Rf1wzzwB", "party_members": [{"user_id": "amgF8QyT"}, {"user_id": "DJkzAaQK"}, {"user_id": "fxeBJFh2"}]}, {"party_attributes": {"Jzg17Pt1": {}, "eAPH4GTt": {}, "vUMuIfKD": {}}, "party_id": "kaxMEdFK", "party_members": [{"user_id": "OnKU06Pr"}, {"user_id": "i4xnJdyv"}, {"user_id": "Ioz1tpB7"}]}]}, {"matching_parties": [{"party_attributes": {"KvmeMCNf": {}, "mSRa8Olf": {}, "YezfZdhV": {}}, "party_id": "N6NAp4yx", "party_members": [{"user_id": "Um8k89eF"}, {"user_id": "C5GvkeVF"}, {"user_id": "o8CqnrzU"}]}, {"party_attributes": {"0TrYYVC2": {}, "MS3Ik6A3": {}, "RKUmnmpA": {}}, "party_id": "D1W2KSZP", "party_members": [{"user_id": "dUyZ42LA"}, {"user_id": "JJj71IpU"}, {"user_id": "1UDpRv9M"}]}, {"party_attributes": {"SlCO8F7Q": {}, "5Q7Of9t8": {}, "HbSWzB4r": {}}, "party_id": "gjGuJyYP", "party_members": [{"user_id": "B89JtPeD"}, {"user_id": "bc9eHV54"}, {"user_id": "JvMhjYGT"}]}]}], "namespace": "7yt8WtWh", "notification_payload": {}, "pod_name": "JNSFuyDa", "region": "RCz2IGUL", "session_id": "JFhPnDp5"}' \
    > test.out 2>&1
eval_tap $? 62 'CreateSession' test.out

#- 63 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "vtxg3zMh"}' \
    > test.out 2>&1
eval_tap $? 63 'ClaimServer' test.out

#- 64 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'vqkDFm93' \
    > test.out 2>&1
eval_tap $? 64 'GetSession' test.out

#- 65 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 65 'GetDefaultProvider' test.out

#- 66 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 66 'ListProviders' test.out

#- 67 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region 'fI2qrenW' \
    > test.out 2>&1
eval_tap $? 67 'ListProvidersByRegion' test.out

#- 68 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 68 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE