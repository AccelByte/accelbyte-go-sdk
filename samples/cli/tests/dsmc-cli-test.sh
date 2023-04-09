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
    --body '{"artifactPath": "RmUgUI2Y", "image": "697H2p2Y", "namespace": "e1v0UFI9", "persistent": false, "version": "aFO0zFzu"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "NBDy0eCe", "dockerPath": "8ZpomKT4", "image": "0hbioiJ1", "imageSize": 99, "namespace": "8nrKBsuS", "persistent": false, "version": "LrISb2X8"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "79sAcDKn", "dockerPath": "amR23dhh", "image": "pWYtRWi6", "imageSize": 61, "namespace": "dQFA6a7I", "patchVersion": "ryLi4zZ9", "persistent": true, "version": "x5WthREZ"}' \
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
    --body '{"claim_timeout": 88, "creation_timeout": 56, "default_version": "UufT28Wl", "port": 23, "ports": {"ANjqESOw": 18, "ZWU9KqAK": 42, "F5wrPyFN": 32}, "protocol": "92KZoQDA", "providers": ["WFBv2apJ", "F5GG9Tyx", "QurAwzyH"], "session_timeout": 19, "unreachable_timeout": 39}' \
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
    --body '{"claim_timeout": 20, "creation_timeout": 6, "default_version": "bjwldObV", "port": 20, "protocol": "RH1Vt2lK", "providers": ["Xj1mTNQD", "5wV8cTiz", "UAoXDDc4"], "session_timeout": 80, "unreachable_timeout": 96}' \
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
    --name 'DFM5Fs8y' \
    --count '86' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment '4dXnUYtq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'HyuGF2gP' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 76, "buffer_percent": 59, "configuration": "G1L3BuLR", "enable_region_overrides": false, "game_version": "oRzi2db5", "max_count": 5, "min_count": 27, "overrides": {"EqYHXhJ7": {"buffer_count": 6, "buffer_percent": 56, "configuration": "yJQctDpx", "enable_region_overrides": true, "game_version": "RiHe5fdI", "max_count": 38, "min_count": 89, "name": "6dbxbk6J", "region_overrides": {"mNbyesrp": {"buffer_count": 56, "buffer_percent": 3, "max_count": 50, "min_count": 20, "name": "NUflTYf0", "unlimited": false, "use_buffer_percent": false}, "TISHUTri": {"buffer_count": 64, "buffer_percent": 48, "max_count": 3, "min_count": 74, "name": "wZdO3DGt", "unlimited": true, "use_buffer_percent": false}, "Z5xg8XJQ": {"buffer_count": 24, "buffer_percent": 76, "max_count": 72, "min_count": 72, "name": "3TADSLfS", "unlimited": true, "use_buffer_percent": false}}, "regions": ["ofAW2Qts", "mLePeLhY", "XTeUOKeY"], "session_timeout": 75, "unlimited": true, "use_buffer_percent": true}, "sdQdzrlP": {"buffer_count": 66, "buffer_percent": 84, "configuration": "wrvRpZbR", "enable_region_overrides": true, "game_version": "D3tRXmUz", "max_count": 72, "min_count": 20, "name": "swoxLD2G", "region_overrides": {"QXysfLbj": {"buffer_count": 42, "buffer_percent": 62, "max_count": 68, "min_count": 54, "name": "U9neLK7j", "unlimited": false, "use_buffer_percent": false}, "qIUIlCxF": {"buffer_count": 87, "buffer_percent": 13, "max_count": 1, "min_count": 58, "name": "DKSG518T", "unlimited": true, "use_buffer_percent": false}, "w2GHMwrR": {"buffer_count": 42, "buffer_percent": 46, "max_count": 63, "min_count": 100, "name": "udUduMKT", "unlimited": false, "use_buffer_percent": false}}, "regions": ["3Iv60NrD", "HwM83ULS", "rAfKJiLq"], "session_timeout": 22, "unlimited": false, "use_buffer_percent": false}, "pXKVtXPY": {"buffer_count": 98, "buffer_percent": 94, "configuration": "owSfxMxY", "enable_region_overrides": true, "game_version": "cTPDpAuF", "max_count": 3, "min_count": 8, "name": "Kzrmdxum", "region_overrides": {"jigbBBbL": {"buffer_count": 62, "buffer_percent": 51, "max_count": 45, "min_count": 46, "name": "bC7xUuNT", "unlimited": true, "use_buffer_percent": true}, "d2OgEWG8": {"buffer_count": 10, "buffer_percent": 73, "max_count": 78, "min_count": 61, "name": "v05ceU0I", "unlimited": true, "use_buffer_percent": true}, "A9pAvizP": {"buffer_count": 92, "buffer_percent": 96, "max_count": 23, "min_count": 44, "name": "y0z2whir", "unlimited": false, "use_buffer_percent": true}}, "regions": ["P5WvxO4O", "BJne8Wub", "IPOCAERu"], "session_timeout": 30, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"JiFjdqBx": {"buffer_count": 82, "buffer_percent": 51, "max_count": 33, "min_count": 62, "name": "E7M4acwF", "unlimited": true, "use_buffer_percent": false}, "ZPJFwbfo": {"buffer_count": 14, "buffer_percent": 90, "max_count": 79, "min_count": 36, "name": "jfz9dUhB", "unlimited": true, "use_buffer_percent": true}, "osUhSEDI": {"buffer_count": 31, "buffer_percent": 60, "max_count": 30, "min_count": 39, "name": "4DHCe21f", "unlimited": true, "use_buffer_percent": true}}, "regions": ["MosEvT2E", "XSN2U49n", "clysNApu"], "session_timeout": 25, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'HZvWxYKe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'EpYmL6tE' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 97, "buffer_percent": 84, "configuration": "a2OiyyLO", "enable_region_overrides": false, "game_version": "DbB8yvnx", "max_count": 5, "min_count": 21, "regions": ["0St9nbBe", "3xkIyzn3", "vldVpy1P"], "session_timeout": 18, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'GojAF9w1' \
    --namespace $AB_NAMESPACE \
    --region 'pW8cRBbC' \
    --body '{"buffer_count": 0, "buffer_percent": 24, "max_count": 67, "min_count": 96, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'THCjF5rM' \
    --namespace $AB_NAMESPACE \
    --region 'GEP8D33r' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'enxT4UCq' \
    --namespace $AB_NAMESPACE \
    --region 'HxTZZp0W' \
    --body '{"buffer_count": 35, "buffer_percent": 55, "max_count": 50, "min_count": 7, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'mr0nj1Nk' \
    --namespace $AB_NAMESPACE \
    --version 'gfeRTSKv' \
    --body '{"buffer_count": 24, "buffer_percent": 36, "configuration": "Akskwjqc", "enable_region_overrides": true, "game_version": "VNGYlU2Y", "max_count": 34, "min_count": 38, "region_overrides": {"ewb05nrl": {"buffer_count": 67, "buffer_percent": 1, "max_count": 40, "min_count": 71, "name": "Ufy83OKC", "unlimited": false, "use_buffer_percent": true}, "tYCFERfM": {"buffer_count": 82, "buffer_percent": 90, "max_count": 13, "min_count": 81, "name": "7zG1SzET", "unlimited": false, "use_buffer_percent": true}, "7O9D17ya": {"buffer_count": 15, "buffer_percent": 8, "max_count": 4, "min_count": 75, "name": "IztqNTaf", "unlimited": false, "use_buffer_percent": false}}, "regions": ["Lrr5cSJt", "sZGHb4Eb", "buyeFzEC"], "session_timeout": 21, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'ehEJNZ33' \
    --namespace $AB_NAMESPACE \
    --version 'DnIYQiDR' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment '1lpi4GuF' \
    --namespace $AB_NAMESPACE \
    --version 'WUBE7T0A' \
    --body '{"buffer_count": 29, "buffer_percent": 11, "configuration": "qcyZoYlp", "enable_region_overrides": false, "game_version": "BjZwNmcS", "max_count": 51, "min_count": 42, "regions": ["dzIqhy6Q", "KrqfC1sR", "z8tHFVuH"], "session_timeout": 94, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'UhTebLYj' \
    --namespace $AB_NAMESPACE \
    --region 'ahKLBXHO' \
    --version 'GXT7Lz37' \
    --body '{"buffer_count": 56, "buffer_percent": 58, "max_count": 91, "min_count": 28, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment '7xtwL082' \
    --namespace $AB_NAMESPACE \
    --region 'KpnyC6AW' \
    --version 'oBWSpc3A' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '0WDWP0Dw' \
    --namespace $AB_NAMESPACE \
    --region '2lQAicEJ' \
    --version 's6ZFLLDv' \
    --body '{"buffer_count": 13, "buffer_percent": 87, "max_count": 15, "min_count": 39, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '99' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'tmkpuybi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '5JJ8hRp2' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 9, "mem_limit": 33, "params": "kolavUpZ"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'ZCkeoSKl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'ZeQvPOAN' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 0, "mem_limit": 7, "name": "C2HHmVhq", "params": "ILYHcpsh"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'ZUr5VyEK' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 93}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'VXd2sg6e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'ZdIvmKLF' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "p19Se5IB", "port": 60}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'a9Q53ZX6' \
    --sortBy 'version' \
    --sortDirection 'asc' \
    --count '12' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'DAjfOuW2' \
    --version 'LGWtx0Hq' \
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
    --imageURI 'eVkXpcHX' \
    --version 'GrC8D0SG' \
    --versionPatch 'jkh4pu5s' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'EznMMgRi' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'mllH8urx' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'Keewx9c4' \
    --versionPatch 'QXdG0g3o' \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'ZUjyDV5k' \
    --count '46' \
    --offset '86' \
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
    --region 'q3o5APa5' \
    > test.out 2>&1
eval_tap $? 46 'CountServerDetailed' test.out

#- 47 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'ListLocalServer' test.out

#- 48 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name '9spUhATi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName '8o8idYey' \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'JSMoRZoh' \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'mYB87AvI' \
    --withServer 'true' \
    --count '14' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region '36Egc8XN' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'VmjPwI2E' \
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
    --version 'fwB94Eh4' \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "oizTpZ1H"}' \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "WUJgQq9h", "ip": "6Vekb33E", "name": "bDWNe4YL", "port": 45}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "Mvnwjauy", "pod_name": "RdwsYsDH"}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "1O2BXQ8W"}' \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'cQTzc39M' \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "7v0cDOdV", "configuration": "24Y22oZF", "deployment": "6MimzzV7", "game_mode": "VROxAhSK", "matching_allies": [{"matching_parties": [{"party_attributes": {"lG7U4hOl": {}, "R0P1KLqe": {}, "zelDN69a": {}}, "party_id": "bRORk6yL", "party_members": [{"user_id": "w8sBOxoJ"}, {"user_id": "52RYipfo"}, {"user_id": "0quRZ85R"}]}, {"party_attributes": {"MbjZdPyN": {}, "ZQX15xE7": {}, "MR9FHR8R": {}}, "party_id": "jaIWkpae", "party_members": [{"user_id": "XmACI6VH"}, {"user_id": "CI2NKMkI"}, {"user_id": "YAdgVS89"}]}, {"party_attributes": {"3AdBF6Db": {}, "eb7Uo07V": {}, "klNLsCzp": {}}, "party_id": "lFf5oHrc", "party_members": [{"user_id": "z88M2Yms"}, {"user_id": "RohTt3l9"}, {"user_id": "CLoA9iyQ"}]}]}, {"matching_parties": [{"party_attributes": {"rtuwdHLD": {}, "V8W0qerv": {}, "nKHHMaaY": {}}, "party_id": "cRTZrusj", "party_members": [{"user_id": "283SiSNr"}, {"user_id": "Kw7AuKKU"}, {"user_id": "fhqsiFnx"}]}, {"party_attributes": {"GyOgdPgK": {}, "dcIpGbNH": {}, "dIiGnY7A": {}}, "party_id": "eqk3tzzV", "party_members": [{"user_id": "TVtKCnRI"}, {"user_id": "okyMY47c"}, {"user_id": "C9ETuAsO"}]}, {"party_attributes": {"ymMpQP3M": {}, "DGHii55Q": {}, "GaesR6XD": {}}, "party_id": "Ro89z7xd", "party_members": [{"user_id": "popOMnhk"}, {"user_id": "4kgQA6Qy"}, {"user_id": "TursiaI9"}]}]}, {"matching_parties": [{"party_attributes": {"tbEmL2Fk": {}, "SrPGn8rU": {}, "7sErGcsS": {}}, "party_id": "3secmKen", "party_members": [{"user_id": "F1Qp0ImF"}, {"user_id": "8uR88LfO"}, {"user_id": "t8QhBTzo"}]}, {"party_attributes": {"Yj6CRW1c": {}, "R3V8pdJF": {}, "5g1Z9gEb": {}}, "party_id": "Suqbqsj9", "party_members": [{"user_id": "d4NCxDH1"}, {"user_id": "Ch7tV91i"}, {"user_id": "YOjq6fUw"}]}, {"party_attributes": {"Jvsj9ywM": {}, "wnGlDA44": {}, "g5RKydSc": {}}, "party_id": "vGKupeTz", "party_members": [{"user_id": "XFkzeNk8"}, {"user_id": "rsn88iKo"}, {"user_id": "91YuAOst"}]}]}], "namespace": "0i1liO93", "notification_payload": {}, "pod_name": "bbcUAc5M", "region": "1HAQynhI", "session_id": "TRUEhxKg"}' \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "Yfx8U5DH"}' \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Kp4WuuiD' \
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
    --region 'GAQyCd7j' \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE