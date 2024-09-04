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
echo "1..89"

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
    --body '{"artifactPath": "UXoSXJvPhpVcHBX3", "coreDumpEnabled": false, "image": "JNuBbqx1nVuq1Wkn", "imageReplicationsMap": {"YjxTgiEMVD4X6XQj": {"failure_code": "IUmT1546su0oyI0D", "region": "tpgcMVrUoRYuBCzj", "status": "K2xcHrXHtGKknIsa", "uri": "2XI1eVArHEed098P"}, "SE0jedwV7pQqPv4j": {"failure_code": "avf9niIpKdCnjGkD", "region": "FTOPFsojZaeJdte9", "status": "wu4JurJNxhAwLcZS", "uri": "ioGiC2errfWvT8AW"}, "meymigoe3aM76oK9": {"failure_code": "HyjESX525iVMYtaF", "region": "Tj4Hpl1cP1xlrLaV", "status": "SiyKqRZNYILhN2uj", "uri": "f02JgejFQ7UkHief"}}, "namespace": "MUvzdT3dKtnk3Pq1", "patchVersion": "NjHU4lQdDJk9llRj", "persistent": false, "ulimitFileSize": 37, "version": "lYEsLHQ0Ql4obu1w"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "JVu8QtfidJXVsfIj", "coreDumpEnabled": false, "dockerPath": "ChONNkjFq16la7co", "image": "j6Kvt35MBb81lu9S", "imageSize": 89, "namespace": "rYe11cOaQ2jThJ47", "persistent": true, "ulimitFileSize": 29, "version": "72fj4P7lYD2RPpmu"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "INrhWS1vR6fBkmKO", "coreDumpEnabled": false, "dockerPath": "lg8FOvdk3z7bg4fj", "image": "FL12czgnvRkA4y6P", "imageSize": 22, "namespace": "05kPG31gZ3oQk30q", "patchVersion": "L5dpIN9o6NR5ZDZy", "persistent": false, "ulimitFileSize": 26, "uploaderFlag": "GMrEk8b9Vs3UxJJI", "version": "H3wDCBBPTQeLUrM6"}' \
    > test.out 2>&1
eval_tap $? 6 'CreateImagePatch' test.out

#- 7 GetLowestInstanceSpec
samples/cli/sample-apps Dsmc getLowestInstanceSpec \
    > test.out 2>&1
eval_tap $? 7 'GetLowestInstanceSpec' test.out

#- 8 GetWorkerConfig
samples/cli/sample-apps Dsmc getWorkerConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'GetWorkerConfig' test.out

#- 9 UpdateWorkerConfig
samples/cli/sample-apps Dsmc updateWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": true, "ghost_worker": true, "manual_buffer_override": false, "zombie_worker": true}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateWorkerConfig' test.out

#- 10 CreateWorkerConfig
samples/cli/sample-apps Dsmc createWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": false, "ghost_worker": false, "manual_buffer_override": true, "zombie_worker": false}' \
    > test.out 2>&1
eval_tap $? 10 'CreateWorkerConfig' test.out

#- 11 GetConfig
samples/cli/sample-apps Dsmc getConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetConfig' test.out

#- 12 CreateConfig
samples/cli/sample-apps Dsmc createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"claim_timeout": 82, "creation_timeout": 99, "default_version": "OPCgG1SaTDfWyyPU", "port": 56, "ports": {"Xczk2jNGGyioWM36": 5, "iOzujmC8hNzNo46X": 70, "Wm9aEXpNuFmGGI3G": 11}, "protocol": "SLGtP0NHDKwuTjhL", "providers": ["DriSuGyoZ7sFp7ZC", "ZZ3BOe6oOK9EmHFQ", "6BkMRx2brrV4fFNT"], "session_timeout": 15, "unreachable_timeout": 22}' \
    > test.out 2>&1
eval_tap $? 12 'CreateConfig' test.out

#- 13 DeleteConfig
samples/cli/sample-apps Dsmc deleteConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteConfig' test.out

#- 14 UpdateConfig
samples/cli/sample-apps Dsmc updateConfig \
    --namespace $AB_NAMESPACE \
    --body '{"claim_timeout": 36, "creation_timeout": 83, "default_version": "NgiUSraARu3tEuQQ", "port": 6, "protocol": "xsEMM7CL2ZnOWeSw", "providers": ["eSJhZT8XqcxsVHtX", "nGLuJunWbVZ9hvua", "mSU5IYl6YtJOC3zy"], "session_timeout": 61, "unreachable_timeout": 10}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateConfig' test.out

#- 15 ClearCache
samples/cli/sample-apps Dsmc clearCache \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'ClearCache' test.out

#- 16 GetAllDeployment
samples/cli/sample-apps Dsmc getAllDeployment \
    --namespace $AB_NAMESPACE \
    --name 'gg1X3tn4GQvFeZJ0' \
    --count '57' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 16 'GetAllDeployment' test.out

#- 17 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'bxk9iQXlFGWYXNWu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetDeployment' test.out

#- 18 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'xdoRMU3PPqtU8JbN' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 42, "buffer_percent": 96, "configuration": "i3OJc472mImU9Kn1", "enable_region_overrides": false, "extendable_session": false, "game_version": "qM5UB7LQn0oKVKMG", "max_count": 49, "min_count": 33, "overrides": {"7rAzhtya99RT86Yt": {"buffer_count": 57, "buffer_percent": 65, "configuration": "RytZ7cdRa8oQ7543", "enable_region_overrides": false, "extendable_session": true, "game_version": "UhFCOi5ln89fpFTs", "max_count": 43, "min_count": 82, "name": "JIvlaQ4nWj4pL93G", "region_overrides": {"ruudrZdWb4W5GjMq": {"buffer_count": 70, "buffer_percent": 97, "max_count": 26, "min_count": 63, "name": "6LHUnPfvmewsFJsO", "unlimited": false, "use_buffer_percent": true}, "9YbrCziXWCvAtraN": {"buffer_count": 75, "buffer_percent": 13, "max_count": 24, "min_count": 60, "name": "UJlWEfsxGMeTk9Zw", "unlimited": true, "use_buffer_percent": true}, "AlDUclHjGGt2eGgx": {"buffer_count": 22, "buffer_percent": 51, "max_count": 84, "min_count": 11, "name": "voq1xAIZ2Ddrfd7n", "unlimited": true, "use_buffer_percent": false}}, "regions": ["zb2EFccKqUdoA7mW", "2dKGYyZV86Xk5k9D", "vHaHICAdJcGZklPX"], "session_timeout": 39, "unlimited": true, "use_buffer_percent": false}, "myCf7qgwtA3DGCqv": {"buffer_count": 63, "buffer_percent": 42, "configuration": "BZ7lYPQwXh1lcIcB", "enable_region_overrides": true, "extendable_session": false, "game_version": "zCA4ZdphyQW14xdm", "max_count": 66, "min_count": 39, "name": "gbGTFpl6h3G8dNiC", "region_overrides": {"iJ5i8uy4eXOI8lpI": {"buffer_count": 50, "buffer_percent": 11, "max_count": 26, "min_count": 61, "name": "oKjFPHHqztwY2wSk", "unlimited": false, "use_buffer_percent": false}, "co6vHn9AZVNQCNB5": {"buffer_count": 4, "buffer_percent": 95, "max_count": 99, "min_count": 87, "name": "oucRjSauCpqStr1g", "unlimited": true, "use_buffer_percent": true}, "FaY6JRhlOsmaeieh": {"buffer_count": 6, "buffer_percent": 75, "max_count": 63, "min_count": 18, "name": "DocdAwD7o7MnAjVe", "unlimited": true, "use_buffer_percent": false}}, "regions": ["2Z9gwID6xtp3EAHL", "mfXY03OzIyFB4AAr", "ODFHcMVQGOxI9MUO"], "session_timeout": 93, "unlimited": true, "use_buffer_percent": true}, "jLTqmpa6BBzTm4Ro": {"buffer_count": 40, "buffer_percent": 50, "configuration": "RTWWLGoN2lCVsCzb", "enable_region_overrides": false, "extendable_session": true, "game_version": "llfqE2xOLZwL9S5S", "max_count": 64, "min_count": 73, "name": "262f7IqSHJXgjSGf", "region_overrides": {"Be8SojPgqhdv5Avq": {"buffer_count": 4, "buffer_percent": 72, "max_count": 2, "min_count": 3, "name": "Tsc8pc3IBarA1gys", "unlimited": true, "use_buffer_percent": true}, "JI3OTVQStCpJxrtS": {"buffer_count": 32, "buffer_percent": 47, "max_count": 63, "min_count": 72, "name": "BEp9JsXqco20JcY8", "unlimited": false, "use_buffer_percent": true}, "Y0t0dC0lQbb8t9p5": {"buffer_count": 56, "buffer_percent": 49, "max_count": 93, "min_count": 89, "name": "KzzXdLR4Td6YVFzw", "unlimited": true, "use_buffer_percent": false}}, "regions": ["R1M0DFgbEyQvqRcI", "ahFBDcF08HtCnlgW", "RVnQn9YRfdzuqo3U"], "session_timeout": 4, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"4fNBBHHUvbwy6qbD": {"buffer_count": 36, "buffer_percent": 56, "max_count": 80, "min_count": 2, "name": "fzPkhmdgugV6eWKB", "unlimited": true, "use_buffer_percent": true}, "6coYLmaCxhdbgaoR": {"buffer_count": 1, "buffer_percent": 86, "max_count": 80, "min_count": 42, "name": "HQhnJp9qLgTQJ06s", "unlimited": true, "use_buffer_percent": false}, "76b8veo2CSt1eRBe": {"buffer_count": 8, "buffer_percent": 51, "max_count": 15, "min_count": 1, "name": "2xKw9RdlFlPtxXWx", "unlimited": false, "use_buffer_percent": false}}, "regions": ["4vqlUBV13xpcNwXR", "plc3GpXL4ZGKRXNj", "9stkYermDdE0z46F"], "session_timeout": 51, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'CreateDeployment' test.out

#- 19 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'VUkLf810HZWUgh4P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteDeployment' test.out

#- 20 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'FxNer7czqNQNr3Bk' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 42, "buffer_percent": 3, "configuration": "ru5IX0AnWY0guO74", "enable_region_overrides": true, "extendable_session": true, "game_version": "IlI4YCRfW5AnQzNt", "max_count": 10, "min_count": 26, "regions": ["B4U1GXKfixGoHzos", "0crs7wYDwJgQthAX", "UCbtRoWktSSk3nID"], "session_timeout": 76, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateDeployment' test.out

#- 21 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'Epeh8CiQN4bpvn0c' \
    --namespace $AB_NAMESPACE \
    --region 'YzXkk2W8sImRzurb' \
    --body '{"buffer_count": 33, "buffer_percent": 45, "max_count": 99, "min_count": 28, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'CreateRootRegionOverride' test.out

#- 22 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'brg9fJUJRuhpx6T1' \
    --namespace $AB_NAMESPACE \
    --region 'TQvWxNnkZG7GNc6f' \
    > test.out 2>&1
eval_tap $? 22 'DeleteRootRegionOverride' test.out

#- 23 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment '2hEo1A1WMtfmZ2f5' \
    --namespace $AB_NAMESPACE \
    --region '1zWGiX2tJk95ZB8r' \
    --body '{"buffer_count": 6, "buffer_percent": 89, "max_count": 6, "min_count": 7, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateRootRegionOverride' test.out

#- 24 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'YcSEYfyl29xL1g9K' \
    --namespace $AB_NAMESPACE \
    --version 'FPBtF34uj8HzpKVU' \
    --body '{"buffer_count": 40, "buffer_percent": 49, "configuration": "1gyxRE0Eq6gFXSYL", "enable_region_overrides": false, "extendable_session": false, "game_version": "UOwr4k2Gdqd1AR7K", "max_count": 67, "min_count": 29, "region_overrides": {"JNye6dXXiWFkj8RH": {"buffer_count": 71, "buffer_percent": 81, "max_count": 89, "min_count": 23, "name": "uMr1lMAnTMcdLvPm", "unlimited": true, "use_buffer_percent": true}, "myK0M59VR3tq1cnO": {"buffer_count": 4, "buffer_percent": 62, "max_count": 99, "min_count": 40, "name": "wRxAZKeWPzYTM1HM", "unlimited": false, "use_buffer_percent": false}, "LQAGmiq6OlTDqzm6": {"buffer_count": 52, "buffer_percent": 1, "max_count": 43, "min_count": 45, "name": "FnDuS2X5B2hbW696", "unlimited": true, "use_buffer_percent": false}}, "regions": ["04LWXGHhhTzAD5MC", "tK8jvinqOUUTZMWR", "oFzHzvLQ6ZZ75ZXJ"], "session_timeout": 58, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'CreateDeploymentOverride' test.out

#- 25 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'SlAdNZgT7oaecuHw' \
    --namespace $AB_NAMESPACE \
    --version 'E1tYHcAmjO7K8zBm' \
    > test.out 2>&1
eval_tap $? 25 'DeleteDeploymentOverride' test.out

#- 26 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment '6edqXuHGhoCzI96Q' \
    --namespace $AB_NAMESPACE \
    --version 'SvSDsTpr1xeTCHcU' \
    --body '{"buffer_count": 14, "buffer_percent": 11, "configuration": "GnTnL2hnC2S0T23z", "enable_region_overrides": false, "game_version": "mrt8iL0xMbXaW1Wh", "max_count": 77, "min_count": 30, "regions": ["Eu2Yk7jpMp7gikwe", "7Pyl3LIPsjLQTVBM", "eCg3kcjfyXivBs9l"], "session_timeout": 84, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateDeploymentOverride' test.out

#- 27 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'doMMUOnG5xwyNi6r' \
    --namespace $AB_NAMESPACE \
    --region '6YgH09SQSjHy29J6' \
    --version 'p0BEuDwJ0JmMR8TF' \
    --body '{"buffer_count": 36, "buffer_percent": 84, "max_count": 60, "min_count": 42, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'CreateOverrideRegionOverride' test.out

#- 28 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'Cpcsg2d59Sy8c7PC' \
    --namespace $AB_NAMESPACE \
    --region 'rRHo5RnICYAJ2isr' \
    --version 'E5OKRLHeTBbyjcn0' \
    > test.out 2>&1
eval_tap $? 28 'DeleteOverrideRegionOverride' test.out

#- 29 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '4bVHOtdhD64Veb5m' \
    --namespace $AB_NAMESPACE \
    --region 'ZNdilQlng1BgpKEf' \
    --version 'gX9Tb6LoZDVNG3H0' \
    --body '{"buffer_count": 14, "buffer_percent": 19, "max_count": 90, "min_count": 64, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateOverrideRegionOverride' test.out

#- 30 DeleteCreatingServerCountQueue
samples/cli/sample-apps Dsmc deleteCreatingServerCountQueue \
    --deployment 'sGbvJX8fsLeUl4HD' \
    --namespace $AB_NAMESPACE \
    --version 'll6Yddds8oNmMJO0' \
    > test.out 2>&1
eval_tap $? 30 'DeleteCreatingServerCountQueue' test.out

#- 31 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '52' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 31 'GetAllPodConfig' test.out

#- 32 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'ZGRFXBs7btJQaGrf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPodConfig' test.out

#- 33 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'sqirTX8GBnXUKLAi' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 66, "mem_limit": 98, "params": "azbRmJIjQ8ORS773"}' \
    > test.out 2>&1
eval_tap $? 33 'CreatePodConfig' test.out

#- 34 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'oUiMjoV0isHIg1Y4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePodConfig' test.out

#- 35 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'AaD8BmoNruEZ7Z9j' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 100, "mem_limit": 59, "name": "OcTKSNCx2JJbmSxQ", "params": "qpG7kebhgmwb5jvw"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePodConfig' test.out

#- 36 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'mRtAKREVTdMWb4Ic' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 25}' \
    > test.out 2>&1
eval_tap $? 36 'AddPort' test.out

#- 37 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'fc2OUNfQKYso0K3k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'DeletePort' test.out

#- 38 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'odajmwWM3VzLJrfd' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "ztRPzHVNmbvHB3g1", "port": 16}' \
    > test.out 2>&1
eval_tap $? 38 'UpdatePort' test.out

#- 39 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'dzYbENu0WcXrn3nj' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    --count '15' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 39 'ListImages' test.out

#- 40 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'jD26oDfXigHsPahA' \
    --version 'XJ4CzdFb0cMtozpR' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImage' test.out

#- 41 GetImageLimit
samples/cli/sample-apps Dsmc getImageLimit \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'GetImageLimit' test.out

#- 42 DeleteImagePatch
samples/cli/sample-apps Dsmc deleteImagePatch \
    --namespace $AB_NAMESPACE \
    --imageURI 'CM2gzFKGjZdX5CnU' \
    --version 'ep144rnmo6klV9C3' \
    --versionPatch 'e2bVebgkgD2jNkXv' \
    > test.out 2>&1
eval_tap $? 42 'DeleteImagePatch' test.out

#- 43 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'Yv7G79E9hTqUd6oI' \
    > test.out 2>&1
eval_tap $? 43 'GetImageDetail' test.out

#- 44 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'Rzt3jwzThbEqUP3b' \
    > test.out 2>&1
eval_tap $? 44 'GetImagePatches' test.out

#- 45 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'vvVVXQyPIjknT0NO' \
    --versionPatch 'HeY92pMQkuBMJ3Xr' \
    > test.out 2>&1
eval_tap $? 45 'GetImagePatchDetail' test.out

#- 46 AddBuffer
samples/cli/sample-apps Dsmc addBuffer \
    --namespace $AB_NAMESPACE \
    --body '{"AllocCount": 44, "DeploymentName": "Ws9fBczlrU7vRcTm", "JobCount": 38, "JobPriority": 60, "OverrideVersion": "SvcNsUdP0y5FyLrJ", "Region": "tjjs2vS9T6RONz9E"}' \
    > test.out 2>&1
eval_tap $? 46 'AddBuffer' test.out

#- 47 GetRepository
samples/cli/sample-apps Dsmc getRepository \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'GetRepository' test.out

#- 48 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'AZT8kQFK8GDNQlj3' \
    --count '3' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 48 'ListServer' test.out

#- 49 CountServer
samples/cli/sample-apps Dsmc countServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'CountServer' test.out

#- 50 CountServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace $AB_NAMESPACE \
    --region 'I4j4j4mkgXY5A0iX' \
    > test.out 2>&1
eval_tap $? 50 'CountServerDetailed' test.out

#- 51 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'ListLocalServer' test.out

#- 52 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'BBNWTWx29OIQUBle' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteLocalServer' test.out

#- 53 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'w3AgfAEhcvjQKloQ' \
    > test.out 2>&1
eval_tap $? 53 'GetServer' test.out

#- 54 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'yIn5ktGAeux1GnCV' \
    > test.out 2>&1
eval_tap $? 54 'DeleteServer' test.out

#- 55 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'uHcrHZtnK6sdtEl3' \
    --withServer 'false' \
    --count '47' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 55 'ListSession' test.out

#- 56 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'qn3a0vlq1lA2cTf4' \
    > test.out 2>&1
eval_tap $? 56 'CountSession' test.out

#- 57 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'tPq0So1dG26lvI5d' \
    > test.out 2>&1
eval_tap $? 57 'DeleteSession' test.out

#- 58 RunGhostCleanerRequestHandler
samples/cli/sample-apps Dsmc runGhostCleanerRequestHandler \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'RunGhostCleanerRequestHandler' test.out

#- 59 RunZombieCleanerRequestHandler
samples/cli/sample-apps Dsmc runZombieCleanerRequestHandler \
    --namespace $AB_NAMESPACE \
    --body '{"JobCount": 19, "Region": "3WdOTwODChUgIuSd", "TimeoutSecond": 50, "ZombieCount": 95}' \
    > test.out 2>&1
eval_tap $? 59 'RunZombieCleanerRequestHandler' test.out

#- 60 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "l4drvNHFZ4H05tb5", "repository": "k91Y6ruko28reHf6"}' \
    > test.out 2>&1
eval_tap $? 60 'CreateRepository' test.out

#- 61 ExportConfigV1
samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'ExportConfigV1' test.out

#- 62 ImportConfigV1
samples/cli/sample-apps Dsmc importConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 62 'ImportConfigV1' test.out

#- 63 GetAllDeploymentClient
samples/cli/sample-apps Dsmc getAllDeploymentClient \
    --namespace $AB_NAMESPACE \
    --name 'lvT2s8ZIuwOJVrRP' \
    --count '79' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 63 'GetAllDeploymentClient' test.out

#- 64 GetDeploymentClient
samples/cli/sample-apps Dsmc getDeploymentClient \
    --deployment 'w6CaMkEDGwVEcXIs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetDeploymentClient' test.out

#- 65 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'ONInn2pAM83kSsPB' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 59, "buffer_percent": 58, "configuration": "WCcxtNKfXcVeICWs", "enable_region_overrides": false, "extendable_session": false, "game_version": "PBG1yGEKjDVWYWNJ", "max_count": 33, "min_count": 42, "overrides": {"lM6zs9Hti7DTxMPN": {"buffer_count": 99, "buffer_percent": 96, "configuration": "9wxRzPHTxDuCQASL", "enable_region_overrides": true, "extendable_session": false, "game_version": "6XnW0BJkTDAndKuC", "max_count": 100, "min_count": 9, "name": "avwHnlXM7H1puVvf", "region_overrides": {"X4iVP45OL3sQYHej": {"buffer_count": 45, "buffer_percent": 32, "max_count": 30, "min_count": 66, "name": "1YhSyE1cQJ9ZRnAf", "unlimited": true, "use_buffer_percent": false}, "tD4GXqHB9Dge3XCD": {"buffer_count": 4, "buffer_percent": 23, "max_count": 83, "min_count": 1, "name": "kpsw0If8VYhrUSZX", "unlimited": false, "use_buffer_percent": false}, "IYuyXggw12EbFdb3": {"buffer_count": 9, "buffer_percent": 48, "max_count": 24, "min_count": 99, "name": "wNfOHpeFGzMSHnOo", "unlimited": true, "use_buffer_percent": false}}, "regions": ["v50zhej2aFLMTmk9", "D0mbBKcrSshWDQLI", "A6joswD8CoNqOxcX"], "session_timeout": 3, "unlimited": true, "use_buffer_percent": true}, "omTHw6nDJBAAsrtG": {"buffer_count": 67, "buffer_percent": 32, "configuration": "zQNhrf0VFnJS5Cys", "enable_region_overrides": true, "extendable_session": false, "game_version": "XZUVZmZPZ4Qtx0QX", "max_count": 56, "min_count": 23, "name": "oVu98l9HpQvb1Xac", "region_overrides": {"8rm4IbiDgTvWvKIc": {"buffer_count": 66, "buffer_percent": 26, "max_count": 35, "min_count": 17, "name": "sRAE8gGNWxKFKmUU", "unlimited": false, "use_buffer_percent": true}, "CCuAXeOJbktNdsSb": {"buffer_count": 27, "buffer_percent": 33, "max_count": 14, "min_count": 57, "name": "pGmEqsI6OMT758J8", "unlimited": false, "use_buffer_percent": true}, "nIyzKHDjCt6IEQ2P": {"buffer_count": 81, "buffer_percent": 10, "max_count": 30, "min_count": 50, "name": "gJqSqSXO3FGDZzaP", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Gxm2pWigprkg4FVn", "tMWSGklxw4a6adJw", "LkGseofoOv0UhilX"], "session_timeout": 0, "unlimited": false, "use_buffer_percent": false}, "RmaGCxtYMkHFm81e": {"buffer_count": 96, "buffer_percent": 4, "configuration": "khr0VG5BFny8aAOi", "enable_region_overrides": true, "extendable_session": false, "game_version": "GdpkmKMJTlUTtq5K", "max_count": 55, "min_count": 35, "name": "YW1kAfXZuROfATuH", "region_overrides": {"7hm5dhoHOezKUR6d": {"buffer_count": 77, "buffer_percent": 39, "max_count": 9, "min_count": 87, "name": "Ui8rJrznMh3D532o", "unlimited": true, "use_buffer_percent": false}, "leayOaArEW29PPnX": {"buffer_count": 93, "buffer_percent": 71, "max_count": 33, "min_count": 43, "name": "GwWr76wnAbuQbwLa", "unlimited": true, "use_buffer_percent": true}, "XZ1KtXQcZpqrfvsY": {"buffer_count": 76, "buffer_percent": 64, "max_count": 51, "min_count": 72, "name": "Bg6r3iVVcOLLMrfZ", "unlimited": true, "use_buffer_percent": true}}, "regions": ["m1sdYxyjdMdHPX3p", "1MTRKVdW2tHy3mpP", "HeZ9FhUru7QM54Lb"], "session_timeout": 55, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"h0Qs4dYbA7DyjMne": {"buffer_count": 3, "buffer_percent": 85, "max_count": 35, "min_count": 6, "name": "gGppUvc7xlUdLIfg", "unlimited": false, "use_buffer_percent": true}, "kCTKqUIIEQhbeW6K": {"buffer_count": 64, "buffer_percent": 31, "max_count": 30, "min_count": 72, "name": "7ivxklutVaMhp8Ok", "unlimited": false, "use_buffer_percent": false}, "OXrOWt4dilVQjuCD": {"buffer_count": 46, "buffer_percent": 62, "max_count": 37, "min_count": 37, "name": "ZxuIbmZzH7zNoJIQ", "unlimited": true, "use_buffer_percent": false}}, "regions": ["6p75DftxRNCisqNA", "nspnxTHhEbKUTBJT", "ER1Lab4qqGzRFXDq"], "session_timeout": 2, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 65 'CreateDeploymentClient' test.out

#- 66 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment '6IviT6y0WIvaIAjk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteDeploymentClient' test.out

#- 67 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '5' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 67 'GetAllPodConfigClient' test.out

#- 68 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'ZbHBdbcEk5HwyY1p' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 88, "mem_limit": 87, "params": "8tX3tTYSAfgiMEmg"}' \
    > test.out 2>&1
eval_tap $? 68 'CreatePodConfigClient' test.out

#- 69 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'oIjezpc97Tg9CQh3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePodConfigClient' test.out

#- 70 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '69' \
    --offset '59' \
    --q 'tmEdjzXBJAKhWOOH' \
    --sortBy 'version' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 70 'ListImagesClient' test.out

#- 71 ImageLimitClient
samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'ImageLimitClient' test.out

#- 72 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version 'qQ0XN2lWB5jTVSYF' \
    > test.out 2>&1
eval_tap $? 72 'ImageDetailClient' test.out

#- 73 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'YUbtGdcoq25jat3s' \
    --count '90' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 73 'ListServerClient' test.out

#- 74 CountServerDetailedClient
samples/cli/sample-apps Dsmc countServerDetailedClient \
    --namespace $AB_NAMESPACE \
    --region 'W86qXi71yOOX8x1x' \
    > test.out 2>&1
eval_tap $? 74 'CountServerDetailedClient' test.out

#- 75 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "yomgxQyUSWo1kjy2"}' \
    > test.out 2>&1
eval_tap $? 75 'ServerHeartbeat' test.out

#- 76 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "IHvNt3E3pdY03Kno"}' \
    > test.out 2>&1
eval_tap $? 76 'DeregisterLocalServer' test.out

#- 77 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "pbVo8iq826s292of", "ip": "rwqtZrzaVgxUzzJe", "name": "H0TtPKRcrDHyjdMG", "port": 50}' \
    > test.out 2>&1
eval_tap $? 77 'RegisterLocalServer' test.out

#- 78 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "E1t3NzvKgUcrrhdb", "pod_name": "3xtk7zTLaOzTXpBi"}' \
    > test.out 2>&1
eval_tap $? 78 'RegisterServer' test.out

#- 79 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "zREg9z9pjTezGT51"}' \
    > test.out 2>&1
eval_tap $? 79 'ShutdownServer' test.out

#- 80 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'fdF2uqLHrKi1NAmy' \
    > test.out 2>&1
eval_tap $? 80 'GetServerSessionTimeout' test.out

#- 81 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'KkVlHhlEZgoQgMMT' \
    > test.out 2>&1
eval_tap $? 81 'GetServerSession' test.out

#- 82 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "vRQQOzhXJkXjwj8G", "configuration": "tMKveFe8MKO8ftuP", "deployment": "t9WH5aDELRD7xlsb", "game_mode": "wvrE0Bh2FsR0bEt3", "matching_allies": [{"matching_parties": [{"party_attributes": {"25vcops9LyVuCAKq": {}, "8tElc5PSDSFk1nL9": {}, "XxGaIHrFwK1Y7v39": {}}, "party_id": "JakL4QAgsZ0mCwih", "party_members": [{"user_id": "LIo5ThSPGOf3VPQI"}, {"user_id": "sSoTZNvCO3ERzsc3"}, {"user_id": "ym3qhqZyyCCOixz3"}]}, {"party_attributes": {"PQToYNYFHU477VGX": {}, "anRQblMQVcIV1xGv": {}, "0M0s5uju4eU2ossX": {}}, "party_id": "kXBSWl52K8foGqvC", "party_members": [{"user_id": "frEjeY1WP4dlvTMX"}, {"user_id": "5WgiQn1K3pMs35Ta"}, {"user_id": "spe99JflSfPdejCO"}]}, {"party_attributes": {"R89D3XFza2xKVZN6": {}, "sjJqdTsIOMnFyWu5": {}, "iLq56MWYsJFuo7cb": {}}, "party_id": "4oZUim2H6G2scfip", "party_members": [{"user_id": "VvjbkcmVN6G8awPt"}, {"user_id": "TWwvleu0sYcwsDZz"}, {"user_id": "qUmFHMc15qu3Jtvb"}]}]}, {"matching_parties": [{"party_attributes": {"VBNj1Dz10koEGBqf": {}, "GNXfODyYJkQRsdCZ": {}, "1qTZG7ZRrop7J59H": {}}, "party_id": "bUJzDTz4zQ0vkC47", "party_members": [{"user_id": "a5JyRR2dIPtj1y98"}, {"user_id": "KbUOaf5rTAk4UQeG"}, {"user_id": "GLqb35gDj4xlKhAo"}]}, {"party_attributes": {"TzkoXbPVryk4dSNB": {}, "9v2VEyORv9f3Ig1r": {}, "eHCGuwxw4NfKeaiI": {}}, "party_id": "zHco7bezZoiYVZfn", "party_members": [{"user_id": "9wktg1HPK6o2z4wZ"}, {"user_id": "uqlYfUwWx1XR1EI9"}, {"user_id": "aD7fe0sJQRcjllyU"}]}, {"party_attributes": {"NkjJ3S9HxJZQYqYI": {}, "yBvs1p5V3ftP8JYw": {}, "Ohrbrow1k1L7saoY": {}}, "party_id": "F0ZPMPymnVrrWv57", "party_members": [{"user_id": "VAqMz9sNEBTYkvL9"}, {"user_id": "agORRHY9kEokYXm8"}, {"user_id": "6DmQihuPb1OPrNjH"}]}]}, {"matching_parties": [{"party_attributes": {"agyV0pDRwUHsm8dl": {}, "ZEHu0e1nfIZhoL0d": {}, "xm6ePaMsgiZPYQ5H": {}}, "party_id": "qx1QnmeNkCeCGgbn", "party_members": [{"user_id": "yBmy8sZ2iFIodi1c"}, {"user_id": "TlsWXiv7w8gNUKRG"}, {"user_id": "r3BrtwAdGtsYypGh"}]}, {"party_attributes": {"HHjxg9jdKSpbf3q7": {}, "u3wjRLkIBuKxqDMy": {}, "33JaKo9eb1ZhOTCI": {}}, "party_id": "bmMhEgSz4hLeguRR", "party_members": [{"user_id": "0yRZPOlsOYhbE2sO"}, {"user_id": "e9MlKSGsXFCfNzZZ"}, {"user_id": "ttF1tC3egToLOrfz"}]}, {"party_attributes": {"ZJmNV8oDlngJpiYT": {}, "ZG8r1xPIpAiGzEGr": {}, "6ZvDA5pfsnsOUP3V": {}}, "party_id": "QDV5aoAWtzKLk955", "party_members": [{"user_id": "4Pvjw1R34EJdAhNw"}, {"user_id": "5R4uYhVEL5chB8q7"}, {"user_id": "4DipPrjzeGEarnw3"}]}]}], "namespace": "bf0QU9zTP3P6PMLM", "notification_payload": {}, "pod_name": "8LjFv5DNYJvZnd3g", "region": "t7QPhaMBGYpERCJ8", "session_id": "GZwk72PF4sIK9FiE"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateSession' test.out

#- 83 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"game_mode": "Fo7QBB8L7RKBrPYb", "matching_allies": [{"matching_parties": [{"party_attributes": {"7Qn2yEpqjNSW2p8a": {}, "MfFNlJ0P6iE0vvb4": {}, "bx5s8UvKHBo7iMO3": {}}, "party_id": "cBfLYHCOE2VokWOc", "party_members": [{"user_id": "KWmcDQeJFJKyXLKd"}, {"user_id": "9gH3QrbkqH9HCwUW"}, {"user_id": "byi9Hx1FG12sFPj3"}]}, {"party_attributes": {"ge2lTXWltwv78IZK": {}, "jZ75oV5EM8bQlrdg": {}, "myAFdfEpnkpeGw0X": {}}, "party_id": "Jw8zZ4QehPDYUNsb", "party_members": [{"user_id": "NSIGR3gi7IM6AUaJ"}, {"user_id": "az9DWG1aSlS7ya37"}, {"user_id": "skvhb7kSnxYR9x4o"}]}, {"party_attributes": {"ORkP0WTEZKeL7Lse": {}, "GkEwbmzggGCbjAcp": {}, "e82CQ0d3tRntufVn": {}}, "party_id": "YEO4UgIyJssDsjPc", "party_members": [{"user_id": "SWCWToQPSPQhqRf6"}, {"user_id": "0fokmNyFntMYwROK"}, {"user_id": "ettSuDASJBUxwekr"}]}]}, {"matching_parties": [{"party_attributes": {"NLUAvrOjZHxjX5P6": {}, "qQCoZFY3Dzolcl8V": {}, "NgFTnj9ltFt44t5g": {}}, "party_id": "7mZayAJHEcZAS7vQ", "party_members": [{"user_id": "AvTYk15V5YQzMnWb"}, {"user_id": "zaHXhbuAfS4dBTcC"}, {"user_id": "IXdh7PuEe5E8ZD3y"}]}, {"party_attributes": {"oxmvTvbNHk0Mqnc1": {}, "X9R9AdEwoITozTjO": {}, "OvjediMMrIoRBya6": {}}, "party_id": "TbWTfEUwgomRZWQy", "party_members": [{"user_id": "VO1xqq08wqqPDXaR"}, {"user_id": "vFqifSMET5nuSQ25"}, {"user_id": "Pb3WY4f8dhO2rTim"}]}, {"party_attributes": {"eXNcbUuTx5eZn9CR": {}, "6TFpPXwrz2dwlCH1": {}, "HB0qSUHNV8MR2kuL": {}}, "party_id": "DUMNOmh0esgXw3Yp", "party_members": [{"user_id": "EXNVy6yHGUmboyU1"}, {"user_id": "SKlrjhrtOEIPiZFF"}, {"user_id": "72sprREWkNJ15AYL"}]}]}, {"matching_parties": [{"party_attributes": {"uMuWzfAO3DS5gLCa": {}, "RyMpYtdTH78H8pus": {}, "eM5wwmZ0CIhCqKnC": {}}, "party_id": "rKvkC3eVYey79vTR", "party_members": [{"user_id": "uf22NECPw9gwH35L"}, {"user_id": "cORaQRKKY30ofKDL"}, {"user_id": "ei3Tx1mKFBUoH0iM"}]}, {"party_attributes": {"E6titp0frupYuV6Z": {}, "oUpUhaexDkr00OBt": {}, "HRNA88mt3oyciFVZ": {}}, "party_id": "OO6gxrP47TNo4ddM", "party_members": [{"user_id": "qXfx6sijHbUbzRPG"}, {"user_id": "Dt3yMa2CN4xZyCNs"}, {"user_id": "NGH0YrNE0d8rQVKo"}]}, {"party_attributes": {"rqAJpLm85y8KMkL5": {}, "GHX3NWumZclR4nFr": {}, "jo0Bbk3W4nMfYxzB": {}}, "party_id": "QMaxlgj1AeZU9iKK", "party_members": [{"user_id": "VaTJX7gYfIIJW4z4"}, {"user_id": "pS6JxjmkejjGI3Op"}, {"user_id": "ptCRYpkhjan80IKA"}]}]}], "namespace": "5yVfIBINOksNbNLV", "notification_payload": {}, "session_id": "Um1PVSqGTatKug4r"}' \
    > test.out 2>&1
eval_tap $? 83 'ClaimServer' test.out

#- 84 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'QyYG9dS98kbkCboI' \
    > test.out 2>&1
eval_tap $? 84 'GetSession' test.out

#- 85 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'vpY4tfHczSBmYEgy' \
    > test.out 2>&1
eval_tap $? 85 'CancelSession' test.out

#- 86 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 86 'GetDefaultProvider' test.out

#- 87 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 87 'ListProviders' test.out

#- 88 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region 'WGbjKv2fv7epwGop' \
    > test.out 2>&1
eval_tap $? 88 'ListProvidersByRegion' test.out

#- 89 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 89 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE