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
    --body '{"artifactPath": "iuEbRO5K", "image": "esfeWapc", "namespace": "jxgjIGcY", "persistent": true, "version": "fMYXnida"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "iX0yPfjj", "dockerPath": "hPPHqxVq", "image": "gtvRuyg4", "imageSize": 94, "namespace": "NCs3LcCi", "persistent": true, "version": "tqdjGexl"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "4ZTnZngv", "dockerPath": "hOxN1slJ", "image": "NFUPKHqv", "imageSize": 95, "namespace": "JWw40BWh", "patchVersion": "egyenqSd", "persistent": false, "version": "qoyAVxPN"}' \
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
    --body '{"claim_timeout": 60, "creation_timeout": 30, "default_version": "WbOR1iwM", "port": 99, "ports": {"B4kDBgU2": 97, "PuLNdLvL": 64, "S3rj78gq": 74}, "protocol": "JLlOrvJD", "providers": ["knWx8FiX", "D9cycptd", "wZtnkfTg"], "session_timeout": 4, "unreachable_timeout": 9}' \
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
    --body '{"claim_timeout": 54, "creation_timeout": 47, "default_version": "XZuiSE4m", "port": 87, "protocol": "m6CztcFT", "providers": ["fBwyjpWI", "DXYcEgKI", "cyjQicrr"], "session_timeout": 19, "unreachable_timeout": 1}' \
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
    --name 'MP4DC1jA' \
    --count '95' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 13 'GetAllDeployment' test.out

#- 14 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'LODL3xIQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetDeployment' test.out

#- 15 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'wiPMOqZv' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 68, "buffer_percent": 55, "configuration": "NAx4oW8w", "enable_region_overrides": true, "game_version": "EnAyEHK7", "max_count": 64, "min_count": 66, "overrides": {"wuQ8ulxc": {"buffer_count": 18, "buffer_percent": 73, "configuration": "YPgJ11g9", "enable_region_overrides": false, "game_version": "qKyXD7ze", "max_count": 73, "min_count": 16, "name": "7Rkumbn6", "region_overrides": {"W9vW6ixS": {"buffer_count": 11, "buffer_percent": 4, "max_count": 12, "min_count": 10, "name": "c4owJBqv", "unlimited": true, "use_buffer_percent": false}, "36f7O0XB": {"buffer_count": 68, "buffer_percent": 31, "max_count": 89, "min_count": 80, "name": "vPzG1oAj", "unlimited": true, "use_buffer_percent": false}, "BhZTaV3y": {"buffer_count": 17, "buffer_percent": 94, "max_count": 93, "min_count": 74, "name": "dBQFzbBs", "unlimited": true, "use_buffer_percent": true}}, "regions": ["IH9dzz5L", "WS8RueUf", "H8gAuKFa"], "session_timeout": 47, "unlimited": false, "use_buffer_percent": false}, "EJFMe38E": {"buffer_count": 77, "buffer_percent": 89, "configuration": "2E2DgnSW", "enable_region_overrides": false, "game_version": "RDZkrMzx", "max_count": 95, "min_count": 27, "name": "X9pbH86g", "region_overrides": {"G7VULdd9": {"buffer_count": 39, "buffer_percent": 61, "max_count": 11, "min_count": 48, "name": "1RgQ8vBm", "unlimited": true, "use_buffer_percent": false}, "23l9P6Rl": {"buffer_count": 12, "buffer_percent": 29, "max_count": 85, "min_count": 6, "name": "TsC5jw1e", "unlimited": false, "use_buffer_percent": true}, "dW3tQcpH": {"buffer_count": 76, "buffer_percent": 31, "max_count": 8, "min_count": 6, "name": "5xNGJeQO", "unlimited": true, "use_buffer_percent": true}}, "regions": ["rkJJl5iD", "53zSyNZ3", "ZBIj2Xn5"], "session_timeout": 44, "unlimited": true, "use_buffer_percent": false}, "3M9CsgZH": {"buffer_count": 7, "buffer_percent": 49, "configuration": "QQ2LB35D", "enable_region_overrides": false, "game_version": "wj1XCS0j", "max_count": 92, "min_count": 61, "name": "qOyaymJr", "region_overrides": {"i2eavs5m": {"buffer_count": 67, "buffer_percent": 82, "max_count": 60, "min_count": 90, "name": "edLfhtV3", "unlimited": true, "use_buffer_percent": false}, "mc5QVbGP": {"buffer_count": 82, "buffer_percent": 61, "max_count": 95, "min_count": 23, "name": "FNXE4MLX", "unlimited": true, "use_buffer_percent": true}, "7oza8Jb7": {"buffer_count": 22, "buffer_percent": 65, "max_count": 78, "min_count": 50, "name": "Sp7fkytI", "unlimited": false, "use_buffer_percent": true}}, "regions": ["56L3q3FV", "URfIaDpS", "4eecItlg"], "session_timeout": 59, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"nyeDQVAw": {"buffer_count": 93, "buffer_percent": 32, "max_count": 45, "min_count": 7, "name": "xxNyxcxd", "unlimited": false, "use_buffer_percent": false}, "tvnKxA42": {"buffer_count": 79, "buffer_percent": 97, "max_count": 23, "min_count": 67, "name": "q5pXAi7h", "unlimited": true, "use_buffer_percent": false}, "RmbpiM0N": {"buffer_count": 100, "buffer_percent": 27, "max_count": 20, "min_count": 52, "name": "o8GLoygI", "unlimited": false, "use_buffer_percent": false}}, "regions": ["3DsLXjsG", "FA2gEtmk", "K35AztXZ"], "session_timeout": 69, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 15 'CreateDeployment' test.out

#- 16 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'Ex3lpmfG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteDeployment' test.out

#- 17 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'qNUR6H3r' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 96, "buffer_percent": 84, "configuration": "2pRJIW15", "enable_region_overrides": true, "game_version": "ICe6BogA", "max_count": 75, "min_count": 44, "regions": ["kuwkUIoc", "irw4Iuu4", "vCt1CaD5"], "session_timeout": 50, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateDeployment' test.out

#- 18 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'XGPiaWhY' \
    --namespace $AB_NAMESPACE \
    --region 'hluhQ4nn' \
    --body '{"buffer_count": 87, "buffer_percent": 77, "max_count": 37, "min_count": 92, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'CreateRootRegionOverride' test.out

#- 19 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'ZXsQseEE' \
    --namespace $AB_NAMESPACE \
    --region 'fbceTOGw' \
    > test.out 2>&1
eval_tap $? 19 'DeleteRootRegionOverride' test.out

#- 20 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'aB3R1FxD' \
    --namespace $AB_NAMESPACE \
    --region '7DNulSC0' \
    --body '{"buffer_count": 11, "buffer_percent": 40, "max_count": 65, "min_count": 15, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateRootRegionOverride' test.out

#- 21 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment '3szHezrT' \
    --namespace $AB_NAMESPACE \
    --version 'd8GEZmko' \
    --body '{"buffer_count": 4, "buffer_percent": 36, "configuration": "Psr5Gkau", "enable_region_overrides": false, "game_version": "D0IHrWPb", "max_count": 42, "min_count": 56, "region_overrides": {"y8HMMmE8": {"buffer_count": 30, "buffer_percent": 3, "max_count": 29, "min_count": 88, "name": "4TebpSJp", "unlimited": false, "use_buffer_percent": false}, "Eado3LYr": {"buffer_count": 0, "buffer_percent": 50, "max_count": 84, "min_count": 32, "name": "BoHc6JWr", "unlimited": false, "use_buffer_percent": false}, "WXN5maX0": {"buffer_count": 18, "buffer_percent": 59, "max_count": 35, "min_count": 52, "name": "wEGo6g0N", "unlimited": true, "use_buffer_percent": false}}, "regions": ["rOB2LX50", "ywcBJl5D", "iXWLyNCL"], "session_timeout": 31, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'CreateDeploymentOverride' test.out

#- 22 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'PZTa7FAi' \
    --namespace $AB_NAMESPACE \
    --version '6CWSHg81' \
    > test.out 2>&1
eval_tap $? 22 'DeleteDeploymentOverride' test.out

#- 23 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'rzZ34kg9' \
    --namespace $AB_NAMESPACE \
    --version '0F3CUPeA' \
    --body '{"buffer_count": 82, "buffer_percent": 12, "configuration": "8gcwlcVF", "enable_region_overrides": false, "game_version": "VzhD9TWs", "max_count": 11, "min_count": 17, "regions": ["AVtnvGZn", "61Imq8ux", "rWPzShxo"], "session_timeout": 45, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateDeploymentOverride' test.out

#- 24 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'mqMgCj4q' \
    --namespace $AB_NAMESPACE \
    --region 'lGBHUOHu' \
    --version 'E1KmnVXF' \
    --body '{"buffer_count": 24, "buffer_percent": 6, "max_count": 17, "min_count": 89, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'CreateOverrideRegionOverride' test.out

#- 25 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'DKeAw7wA' \
    --namespace $AB_NAMESPACE \
    --region 'BGaSi19j' \
    --version 'W5Fn2s8w' \
    > test.out 2>&1
eval_tap $? 25 'DeleteOverrideRegionOverride' test.out

#- 26 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'uKN21J9J' \
    --namespace $AB_NAMESPACE \
    --region 'jDAJgHb5' \
    --version 'xbcBxz5e' \
    --body '{"buffer_count": 95, "buffer_percent": 20, "max_count": 32, "min_count": 42, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateOverrideRegionOverride' test.out

#- 27 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '14' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 27 'GetAllPodConfig' test.out

#- 28 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'tTWc4V37' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetPodConfig' test.out

#- 29 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'Q8JHQNtO' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 97, "mem_limit": 20, "params": "zrOwGgVq"}' \
    > test.out 2>&1
eval_tap $? 29 'CreatePodConfig' test.out

#- 30 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'E8D6n1en' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeletePodConfig' test.out

#- 31 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name '1ZISpfnG' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 70, "mem_limit": 87, "name": "LVy7bK8P", "params": "f2oO7kEG"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdatePodConfig' test.out

#- 32 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '6y4pWx4g' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 72}' \
    > test.out 2>&1
eval_tap $? 32 'AddPort' test.out

#- 33 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'JxlvdUnN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeletePort' test.out

#- 34 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name '4gnZC3Sy' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "AFyUKaKn", "port": 22}' \
    > test.out 2>&1
eval_tap $? 34 'UpdatePort' test.out

#- 35 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'RxzohZOW' \
    --sortBy 'version' \
    --sortDirection 'desc' \
    --count '100' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 35 'ListImages' test.out

#- 36 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'VWimiUns' \
    --version '525oUiLg' \
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
    --imageURI 'DB8mEnus' \
    --version 'sYhIXhta' \
    --versionPatch 'TGy9B4Zp' \
    > test.out 2>&1
eval_tap $? 39 'DeleteImagePatch' test.out

#- 40 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'qXIX2cC3' \
    > test.out 2>&1
eval_tap $? 40 'GetImageDetail' test.out

#- 41 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'NChuzup9' \
    > test.out 2>&1
eval_tap $? 41 'GetImagePatches' test.out

#- 42 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'rQC0ru2i' \
    --versionPatch 'MACvs7bZ' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatchDetail' test.out

#- 43 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'eNlEYqTH' \
    --count '11' \
    --offset '65' \
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
    --region 'ZlwMXFGQ' \
    > test.out 2>&1
eval_tap $? 45 'CountServerDetailed' test.out

#- 46 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'ListLocalServer' test.out

#- 47 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'Puk8wIjp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteLocalServer' test.out

#- 48 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'Y9LkAcno' \
    > test.out 2>&1
eval_tap $? 48 'GetServer' test.out

#- 49 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'X4YTmWp4' \
    > test.out 2>&1
eval_tap $? 49 'DeleteServer' test.out

#- 50 GetServerLogs
samples/cli/sample-apps Dsmc getServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'tVlqPKJw' \
    > test.out 2>&1
eval_tap $? 50 'GetServerLogs' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'ZpkcF7Md' \
    --withServer 'true' \
    --count '2' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'KwndkTh3' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'eJpL1QjP' \
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
    --version '3TyooeV4' \
    > test.out 2>&1
eval_tap $? 56 'ImageDetailClient' test.out

#- 57 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "ooaRPnyk"}' \
    > test.out 2>&1
eval_tap $? 57 'DeregisterLocalServer' test.out

#- 58 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "qC0dssP3", "ip": "jpewKNKq", "name": "OTEvXcry", "port": 74}' \
    > test.out 2>&1
eval_tap $? 58 'RegisterLocalServer' test.out

#- 59 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "46RZ5tGN", "pod_name": "V4FixoMr"}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterServer' test.out

#- 60 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "QbrDeh3i"}' \
    > test.out 2>&1
eval_tap $? 60 'ShutdownServer' test.out

#- 61 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'M4VqOSns' \
    > test.out 2>&1
eval_tap $? 61 'GetServerSession' test.out

#- 62 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "sHHUl14C", "configuration": "AIJ3K88J", "deployment": "IbUCybO8", "game_mode": "faQbjtRq", "matching_allies": [{"matching_parties": [{"party_attributes": {"a7dmdKI1": {}, "BuJTLf16": {}, "I54SckXw": {}}, "party_id": "wBdqxRTD", "party_members": [{"user_id": "nawjPUkB"}, {"user_id": "2UNIysCB"}, {"user_id": "AjyEYhZc"}]}, {"party_attributes": {"o5FGOZiq": {}, "x9F4OvAt": {}, "Tz7FLeJS": {}}, "party_id": "Q6DRKSbn", "party_members": [{"user_id": "n1CDFfdQ"}, {"user_id": "uURdX3eZ"}, {"user_id": "7RPotfvm"}]}, {"party_attributes": {"S5Ecentj": {}, "sdQiZQcu": {}, "DP25UIS0": {}}, "party_id": "yparN42g", "party_members": [{"user_id": "ewmWYEsU"}, {"user_id": "zj3loFVY"}, {"user_id": "55YEyfSA"}]}]}, {"matching_parties": [{"party_attributes": {"InMRYRH9": {}, "jRW4URj8": {}, "NmRGj524": {}}, "party_id": "O0TBC79N", "party_members": [{"user_id": "rMUcF502"}, {"user_id": "T3CRcFub"}, {"user_id": "NYdVt9T9"}]}, {"party_attributes": {"hsjyBlsy": {}, "Mh27uq9L": {}, "Qhk1X8NM": {}}, "party_id": "QFYsQJFg", "party_members": [{"user_id": "SnI5Bi5S"}, {"user_id": "8Xba1d8q"}, {"user_id": "fCHowp4j"}]}, {"party_attributes": {"DPXv4IOI": {}, "fZoGRcwu": {}, "whds1K46": {}}, "party_id": "3FCfu0FM", "party_members": [{"user_id": "xUYcoGMn"}, {"user_id": "g3Sro3Qc"}, {"user_id": "aGE571kg"}]}]}, {"matching_parties": [{"party_attributes": {"FYNfekWc": {}, "rE8Tusgh": {}, "KdeIvamH": {}}, "party_id": "FWc76ZuM", "party_members": [{"user_id": "LEMTB0d1"}, {"user_id": "UFGeWLYF"}, {"user_id": "h4bI8tvS"}]}, {"party_attributes": {"MC1kUqoi": {}, "BrHuIcmA": {}, "tXepjWb6": {}}, "party_id": "7e18c9mf", "party_members": [{"user_id": "388QZ9D6"}, {"user_id": "umJFEg84"}, {"user_id": "X2EXfgW4"}]}, {"party_attributes": {"Q7I0qGkB": {}, "8IYS4qyv": {}, "orrrOEnx": {}}, "party_id": "AhVos2Ii", "party_members": [{"user_id": "6O1dYLWE"}, {"user_id": "cZftviU6"}, {"user_id": "YEJGXZ5U"}]}]}], "namespace": "oisNVrIL", "notification_payload": {}, "pod_name": "DGmJgF2n", "region": "dHBFsPDO", "session_id": "EGxh1cAB"}' \
    > test.out 2>&1
eval_tap $? 62 'CreateSession' test.out

#- 63 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "sKZXbGfa"}' \
    > test.out 2>&1
eval_tap $? 63 'ClaimServer' test.out

#- 64 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'BpIZX9S9' \
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
    --region 'FiWLiNco' \
    > test.out 2>&1
eval_tap $? 67 'ListProvidersByRegion' test.out

#- 68 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 68 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE