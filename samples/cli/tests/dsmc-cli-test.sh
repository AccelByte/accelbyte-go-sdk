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
echo "1..70"

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
    --body '{"artifactPath": "xjXLEogH", "image": "2PlfobeN", "namespace": "l7z5mV2Y", "persistent": false, "version": "otc54s3u"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "iBoGJwxn", "dockerPath": "CayVz8gB", "image": "86NgyJ6n", "imageSize": 85, "namespace": "kV1bvkua", "persistent": true, "version": "d6n2PwHb"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "cXiNRdn6", "dockerPath": "pU7Q5b24", "image": "cNK7qdLH", "imageSize": 23, "namespace": "VglwrOUV", "patchVersion": "HOGEqDKH", "persistent": true, "version": "iBbs8oNz"}' \
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
    --body '{"claim_timeout": 34, "creation_timeout": 67, "default_version": "HgyiuYme", "port": 83, "ports": {"SNGtwQvm": 18, "2wWZNANP": 3, "XokQ61h8": 75}, "protocol": "QLsERQ80", "providers": ["CyZLKtIl", "8J6kCQFf", "PDzrccUG"], "session_timeout": 93, "unreachable_timeout": 74}' \
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
    --body '{"claim_timeout": 91, "creation_timeout": 58, "default_version": "wViHGmQc", "port": 2, "protocol": "4tuaYg8n", "providers": ["ECw86zxN", "5fDADD8L", "qmrwj9MY"], "session_timeout": 66, "unreachable_timeout": 73}' \
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
    --name 'mSJDygL2' \
    --count '2' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment '9dEMVQNB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'hJXTp8Hf' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 73, "buffer_percent": 69, "configuration": "8IDQP7b7", "enable_region_overrides": true, "game_version": "EBqyJtCA", "max_count": 93, "min_count": 67, "overrides": {"Wh7lpJhT": {"buffer_count": 93, "buffer_percent": 43, "configuration": "aT80DxTe", "enable_region_overrides": true, "game_version": "unw38Fy1", "max_count": 63, "min_count": 18, "name": "CWfh3Nld", "region_overrides": {"aFm5J3Ui": {"buffer_count": 84, "buffer_percent": 23, "max_count": 72, "min_count": 67, "name": "LQ2x2cMK", "unlimited": true, "use_buffer_percent": false}, "QIBpGjdu": {"buffer_count": 55, "buffer_percent": 6, "max_count": 86, "min_count": 86, "name": "r35atpcO", "unlimited": false, "use_buffer_percent": false}, "H3hxQgL3": {"buffer_count": 53, "buffer_percent": 17, "max_count": 80, "min_count": 10, "name": "7IxEtiQa", "unlimited": false, "use_buffer_percent": false}}, "regions": ["zDjz7Lyx", "HmJdW1bx", "iwUXqON6"], "session_timeout": 81, "unlimited": false, "use_buffer_percent": false}, "zCtnSR7H": {"buffer_count": 2, "buffer_percent": 97, "configuration": "tkvCvqoo", "enable_region_overrides": false, "game_version": "GiaKLnXU", "max_count": 58, "min_count": 33, "name": "qBIidAAd", "region_overrides": {"S24LNhy2": {"buffer_count": 18, "buffer_percent": 27, "max_count": 81, "min_count": 63, "name": "ie3962jh", "unlimited": false, "use_buffer_percent": true}, "nowK5KiD": {"buffer_count": 5, "buffer_percent": 94, "max_count": 33, "min_count": 11, "name": "eowy63Vo", "unlimited": true, "use_buffer_percent": false}, "Xn18PRw9": {"buffer_count": 96, "buffer_percent": 93, "max_count": 32, "min_count": 39, "name": "Scu7E9Xt", "unlimited": false, "use_buffer_percent": true}}, "regions": ["q0YOxqOR", "WLjGbD6N", "FaPvmnhv"], "session_timeout": 92, "unlimited": false, "use_buffer_percent": true}, "keFYWzmY": {"buffer_count": 84, "buffer_percent": 16, "configuration": "PqtgiXgL", "enable_region_overrides": true, "game_version": "77rDf5Up", "max_count": 45, "min_count": 57, "name": "YYP3XhD4", "region_overrides": {"8rtW7dmS": {"buffer_count": 74, "buffer_percent": 75, "max_count": 46, "min_count": 83, "name": "P4Amq4b5", "unlimited": false, "use_buffer_percent": false}, "GeWnMNwE": {"buffer_count": 46, "buffer_percent": 73, "max_count": 29, "min_count": 90, "name": "puEdsc5d", "unlimited": true, "use_buffer_percent": true}, "U6ev8vfa": {"buffer_count": 58, "buffer_percent": 24, "max_count": 48, "min_count": 9, "name": "xkmeI89G", "unlimited": true, "use_buffer_percent": true}}, "regions": ["s6vfpqVa", "nSYa7wKw", "ZGHx9X08"], "session_timeout": 49, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"C7RMki5c": {"buffer_count": 63, "buffer_percent": 74, "max_count": 21, "min_count": 7, "name": "yzgqHVYB", "unlimited": false, "use_buffer_percent": true}, "xtUM8Zd4": {"buffer_count": 37, "buffer_percent": 54, "max_count": 14, "min_count": 14, "name": "9y6MW498", "unlimited": true, "use_buffer_percent": true}, "EL6Grbvm": {"buffer_count": 82, "buffer_percent": 0, "max_count": 41, "min_count": 76, "name": "SkpFtkIW", "unlimited": false, "use_buffer_percent": true}}, "regions": ["qirTALQU", "ZV1xVnkC", "mHS9l64b"], "session_timeout": 27, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment '0XWuTCkJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'KvlTS1Wg' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 40, "buffer_percent": 33, "configuration": "ifDAhRvS", "enable_region_overrides": false, "game_version": "BNTJRCU0", "max_count": 68, "min_count": 59, "regions": ["YiJLKAgn", "z2g5sHcK", "VkB1BZoD"], "session_timeout": 37, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'IXCHUUKf' \
    --namespace $AB_NAMESPACE \
    --region 'ORoe2gPp' \
    --body '{"buffer_count": 21, "buffer_percent": 27, "max_count": 6, "min_count": 34, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'o30GbiSE' \
    --namespace $AB_NAMESPACE \
    --region '9DJkvNpV' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'W2RwqSed' \
    --namespace $AB_NAMESPACE \
    --region 'TVMgNBse' \
    --body '{"buffer_count": 98, "buffer_percent": 25, "max_count": 75, "min_count": 32, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'ClzTVXJQ' \
    --namespace $AB_NAMESPACE \
    --version 'pZDZrDIJ' \
    --body '{"buffer_count": 70, "buffer_percent": 95, "configuration": "t4noSBha", "enable_region_overrides": true, "game_version": "4XHSwStW", "max_count": 18, "min_count": 27, "region_overrides": {"g4oikpjM": {"buffer_count": 63, "buffer_percent": 76, "max_count": 65, "min_count": 14, "name": "cqCJ9vI5", "unlimited": false, "use_buffer_percent": false}, "OENDPIaK": {"buffer_count": 20, "buffer_percent": 8, "max_count": 30, "min_count": 73, "name": "rYOjrfus", "unlimited": false, "use_buffer_percent": false}, "oq8keKg5": {"buffer_count": 6, "buffer_percent": 87, "max_count": 91, "min_count": 3, "name": "F0il2kRu", "unlimited": false, "use_buffer_percent": true}}, "regions": ["72Qs0YAt", "X4fS8a0W", "vWZQKype"], "session_timeout": 82, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment '7Mwzir6U' \
    --namespace $AB_NAMESPACE \
    --version 'dtDSWd0M' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'u6chdcVD' \
    --namespace $AB_NAMESPACE \
    --version 'kk7EiRZJ' \
    --body '{"buffer_count": 63, "buffer_percent": 35, "configuration": "JmEt9zdh", "enable_region_overrides": false, "game_version": "7qTWfZNG", "max_count": 23, "min_count": 54, "regions": ["5xhY9oPP", "naRP2l7v", "7Wppu1fk"], "session_timeout": 15, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'gioubd2A' \
    --namespace $AB_NAMESPACE \
    --region 'NqVCaeHV' \
    --version 'rT1Cj8WO' \
    --body '{"buffer_count": 29, "buffer_percent": 66, "max_count": 35, "min_count": 10, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'eaSQSWRe' \
    --namespace $AB_NAMESPACE \
    --region '9sm6S7sn' \
    --version 'FlcwVqhh' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'FbbRlLYN' \
    --namespace $AB_NAMESPACE \
    --region 'cc6RBADN' \
    --version 'GfXoAWoI' \
    --body '{"buffer_count": 14, "buffer_percent": 71, "max_count": 61, "min_count": 68, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '39' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'H3yduL3C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'EdpUPKZz' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 89, "mem_limit": 94, "params": "WdsgVcTL"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'UBYueT0F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'ofSfLNNK' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 42, "mem_limit": 54, "name": "dv2PdwoX", "params": "N2VfF0d5"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'w4RdGFfV' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 73}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'frjXAC4A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name '3P8owW6X' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "7mq5WvNB", "port": 82}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'lWX5HTdg' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    --count '92' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'Th1XNVMQ' \
    --version '5uZw3xOg' \
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
    --imageURI 'FQ0Aml0g' \
    --version 'clj4JdRR' \
    --versionPatch 'AHedPdhy' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'YpoiwZt7' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'EzXTouyk' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'aRQk2lKg' \
    --versionPatch 'mnbjc7TA' \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'AOHNPXBH' \
    --count '28' \
    --offset '59' \
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
    --region 'iOm4JmiH' \
    > test.out 2>&1
eval_tap $? 46 'CountServerDetailed' test.out

#- 47 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'ListLocalServer' test.out

#- 48 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name '7hAvSko4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'Od1Kt472' \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'tYHshXrC' \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 GetServerLogs
samples/cli/sample-apps Dsmc getServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '0JKXjhbr' \
    > test.out 2>&1
eval_tap $? 51 'GetServerLogs' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'iyZfFGXv' \
    --withServer 'true' \
    --count '26' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'hX0inn7F' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'MVmBOor7' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 ExportConfigV1
samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'ExportConfigV1' test.out

#- 56 ImportConfigV1
samples/cli/sample-apps Dsmc importConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 56 'ImportConfigV1' test.out

#- 57 ImageLimitClient
samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'ImageLimitClient' test.out

#- 58 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version 'VDkCPgKB' \
    > test.out 2>&1
eval_tap $? 58 'ImageDetailClient' test.out

#- 59 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "4og2MUXS"}' \
    > test.out 2>&1
eval_tap $? 59 'DeregisterLocalServer' test.out

#- 60 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "4YwqI7XM", "ip": "eQWwGVyK", "name": "mzp1xjUP", "port": 30}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterLocalServer' test.out

#- 61 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "45WpuaZ5", "pod_name": "HboAEmMC"}' \
    > test.out 2>&1
eval_tap $? 61 'RegisterServer' test.out

#- 62 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "GCfRdVMx"}' \
    > test.out 2>&1
eval_tap $? 62 'ShutdownServer' test.out

#- 63 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'lVqTY99J' \
    > test.out 2>&1
eval_tap $? 63 'GetServerSession' test.out

#- 64 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "DlTOxNWt", "configuration": "8phaJ53F", "deployment": "p5pvOHHS", "game_mode": "E4dyeqa1", "matching_allies": [{"matching_parties": [{"party_attributes": {"oHJoV2Ru": {}, "DZTCpPxG": {}, "JlWmSKWq": {}}, "party_id": "ODLI74Z0", "party_members": [{"user_id": "gE8ypi7K"}, {"user_id": "2lFVilIf"}, {"user_id": "4R2xyrSw"}]}, {"party_attributes": {"MHgT7vnV": {}, "TYlJZ7e6": {}, "ToaX1F6Y": {}}, "party_id": "M3IbuuET", "party_members": [{"user_id": "r9gK8PQr"}, {"user_id": "jz2mOKTJ"}, {"user_id": "McbHHEqZ"}]}, {"party_attributes": {"eZkAdCFy": {}, "ji9bLCV8": {}, "rMj5StR4": {}}, "party_id": "UpNpmZeG", "party_members": [{"user_id": "FetGDWoF"}, {"user_id": "1lTpMXii"}, {"user_id": "HnNHpJHa"}]}]}, {"matching_parties": [{"party_attributes": {"rhzRHHF5": {}, "3uN2e2Ti": {}, "365kKz5k": {}}, "party_id": "3X6Jgj73", "party_members": [{"user_id": "hpazydhj"}, {"user_id": "QBjlwZLZ"}, {"user_id": "YGBzgD59"}]}, {"party_attributes": {"9qiFQaiE": {}, "40DvHUYR": {}, "vPcRT60K": {}}, "party_id": "DFp78tbg", "party_members": [{"user_id": "FGq0SJVr"}, {"user_id": "S2Rhx3l0"}, {"user_id": "FTeDQRdg"}]}, {"party_attributes": {"MZn9iSJs": {}, "MJPezXAA": {}, "o76Jbfp8": {}}, "party_id": "vdKHrolD", "party_members": [{"user_id": "MMhO53YD"}, {"user_id": "NSsKqSgy"}, {"user_id": "I3tNjb2c"}]}]}, {"matching_parties": [{"party_attributes": {"9BRoBBDC": {}, "BWFsRiFM": {}, "MHlCY9nu": {}}, "party_id": "gzVlBIvt", "party_members": [{"user_id": "NycgBLqq"}, {"user_id": "mF8p4ehp"}, {"user_id": "8jxd3mql"}]}, {"party_attributes": {"DaXdUI87": {}, "OM3unxVG": {}, "sIqOLNqK": {}}, "party_id": "as8fzEqC", "party_members": [{"user_id": "QJ6BN0Gl"}, {"user_id": "eWiPLNIS"}, {"user_id": "eJ0VeL0G"}]}, {"party_attributes": {"0wUZ4Kez": {}, "hU2VFaT9": {}, "sYVxGGNI": {}}, "party_id": "ftYpzkyp", "party_members": [{"user_id": "A8Vj2hGf"}, {"user_id": "rlZX9bGO"}, {"user_id": "ZXIUjBvV"}]}]}], "namespace": "1n0X5D1p", "notification_payload": {}, "pod_name": "7XZ9Nycy", "region": "MAPgID7w", "session_id": "D08JiAie"}' \
    > test.out 2>&1
eval_tap $? 64 'CreateSession' test.out

#- 65 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "nDrdMPDU"}' \
    > test.out 2>&1
eval_tap $? 65 'ClaimServer' test.out

#- 66 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'nkNN2Fno' \
    > test.out 2>&1
eval_tap $? 66 'GetSession' test.out

#- 67 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 67 'GetDefaultProvider' test.out

#- 68 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 68 'ListProviders' test.out

#- 69 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region 'aQJFLkPr' \
    > test.out 2>&1
eval_tap $? 69 'ListProvidersByRegion' test.out

#- 70 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 70 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE