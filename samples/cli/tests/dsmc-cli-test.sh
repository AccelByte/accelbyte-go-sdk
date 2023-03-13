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
    --body '{"artifactPath": "EAxcVpFr", "image": "ttufHIRd", "namespace": "H9UzVRiX", "persistent": false, "version": "Oaiw9B0D"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "7eHpzSn3", "dockerPath": "ZPUdc0qh", "image": "4n8mzZ0m", "imageSize": 85, "namespace": "SAMTwE6I", "persistent": true, "version": "IaRDBXxy"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "aNoMR6hk", "dockerPath": "spInrAip", "image": "6lyzSxwE", "imageSize": 24, "namespace": "zS6DaDpv", "patchVersion": "8N7ZQVqG", "persistent": false, "version": "NmKJfh5p"}' \
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
    --body '{"claim_timeout": 95, "creation_timeout": 21, "default_version": "1aXlFcDt", "port": 13, "ports": {"8NY4YkHs": 40, "cnz1JSDg": 100, "1TXp38zs": 58}, "protocol": "hRTcPiSu", "providers": ["L0Sly6XM", "4OI18mAQ", "LnzjMf8G"], "session_timeout": 0, "unreachable_timeout": 100}' \
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
    --body '{"claim_timeout": 13, "creation_timeout": 55, "default_version": "SrjJW2OQ", "port": 80, "protocol": "EAu2D6QV", "providers": ["KNCWP75T", "B0i7pKxR", "8dl0zRVW"], "session_timeout": 74, "unreachable_timeout": 62}' \
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
    --name 'DXn7Z4U6' \
    --count '66' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'VbMqSszE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment '8GHavj7A' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 6, "buffer_percent": 36, "configuration": "IhUDrwoZ", "enable_region_overrides": false, "game_version": "ecdKi5r6", "max_count": 88, "min_count": 10, "overrides": {"Ea1ysLEz": {"buffer_count": 39, "buffer_percent": 14, "configuration": "rGN9A3sN", "enable_region_overrides": false, "game_version": "kFeZSoEA", "max_count": 5, "min_count": 40, "name": "BdW19m4e", "region_overrides": {"u6d5tA5j": {"buffer_count": 96, "buffer_percent": 41, "max_count": 26, "min_count": 42, "name": "iTqpyhPF", "unlimited": false, "use_buffer_percent": true}, "xLzFQN05": {"buffer_count": 79, "buffer_percent": 89, "max_count": 53, "min_count": 33, "name": "YiKWe5dN", "unlimited": false, "use_buffer_percent": false}, "AjGGJddV": {"buffer_count": 59, "buffer_percent": 89, "max_count": 43, "min_count": 13, "name": "u9vx5KQ7", "unlimited": false, "use_buffer_percent": true}}, "regions": ["lyuI9a2I", "9u6Vpbsx", "5w8hqUI0"], "session_timeout": 28, "unlimited": true, "use_buffer_percent": true}, "OXGSLmCV": {"buffer_count": 41, "buffer_percent": 79, "configuration": "HOPlLlkv", "enable_region_overrides": false, "game_version": "8sKgnuRk", "max_count": 13, "min_count": 43, "name": "ghGoYupD", "region_overrides": {"391C2qtP": {"buffer_count": 59, "buffer_percent": 30, "max_count": 46, "min_count": 22, "name": "GrncqmLt", "unlimited": false, "use_buffer_percent": true}, "QHAf8Tgo": {"buffer_count": 82, "buffer_percent": 65, "max_count": 24, "min_count": 67, "name": "3VLisV6z", "unlimited": true, "use_buffer_percent": false}, "uo3td6TC": {"buffer_count": 93, "buffer_percent": 71, "max_count": 57, "min_count": 10, "name": "lMjGSWN2", "unlimited": false, "use_buffer_percent": false}}, "regions": ["aRlxfcjH", "fYakUCTq", "GkE7wcWf"], "session_timeout": 60, "unlimited": true, "use_buffer_percent": true}, "lpJSqGAX": {"buffer_count": 88, "buffer_percent": 52, "configuration": "0yYoNRKd", "enable_region_overrides": true, "game_version": "L5TAQ6ii", "max_count": 86, "min_count": 23, "name": "lSC2uE4o", "region_overrides": {"5Vwdo3fe": {"buffer_count": 84, "buffer_percent": 68, "max_count": 33, "min_count": 4, "name": "IJA8IHtr", "unlimited": false, "use_buffer_percent": false}, "mu0hpDDW": {"buffer_count": 97, "buffer_percent": 35, "max_count": 54, "min_count": 82, "name": "la2l5BYN", "unlimited": true, "use_buffer_percent": true}, "IuS5S5XU": {"buffer_count": 6, "buffer_percent": 57, "max_count": 20, "min_count": 69, "name": "soqwGyzz", "unlimited": false, "use_buffer_percent": false}}, "regions": ["KHPEqgA8", "yu7Vk6Jt", "4Ymos9Jc"], "session_timeout": 7, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"s4fYcTVU": {"buffer_count": 90, "buffer_percent": 25, "max_count": 56, "min_count": 44, "name": "t0zYoMcH", "unlimited": true, "use_buffer_percent": true}, "CUEXlAvx": {"buffer_count": 73, "buffer_percent": 49, "max_count": 79, "min_count": 30, "name": "dalwSyli", "unlimited": false, "use_buffer_percent": true}, "NyLu0M3V": {"buffer_count": 68, "buffer_percent": 19, "max_count": 16, "min_count": 72, "name": "2EI8JlDb", "unlimited": false, "use_buffer_percent": true}}, "regions": ["Q9lNmqRB", "aAkLnvxk", "T1X68cmD"], "session_timeout": 4, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'xU8MyKrQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'pM4hkkK6' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 75, "buffer_percent": 41, "configuration": "XNB3Gv0I", "enable_region_overrides": true, "game_version": "eCnaLpUK", "max_count": 32, "min_count": 27, "regions": ["4YUDjasW", "IPUvmEej", "tGeoyIPa"], "session_timeout": 51, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'rvjj7il3' \
    --namespace $AB_NAMESPACE \
    --region '5MXbN9oC' \
    --body '{"buffer_count": 79, "buffer_percent": 30, "max_count": 82, "min_count": 33, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'jTvhZNkS' \
    --namespace $AB_NAMESPACE \
    --region 'Q70D0H6B' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'XksUC9b6' \
    --namespace $AB_NAMESPACE \
    --region 'i5lZC9xv' \
    --body '{"buffer_count": 2, "buffer_percent": 9, "max_count": 3, "min_count": 30, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'Q1MzH7Qm' \
    --namespace $AB_NAMESPACE \
    --version '8bwbmXgd' \
    --body '{"buffer_count": 55, "buffer_percent": 96, "configuration": "Ph1EThG9", "enable_region_overrides": false, "game_version": "QZxfgPub", "max_count": 93, "min_count": 58, "region_overrides": {"DIHrvqAT": {"buffer_count": 16, "buffer_percent": 63, "max_count": 42, "min_count": 10, "name": "wjRHpKKT", "unlimited": false, "use_buffer_percent": false}, "mVr9XuoJ": {"buffer_count": 4, "buffer_percent": 89, "max_count": 44, "min_count": 64, "name": "neSD2Tb3", "unlimited": false, "use_buffer_percent": false}, "xtu7LQRE": {"buffer_count": 81, "buffer_percent": 25, "max_count": 19, "min_count": 20, "name": "EEztx1Ws", "unlimited": false, "use_buffer_percent": false}}, "regions": ["ck0ZHn5G", "I39YBHqa", "THeKtW18"], "session_timeout": 18, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'Ulc9d9so' \
    --namespace $AB_NAMESPACE \
    --version 'gWa24CKN' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'S0GqVvUf' \
    --namespace $AB_NAMESPACE \
    --version 'HQvsHXNU' \
    --body '{"buffer_count": 81, "buffer_percent": 7, "configuration": "e4mhgo5Q", "enable_region_overrides": true, "game_version": "48l9lyNA", "max_count": 31, "min_count": 81, "regions": ["flxqMrj3", "oZk03QXc", "KMDYDDxH"], "session_timeout": 92, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'tqXyJ58f' \
    --namespace $AB_NAMESPACE \
    --region '7Gc26Sai' \
    --version 'GVkydwYW' \
    --body '{"buffer_count": 86, "buffer_percent": 49, "max_count": 67, "min_count": 16, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'yUZNmTBc' \
    --namespace $AB_NAMESPACE \
    --region 'vrbYCwZt' \
    --version 'xFHyPLtI' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '8ilbyDPU' \
    --namespace $AB_NAMESPACE \
    --region 'Ij88cekd' \
    --version 'qCt81P1k' \
    --body '{"buffer_count": 39, "buffer_percent": 82, "max_count": 11, "min_count": 52, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '25' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'eIP6rOvD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'z9KOsb39' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 49, "mem_limit": 21, "params": "oRDFuuuy"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'Sj29a9LJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'E8HoRS1X' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 84, "mem_limit": 67, "name": "FAAMwzHP", "params": "xB1UskYs"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '4Yw20DOq' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 84}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'WMiVi10s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'G6vxkfUc' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "mqRRbceJ", "port": 59}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'i0EeDxOg' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    --count '26' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'hhqElIaD' \
    --version 'ml48wdNF' \
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
    --imageURI 'LTm5T50x' \
    --version '9WT0GfH2' \
    --versionPatch 'rtOa4EXs' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'XzOXQAk4' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'mqrxzTtu' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'Ll4XlbGL' \
    --versionPatch '8QOxtjzm' \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region '8y2wNhmw' \
    --count '29' \
    --offset '16' \
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
    --region 'YZyI4EFZ' \
    > test.out 2>&1
eval_tap $? 46 'CountServerDetailed' test.out

#- 47 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'ListLocalServer' test.out

#- 48 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'KBcYrCEA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'E7WIsfmx' \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName '40NLRc6m' \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region '8heKnWhz' \
    --withServer 'false' \
    --count '9' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region '2NubeoKF' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'eIaFQCYo' \
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
    --version 'DPICpndu' \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "EEQlULdJ"}' \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "z4mnRBkM", "ip": "NxvvKgAT", "name": "8mJrYq6h", "port": 88}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "iI07A68e", "pod_name": "aqC2J9jy"}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "XzjjI5Yb"}' \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'sKoADkzJ' \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "EN2VHzih", "configuration": "3bit0VWn", "deployment": "3CO39PXD", "game_mode": "NxtXgeO3", "matching_allies": [{"matching_parties": [{"party_attributes": {"FgkXhjDz": {}, "aQY3snn2": {}, "ZkP7cFdP": {}}, "party_id": "43e5dC9X", "party_members": [{"user_id": "IBudfZgr"}, {"user_id": "bHDIDm4h"}, {"user_id": "MzF4Txod"}]}, {"party_attributes": {"enSrUTvf": {}, "qU0bfoMm": {}, "5cTtFWbo": {}}, "party_id": "tQyXJRcQ", "party_members": [{"user_id": "WsmqPNs9"}, {"user_id": "2epxk0i8"}, {"user_id": "VxsZNere"}]}, {"party_attributes": {"Svf9699m": {}, "CEHThUJk": {}, "ETAsSp7g": {}}, "party_id": "h4TeUTkO", "party_members": [{"user_id": "kAYfJB8A"}, {"user_id": "T9t4Tv20"}, {"user_id": "7Y2QD3oD"}]}]}, {"matching_parties": [{"party_attributes": {"5fLCr3OO": {}, "lXVv8ZGF": {}, "7uYnGzpi": {}}, "party_id": "pNDigNJm", "party_members": [{"user_id": "a1MbqqZt"}, {"user_id": "fNWql4nm"}, {"user_id": "wAft4gqk"}]}, {"party_attributes": {"NNlWkD9e": {}, "OziYRFOn": {}, "0jJLHC9L": {}}, "party_id": "xhvNXTwG", "party_members": [{"user_id": "BCtohLtl"}, {"user_id": "9Zuhytm5"}, {"user_id": "UDrT6QXC"}]}, {"party_attributes": {"s5SPBbRP": {}, "ZTF6oQAX": {}, "VG7tnsZg": {}}, "party_id": "5QgXjvyG", "party_members": [{"user_id": "JPN4eXbJ"}, {"user_id": "E5Vs2Gcy"}, {"user_id": "omQoIXim"}]}]}, {"matching_parties": [{"party_attributes": {"BJehyxlN": {}, "sjUgxBkF": {}, "6wFPoJeQ": {}}, "party_id": "ediogEhh", "party_members": [{"user_id": "M2rIizGd"}, {"user_id": "KvOPdq5x"}, {"user_id": "rgxSmy1D"}]}, {"party_attributes": {"N9LFkYW5": {}, "DQyj4bj5": {}, "Ro2ogaKt": {}}, "party_id": "2ujQSa3Z", "party_members": [{"user_id": "db65UXmy"}, {"user_id": "0Zp6iIaT"}, {"user_id": "IKUkmkk9"}]}, {"party_attributes": {"QM0NBMA9": {}, "ORxpzwLR": {}, "2AK6eXUG": {}}, "party_id": "PJsw1fiP", "party_members": [{"user_id": "80G9Pclx"}, {"user_id": "cft2ulIJ"}, {"user_id": "zPyrVEiO"}]}]}], "namespace": "G4UcqsuG", "notification_payload": {}, "pod_name": "KHhMRWLV", "region": "d3DlhLuI", "session_id": "pomM8sm1"}' \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "MiaI1mX2"}' \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'tJoARtdb' \
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
    --region 'Be7udsMr' \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE