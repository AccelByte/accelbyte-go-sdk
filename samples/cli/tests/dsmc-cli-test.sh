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
echo "1..82"

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
    --body '{"artifactPath": "FzchguKvuP11j0g6", "coreDumpEnabled": true, "image": "QygIcP7hiytc11Xj", "imageReplicationsMap": {"15UrPusewVrBHaGx": {"failure_code": "RmHnTJQvEnTl6xN8", "region": "PouDaYPX1cqO0UjX", "status": "B9WanVAnxtaTwNK5", "uri": "giyIlQ2ik4pq6XMg"}, "TFiMfxK4Y57bUbtv": {"failure_code": "YSvLn8JYBQMGA9Ms", "region": "bJV2KW5uMyS5RPTw", "status": "tAwacu3raWvAQAWQ", "uri": "Y6snMOLHyMWKmdZX"}, "SV5VodMS9LSlTUzk": {"failure_code": "6KJbzrrxbEA4f5J9", "region": "g3tLkkwS304v8YQZ", "status": "cWTIsxeffSa6EP2Q", "uri": "A0hS0EOfHhrUFUFM"}}, "namespace": "vAA3bXcgencfSH34", "patchVersion": "GlUk95A83GwVZmRt", "persistent": true, "version": "tbK7doJEXqKkTjZs"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "B8qag86fF8pMWSNf", "coreDumpEnabled": false, "dockerPath": "qcEtTw0qnPorixV8", "image": "V0hTeg0xufspFouQ", "imageSize": 66, "namespace": "yxwJTlUmJlRRa9dt", "persistent": false, "ulimitFileSize": 30, "version": "aLxeoAxJp0XcRHve"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "IlUEXV2E8pZLaRlS", "coreDumpEnabled": true, "dockerPath": "zFj3xaNvrQXkTMhf", "image": "gipNkueju1QKNarn", "imageSize": 47, "namespace": "y0GhifplNiS9cGzE", "patchVersion": "4pYfJi19JTQxwKJl", "persistent": false, "ulimitFileSize": 62, "uploaderFlag": "pg0hw5CS7y4OQPkt", "version": "uc8Vl4yuRVMsRyJW"}' \
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
    --body '{"claim_timeout": 71, "creation_timeout": 65, "default_version": "7WZjvIBZANzcyEd2", "port": 46, "ports": {"eguIZ7X5O4Gql69S": 18, "SMPwbpfVaRvX6z6m": 98, "flOLso8bnHjejmHc": 65}, "protocol": "m4IP52f9QbqSCzVR", "providers": ["uTSQhT86XGzH83Sb", "Zp4zKy4cOA64cbtI", "zRHFFJBE5pUx9k0b"], "session_timeout": 55, "unreachable_timeout": 57}' \
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
    --body '{"claim_timeout": 2, "creation_timeout": 17, "default_version": "82eZgWe6rmds3ujS", "port": 30, "protocol": "rSxit6YohbA3weFc", "providers": ["ltwZdWF2XTqVw1xn", "tFl5VsRKlYIZNItP", "Fb1oJHSjxM8AarEJ"], "session_timeout": 33, "unreachable_timeout": 96}' \
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
    --name 'ZiBslVsdMDqYP82i' \
    --count '61' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'GkRwq4Uva4J5WYsI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'I2oVZJaw6kJSGM4k' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 24, "buffer_percent": 50, "configuration": "241ap4IetcsEHgws", "enable_region_overrides": false, "extendable_session": true, "game_version": "5bye8qo5C1PXVCBH", "max_count": 39, "min_count": 39, "overrides": {"ddU8SeQ6YAR0O8gX": {"buffer_count": 8, "buffer_percent": 16, "configuration": "WqoTxscCn5OMjudc", "enable_region_overrides": false, "extendable_session": false, "game_version": "B6fpI0dcJubrXYSC", "max_count": 91, "min_count": 29, "name": "tQkr7mBfcxxLNAvw", "region_overrides": {"Rcg1HEglcRyIrb1E": {"buffer_count": 0, "buffer_percent": 82, "max_count": 98, "min_count": 34, "name": "o8YxkwqIqbo9FsLU", "unlimited": true, "use_buffer_percent": true}, "K9fz5xZZKZd6UMQs": {"buffer_count": 43, "buffer_percent": 22, "max_count": 78, "min_count": 96, "name": "PdnuSlYEei6D3QS5", "unlimited": true, "use_buffer_percent": true}, "0Z7yZk2Dr2aiCRJT": {"buffer_count": 89, "buffer_percent": 76, "max_count": 53, "min_count": 92, "name": "apiIWHY6ywVQLuFL", "unlimited": false, "use_buffer_percent": false}}, "regions": ["yjABj872TlUaO1vK", "Z2jEzsygfFzZ8I6C", "Qdl5GHEHpJE4X5kW"], "session_timeout": 38, "unlimited": true, "use_buffer_percent": false}, "sTZwb1PqZwfGtRAZ": {"buffer_count": 57, "buffer_percent": 58, "configuration": "aRgKvhHE0zz7hgPV", "enable_region_overrides": false, "extendable_session": true, "game_version": "aG9PY7I4amZs7Tub", "max_count": 36, "min_count": 73, "name": "s9CQH0dY1xNGHGLH", "region_overrides": {"iYAsTsUBVemYWEZr": {"buffer_count": 9, "buffer_percent": 57, "max_count": 85, "min_count": 48, "name": "sNc9OhZwcrwatriR", "unlimited": true, "use_buffer_percent": true}, "kSevOPCACF8C8bZa": {"buffer_count": 27, "buffer_percent": 49, "max_count": 0, "min_count": 92, "name": "DW41E4a1k61NcKgo", "unlimited": false, "use_buffer_percent": true}, "WgUc0AbDb6YAivKf": {"buffer_count": 48, "buffer_percent": 38, "max_count": 81, "min_count": 99, "name": "G4h8PpbMuxlfbL0F", "unlimited": true, "use_buffer_percent": true}}, "regions": ["to12L5JOEevgtKDD", "lpsjrbVvmXZPmoIP", "GhoaU6lLHjMgWPgJ"], "session_timeout": 57, "unlimited": false, "use_buffer_percent": true}, "1u5yHD7Xmww3NDut": {"buffer_count": 78, "buffer_percent": 73, "configuration": "oqg8l82Cve9QfFuy", "enable_region_overrides": false, "extendable_session": true, "game_version": "4EkIqxznjj5f1YGJ", "max_count": 49, "min_count": 11, "name": "XhlGQubtBEV96x80", "region_overrides": {"GDSv0ICLG86LjZui": {"buffer_count": 32, "buffer_percent": 45, "max_count": 86, "min_count": 39, "name": "MzX6Op0BT9N2DBv3", "unlimited": false, "use_buffer_percent": true}, "JeuxHdW38g8Z1dZS": {"buffer_count": 33, "buffer_percent": 40, "max_count": 96, "min_count": 82, "name": "hHZVK6qN9nib70VL", "unlimited": true, "use_buffer_percent": false}, "9efldrYQedOBktVf": {"buffer_count": 57, "buffer_percent": 14, "max_count": 29, "min_count": 57, "name": "2R33sDT1KcZbruek", "unlimited": true, "use_buffer_percent": false}}, "regions": ["3v1eaZifdpM8LwRm", "MDHUXbG21lme7ky0", "EKnpqd4ZXrmr9Xkv"], "session_timeout": 92, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"OcNuaygxv1lnx97a": {"buffer_count": 8, "buffer_percent": 34, "max_count": 85, "min_count": 9, "name": "dtOVsUZwhD7jZiZd", "unlimited": true, "use_buffer_percent": true}, "I26TJQjdtAY8CyFm": {"buffer_count": 48, "buffer_percent": 97, "max_count": 14, "min_count": 14, "name": "ttqyS22PxUP1YGbe", "unlimited": true, "use_buffer_percent": false}, "csd5KpFWAArVgqpS": {"buffer_count": 71, "buffer_percent": 49, "max_count": 47, "min_count": 17, "name": "vKNaZEzUdI33OVNe", "unlimited": true, "use_buffer_percent": true}}, "regions": ["5CohQlzp9p2RS5ya", "WNQEZ2BA6Hpzo3k3", "87AH8rCavLv9JT5B"], "session_timeout": 36, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'DLLRd1qUlFsdKQTC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'OJDtHOIGSZdoatgA' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 35, "buffer_percent": 73, "configuration": "UZXmMCnmDuMdKmJp", "enable_region_overrides": false, "extendable_session": true, "game_version": "uLPp5hoOTfH6jP5d", "max_count": 59, "min_count": 41, "regions": ["zLD0pJYtClmmT3hs", "J03AOGBPaLlsnLo0", "DdFluxZQzIVmMG46"], "session_timeout": 96, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'edMLaU4tyEtfkwBZ' \
    --namespace $AB_NAMESPACE \
    --region 'M1IX1GkOzugkgdmb' \
    --body '{"buffer_count": 68, "buffer_percent": 1, "max_count": 42, "min_count": 2, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment '5yk4y6dDPFiZZhvQ' \
    --namespace $AB_NAMESPACE \
    --region 'bcvUvsTi7RU8J8s8' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'HY9NlN8C3jIjCVDq' \
    --namespace $AB_NAMESPACE \
    --region 'SG6AOGTHxu28XIRv' \
    --body '{"buffer_count": 52, "buffer_percent": 9, "max_count": 24, "min_count": 98, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'bYhZbT2KTLm2BiMm' \
    --namespace $AB_NAMESPACE \
    --version '8WmpEJcPvhzWs0V3' \
    --body '{"buffer_count": 100, "buffer_percent": 8, "configuration": "wt13q3LR0v1Qkl51", "enable_region_overrides": true, "extendable_session": false, "game_version": "TXtb3IsbMKmRlgVe", "max_count": 30, "min_count": 75, "region_overrides": {"p7IrjUNWvWy8KVRl": {"buffer_count": 88, "buffer_percent": 25, "max_count": 92, "min_count": 69, "name": "rPoxQu6k2s7UpygA", "unlimited": true, "use_buffer_percent": false}, "fjmbxL6Aat9xyDkb": {"buffer_count": 8, "buffer_percent": 3, "max_count": 61, "min_count": 86, "name": "FvVo3zmGVE4NpTng", "unlimited": true, "use_buffer_percent": true}, "6ZGbpDs5dzHKO0lW": {"buffer_count": 45, "buffer_percent": 68, "max_count": 63, "min_count": 42, "name": "UzFbCJVrYAWtHXti", "unlimited": true, "use_buffer_percent": true}}, "regions": ["V5brX5VG0qpfY4F6", "zCugMrysY6nVWrnP", "hkzrXQXDoNODHdVo"], "session_timeout": 87, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'RoRaVyPhqY6YL6wn' \
    --namespace $AB_NAMESPACE \
    --version 'Yv1dNplz6AWdQmdP' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'hHpJYDocquI8ZrJW' \
    --namespace $AB_NAMESPACE \
    --version '4JKgbI99yD9aU38A' \
    --body '{"buffer_count": 97, "buffer_percent": 91, "configuration": "ujNgr7IzuFesL0Zc", "enable_region_overrides": false, "game_version": "NKc4rZ2ivcey7XM8", "max_count": 55, "min_count": 67, "regions": ["26fIxAAWTh4tOfqV", "CSixLD4lKVOY0eXq", "eehVZVYmdQRzbKfD"], "session_timeout": 91, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'fFxSM1yrrDD8aCQG' \
    --namespace $AB_NAMESPACE \
    --region 'qPrJ9kfEvitDHppu' \
    --version 'MWPFnvApVbuJrpI4' \
    --body '{"buffer_count": 46, "buffer_percent": 57, "max_count": 72, "min_count": 83, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'XKgGrHl7hds91KuS' \
    --namespace $AB_NAMESPACE \
    --region 'bQMcrDzHzPSiedqF' \
    --version 'Y8ALDXtWJQg1poOP' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'MRO1lUJR8zn6FcEt' \
    --namespace $AB_NAMESPACE \
    --region 'Wz5VzmZGStU7fNJM' \
    --version '8xmAeDJOg8nk5LUq' \
    --body '{"buffer_count": 27, "buffer_percent": 81, "max_count": 94, "min_count": 89, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '33' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'kFJFNN3qRDHjOSIn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'c2iGg2En83rmxxV9' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 47, "mem_limit": 86, "params": "syokNo4AoO3ArbVW"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'M100WgmsNHcobfrp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'zUbNEUujmQ2LKRb3' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 13, "mem_limit": 35, "name": "pCDfkhHiQSBcp0tB", "params": "TLO0HrVMpON0TVP3"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '7eCDJcMuaSuLjghL' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 6}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'ZRpmgakhmIj4LPwg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'IJ4DaPmURbyCfTyr' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "fhFOqb2gpe0TUdJ5", "port": 47}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'T6AGgY3kLWKTlMB2' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    --count '50' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'hQSr8RYoEiHRImIT' \
    --version 'M5aKjVKTNhJDDGmd' \
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
    --imageURI 'egg5MKelX9jCBQtL' \
    --version 'Y1uedlmxdBUM9fMr' \
    --versionPatch 'T9cjuW29h9iYnVk3' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'Uyr8n12OLDCAaPm8' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'WzV3MCu0VL7T1sfV' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'zoHR3KiADaZ3oxUA' \
    --versionPatch 'i7TYaZYZqbn0kShK' \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 GetRepository
samples/cli/sample-apps Dsmc getRepository \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'GetRepository' test.out

#- 45 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region '1f82XZUEht3TwqjK' \
    --count '68' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 45 'ListServer' test.out

#- 46 CountServer
samples/cli/sample-apps Dsmc countServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'CountServer' test.out

#- 47 CountServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace $AB_NAMESPACE \
    --region 'ZMNaNmwjgKaHBmlk' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'fEhnUxeJx0v6Xpmk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'HRrMIKD8dpjWfJTs' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName '8a21UE1rOkFHCU5x' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'd3lr5NxprlNnVhGg' \
    --withServer 'false' \
    --count '72' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region '9nsVGISiFkEol9A2' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'xGaAYfTbxTYENDNP' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "gqKUiyV6B7mil7qH", "repository": "SSUtuT3ykOqgzJpv"}' \
    > test.out 2>&1
eval_tap $? 55 'CreateRepository' test.out

#- 56 ExportConfigV1
samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'ExportConfigV1' test.out

#- 57 ImportConfigV1
samples/cli/sample-apps Dsmc importConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 57 'ImportConfigV1' test.out

#- 58 GetAllDeploymentClient
samples/cli/sample-apps Dsmc getAllDeploymentClient \
    --namespace $AB_NAMESPACE \
    --name 'd6wpfcJQJue0UR7K' \
    --count '59' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment '2QhBgMFmnjmNxuZq' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 99, "buffer_percent": 76, "configuration": "DjP7bnctp4vlSgIX", "enable_region_overrides": false, "extendable_session": true, "game_version": "rLv62cmO9dmu9IfY", "max_count": 38, "min_count": 5, "overrides": {"EEbdqWqA4U5WWXAS": {"buffer_count": 81, "buffer_percent": 67, "configuration": "l4sGs87iNcQWZxJ1", "enable_region_overrides": true, "extendable_session": true, "game_version": "MEPripTXN4OXTVNp", "max_count": 37, "min_count": 73, "name": "UWh2jPIoy7qwVasD", "region_overrides": {"DB7gCd5GafAQRcys": {"buffer_count": 64, "buffer_percent": 96, "max_count": 62, "min_count": 74, "name": "6vQJraT1jsAAKexf", "unlimited": false, "use_buffer_percent": true}, "b939HAYVLKp0Q4Jv": {"buffer_count": 61, "buffer_percent": 66, "max_count": 6, "min_count": 49, "name": "L4EvJmD8uzfoQf9a", "unlimited": false, "use_buffer_percent": false}, "VMrSqlYQPwfoRsUK": {"buffer_count": 13, "buffer_percent": 38, "max_count": 4, "min_count": 67, "name": "rw7PpZDR0NVeAbhz", "unlimited": true, "use_buffer_percent": false}}, "regions": ["n6VZEhCvluwDlPQe", "OzIFDk23JkIldxFl", "L3kN6rj5yyu688Uz"], "session_timeout": 48, "unlimited": true, "use_buffer_percent": false}, "61CtsPnkAWylXNVQ": {"buffer_count": 78, "buffer_percent": 10, "configuration": "yoBHVOgFf0CcffKl", "enable_region_overrides": false, "extendable_session": true, "game_version": "3xKmbyrZ1UpiF412", "max_count": 21, "min_count": 60, "name": "W3pSzLqCJqfVYjs8", "region_overrides": {"q25UJ01pG9GQO834": {"buffer_count": 53, "buffer_percent": 22, "max_count": 56, "min_count": 48, "name": "a5NERPyLbnkpM1LM", "unlimited": false, "use_buffer_percent": false}, "comk6IHmlenbx1Ob": {"buffer_count": 45, "buffer_percent": 68, "max_count": 96, "min_count": 28, "name": "454iiYMx1oIqFzvu", "unlimited": false, "use_buffer_percent": false}, "8l65nBeikppD2MEM": {"buffer_count": 57, "buffer_percent": 74, "max_count": 96, "min_count": 81, "name": "ypSNs8l3YRamn4vA", "unlimited": true, "use_buffer_percent": false}}, "regions": ["vSfToCWI6Ekp3VPe", "ujw5Q9QrNSHRmGiw", "EMecz2NPB6hv7TnM"], "session_timeout": 14, "unlimited": false, "use_buffer_percent": false}, "kBJe7J1qkqgLIQPo": {"buffer_count": 31, "buffer_percent": 79, "configuration": "hFUTUYRJO7BurJ9l", "enable_region_overrides": false, "extendable_session": true, "game_version": "tgOIiGbjnORrISq5", "max_count": 11, "min_count": 74, "name": "VQ3kZyX1GCZXKLJ2", "region_overrides": {"fBabQh8NJJBvHHMV": {"buffer_count": 92, "buffer_percent": 16, "max_count": 49, "min_count": 39, "name": "ZtPEjCWTijQxORDC", "unlimited": false, "use_buffer_percent": true}, "vmRcGHVaqfVrE5rf": {"buffer_count": 92, "buffer_percent": 62, "max_count": 74, "min_count": 30, "name": "mbjYIoIYlTahO7US", "unlimited": true, "use_buffer_percent": true}, "uliucpvuy52r2QXH": {"buffer_count": 48, "buffer_percent": 75, "max_count": 12, "min_count": 84, "name": "HjEVNEime5e4I0bv", "unlimited": false, "use_buffer_percent": false}}, "regions": ["Q41ajhTTk64PQaFA", "kjcp65vIgQxIzhhB", "EAks4yNxuh8awIUB"], "session_timeout": 95, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"uUAFIKMF7LV1diIY": {"buffer_count": 9, "buffer_percent": 34, "max_count": 49, "min_count": 75, "name": "5ptHfbC1HiJ1oh2f", "unlimited": false, "use_buffer_percent": true}, "pZjAQuXsHQ4aE4rv": {"buffer_count": 98, "buffer_percent": 6, "max_count": 41, "min_count": 32, "name": "QZd8FYPQqccyZUDV", "unlimited": true, "use_buffer_percent": true}, "6aOZLruCaHwQ1oCp": {"buffer_count": 26, "buffer_percent": 24, "max_count": 84, "min_count": 49, "name": "QpeEKrOzgxa7H6FX", "unlimited": true, "use_buffer_percent": true}}, "regions": ["L1eB28WvEns1stsr", "Jdz2yC6rC8VX1ASM", "xRGTbiWZ0nbc74rD"], "session_timeout": 76, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'YFZmDBvnZ2Lwf0FP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '35' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'F6S6WcaFWJzbum6z' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 85, "mem_limit": 78, "params": "AgVDowZrFyuAL5Q3"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'dFWEoDWNi9AX0cr1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '54' \
    --offset '80' \
    --q 'rmacBr8rqRQUfK3D' \
    --sortBy 'createdAt' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 64 'ListImagesClient' test.out

#- 65 ImageLimitClient
samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'ImageLimitClient' test.out

#- 66 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version 'YwtbpUv3vnadwAnf' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'bkXZSEsQwQUXO19j' \
    --count '57' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "YQSJJbUjS61SExBU"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "OlPRETMLv9x89OrX"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "jD9p856n7KP9TnCn", "ip": "69MwlpEZwjU0RG7k", "name": "9RlOkuco45ONJ8BM", "port": 4}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "s3UYmIdbswAtfYoR", "pod_name": "GwmHLityRMzl8Aqs"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "Mlia0PFvx2Le7861"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'JiihAQSfuvTo4WUV' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'GawZ9ztaWIlwRfKW' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "Yn57w5gTpt56w2VU", "configuration": "hI6Di7v0TF9bV0s9", "deployment": "dU7MnYShc0frKh7a", "game_mode": "ib1GeJUARQycL5Ty", "matching_allies": [{"matching_parties": [{"party_attributes": {"XbvLxYFcbxlCXdAo": {}, "1e5OC3XpHMqO8Ef9": {}, "Ny442Uzt1DeSO12H": {}}, "party_id": "D4CSw85ZjUBUuEjG", "party_members": [{"user_id": "3MDBWCp61Ku9OkDp"}, {"user_id": "eIZHUhJFAds8ZAyw"}, {"user_id": "7nZg94SnQfyEu2b2"}]}, {"party_attributes": {"H7i05scl8Aytchy8": {}, "wnXQMHoua8krSflN": {}, "5fWNJGaqYMbzUuLp": {}}, "party_id": "phErG5Cv3pts8LUC", "party_members": [{"user_id": "yw316qqP6bUWikeX"}, {"user_id": "U2jWLCx8AbAt25K5"}, {"user_id": "MKTgNWUzqxBBdKC3"}]}, {"party_attributes": {"JzICMJZvjPOogbJM": {}, "nHwhdaUfA9VpD7BK": {}, "3RRYbm9FB6wxg8z4": {}}, "party_id": "JV2K7llobEvnt383", "party_members": [{"user_id": "k8hQnsvbaAG8FwHq"}, {"user_id": "0x98iDnv0koFXjsl"}, {"user_id": "MPu90xkeMgMPLBzb"}]}]}, {"matching_parties": [{"party_attributes": {"xEryxasgAk7ICnG9": {}, "TssA0WVyUZZVXg7F": {}, "ZDe1da9crkeACx04": {}}, "party_id": "2u8vMa4lShnLU5Ga", "party_members": [{"user_id": "av4QmI6MEauV11gg"}, {"user_id": "4gsPhT6BdS0HzvJR"}, {"user_id": "z6iCrp6TBwLK9Ei5"}]}, {"party_attributes": {"UdZFBj6l2iOmF9De": {}, "lug25OjVbxaCMywz": {}, "BZMggjD9BqSBe9OL": {}}, "party_id": "6YFTHKvDv757Wg6n", "party_members": [{"user_id": "9RMjSzIHeaARNJKk"}, {"user_id": "2NAVxm9ZOhr1k5Jk"}, {"user_id": "wK4TbKJS1AtvvNTP"}]}, {"party_attributes": {"3QmUwOyg9zDkmf1X": {}, "uWdi3bxMWfonxXso": {}, "lUSHYNVVF2Bb9QQk": {}}, "party_id": "5rCFURFqetItTUfF", "party_members": [{"user_id": "grxA2zr2qAV1NiMw"}, {"user_id": "SNjdV4YE0rGgHNsj"}, {"user_id": "9iZugBRlTuselmRA"}]}]}, {"matching_parties": [{"party_attributes": {"VgSERjG8O2VtRg2V": {}, "RV7ynKps21NUhxSI": {}, "7f8gyleHtwaQa7kF": {}}, "party_id": "bxDnLrx4TmaKMiTa", "party_members": [{"user_id": "sdIW43dq3Ywn0cLP"}, {"user_id": "hVAdJLr4gV0pkJHh"}, {"user_id": "EFLL7NE00LUC3bwu"}]}, {"party_attributes": {"PDIhGKhowzVzbjbG": {}, "VE8Dxvl8N7GOx3Bv": {}, "SoTC8CNwEqzPRReB": {}}, "party_id": "0ONcJoWm0WnKe4XS", "party_members": [{"user_id": "zFvbHpT5HwteVvGf"}, {"user_id": "c1zLLsAhvVt2eFso"}, {"user_id": "ZJ8q82vYqfXvDKCd"}]}, {"party_attributes": {"Zw92NdI4Gl6YLkeM": {}, "qGpwxI2L2McwW7bz": {}, "1FxbNIPkDuwOaO2X": {}}, "party_id": "H8Qr3xij3DFWfXAa", "party_members": [{"user_id": "RKnqckcZAf0pNPLW"}, {"user_id": "gcakfeCPkJg51dw9"}, {"user_id": "BnBd7UeyNmuHeLd5"}]}]}], "namespace": "t3JFsz3MV8l2hnsz", "notification_payload": {}, "pod_name": "CVryOSM07rvL5Jr2", "region": "cnbENqLG18KPp89W", "session_id": "0jkixvuD0bUhKIVC"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "mFI5SRCI0LHBPXts"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'x3zBPG2LCMgIvKnQ' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'mgpGghoThGh2RsrP' \
    > test.out 2>&1
eval_tap $? 78 'CancelSession' test.out

#- 79 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 79 'GetDefaultProvider' test.out

#- 80 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 80 'ListProviders' test.out

#- 81 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region 'QwDOdMz4UznS4btg' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE