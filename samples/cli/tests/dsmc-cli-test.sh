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
    --body '{"artifactPath": "4RPOMB0a", "image": "1hjTlBMH", "namespace": "PussVYKl", "persistent": true, "version": "byX4h9Pu"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "s3NESR60", "dockerPath": "KjZZfPuv", "image": "CA5WtpLh", "imageSize": 97, "namespace": "zzn46AuS", "persistent": false, "version": "1MW0Rs3Q"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "M13utqEr", "dockerPath": "u1SookQ0", "image": "07a20sf4", "imageSize": 83, "namespace": "H00MHi9s", "patchVersion": "dCzHQa7O", "persistent": true, "version": "djRbjopt"}' \
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
    --body '{"claim_timeout": 99, "creation_timeout": 14, "default_version": "DLU2lpgu", "port": 95, "ports": {"ZNqKPmrD": 23, "wMXUTLf5": 26, "YrTkhSze": 0}, "protocol": "D3rAOmYH", "providers": ["T8XNOodF", "tPRTz6R5", "QKb3k61r"], "session_timeout": 53, "unreachable_timeout": 55}' \
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
    --body '{"claim_timeout": 75, "creation_timeout": 86, "default_version": "LzdpbCZU", "port": 75, "protocol": "AB7yq9qu", "providers": ["C9QCupQ7", "XZht6fbT", "AtduL0gF"], "session_timeout": 76, "unreachable_timeout": 29}' \
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
    --name 'n7mCed13' \
    --count '35' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'KPdgpvkh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'lSXkjSCX' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 28, "buffer_percent": 40, "configuration": "XbxbAFvc", "enable_region_overrides": true, "game_version": "RaefP9qH", "max_count": 68, "min_count": 10, "overrides": {"Kdf5eRAO": {"buffer_count": 34, "buffer_percent": 74, "configuration": "2FHtwP06", "enable_region_overrides": false, "game_version": "DuNDui48", "max_count": 42, "min_count": 7, "name": "7cflR2Oj", "region_overrides": {"WiIW5PWx": {"buffer_count": 11, "buffer_percent": 42, "max_count": 76, "min_count": 35, "name": "HD61ZbzW", "unlimited": true, "use_buffer_percent": false}, "jMG6gs1A": {"buffer_count": 27, "buffer_percent": 65, "max_count": 69, "min_count": 34, "name": "SoUApwMC", "unlimited": true, "use_buffer_percent": false}, "4G7Nmhd6": {"buffer_count": 63, "buffer_percent": 11, "max_count": 79, "min_count": 66, "name": "kclUwOkq", "unlimited": true, "use_buffer_percent": false}}, "regions": ["xeNQheI4", "9EOWzjz9", "hZL08YR0"], "session_timeout": 3, "unlimited": true, "use_buffer_percent": true}, "tRTwwnuJ": {"buffer_count": 76, "buffer_percent": 90, "configuration": "NXtVIMVF", "enable_region_overrides": true, "game_version": "dm4U48tg", "max_count": 78, "min_count": 31, "name": "iirU8cCA", "region_overrides": {"05EC47c7": {"buffer_count": 61, "buffer_percent": 19, "max_count": 94, "min_count": 58, "name": "bhuklr5e", "unlimited": true, "use_buffer_percent": true}, "at0ynxkk": {"buffer_count": 15, "buffer_percent": 25, "max_count": 2, "min_count": 96, "name": "OCkMtFtC", "unlimited": false, "use_buffer_percent": false}, "BNdYWyKd": {"buffer_count": 26, "buffer_percent": 82, "max_count": 48, "min_count": 76, "name": "8AdUo9yR", "unlimited": true, "use_buffer_percent": true}}, "regions": ["9OnlWI6n", "L6XBiq1n", "ain0EaCo"], "session_timeout": 52, "unlimited": true, "use_buffer_percent": false}, "VPqlH9FF": {"buffer_count": 6, "buffer_percent": 10, "configuration": "vJ0eR34l", "enable_region_overrides": false, "game_version": "kBHdxL0O", "max_count": 51, "min_count": 80, "name": "uurUo875", "region_overrides": {"PJ0uVXxq": {"buffer_count": 30, "buffer_percent": 62, "max_count": 42, "min_count": 75, "name": "1GgIY3Dp", "unlimited": false, "use_buffer_percent": true}, "OIuiTjLw": {"buffer_count": 37, "buffer_percent": 80, "max_count": 16, "min_count": 21, "name": "lShTlB99", "unlimited": true, "use_buffer_percent": true}, "mU3Yay4v": {"buffer_count": 56, "buffer_percent": 94, "max_count": 47, "min_count": 42, "name": "E7GQc8y7", "unlimited": true, "use_buffer_percent": true}}, "regions": ["cvG6vH7U", "tmAzVdbo", "SDqieqeq"], "session_timeout": 42, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"HJfzNdhu": {"buffer_count": 15, "buffer_percent": 13, "max_count": 13, "min_count": 62, "name": "AaK7zUz1", "unlimited": true, "use_buffer_percent": true}, "EccnOoLg": {"buffer_count": 100, "buffer_percent": 83, "max_count": 17, "min_count": 99, "name": "cxaYlISy", "unlimited": false, "use_buffer_percent": true}, "Y5zpFwS5": {"buffer_count": 63, "buffer_percent": 12, "max_count": 9, "min_count": 70, "name": "H6cVTixz", "unlimited": true, "use_buffer_percent": true}}, "regions": ["dpoWCsAC", "j6uuNzh2", "RgLaZq6o"], "session_timeout": 92, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment '89igwPBr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'P1BsbSVB' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 72, "buffer_percent": 22, "configuration": "Uxz0dJnD", "enable_region_overrides": false, "game_version": "HucPftJO", "max_count": 32, "min_count": 28, "regions": ["xZQYxk5R", "y2fbj4ba", "OjpyiqWN"], "session_timeout": 43, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'jbXfun1F' \
    --namespace $AB_NAMESPACE \
    --region 'm111UKYe' \
    --body '{"buffer_count": 88, "buffer_percent": 72, "max_count": 59, "min_count": 10, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'TToA8Upb' \
    --namespace $AB_NAMESPACE \
    --region 'g1AMSSh8' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'WT0Fti0q' \
    --namespace $AB_NAMESPACE \
    --region 'lgwfuSlR' \
    --body '{"buffer_count": 14, "buffer_percent": 86, "max_count": 17, "min_count": 21, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'QZfCcgMt' \
    --namespace $AB_NAMESPACE \
    --version 'DxavhejC' \
    --body '{"buffer_count": 54, "buffer_percent": 45, "configuration": "3WYi2bk0", "enable_region_overrides": false, "game_version": "j83CJN4Y", "max_count": 72, "min_count": 33, "region_overrides": {"Put5kU2q": {"buffer_count": 94, "buffer_percent": 46, "max_count": 31, "min_count": 36, "name": "fjEmQZ51", "unlimited": true, "use_buffer_percent": false}, "TFxoy7v6": {"buffer_count": 74, "buffer_percent": 68, "max_count": 34, "min_count": 73, "name": "u106ghNz", "unlimited": true, "use_buffer_percent": true}, "2AQPxaxm": {"buffer_count": 76, "buffer_percent": 95, "max_count": 6, "min_count": 37, "name": "uSseB0KR", "unlimited": false, "use_buffer_percent": true}}, "regions": ["E5VMTNWo", "O5oN41i5", "XO3CBvoe"], "session_timeout": 9, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'rKYBXwz5' \
    --namespace $AB_NAMESPACE \
    --version 'SQMxpIiq' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'O3gMxL2W' \
    --namespace $AB_NAMESPACE \
    --version 'MOI6X53V' \
    --body '{"buffer_count": 28, "buffer_percent": 94, "configuration": "MOqVWmme", "enable_region_overrides": true, "game_version": "ztEILxnX", "max_count": 62, "min_count": 42, "regions": ["MJALpoy9", "pSKxM3ar", "Z0Z0rvcG"], "session_timeout": 48, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'QfwlFbxy' \
    --namespace $AB_NAMESPACE \
    --region 'iZQ5A8fp' \
    --version 'Ny6UIurL' \
    --body '{"buffer_count": 24, "buffer_percent": 72, "max_count": 71, "min_count": 0, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'rG6oQ5zM' \
    --namespace $AB_NAMESPACE \
    --region 'KvOkmBoP' \
    --version 'YvWC42sO' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '0kQblX0I' \
    --namespace $AB_NAMESPACE \
    --region '5iNFmBnt' \
    --version 'bwSqyBX6' \
    --body '{"buffer_count": 26, "buffer_percent": 85, "max_count": 40, "min_count": 56, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '9' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name '3nZWINSK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '71uzmYVJ' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 83, "mem_limit": 74, "params": "P41TggoV"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'oeoKA8R1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name '8yQ5faPD' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 99, "mem_limit": 29, "name": "D2wrozXN", "params": "zWQHFscx"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'yNm1SkP9' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 30}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'uP1J5i9C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'k5TViwd2' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "TgCTRY6f", "port": 63}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'QcSgllOQ' \
    --sortBy 'updatedAt' \
    --sortDirection 'desc' \
    --count '69' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI '8K82XeE8' \
    --version 'nrRXXnX5' \
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
    --imageURI 'ullxTypr' \
    --version 'X2HkGZNL' \
    --versionPatch '8cBIVC9w' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'CVTdAJXB' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'G0AGVfNF' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'oKINp9j2' \
    --versionPatch 'pR4pfkuo' \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'dnTfVOhZ' \
    --count '7' \
    --offset '83' \
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
    --region 'ihyo7Lk5' \
    > test.out 2>&1
eval_tap $? 46 'CountServerDetailed' test.out

#- 47 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'ListLocalServer' test.out

#- 48 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'ZAEhKkfu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'Z6Nvg4am' \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'omJqsAkb' \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'APDEQjHT' \
    --withServer 'false' \
    --count '72' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'lB5oOW0C' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'fxIoKdze' \
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
    --version 'GA0H3FOx' \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "WaMo6q5w"}' \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "dOuHcvfR", "ip": "fHMUxNfI", "name": "8JhAkCqf", "port": 44}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "TxBNywpP", "pod_name": "wCj8Th7Q"}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "Sl6nhJoz"}' \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 's3vauFpn' \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "4EgO30jK", "configuration": "78kf1sRs", "deployment": "vmcsH4MB", "game_mode": "SWTZioqf", "matching_allies": [{"matching_parties": [{"party_attributes": {"19UFdhiC": {}, "a51nQ35D": {}, "c0EXjAol": {}}, "party_id": "OeQ6HMhW", "party_members": [{"user_id": "se05BjV6"}, {"user_id": "sLb7a8MR"}, {"user_id": "hHckApaS"}]}, {"party_attributes": {"IxF523j8": {}, "DljNki20": {}, "hAzZXIcA": {}}, "party_id": "HIkPwy3Z", "party_members": [{"user_id": "v7vSMWZp"}, {"user_id": "fIX1IEd3"}, {"user_id": "7V9yqF79"}]}, {"party_attributes": {"l9aEdgpo": {}, "TVEQi8yL": {}, "Wt0pocoR": {}}, "party_id": "8Bgo5NIi", "party_members": [{"user_id": "orFii5oy"}, {"user_id": "tovBPtkE"}, {"user_id": "RKfkP2TC"}]}]}, {"matching_parties": [{"party_attributes": {"lVHn9Q49": {}, "8e5MAkN7": {}, "hanlsZAZ": {}}, "party_id": "w486rWGN", "party_members": [{"user_id": "ltGY6tVr"}, {"user_id": "KoXBH4yp"}, {"user_id": "dB9vo9aR"}]}, {"party_attributes": {"JFVwm9Ng": {}, "SeBBSDBK": {}, "m8O75kbB": {}}, "party_id": "2LxUkMbd", "party_members": [{"user_id": "MqACxVtR"}, {"user_id": "oUZ5fNk1"}, {"user_id": "5Nrf5QJQ"}]}, {"party_attributes": {"GwmAUsJw": {}, "JQ9URACk": {}, "SgyutRNq": {}}, "party_id": "T5dGhFfZ", "party_members": [{"user_id": "pUjgOJ6q"}, {"user_id": "gGZRBGZk"}, {"user_id": "cBuoRKVY"}]}]}, {"matching_parties": [{"party_attributes": {"8wTMeYmK": {}, "HGqpPZlJ": {}, "tYmaMlDh": {}}, "party_id": "UbYtRNoz", "party_members": [{"user_id": "8mp9qmCD"}, {"user_id": "z5ekTt4g"}, {"user_id": "8eGhfJq8"}]}, {"party_attributes": {"th2IhgOJ": {}, "VIQeCySU": {}, "xbv2e1mS": {}}, "party_id": "XTvo2Ot8", "party_members": [{"user_id": "BMq0sV6Z"}, {"user_id": "WYGitGnm"}, {"user_id": "TIoyx0Us"}]}, {"party_attributes": {"0J5Glv4l": {}, "KaIVb41I": {}, "zI7YFRfs": {}}, "party_id": "IJcHpPfB", "party_members": [{"user_id": "ru6q0UCe"}, {"user_id": "EMF1pZdH"}, {"user_id": "oGGGGI4b"}]}]}], "namespace": "OCCvFvuF", "notification_payload": {}, "pod_name": "7PrSroCt", "region": "WLWDkw7K", "session_id": "jOwC4MsA"}' \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "upnvbTbM"}' \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'kLEz81jB' \
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
    --region 'bLr27hZe' \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE