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
    --body '{"artifactPath": "CIIrDlhe", "image": "UiMgXGWt", "namespace": "0CZx0vXZ", "persistent": true, "version": "5qwEDT8k"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "D0zgrM3Q", "dockerPath": "cCwroYzC", "image": "5602cboh", "imageSize": 26, "namespace": "lFUDb0vf", "persistent": true, "version": "mIJocA6R"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "txuCeZIx", "dockerPath": "vbU133UY", "image": "9s8EQ80S", "imageSize": 1, "namespace": "aecUNqf3", "patchVersion": "p1ZLUZit", "persistent": true, "version": "sqw34C54"}' \
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
    --body '{"claim_timeout": 24, "creation_timeout": 71, "default_version": "RbNQPUTC", "port": 58, "ports": {"6R611vAT": 16, "QsUYpH7g": 13, "mXSyQcI6": 93}, "protocol": "pHxkG6jm", "providers": ["YQkVq2zn", "9Ygsl2Qn", "8kGwCsrf"], "session_timeout": 91, "unreachable_timeout": 63}' \
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
    --body '{"claim_timeout": 57, "creation_timeout": 33, "default_version": "NCy85GHY", "port": 66, "protocol": "5ej7SeVT", "providers": ["wiCQrGXH", "vYBYEadJ", "wJMR30bT"], "session_timeout": 43, "unreachable_timeout": 95}' \
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
    --name 'VHABDycC' \
    --count '46' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 13 'GetAllDeployment' test.out

#- 14 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'tZ3lFaIF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetDeployment' test.out

#- 15 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'wcKMnlAv' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 31, "buffer_percent": 15, "configuration": "3dC0LpET", "enable_region_overrides": false, "game_version": "oHA3Bq1u", "max_count": 72, "min_count": 60, "overrides": {"UVceFHCX": {"buffer_count": 26, "buffer_percent": 92, "configuration": "mGICVDMA", "enable_region_overrides": false, "game_version": "4U19qlYR", "max_count": 7, "min_count": 7, "name": "g9laFDil", "region_overrides": {"wa3tGVVu": {"buffer_count": 17, "buffer_percent": 55, "max_count": 51, "min_count": 48, "name": "gylkm1ZN", "unlimited": false, "use_buffer_percent": false}, "BWs8O413": {"buffer_count": 11, "buffer_percent": 16, "max_count": 38, "min_count": 76, "name": "0ghoXetD", "unlimited": false, "use_buffer_percent": true}, "gSwusktm": {"buffer_count": 84, "buffer_percent": 82, "max_count": 91, "min_count": 22, "name": "ljZEQfIO", "unlimited": true, "use_buffer_percent": true}}, "regions": ["w89QFeLF", "3v4MzDZX", "L6ZxAAsa"], "session_timeout": 11, "unlimited": false, "use_buffer_percent": false}, "fFyBnxOD": {"buffer_count": 70, "buffer_percent": 25, "configuration": "YjgfRHoA", "enable_region_overrides": true, "game_version": "vaGpa5KT", "max_count": 50, "min_count": 9, "name": "xOTOO8N1", "region_overrides": {"4eHZfe2F": {"buffer_count": 46, "buffer_percent": 81, "max_count": 10, "min_count": 81, "name": "05YIIDCt", "unlimited": false, "use_buffer_percent": false}, "CmimkLdp": {"buffer_count": 54, "buffer_percent": 73, "max_count": 66, "min_count": 71, "name": "0lLzoeWj", "unlimited": true, "use_buffer_percent": true}, "k2CN7U8B": {"buffer_count": 12, "buffer_percent": 14, "max_count": 48, "min_count": 70, "name": "hrkCL0mx", "unlimited": true, "use_buffer_percent": false}}, "regions": ["iuy6eaNg", "O80vZojq", "aJBhFhFO"], "session_timeout": 43, "unlimited": true, "use_buffer_percent": false}, "M5w4JG2f": {"buffer_count": 43, "buffer_percent": 100, "configuration": "dremXdRa", "enable_region_overrides": true, "game_version": "4scvyuZ7", "max_count": 70, "min_count": 52, "name": "SUfqr8W1", "region_overrides": {"PBdz1hGD": {"buffer_count": 69, "buffer_percent": 73, "max_count": 31, "min_count": 49, "name": "ONTndyPV", "unlimited": true, "use_buffer_percent": false}, "difEbZw0": {"buffer_count": 19, "buffer_percent": 97, "max_count": 97, "min_count": 66, "name": "6Qk4EhLS", "unlimited": true, "use_buffer_percent": false}, "kadCtfnC": {"buffer_count": 76, "buffer_percent": 88, "max_count": 55, "min_count": 83, "name": "LG4hsoKP", "unlimited": true, "use_buffer_percent": false}}, "regions": ["pQEENWMg", "I8DO3nlT", "lHEvNpBw"], "session_timeout": 8, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"9RpHrdqj": {"buffer_count": 49, "buffer_percent": 6, "max_count": 18, "min_count": 52, "name": "doDBVKQo", "unlimited": true, "use_buffer_percent": true}, "ELGvNL1a": {"buffer_count": 71, "buffer_percent": 28, "max_count": 8, "min_count": 94, "name": "M2yUgP7x", "unlimited": false, "use_buffer_percent": false}, "chLVR9ai": {"buffer_count": 64, "buffer_percent": 4, "max_count": 50, "min_count": 27, "name": "7VQBrKjI", "unlimited": true, "use_buffer_percent": true}}, "regions": ["V2u3R4f1", "50MhkFgt", "aSxg5tYI"], "session_timeout": 58, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 15 'CreateDeployment' test.out

#- 16 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment '2ALsDcMg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteDeployment' test.out

#- 17 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'd8d3sXkk' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 93, "buffer_percent": 14, "configuration": "kZoCq22n", "enable_region_overrides": false, "game_version": "f0EGKHXK", "max_count": 46, "min_count": 59, "regions": ["NeZ1x9UP", "0xTG7Iq9", "1O1kGlI4"], "session_timeout": 35, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateDeployment' test.out

#- 18 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'iZM9GOjE' \
    --namespace $AB_NAMESPACE \
    --region 'fkhVkqzH' \
    --body '{"buffer_count": 96, "buffer_percent": 24, "max_count": 56, "min_count": 51, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'CreateRootRegionOverride' test.out

#- 19 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'gvZCTk3d' \
    --namespace $AB_NAMESPACE \
    --region 'mTejOjzr' \
    > test.out 2>&1
eval_tap $? 19 'DeleteRootRegionOverride' test.out

#- 20 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment '3JDyfUPf' \
    --namespace $AB_NAMESPACE \
    --region 'DcLvIyTO' \
    --body '{"buffer_count": 12, "buffer_percent": 92, "max_count": 22, "min_count": 32, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateRootRegionOverride' test.out

#- 21 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'Mnz9gCxs' \
    --namespace $AB_NAMESPACE \
    --version 'osJMGjKj' \
    --body '{"buffer_count": 41, "buffer_percent": 18, "configuration": "1T6p13zQ", "enable_region_overrides": false, "game_version": "XRUEbwEw", "max_count": 14, "min_count": 42, "region_overrides": {"52wfDaVL": {"buffer_count": 55, "buffer_percent": 4, "max_count": 72, "min_count": 9, "name": "HCtC98kn", "unlimited": false, "use_buffer_percent": true}, "3vpFnyHO": {"buffer_count": 18, "buffer_percent": 56, "max_count": 94, "min_count": 37, "name": "LbP2WVTs", "unlimited": true, "use_buffer_percent": false}, "z5a9XPy0": {"buffer_count": 16, "buffer_percent": 14, "max_count": 62, "min_count": 53, "name": "f8pbOHtT", "unlimited": false, "use_buffer_percent": true}}, "regions": ["mvQfSwhX", "nEhBdwj5", "z5Ys3cOU"], "session_timeout": 5, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'CreateDeploymentOverride' test.out

#- 22 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'CtlAD8p9' \
    --namespace $AB_NAMESPACE \
    --version '2QBE8Cy0' \
    > test.out 2>&1
eval_tap $? 22 'DeleteDeploymentOverride' test.out

#- 23 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'FEJCFvB3' \
    --namespace $AB_NAMESPACE \
    --version 'XnvxsqSe' \
    --body '{"buffer_count": 79, "buffer_percent": 30, "configuration": "UxgL2Q2F", "enable_region_overrides": true, "game_version": "gU4zMM1W", "max_count": 69, "min_count": 39, "regions": ["96k4PjS7", "5cQfappY", "bOD4ktYZ"], "session_timeout": 32, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateDeploymentOverride' test.out

#- 24 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'YOqw9Hmp' \
    --namespace $AB_NAMESPACE \
    --region 'BoeSRa3n' \
    --version 'dTTjyhSz' \
    --body '{"buffer_count": 30, "buffer_percent": 7, "max_count": 30, "min_count": 40, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'CreateOverrideRegionOverride' test.out

#- 25 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'LB6ZX4wJ' \
    --namespace $AB_NAMESPACE \
    --region 'NDPsOKzu' \
    --version 'd5GZbfil' \
    > test.out 2>&1
eval_tap $? 25 'DeleteOverrideRegionOverride' test.out

#- 26 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'DCoRDBvq' \
    --namespace $AB_NAMESPACE \
    --region 'lKg79G8f' \
    --version 'oyYYN9NP' \
    --body '{"buffer_count": 27, "buffer_percent": 42, "max_count": 9, "min_count": 89, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateOverrideRegionOverride' test.out

#- 27 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '17' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 27 'GetAllPodConfig' test.out

#- 28 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'ewWUcqA4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetPodConfig' test.out

#- 29 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '9tCR3LUf' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 14, "mem_limit": 82, "params": "oW8gqiSm"}' \
    > test.out 2>&1
eval_tap $? 29 'CreatePodConfig' test.out

#- 30 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name '0vlILs8x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeletePodConfig' test.out

#- 31 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'W3XGqwlP' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 84, "mem_limit": 6, "name": "MHXA073S", "params": "DBSU47Px"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdatePodConfig' test.out

#- 32 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'ZgcOaJrY' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 14}' \
    > test.out 2>&1
eval_tap $? 32 'AddPort' test.out

#- 33 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'jsgATSpS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeletePort' test.out

#- 34 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'hiRjXbL5' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "FZPss4Df", "port": 75}' \
    > test.out 2>&1
eval_tap $? 34 'UpdatePort' test.out

#- 35 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 's8R8giVP' \
    --sortBy 'createdAt' \
    --sortDirection 'desc' \
    --count '66' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 35 'ListImages' test.out

#- 36 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'yNRaK9aX' \
    --version '1FXN0Q2d' \
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
    --imageURI 'ddULSOAQ' \
    --version 'yXWcFYoe' \
    --versionPatch 'u80onoce' \
    > test.out 2>&1
eval_tap $? 39 'DeleteImagePatch' test.out

#- 40 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'vjlPgBXH' \
    > test.out 2>&1
eval_tap $? 40 'GetImageDetail' test.out

#- 41 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'ifHVXk0Q' \
    > test.out 2>&1
eval_tap $? 41 'GetImagePatches' test.out

#- 42 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'AiWVTbwC' \
    --versionPatch '5i5apekD' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatchDetail' test.out

#- 43 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'BBCpwn3G' \
    --count '69' \
    --offset '32' \
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
    --region 'b2RIn5ve' \
    > test.out 2>&1
eval_tap $? 45 'CountServerDetailed' test.out

#- 46 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'ListLocalServer' test.out

#- 47 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name '0GOQG0yd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteLocalServer' test.out

#- 48 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'vF8J8jPb' \
    > test.out 2>&1
eval_tap $? 48 'GetServer' test.out

#- 49 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'A0K8xJCI' \
    > test.out 2>&1
eval_tap $? 49 'DeleteServer' test.out

#- 50 GetServerLogs
samples/cli/sample-apps Dsmc getServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'nCVtmV4x' \
    > test.out 2>&1
eval_tap $? 50 'GetServerLogs' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'LmEfoS0Y' \
    --withServer 'true' \
    --count '91' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'Aly6A5kN' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'dZnK5PGk' \
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
    --version 'kgPRmkfu' \
    > test.out 2>&1
eval_tap $? 56 'ImageDetailClient' test.out

#- 57 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "dZhIOJG8"}' \
    > test.out 2>&1
eval_tap $? 57 'DeregisterLocalServer' test.out

#- 58 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "A2IviYlW", "ip": "v43IYCn5", "name": "TqFfqj3P", "port": 66}' \
    > test.out 2>&1
eval_tap $? 58 'RegisterLocalServer' test.out

#- 59 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "QIihmI1m", "pod_name": "80ifbnLL"}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterServer' test.out

#- 60 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "kbM51Qlz"}' \
    > test.out 2>&1
eval_tap $? 60 'ShutdownServer' test.out

#- 61 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'gHlyiw9V' \
    > test.out 2>&1
eval_tap $? 61 'GetServerSession' test.out

#- 62 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "zfDCZlfN", "configuration": "G8l4OlJ4", "deployment": "z2L359Au", "game_mode": "8avgDf5w", "matching_allies": [{"matching_parties": [{"party_attributes": {"F7EG3gOj": {}, "NIi9PKl7": {}, "7tR8OCBK": {}}, "party_id": "MMdeeI2o", "party_members": [{"user_id": "YTU64Tlk"}, {"user_id": "KzRhue5U"}, {"user_id": "eOHwTNbw"}]}, {"party_attributes": {"EkLPB3Za": {}, "9i87OYQC": {}, "L8B8qK3y": {}}, "party_id": "nQeB5Fq7", "party_members": [{"user_id": "0vm7E8vv"}, {"user_id": "wXa0aNt8"}, {"user_id": "HDFAReNl"}]}, {"party_attributes": {"6rZud6vp": {}, "4bQbUEi4": {}, "Z7ga6UJs": {}}, "party_id": "G5pybGzi", "party_members": [{"user_id": "L2LK9S54"}, {"user_id": "3vd9Wi29"}, {"user_id": "qoQLYBPc"}]}]}, {"matching_parties": [{"party_attributes": {"I5iW1I6l": {}, "NK3YvtA0": {}, "X1aYqBBF": {}}, "party_id": "MAdFyjwV", "party_members": [{"user_id": "W4fFr6PE"}, {"user_id": "VLt7EE5R"}, {"user_id": "yCw6SLWr"}]}, {"party_attributes": {"qPICzvRk": {}, "JZYJL2NP": {}, "4V0WsrCO": {}}, "party_id": "M5He3LL5", "party_members": [{"user_id": "2YDNoCSU"}, {"user_id": "bsJyMkTP"}, {"user_id": "iyqmV1g7"}]}, {"party_attributes": {"TreU7foF": {}, "1g1GgHe6": {}, "6sMnNo8t": {}}, "party_id": "CUJ0qYQ8", "party_members": [{"user_id": "K5D9O4HL"}, {"user_id": "2rjPN6G4"}, {"user_id": "k2RCpMTa"}]}]}, {"matching_parties": [{"party_attributes": {"0GGRUEs9": {}, "nvUgveOW": {}, "3AFn95R5": {}}, "party_id": "rKSDiVNm", "party_members": [{"user_id": "1dLHYbnP"}, {"user_id": "I8J2BAax"}, {"user_id": "8oBRGCmz"}]}, {"party_attributes": {"wBl8Rbvh": {}, "vyytmVgX": {}, "ElW2kL6r": {}}, "party_id": "5Pi9ys2l", "party_members": [{"user_id": "vh5GjSzF"}, {"user_id": "hwDCJgcn"}, {"user_id": "zuEczhef"}]}, {"party_attributes": {"iJvdmLb1": {}, "gWIw01CB": {}, "TIA2PnNH": {}}, "party_id": "gwG0ioGF", "party_members": [{"user_id": "Q5NSetux"}, {"user_id": "46nZUaCL"}, {"user_id": "FD32C4wK"}]}]}], "namespace": "tiaiZ4CK", "notification_payload": {}, "pod_name": "FKGjW7Lh", "region": "5ha2DHlj", "session_id": "BuB9uRCv"}' \
    > test.out 2>&1
eval_tap $? 62 'CreateSession' test.out

#- 63 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "7XzV83RV"}' \
    > test.out 2>&1
eval_tap $? 63 'ClaimServer' test.out

#- 64 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'LtLl7yus' \
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
    --region 'Ray4ipep' \
    > test.out 2>&1
eval_tap $? 67 'ListProvidersByRegion' test.out

#- 68 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 68 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE