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
    --body '{"artifactPath": "oq1qzMnt", "image": "6NLWh5CA", "namespace": "xzWqd1QE", "persistent": false, "version": "icCVNp4j"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "4OFlWJ6Z", "dockerPath": "jOFeqevU", "image": "98hFHGTF", "imageSize": 31, "namespace": "ZWBbKqyL", "persistent": false, "version": "MsAy2vn8"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "Vob6aQRx", "dockerPath": "LVYkLw7Y", "image": "eSCFhpwD", "imageSize": 79, "namespace": "RfaGiMro", "patchVersion": "qmp31UO2", "persistent": false, "version": "OwY7vaXo"}' \
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
    --body '{"claim_timeout": 35, "creation_timeout": 61, "default_version": "3H3VvIYX", "port": 83, "ports": {"3PvhHawQ": 7, "F6qP29NO": 50, "fW4jOH8Y": 5}, "protocol": "xob3oQGA", "providers": ["jkACqgjW", "FHi8rOxF", "qeW8hlnJ"], "session_timeout": 47, "unreachable_timeout": 91}' \
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
    --body '{"claim_timeout": 76, "creation_timeout": 85, "default_version": "TWkMZQXp", "port": 30, "protocol": "K4eBJAAL", "providers": ["m6TFdCA9", "ls78FdRX", "EHboGW2Q"], "session_timeout": 39, "unreachable_timeout": 67}' \
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
    --name 'LH2r4UZi' \
    --count '55' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'KPJIvRUc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'zQLYJF4z' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 21, "buffer_percent": 28, "configuration": "KUNkXwtO", "enable_region_overrides": false, "game_version": "ctVdh3UX", "max_count": 52, "min_count": 97, "overrides": {"GPfQ3cjQ": {"buffer_count": 63, "buffer_percent": 73, "configuration": "YMNezgy9", "enable_region_overrides": true, "game_version": "g8U27yy9", "max_count": 7, "min_count": 75, "name": "mIiZWY8H", "region_overrides": {"RGDhdlg0": {"buffer_count": 23, "buffer_percent": 61, "max_count": 32, "min_count": 35, "name": "ap5Z3K79", "unlimited": true, "use_buffer_percent": false}, "LSJB3k5P": {"buffer_count": 61, "buffer_percent": 53, "max_count": 79, "min_count": 84, "name": "dYuZNft2", "unlimited": false, "use_buffer_percent": true}, "yliZEJ8Q": {"buffer_count": 66, "buffer_percent": 76, "max_count": 91, "min_count": 83, "name": "9x5r20lk", "unlimited": false, "use_buffer_percent": false}}, "regions": ["0yPIZiwh", "SsopfPG5", "BsJqHpKl"], "session_timeout": 28, "unlimited": false, "use_buffer_percent": false}, "wHsGV9b8": {"buffer_count": 54, "buffer_percent": 15, "configuration": "d6MlRC8J", "enable_region_overrides": false, "game_version": "9FVwmsZm", "max_count": 99, "min_count": 9, "name": "1LyL1ksG", "region_overrides": {"GESK4ZYC": {"buffer_count": 71, "buffer_percent": 100, "max_count": 80, "min_count": 67, "name": "kNJuUNkB", "unlimited": false, "use_buffer_percent": false}, "YlzHpYSX": {"buffer_count": 36, "buffer_percent": 82, "max_count": 85, "min_count": 73, "name": "JtZpLPFM", "unlimited": false, "use_buffer_percent": false}, "7rhwUEHw": {"buffer_count": 3, "buffer_percent": 6, "max_count": 49, "min_count": 10, "name": "H1EjnzS4", "unlimited": true, "use_buffer_percent": true}}, "regions": ["1iO6ksyZ", "ZehrYRmD", "q4fkEKSU"], "session_timeout": 58, "unlimited": false, "use_buffer_percent": false}, "dN97pKoZ": {"buffer_count": 38, "buffer_percent": 98, "configuration": "W9BssqBU", "enable_region_overrides": false, "game_version": "qLECBGU2", "max_count": 63, "min_count": 76, "name": "FV0nA6cu", "region_overrides": {"GKAwNX5L": {"buffer_count": 72, "buffer_percent": 7, "max_count": 72, "min_count": 45, "name": "uw9z2Has", "unlimited": false, "use_buffer_percent": true}, "KRxkcqgf": {"buffer_count": 73, "buffer_percent": 89, "max_count": 28, "min_count": 85, "name": "HpzJI6n9", "unlimited": false, "use_buffer_percent": false}, "QXZYqmsF": {"buffer_count": 27, "buffer_percent": 23, "max_count": 35, "min_count": 12, "name": "3xT6u9kj", "unlimited": false, "use_buffer_percent": false}}, "regions": ["O7SHAHj9", "XwTv4U6O", "tRjA2ZXF"], "session_timeout": 51, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"97EVf6tf": {"buffer_count": 70, "buffer_percent": 26, "max_count": 35, "min_count": 76, "name": "VR6IAA2v", "unlimited": true, "use_buffer_percent": false}, "YM7unwx4": {"buffer_count": 92, "buffer_percent": 34, "max_count": 84, "min_count": 46, "name": "NL2oSuwq", "unlimited": false, "use_buffer_percent": true}, "wUQg2DeB": {"buffer_count": 80, "buffer_percent": 92, "max_count": 31, "min_count": 37, "name": "ROVFtbII", "unlimited": false, "use_buffer_percent": false}}, "regions": ["R54ywY4j", "UxM2NZqX", "S7moOIuL"], "session_timeout": 58, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'PESZ57LA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'GIn2q0HR' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 24, "buffer_percent": 69, "configuration": "7FU4hYfR", "enable_region_overrides": false, "game_version": "Oj5kfula", "max_count": 35, "min_count": 41, "regions": ["SLdN9r3s", "Qa9xjQkV", "rrwrdveP"], "session_timeout": 5, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'c6Pzb34F' \
    --namespace $AB_NAMESPACE \
    --region 'izGWv97u' \
    --body '{"buffer_count": 73, "buffer_percent": 84, "max_count": 28, "min_count": 77, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'ktPoaGxF' \
    --namespace $AB_NAMESPACE \
    --region 'BIHlDiSA' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'mJM9soGZ' \
    --namespace $AB_NAMESPACE \
    --region 'oPi7d0GP' \
    --body '{"buffer_count": 53, "buffer_percent": 12, "max_count": 64, "min_count": 27, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'Sza6sKgY' \
    --namespace $AB_NAMESPACE \
    --version 'vn7JLkxU' \
    --body '{"buffer_count": 75, "buffer_percent": 96, "configuration": "kCgYIsxV", "enable_region_overrides": false, "game_version": "L5ZuXwww", "max_count": 56, "min_count": 7, "region_overrides": {"w1GVaQ52": {"buffer_count": 84, "buffer_percent": 48, "max_count": 82, "min_count": 82, "name": "diGz4VzZ", "unlimited": true, "use_buffer_percent": true}, "KLx0XKEV": {"buffer_count": 9, "buffer_percent": 18, "max_count": 7, "min_count": 47, "name": "S8UBUGNO", "unlimited": false, "use_buffer_percent": true}, "dYd79hah": {"buffer_count": 69, "buffer_percent": 41, "max_count": 68, "min_count": 60, "name": "v9ui338m", "unlimited": false, "use_buffer_percent": true}}, "regions": ["fMOWI3ty", "meQfUmOD", "A5zYha9k"], "session_timeout": 57, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'cylXT6RV' \
    --namespace $AB_NAMESPACE \
    --version 'blpQAqJV' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'iM0qTLjn' \
    --namespace $AB_NAMESPACE \
    --version 'qryoEQwW' \
    --body '{"buffer_count": 53, "buffer_percent": 85, "configuration": "YTfpRdH2", "enable_region_overrides": true, "game_version": "SyGhpI3q", "max_count": 71, "min_count": 79, "regions": ["IeOr9SID", "mpKajtJp", "318adUGW"], "session_timeout": 82, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'n8Il9V0c' \
    --namespace $AB_NAMESPACE \
    --region 'ECQeGdb8' \
    --version 'Ltf1LOok' \
    --body '{"buffer_count": 87, "buffer_percent": 72, "max_count": 71, "min_count": 72, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'J9qoTrHe' \
    --namespace $AB_NAMESPACE \
    --region 'b57XL6n8' \
    --version 'tUyKK7QW' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'dtGlapoJ' \
    --namespace $AB_NAMESPACE \
    --region 'swkBjruP' \
    --version 'ieMHaUCI' \
    --body '{"buffer_count": 60, "buffer_percent": 63, "max_count": 59, "min_count": 46, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '35' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'v2Hao2S5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'lsFKlzGy' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 27, "mem_limit": 33, "params": "sZPItcDk"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'VpslO5Qq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'iuYyvGpW' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 20, "mem_limit": 79, "name": "pMzoGbXU", "params": "Zxwe2LGv"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '4H0yraR4' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 59}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'HKuwwA8a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'vHOww6qV' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "KqODwsNr", "port": 55}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'zKMybIig' \
    --sortBy 'updatedAt' \
    --sortDirection 'desc' \
    --count '88' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'Rlf911LV' \
    --version 'QEGVZap7' \
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
    --imageURI 'PfNrdwWx' \
    --version 'ZYEnViHb' \
    --versionPatch 't9zHLfUr' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'ex8skGew' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version '0RJHVJb9' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'Ym3eboUT' \
    --versionPatch 'PidCg9eq' \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'xjOuhiFZ' \
    --count '66' \
    --offset '61' \
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
    --region 'FyYOStVW' \
    > test.out 2>&1
eval_tap $? 46 'CountServerDetailed' test.out

#- 47 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'ListLocalServer' test.out

#- 48 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'OPzbJLYE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'LHqla4Xg' \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'h7rIfLuN' \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region '3pSYL58L' \
    --withServer 'true' \
    --count '28' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'uBjc3Jas' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '3JMYz8Dy' \
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
    --version 'MSJHsCiK' \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "SSetaXno"}' \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "MpmLpXA9", "ip": "3jc24xAy", "name": "13WovR3X", "port": 46}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "eF3xw472", "pod_name": "PI6d7mAa"}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "H5zIWENh"}' \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'WHtDOQs5' \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "60MBuxc4", "configuration": "CV81KXzd", "deployment": "vFXwZAA8", "game_mode": "InNkCwwE", "matching_allies": [{"matching_parties": [{"party_attributes": {"k1xE5KSS": {}, "0LuPtRii": {}, "08YlrOrv": {}}, "party_id": "pplpMdjp", "party_members": [{"user_id": "iBGfYUpB"}, {"user_id": "LDB4vEsn"}, {"user_id": "PXwpTIlc"}]}, {"party_attributes": {"Z2n5viVb": {}, "6kbCS9hh": {}, "rEk08NvH": {}}, "party_id": "MDypRuD2", "party_members": [{"user_id": "iTKyg8ur"}, {"user_id": "dQ9FNXJ7"}, {"user_id": "kHaoWQFk"}]}, {"party_attributes": {"9IN3TVhw": {}, "YRUUnqQw": {}, "FO38uzBu": {}}, "party_id": "ISsbE0Vj", "party_members": [{"user_id": "HBpSu7MW"}, {"user_id": "RkcFoU54"}, {"user_id": "e5gE04W5"}]}]}, {"matching_parties": [{"party_attributes": {"zKIrN4HR": {}, "EV0lvUt2": {}, "m7GS7RNn": {}}, "party_id": "BI5OSVvb", "party_members": [{"user_id": "XkloVfnK"}, {"user_id": "uWWi6OKp"}, {"user_id": "BvOE4Ode"}]}, {"party_attributes": {"rWh7oCGA": {}, "BXoOcr8t": {}, "MwlXxGWM": {}}, "party_id": "N1xZhswd", "party_members": [{"user_id": "5pFFeZpV"}, {"user_id": "dtp2Gs9q"}, {"user_id": "H3oayU0F"}]}, {"party_attributes": {"vFazh1Yj": {}, "aRdxpUjA": {}, "iz6h7jFW": {}}, "party_id": "rxpZdi6T", "party_members": [{"user_id": "skP9Nshy"}, {"user_id": "re3zoISt"}, {"user_id": "qF8pI59Z"}]}]}, {"matching_parties": [{"party_attributes": {"aUX6xRBB": {}, "wAqO7d4g": {}, "R5icLELK": {}}, "party_id": "b6tvKhX5", "party_members": [{"user_id": "Alw6L7yc"}, {"user_id": "cvUh9LPp"}, {"user_id": "RGQpDUiJ"}]}, {"party_attributes": {"dtdTMlxT": {}, "Dvmdb5cR": {}, "eV0YmMig": {}}, "party_id": "hO2BWzd0", "party_members": [{"user_id": "euBf6dBA"}, {"user_id": "5MPxWFiC"}, {"user_id": "DyK2Au0Z"}]}, {"party_attributes": {"HS1XDymt": {}, "AeJvdS1l": {}, "ykll7qMi": {}}, "party_id": "3OoeD3Vb", "party_members": [{"user_id": "FNwmu04Z"}, {"user_id": "zxGKAv6r"}, {"user_id": "EZsanCC1"}]}]}], "namespace": "WUuItk2K", "notification_payload": {}, "pod_name": "O4eJ4pge", "region": "aTCvleOM", "session_id": "gHhHAAhb"}' \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "5p9cFD4p"}' \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'L5pfkS7h' \
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
    --region 'ybKhvmK3' \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE