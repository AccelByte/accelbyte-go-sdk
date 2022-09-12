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
    --body '{"artifactPath": "3CLDxzpG", "image": "meKTjYDh", "namespace": "PYVWKjM7", "persistent": false, "version": "xlYawjE9"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "KAGtfxPZ", "dockerPath": "7HO7tDJf", "image": "ilEH32Kz", "imageSize": 27, "namespace": "OfHS6por", "persistent": false, "version": "PWeCNDZl"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "VARszhmL", "dockerPath": "Qv0r0Ykf", "image": "H4IGRfag", "imageSize": 73, "namespace": "KfGorP8r", "patchVersion": "9KHbKHat", "persistent": true, "version": "A7mCqRqh"}' \
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
    --body '{"claim_timeout": 51, "creation_timeout": 69, "default_version": "OYaK9buy", "port": 58, "ports": {"nf3P2iXe": 50, "W7ZWEKBq": 15, "LVxYTGdg": 36}, "protocol": "vjWJh8Zu", "providers": ["wRMuTNvt", "U3n8OSdN", "94ZrDl0R"], "session_timeout": 49, "unreachable_timeout": 32}' \
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
    --body '{"claim_timeout": 67, "creation_timeout": 82, "default_version": "l1jsgSvO", "port": 35, "protocol": "T04yQMyI", "providers": ["QnocDW4r", "slVBE9zo", "nEk7YnCV"], "session_timeout": 78, "unreachable_timeout": 25}' \
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
    --name 'Le0MJ64R' \
    --count '98' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 13 'GetAllDeployment' test.out

#- 14 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'Agl7Eg3T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetDeployment' test.out

#- 15 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment '4P3NtRbU' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 19, "buffer_percent": 45, "configuration": "xG7pb32c", "enable_region_overrides": true, "game_version": "bkZPnn1o", "max_count": 6, "min_count": 12, "overrides": {"wApbfhfY": {"buffer_count": 49, "buffer_percent": 24, "configuration": "ni1jved4", "enable_region_overrides": false, "game_version": "BYdzAgYM", "max_count": 66, "min_count": 71, "name": "CCw44V3z", "region_overrides": {"pEY3CltD": {"buffer_count": 99, "buffer_percent": 26, "max_count": 63, "min_count": 26, "name": "eW4a0OIF", "unlimited": true, "use_buffer_percent": false}, "vL2Jscf3": {"buffer_count": 18, "buffer_percent": 72, "max_count": 53, "min_count": 93, "name": "MskihfOE", "unlimited": false, "use_buffer_percent": true}, "KrBLFMEz": {"buffer_count": 70, "buffer_percent": 88, "max_count": 46, "min_count": 28, "name": "BXzaJ0U5", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Cllcqrda", "8VjHOUyf", "RAxEvTU6"], "session_timeout": 45, "unlimited": true, "use_buffer_percent": true}, "fCmLcvcz": {"buffer_count": 60, "buffer_percent": 89, "configuration": "0ibU7xIV", "enable_region_overrides": false, "game_version": "mVlqBo1J", "max_count": 80, "min_count": 69, "name": "xK00JFUE", "region_overrides": {"EUAnbvyn": {"buffer_count": 2, "buffer_percent": 68, "max_count": 52, "min_count": 32, "name": "vWtDtNQh", "unlimited": false, "use_buffer_percent": true}, "ASsussNL": {"buffer_count": 8, "buffer_percent": 88, "max_count": 79, "min_count": 82, "name": "e5dq0jV7", "unlimited": true, "use_buffer_percent": false}, "EjlE4uWF": {"buffer_count": 25, "buffer_percent": 98, "max_count": 62, "min_count": 83, "name": "y7ROJ81U", "unlimited": false, "use_buffer_percent": false}}, "regions": ["FRW1COuE", "6tNE2Vc1", "h1jklug6"], "session_timeout": 10, "unlimited": false, "use_buffer_percent": true}, "pHODoeZx": {"buffer_count": 25, "buffer_percent": 84, "configuration": "dmENjzpa", "enable_region_overrides": false, "game_version": "0kGhoX4O", "max_count": 100, "min_count": 46, "name": "CSILePO0", "region_overrides": {"s3lK9RP0": {"buffer_count": 7, "buffer_percent": 17, "max_count": 98, "min_count": 22, "name": "itSKThpy", "unlimited": false, "use_buffer_percent": true}, "Ix9CKC8I": {"buffer_count": 88, "buffer_percent": 28, "max_count": 51, "min_count": 72, "name": "KKm6D9m9", "unlimited": false, "use_buffer_percent": true}, "3MEAZGsy": {"buffer_count": 88, "buffer_percent": 8, "max_count": 84, "min_count": 17, "name": "vISNpxi9", "unlimited": false, "use_buffer_percent": true}}, "regions": ["t1J3imgl", "X3o9SpEa", "gZIFyy42"], "session_timeout": 14, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"X7BmZtXR": {"buffer_count": 86, "buffer_percent": 31, "max_count": 30, "min_count": 16, "name": "7geFRqAR", "unlimited": true, "use_buffer_percent": false}, "sj1aSz3y": {"buffer_count": 85, "buffer_percent": 12, "max_count": 80, "min_count": 96, "name": "l2fRGEG5", "unlimited": false, "use_buffer_percent": false}, "aC0g2ee1": {"buffer_count": 27, "buffer_percent": 11, "max_count": 19, "min_count": 66, "name": "yRGDEpd5", "unlimited": false, "use_buffer_percent": false}}, "regions": ["1RxStjAM", "5T23thRi", "P1QMil8t"], "session_timeout": 89, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 15 'CreateDeployment' test.out

#- 16 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'RYQHCIkd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteDeployment' test.out

#- 17 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'gZ5rh8cw' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 89, "buffer_percent": 5, "configuration": "L9k7ERly", "enable_region_overrides": true, "game_version": "bBlRnBuI", "max_count": 66, "min_count": 2, "regions": ["loaLWTcR", "ZKxAlSdu", "2ZG4TDry"], "session_timeout": 93, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateDeployment' test.out

#- 18 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'z1Ja0XHS' \
    --namespace $AB_NAMESPACE \
    --region 'pXYhEnnW' \
    --body '{"buffer_count": 18, "buffer_percent": 47, "max_count": 28, "min_count": 97, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'CreateRootRegionOverride' test.out

#- 19 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'pgpCKgxf' \
    --namespace $AB_NAMESPACE \
    --region '9iuGmEjG' \
    > test.out 2>&1
eval_tap $? 19 'DeleteRootRegionOverride' test.out

#- 20 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment '06NSClgh' \
    --namespace $AB_NAMESPACE \
    --region 'tXUwX8Yq' \
    --body '{"buffer_count": 51, "buffer_percent": 0, "max_count": 86, "min_count": 99, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateRootRegionOverride' test.out

#- 21 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'XPIqg0N4' \
    --namespace $AB_NAMESPACE \
    --version 'dSLlR7WN' \
    --body '{"buffer_count": 2, "buffer_percent": 93, "configuration": "CfliN0d4", "enable_region_overrides": false, "game_version": "ut8XMqOc", "max_count": 88, "min_count": 59, "region_overrides": {"6vjaNftB": {"buffer_count": 57, "buffer_percent": 82, "max_count": 65, "min_count": 7, "name": "Ays5rI86", "unlimited": false, "use_buffer_percent": true}, "kilw5A0P": {"buffer_count": 54, "buffer_percent": 30, "max_count": 63, "min_count": 75, "name": "FnnS106P", "unlimited": true, "use_buffer_percent": false}, "f5Ewk6JR": {"buffer_count": 82, "buffer_percent": 22, "max_count": 100, "min_count": 93, "name": "ZATnvRe7", "unlimited": false, "use_buffer_percent": false}}, "regions": ["VfMtSu6H", "uaJ4kWeR", "i3KgLTm8"], "session_timeout": 98, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'CreateDeploymentOverride' test.out

#- 22 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'cRnFXQzP' \
    --namespace $AB_NAMESPACE \
    --version 'lpaiRqqU' \
    > test.out 2>&1
eval_tap $? 22 'DeleteDeploymentOverride' test.out

#- 23 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'XQXnaiVY' \
    --namespace $AB_NAMESPACE \
    --version 'Mz7pKdC5' \
    --body '{"buffer_count": 17, "buffer_percent": 11, "configuration": "uLh0cA2R", "enable_region_overrides": true, "game_version": "C0srYokC", "max_count": 61, "min_count": 93, "regions": ["3Us4rCB7", "eY2LSGZj", "q2Uj0M6x"], "session_timeout": 4, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateDeploymentOverride' test.out

#- 24 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'YEGRwGTE' \
    --namespace $AB_NAMESPACE \
    --region 'lrFFG9JW' \
    --version 'CBMvQiR0' \
    --body '{"buffer_count": 25, "buffer_percent": 22, "max_count": 2, "min_count": 94, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'CreateOverrideRegionOverride' test.out

#- 25 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'WbkgWPXP' \
    --namespace $AB_NAMESPACE \
    --region 'F0dToj51' \
    --version 'OdK0DD2v' \
    > test.out 2>&1
eval_tap $? 25 'DeleteOverrideRegionOverride' test.out

#- 26 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'WtJxDYGl' \
    --namespace $AB_NAMESPACE \
    --region 'Dk00XQZn' \
    --version 'QOUgxrZ0' \
    --body '{"buffer_count": 98, "buffer_percent": 60, "max_count": 77, "min_count": 10, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateOverrideRegionOverride' test.out

#- 27 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '7' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 27 'GetAllPodConfig' test.out

#- 28 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'DdK9Urk5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetPodConfig' test.out

#- 29 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '8qDn9ojD' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 40, "mem_limit": 23, "params": "T3eWR9SU"}' \
    > test.out 2>&1
eval_tap $? 29 'CreatePodConfig' test.out

#- 30 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'H5AVruh5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeletePodConfig' test.out

#- 31 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'IxkxmQ4e' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 43, "mem_limit": 99, "name": "GEQFKErN", "params": "gwXQXC3T"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdatePodConfig' test.out

#- 32 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'VtJC7Oss' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 91}' \
    > test.out 2>&1
eval_tap $? 32 'AddPort' test.out

#- 33 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '9ePfKV9S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeletePort' test.out

#- 34 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'IWCY83uo' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "WLOwsy4Q", "port": 72}' \
    > test.out 2>&1
eval_tap $? 34 'UpdatePort' test.out

#- 35 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'MK81yyzq' \
    --sortBy 'updatedAt' \
    --sortDirection 'desc' \
    --count '42' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 35 'ListImages' test.out

#- 36 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'jz7zGD1n' \
    --version 'MF2AVVQS' \
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
    --imageURI 'acSrQ3kk' \
    --version 'aV6HFxrR' \
    --versionPatch '0W7yTBIJ' \
    > test.out 2>&1
eval_tap $? 39 'DeleteImagePatch' test.out

#- 40 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'jjDlRfxr' \
    > test.out 2>&1
eval_tap $? 40 'GetImageDetail' test.out

#- 41 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'N78rSxVy' \
    > test.out 2>&1
eval_tap $? 41 'GetImagePatches' test.out

#- 42 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'jiFFMcBm' \
    --versionPatch 'iESwVZmu' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatchDetail' test.out

#- 43 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'XdxTJlHY' \
    --count '100' \
    --offset '96' \
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
    --region 'Y7aR7Lia' \
    > test.out 2>&1
eval_tap $? 45 'CountServerDetailed' test.out

#- 46 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'ListLocalServer' test.out

#- 47 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name '0rDCik6G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteLocalServer' test.out

#- 48 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'Dahu1VVr' \
    > test.out 2>&1
eval_tap $? 48 'GetServer' test.out

#- 49 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName '0LfScG34' \
    > test.out 2>&1
eval_tap $? 49 'DeleteServer' test.out

#- 50 GetServerLogs
samples/cli/sample-apps Dsmc getServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 's6Ccf31B' \
    > test.out 2>&1
eval_tap $? 50 'GetServerLogs' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'gr2V2wMd' \
    --withServer 'true' \
    --count '67' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'AlLJ0EOh' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'RlDwQVAm' \
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
    --version '2Xzl7BIg' \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "LMaiqoBn"}' \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "VSue4iA6", "ip": "paI4DuV9", "name": "UBsbYvvb", "port": 41}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "1C9tyb0C", "pod_name": "eh8XErqr"}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "9INX66uq"}' \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'i1OMlXsH' \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "ovY2JO4S", "configuration": "wSfe38Di", "deployment": "2JGLKyWJ", "game_mode": "wuop9INT", "matching_allies": [{"matching_parties": [{"party_attributes": {"rQIQpaLW": {}, "yqgcATtQ": {}, "YEEh2zdi": {}}, "party_id": "Z9iZrBqp", "party_members": [{"user_id": "u0TjursY"}, {"user_id": "M3qzu1HO"}, {"user_id": "qtYdKixL"}]}, {"party_attributes": {"p2PSPe43": {}, "rhM6uwlz": {}, "ulAd2OKB": {}}, "party_id": "vNRYNnQ9", "party_members": [{"user_id": "T3sDIjHf"}, {"user_id": "yaX3O50t"}, {"user_id": "wNJa56yU"}]}, {"party_attributes": {"P9Wsx22a": {}, "54X0dPyG": {}, "46Y0Prpg": {}}, "party_id": "Q2DBZJMb", "party_members": [{"user_id": "VerSGN3V"}, {"user_id": "9qYyYAHa"}, {"user_id": "T0sfJESf"}]}]}, {"matching_parties": [{"party_attributes": {"3yM7o4HA": {}, "ugsMLlb9": {}, "OHielq68": {}}, "party_id": "220MbkMB", "party_members": [{"user_id": "B05iHKze"}, {"user_id": "p2gD8toB"}, {"user_id": "6x8bDf6r"}]}, {"party_attributes": {"zpWuPeXc": {}, "wY9NRYtg": {}, "8QOaaWvn": {}}, "party_id": "WBHhrno4", "party_members": [{"user_id": "bMrZHvIR"}, {"user_id": "xkls3nRh"}, {"user_id": "PgbfY0c1"}]}, {"party_attributes": {"93oxixEp": {}, "Jsiizfdw": {}, "X2l2K4uc": {}}, "party_id": "CMD1h0J8", "party_members": [{"user_id": "iG3nNnSy"}, {"user_id": "83krrF0Q"}, {"user_id": "6Y2AmXfn"}]}]}, {"matching_parties": [{"party_attributes": {"jPn8raX9": {}, "AmnOso1b": {}, "RTzrkSrK": {}}, "party_id": "4Wet7nYT", "party_members": [{"user_id": "QdLhqL0Q"}, {"user_id": "eOUlDXy6"}, {"user_id": "r3NmA7AP"}]}, {"party_attributes": {"2V57NOD4": {}, "IwcvOhVC": {}, "qpA1jY9o": {}}, "party_id": "FNIHT2SX", "party_members": [{"user_id": "WmDtKGaw"}, {"user_id": "dekjN0LC"}, {"user_id": "Rcqn5eRw"}]}, {"party_attributes": {"APDK7ML8": {}, "4sr94h09": {}, "lQmXnnOh": {}}, "party_id": "Bi9RIjYK", "party_members": [{"user_id": "O95pRdGG"}, {"user_id": "9eqNvnFt"}, {"user_id": "TPpX0P2W"}]}]}], "namespace": "pVkQ2IWe", "notification_payload": {}, "pod_name": "6LEmW2K7", "region": "jpFbx13u", "session_id": "fSJF25Uo"}' \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "MrAql7tU"}' \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '1eTgB9fN' \
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
    --region 'OSSZvXS0' \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE