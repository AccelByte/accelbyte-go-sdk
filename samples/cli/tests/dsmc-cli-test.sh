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
    --body '{"artifactPath": "SfLJr9Yp", "image": "674XgBj5", "namespace": "mmMr9apn", "persistent": false, "version": "YEDd2bTt"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "vOmX3ZE2", "dockerPath": "lUYQsgAx", "image": "L6h2tTtX", "imageSize": 32, "namespace": "BQ2NWsMH", "persistent": false, "version": "p8Q3hPNZ"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "ZVifnncU", "dockerPath": "lwu6EV1G", "image": "zsnds0ir", "imageSize": 54, "namespace": "oSoqRACq", "patchVersion": "VNBnNmx0", "persistent": false, "version": "uhrnLY98"}' \
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
    --body '{"claim_timeout": 7, "creation_timeout": 79, "default_version": "yFOVkQmN", "port": 79, "ports": {"xuHfqn8M": 5, "KQ3agMKo": 68, "JzArS1wl": 1}, "protocol": "9CQsL9Lh", "providers": ["My97KxOQ", "EU3PwlTz", "hNJrrivM"], "session_timeout": 4, "unreachable_timeout": 34}' \
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
    --body '{"claim_timeout": 51, "creation_timeout": 11, "default_version": "iKEjJiYR", "port": 83, "protocol": "12SSBk5f", "providers": ["cea9eH7m", "h4swsipL", "7gtPt2dj"], "session_timeout": 47, "unreachable_timeout": 81}' \
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
    --name 'UAguSHaF' \
    --count '25' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 13 'GetAllDeployment' test.out

#- 14 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment '30u3olrB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetDeployment' test.out

#- 15 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'LnjjEoDZ' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 17, "buffer_percent": 38, "configuration": "i8T0A4na", "enable_region_overrides": true, "game_version": "UlPrisdK", "max_count": 74, "min_count": 80, "overrides": {"8XNUkyBW": {"buffer_count": 87, "buffer_percent": 8, "configuration": "Tp2ytN54", "enable_region_overrides": false, "game_version": "r6uSntV8", "max_count": 39, "min_count": 63, "name": "d5yF04h9", "region_overrides": {"muED49zI": {"buffer_count": 24, "buffer_percent": 39, "max_count": 40, "min_count": 57, "name": "RjMHvkCq", "unlimited": false, "use_buffer_percent": false}, "5sDuFxTn": {"buffer_count": 55, "buffer_percent": 34, "max_count": 35, "min_count": 91, "name": "Z0qHdyWU", "unlimited": false, "use_buffer_percent": true}, "Sjq5puvw": {"buffer_count": 69, "buffer_percent": 29, "max_count": 3, "min_count": 47, "name": "kW5QMO5r", "unlimited": true, "use_buffer_percent": false}}, "regions": ["ni9KpCC1", "fhCKOayI", "IdH2vG9T"], "session_timeout": 81, "unlimited": true, "use_buffer_percent": true}, "cadlv6g6": {"buffer_count": 41, "buffer_percent": 52, "configuration": "wCxdNEO6", "enable_region_overrides": true, "game_version": "N18iLPeL", "max_count": 20, "min_count": 93, "name": "13vbojJo", "region_overrides": {"BcYVBg6A": {"buffer_count": 25, "buffer_percent": 90, "max_count": 18, "min_count": 6, "name": "UjwyxBYo", "unlimited": false, "use_buffer_percent": false}, "OD5lKdNp": {"buffer_count": 19, "buffer_percent": 5, "max_count": 87, "min_count": 75, "name": "kgW9FyGd", "unlimited": false, "use_buffer_percent": false}, "JVVDkQQd": {"buffer_count": 62, "buffer_percent": 5, "max_count": 60, "min_count": 41, "name": "wsMZwZKC", "unlimited": false, "use_buffer_percent": false}}, "regions": ["ZaJYPXkF", "aJrtBQNv", "XnmhkCYG"], "session_timeout": 93, "unlimited": false, "use_buffer_percent": true}, "Jkb4z1Dp": {"buffer_count": 13, "buffer_percent": 12, "configuration": "HuVDI1Zx", "enable_region_overrides": false, "game_version": "uv3rNC3h", "max_count": 85, "min_count": 45, "name": "NhnMa5MX", "region_overrides": {"iPyk8myo": {"buffer_count": 66, "buffer_percent": 14, "max_count": 82, "min_count": 15, "name": "qe5CwGkN", "unlimited": true, "use_buffer_percent": true}, "eA0Uqc9Y": {"buffer_count": 81, "buffer_percent": 60, "max_count": 3, "min_count": 84, "name": "pSBIFr8i", "unlimited": false, "use_buffer_percent": false}, "ZyFJ5DZz": {"buffer_count": 80, "buffer_percent": 82, "max_count": 86, "min_count": 14, "name": "cEFWAedK", "unlimited": false, "use_buffer_percent": false}}, "regions": ["LqxXyZli", "XV23bCQ4", "vapvrTKS"], "session_timeout": 48, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"lTEZFoeF": {"buffer_count": 7, "buffer_percent": 44, "max_count": 44, "min_count": 30, "name": "gOl3sLBe", "unlimited": true, "use_buffer_percent": false}, "679mUW8J": {"buffer_count": 75, "buffer_percent": 62, "max_count": 7, "min_count": 21, "name": "Tt9KD906", "unlimited": true, "use_buffer_percent": false}, "fAXJdHkL": {"buffer_count": 39, "buffer_percent": 15, "max_count": 73, "min_count": 76, "name": "mC1VvsiW", "unlimited": true, "use_buffer_percent": true}}, "regions": ["36YjKDTb", "liSptIo7", "wPk3rHSt"], "session_timeout": 31, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 15 'CreateDeployment' test.out

#- 16 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'Od95f5MX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteDeployment' test.out

#- 17 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'wrgSJS8C' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 74, "buffer_percent": 74, "configuration": "ww54kib4", "enable_region_overrides": false, "game_version": "8uQVfKyI", "max_count": 82, "min_count": 9, "regions": ["VLJFAiwv", "IbIBYFLb", "JIat3yCS"], "session_timeout": 68, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateDeployment' test.out

#- 18 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'cSEKK1QU' \
    --namespace $AB_NAMESPACE \
    --region 'Fu2QZcwt' \
    --body '{"buffer_count": 12, "buffer_percent": 1, "max_count": 43, "min_count": 94, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'CreateRootRegionOverride' test.out

#- 19 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment '5YnqhN4l' \
    --namespace $AB_NAMESPACE \
    --region '3MVjXZQX' \
    > test.out 2>&1
eval_tap $? 19 'DeleteRootRegionOverride' test.out

#- 20 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'wMNxytHF' \
    --namespace $AB_NAMESPACE \
    --region '8NOVvSRz' \
    --body '{"buffer_count": 21, "buffer_percent": 91, "max_count": 51, "min_count": 99, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateRootRegionOverride' test.out

#- 21 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'ncFdV0JG' \
    --namespace $AB_NAMESPACE \
    --version '68wUbX3N' \
    --body '{"buffer_count": 100, "buffer_percent": 0, "configuration": "tTRAjdL5", "enable_region_overrides": false, "game_version": "l6WAVbNE", "max_count": 41, "min_count": 23, "region_overrides": {"tMKwBI1x": {"buffer_count": 53, "buffer_percent": 48, "max_count": 35, "min_count": 20, "name": "4x5Y2DsD", "unlimited": false, "use_buffer_percent": true}, "7kv93w8r": {"buffer_count": 17, "buffer_percent": 67, "max_count": 5, "min_count": 27, "name": "CNYtcXe8", "unlimited": false, "use_buffer_percent": true}, "AYrRmLOJ": {"buffer_count": 99, "buffer_percent": 21, "max_count": 50, "min_count": 93, "name": "uuNcdowH", "unlimited": true, "use_buffer_percent": false}}, "regions": ["QcwSwGPr", "Nq7H6Tvc", "z0VrZq4X"], "session_timeout": 27, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'CreateDeploymentOverride' test.out

#- 22 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'YmV95zx7' \
    --namespace $AB_NAMESPACE \
    --version '0XBCvQhp' \
    > test.out 2>&1
eval_tap $? 22 'DeleteDeploymentOverride' test.out

#- 23 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'gBj2lPrP' \
    --namespace $AB_NAMESPACE \
    --version '77bfz2V8' \
    --body '{"buffer_count": 82, "buffer_percent": 7, "configuration": "1JO5kv1B", "enable_region_overrides": true, "game_version": "ptuAc4pv", "max_count": 22, "min_count": 84, "regions": ["DZtxp6YN", "GOvmz5KF", "ROFuUmDJ"], "session_timeout": 31, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateDeploymentOverride' test.out

#- 24 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'cXjuQ8UX' \
    --namespace $AB_NAMESPACE \
    --region 'cNxsoP2j' \
    --version '8gtrNTaW' \
    --body '{"buffer_count": 79, "buffer_percent": 92, "max_count": 65, "min_count": 1, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'CreateOverrideRegionOverride' test.out

#- 25 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'cvfFF6qi' \
    --namespace $AB_NAMESPACE \
    --region 'qQXA9eHO' \
    --version 'VnqiGJw2' \
    > test.out 2>&1
eval_tap $? 25 'DeleteOverrideRegionOverride' test.out

#- 26 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'Y8umF6eI' \
    --namespace $AB_NAMESPACE \
    --region '0trhxSRS' \
    --version '7m9JgybF' \
    --body '{"buffer_count": 67, "buffer_percent": 65, "max_count": 4, "min_count": 64, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateOverrideRegionOverride' test.out

#- 27 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '37' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 27 'GetAllPodConfig' test.out

#- 28 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'xsqMODoY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetPodConfig' test.out

#- 29 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'QePi0Mim' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 94, "mem_limit": 49, "params": "a7F69Gbo"}' \
    > test.out 2>&1
eval_tap $? 29 'CreatePodConfig' test.out

#- 30 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'Z1UWGhaj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeletePodConfig' test.out

#- 31 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'GBIIUtpH' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 85, "mem_limit": 30, "name": "kAJJXQ1j", "params": "InUHJ4Xp"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdatePodConfig' test.out

#- 32 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'g7oKbPrE' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 64}' \
    > test.out 2>&1
eval_tap $? 32 'AddPort' test.out

#- 33 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'qSWXVAKI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeletePort' test.out

#- 34 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'tPOqRGa7' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "DKJ4I1l6", "port": 88}' \
    > test.out 2>&1
eval_tap $? 34 'UpdatePort' test.out

#- 35 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'SxIbPmar' \
    --sortBy 'createdAt' \
    --sortDirection 'desc' \
    --count '55' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 35 'ListImages' test.out

#- 36 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'ECqRjixH' \
    --version 'rc8w2KAS' \
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
    --imageURI 'FzLCOnHZ' \
    --version 'v3MSYFwP' \
    --versionPatch 'uIfekoCg' \
    > test.out 2>&1
eval_tap $? 39 'DeleteImagePatch' test.out

#- 40 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'fWJQrrKT' \
    > test.out 2>&1
eval_tap $? 40 'GetImageDetail' test.out

#- 41 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'RxfQ1Nba' \
    > test.out 2>&1
eval_tap $? 41 'GetImagePatches' test.out

#- 42 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'EfNKaJPh' \
    --versionPatch 'FqfqAEVu' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatchDetail' test.out

#- 43 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'EQHldoaY' \
    --count '42' \
    --offset '69' \
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
    --region 'lsdHJODF' \
    > test.out 2>&1
eval_tap $? 45 'CountServerDetailed' test.out

#- 46 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'ListLocalServer' test.out

#- 47 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'Cfs6nQsO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteLocalServer' test.out

#- 48 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'cT9PZ7r5' \
    > test.out 2>&1
eval_tap $? 48 'GetServer' test.out

#- 49 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'MJL8v5r0' \
    > test.out 2>&1
eval_tap $? 49 'DeleteServer' test.out

#- 50 GetServerLogs
samples/cli/sample-apps Dsmc getServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'NwzTScrO' \
    > test.out 2>&1
eval_tap $? 50 'GetServerLogs' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'uFLtsQFG' \
    --withServer 'true' \
    --count '89' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'C5PB8WOS' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'vLI7n2AH' \
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
    --version 'Eht3RMWZ' \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "F4SAsETC"}' \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "tYH3g52y", "ip": "IZB049ie", "name": "1kBglIgD", "port": 10}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "o3ApcVTF", "pod_name": "3kPrTHz8"}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "pmoasGug"}' \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'Z1ggP3jH' \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "H6frOq49", "configuration": "SyF88QZ3", "deployment": "TBodSxOW", "game_mode": "srHnUaex", "matching_allies": [{"matching_parties": [{"party_attributes": {"IDYzYs9l": {}, "Ap2DuN9u": {}, "5cDS3mcv": {}}, "party_id": "4lZ8Oap0", "party_members": [{"user_id": "oQjFy1K6"}, {"user_id": "t3T0ro9l"}, {"user_id": "Gi1rRH2U"}]}, {"party_attributes": {"5VIJSMdr": {}, "sW2JFNY3": {}, "2qCkpA2D": {}}, "party_id": "8OaiF5PA", "party_members": [{"user_id": "XzMwzuNq"}, {"user_id": "feG59SMn"}, {"user_id": "p9c60QUv"}]}, {"party_attributes": {"iZjLV2dS": {}, "H3TwspZC": {}, "KmkhEMYv": {}}, "party_id": "W3BXXq84", "party_members": [{"user_id": "3bmW3IbY"}, {"user_id": "8KbUOfdV"}, {"user_id": "1lnqAnve"}]}]}, {"matching_parties": [{"party_attributes": {"9BkqfN00": {}, "HYHcktm0": {}, "qQS5o89y": {}}, "party_id": "c0lRGuJW", "party_members": [{"user_id": "tgqrP4LD"}, {"user_id": "SJ52LHZf"}, {"user_id": "0NVjPUTZ"}]}, {"party_attributes": {"kGlbmxZ4": {}, "TTXhCzBt": {}, "4EHCVTiu": {}}, "party_id": "GrnPZxZQ", "party_members": [{"user_id": "5MpDjOrN"}, {"user_id": "s1dUeyA4"}, {"user_id": "npNMTMgP"}]}, {"party_attributes": {"6HVxzOh9": {}, "Y6TE23gV": {}, "p3ItPRYz": {}}, "party_id": "a9Jo8loM", "party_members": [{"user_id": "EsI4N0I3"}, {"user_id": "24a0vgYm"}, {"user_id": "e0WHroAZ"}]}]}, {"matching_parties": [{"party_attributes": {"hD9jBPxK": {}, "MoVaiqGM": {}, "S4Mc0Ze9": {}}, "party_id": "1v02OjAN", "party_members": [{"user_id": "CiZVBPMh"}, {"user_id": "mL4ieJ8f"}, {"user_id": "XkbJcU6h"}]}, {"party_attributes": {"KdldOnb4": {}, "PgfkfKt5": {}, "oucP9vI0": {}}, "party_id": "bxZkEp0e", "party_members": [{"user_id": "tylH9Bbw"}, {"user_id": "FDSTh249"}, {"user_id": "JW45MJ0d"}]}, {"party_attributes": {"8faEGUZ1": {}, "d9a4iXJ8": {}, "710d2tYT": {}}, "party_id": "GCFH8Ro8", "party_members": [{"user_id": "qvTbyVPy"}, {"user_id": "iTMgaBNQ"}, {"user_id": "mhjuSB0s"}]}]}], "namespace": "4SEjaGCT", "notification_payload": {}, "pod_name": "hUobw7eg", "region": "OHeiB1lJ", "session_id": "MGye7u94"}' \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "TwN48LqP"}' \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'SAggTuIw' \
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
    --region 'ZK4elyBS' \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE