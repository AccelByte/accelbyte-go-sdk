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
    --body '{"artifactPath": "ufRBhB4Y", "image": "s9ifEhHa", "namespace": "pCxZsPgD", "persistent": true, "version": "EgMcjjkn"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "9zOyTn0s", "dockerPath": "mnCHP6y3", "image": "kntJj1AY", "namespace": "RzyErmSB", "persistent": true, "version": "q2CiLP0o"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "0nExiZGG", "dockerPath": "D4zwqyIS", "image": "6a6c3LtS", "namespace": "cLhNop01", "patchVersion": "272igQL8", "persistent": true, "version": "tLUC6aKd"}' \
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
    --body '{"claim_timeout": 46, "creation_timeout": 82, "default_version": "u0mnYIH4", "port": 24, "ports": {"TTGp2sZU": 8, "lMMSsCy8": 26, "PDWkwKKH": 75}, "protocol": "Tu8Viptw", "providers": ["JQC19NJs", "UbKbUld1", "wFjsveQW"], "session_timeout": 90, "unreachable_timeout": 30}' \
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
    --body '{"claim_timeout": 20, "creation_timeout": 45, "default_version": "Vsk1gSfo", "port": 66, "protocol": "o2gQxyJK", "providers": ["lsodhnGf", "AGFE9I1G", "nOm7arhS"], "session_timeout": 50, "unreachable_timeout": 56}' \
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
    --name '2apwhHae' \
    --count '42' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 13 'GetAllDeployment' test.out

#- 14 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'nTYJ1hB7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetDeployment' test.out

#- 15 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'JqIHHCw5' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 47, "buffer_percent": 14, "configuration": "HajB29CG", "enable_region_overrides": true, "game_version": "ladUN6cs", "max_count": 9, "min_count": 5, "overrides": {"IYdI5SKC": {"buffer_count": 8, "buffer_percent": 54, "configuration": "Q0xpuFOV", "enable_region_overrides": true, "game_version": "Oke6wCFd", "max_count": 39, "min_count": 11, "name": "1jaihlsa", "region_overrides": {"Gzh12X93": {"buffer_count": 93, "buffer_percent": 81, "max_count": 21, "min_count": 87, "name": "gCUiRHRU", "use_buffer_percent": true}, "9MgR3b7S": {"buffer_count": 87, "buffer_percent": 10, "max_count": 14, "min_count": 43, "name": "UaYsiei8", "use_buffer_percent": true}, "N2d20NnT": {"buffer_count": 70, "buffer_percent": 48, "max_count": 93, "min_count": 86, "name": "LljMMLPY", "use_buffer_percent": true}}, "regions": ["XjuLpVwG", "HNRj8twq", "rGmOXY1S"], "session_timeout": 71, "use_buffer_percent": true}, "lO6HhOTH": {"buffer_count": 30, "buffer_percent": 16, "configuration": "wOpCIfu4", "enable_region_overrides": true, "game_version": "75FGxc8A", "max_count": 67, "min_count": 0, "name": "sD9wYPJP", "region_overrides": {"Ymn0Mt9i": {"buffer_count": 44, "buffer_percent": 23, "max_count": 48, "min_count": 59, "name": "pKir6dlo", "use_buffer_percent": true}, "YYKrhg0u": {"buffer_count": 33, "buffer_percent": 50, "max_count": 65, "min_count": 5, "name": "jBYeRd3z", "use_buffer_percent": false}, "7gxRq52V": {"buffer_count": 99, "buffer_percent": 83, "max_count": 15, "min_count": 42, "name": "48yrN1At", "use_buffer_percent": false}}, "regions": ["s16QuR63", "A8Nub7jm", "xNUX93MN"], "session_timeout": 71, "use_buffer_percent": false}, "NvXgVzYc": {"buffer_count": 24, "buffer_percent": 26, "configuration": "U1mr7JjS", "enable_region_overrides": false, "game_version": "XBje4b4p", "max_count": 0, "min_count": 50, "name": "d6Hnfoop", "region_overrides": {"TBVQPVWZ": {"buffer_count": 65, "buffer_percent": 80, "max_count": 11, "min_count": 74, "name": "mDT3COi5", "use_buffer_percent": true}, "Pv4vzbzA": {"buffer_count": 28, "buffer_percent": 42, "max_count": 63, "min_count": 60, "name": "UvWvyqPZ", "use_buffer_percent": true}, "6tEumnqJ": {"buffer_count": 11, "buffer_percent": 95, "max_count": 31, "min_count": 74, "name": "igocSlqH", "use_buffer_percent": false}}, "regions": ["ihBn5S92", "wTYnCPAt", "pHbgFqlk"], "session_timeout": 20, "use_buffer_percent": true}}, "region_overrides": {"y2fSFvsM": {"buffer_count": 69, "buffer_percent": 18, "max_count": 7, "min_count": 58, "name": "v2GzB7Do", "use_buffer_percent": false}, "LHiIyJI3": {"buffer_count": 13, "buffer_percent": 97, "max_count": 53, "min_count": 14, "name": "Ozkg4NUq", "use_buffer_percent": false}, "Okp3a4u3": {"buffer_count": 5, "buffer_percent": 89, "max_count": 54, "min_count": 25, "name": "HEZYHf0N", "use_buffer_percent": true}}, "regions": ["rmvAF62p", "Mn21i97C", "WwJvvsMl"], "session_timeout": 90, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 15 'CreateDeployment' test.out

#- 16 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'eRzmNNlR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteDeployment' test.out

#- 17 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'eOVx3Ynx' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 100, "buffer_percent": 70, "configuration": "XP5nsptb", "enable_region_overrides": true, "game_version": "r2WejnpN", "max_count": 36, "min_count": 76, "regions": ["nZ13oE8s", "4g5Buors", "dZejJEKS"], "session_timeout": 74, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateDeployment' test.out

#- 18 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'BfBmL4dM' \
    --namespace $AB_NAMESPACE \
    --region 'Q9Nw9wQ4' \
    --body '{"buffer_count": 71, "buffer_percent": 40, "max_count": 60, "min_count": 31, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'CreateRootRegionOverride' test.out

#- 19 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'N0nVuNkj' \
    --namespace $AB_NAMESPACE \
    --region '6UzXV4zE' \
    > test.out 2>&1
eval_tap $? 19 'DeleteRootRegionOverride' test.out

#- 20 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'ZttjdZ4p' \
    --namespace $AB_NAMESPACE \
    --region 'HdydkuoG' \
    --body '{"buffer_count": 52, "buffer_percent": 80, "max_count": 20, "min_count": 82, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateRootRegionOverride' test.out

#- 21 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'x7erCJmH' \
    --namespace $AB_NAMESPACE \
    --version 'S49zZq2c' \
    --body '{"buffer_count": 65, "buffer_percent": 63, "configuration": "DrUNjFAb", "enable_region_overrides": true, "game_version": "l6tcBW7M", "max_count": 41, "min_count": 37, "region_overrides": {"VNPQA98N": {"buffer_count": 5, "buffer_percent": 72, "max_count": 9, "min_count": 42, "name": "h8P7jd4P", "use_buffer_percent": false}, "Ggeutr5D": {"buffer_count": 67, "buffer_percent": 83, "max_count": 3, "min_count": 63, "name": "MuMJxGbD", "use_buffer_percent": true}, "lYmSqPmR": {"buffer_count": 1, "buffer_percent": 44, "max_count": 60, "min_count": 35, "name": "zGoGZxEK", "use_buffer_percent": false}}, "regions": ["glJGRrmr", "QWDRGjMw", "YufYLheH"], "session_timeout": 83, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'CreateDeploymentOverride' test.out

#- 22 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'NM7LANTL' \
    --namespace $AB_NAMESPACE \
    --version '2wTRD5vc' \
    > test.out 2>&1
eval_tap $? 22 'DeleteDeploymentOverride' test.out

#- 23 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'ZEv177uo' \
    --namespace $AB_NAMESPACE \
    --version 'CZ3cUrp4' \
    --body '{"buffer_count": 39, "buffer_percent": 4, "configuration": "lnh6SE6X", "enable_region_overrides": false, "game_version": "9aJgBuHK", "max_count": 55, "min_count": 12, "regions": ["Y33QJOjY", "0NGCNk4L", "jjE3R0wn"], "session_timeout": 32, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateDeploymentOverride' test.out

#- 24 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'Y4rXrUnR' \
    --namespace $AB_NAMESPACE \
    --region 'QgMD09zd' \
    --version 'bJrr9XcH' \
    --body '{"buffer_count": 91, "buffer_percent": 5, "max_count": 37, "min_count": 52, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'CreateOverrideRegionOverride' test.out

#- 25 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'f8zIvdXT' \
    --namespace $AB_NAMESPACE \
    --region 'WYEnz9eE' \
    --version 'wqlC9Mrw' \
    > test.out 2>&1
eval_tap $? 25 'DeleteOverrideRegionOverride' test.out

#- 26 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'Udk7yd44' \
    --namespace $AB_NAMESPACE \
    --region 'lsnkF1sT' \
    --version 'vnDCMvPj' \
    --body '{"buffer_count": 7, "buffer_percent": 71, "max_count": 30, "min_count": 87, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateOverrideRegionOverride' test.out

#- 27 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '52' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 27 'GetAllPodConfig' test.out

#- 28 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name '1w7Ojf6T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetPodConfig' test.out

#- 29 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'zX9Gj94O' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 100, "mem_limit": 49, "params": "2Pz58EvY"}' \
    > test.out 2>&1
eval_tap $? 29 'CreatePodConfig' test.out

#- 30 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'cfhCKeoj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeletePodConfig' test.out

#- 31 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name '9vfMy4BZ' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 69, "mem_limit": 6, "name": "WVnYbjUs", "params": "9MeNX6eB"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdatePodConfig' test.out

#- 32 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'mBIGZt95' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 48}' \
    > test.out 2>&1
eval_tap $? 32 'AddPort' test.out

#- 33 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'JYfrf1Qi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeletePort' test.out

#- 34 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'H6NqVLoL' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "YC9jiUSP", "port": 90}' \
    > test.out 2>&1
eval_tap $? 34 'UpdatePort' test.out

#- 35 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'nzdFGA9T' \
    --sortBy 'createdAt' \
    --sortDirection 'asc' \
    --count '67' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 35 'ListImages' test.out

#- 36 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI '8mww2eYf' \
    --version 'BlOKGwF2' \
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
    --imageURI 'QnKWBm9U' \
    --version 'BYv9tDyA' \
    --versionPatch '6wNoAAMV' \
    > test.out 2>&1
eval_tap $? 39 'DeleteImagePatch' test.out

#- 40 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'fRzEigXl' \
    > test.out 2>&1
eval_tap $? 40 'GetImageDetail' test.out

#- 41 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'mJRrXScl' \
    > test.out 2>&1
eval_tap $? 41 'GetImagePatches' test.out

#- 42 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'ewbiaM40' \
    --versionPatch '6XjG5jxh' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatchDetail' test.out

#- 43 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'VtkreJH8' \
    --count '22' \
    --offset '61' \
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
    --region 'YUs2zYxl' \
    > test.out 2>&1
eval_tap $? 45 'CountServerDetailed' test.out

#- 46 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'ListLocalServer' test.out

#- 47 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'Z6EbbW1W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteLocalServer' test.out

#- 48 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'ZLM5ccqZ' \
    > test.out 2>&1
eval_tap $? 48 'GetServer' test.out

#- 49 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'CJLCbPry' \
    > test.out 2>&1
eval_tap $? 49 'DeleteServer' test.out

#- 50 GetServerLogs
samples/cli/sample-apps Dsmc getServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'BFY0fUmx' \
    > test.out 2>&1
eval_tap $? 50 'GetServerLogs' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region '96B7rW22' \
    --withServer 'true' \
    --count '41' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region '6UBGqnWh' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'nnFwxLWB' \
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
    --version 'oJSQOSs1' \
    > test.out 2>&1
eval_tap $? 56 'ImageDetailClient' test.out

#- 57 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "l8bVBfAa"}' \
    > test.out 2>&1
eval_tap $? 57 'DeregisterLocalServer' test.out

#- 58 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "FW0XdDYM", "ip": "YSlcCHiq", "name": "JcvOKouA", "port": 91}' \
    > test.out 2>&1
eval_tap $? 58 'RegisterLocalServer' test.out

#- 59 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "59hcql0c", "pod_name": "qLaqlwAP"}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterServer' test.out

#- 60 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "b4fnO2CN"}' \
    > test.out 2>&1
eval_tap $? 60 'ShutdownServer' test.out

#- 61 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName '1bNaKpib' \
    > test.out 2>&1
eval_tap $? 61 'GetServerSession' test.out

#- 62 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "DZthImDl", "configuration": "QLAHxJWE", "deployment": "ibn15pq5", "game_mode": "wm4wSe9I", "matching_allies": [{"matching_parties": [{"party_attributes": {"YLSTZyHY": {}, "yXakHy81": {}, "nNVlEqFP": {}}, "party_id": "PlIX2A4X", "party_members": [{"user_id": "GxoJvnjz"}, {"user_id": "hfO2z14s"}, {"user_id": "8mK8J6fj"}]}, {"party_attributes": {"ZwEziUe4": {}, "AIrPDzYC": {}, "9EeMaWv1": {}}, "party_id": "34VZsFEW", "party_members": [{"user_id": "JnP5hE4D"}, {"user_id": "fvvMTO3b"}, {"user_id": "77qj2wCd"}]}, {"party_attributes": {"Na84SzHP": {}, "K1sIAG1f": {}, "1MHXm7Kn": {}}, "party_id": "Zngfma6R", "party_members": [{"user_id": "2G2xQP4M"}, {"user_id": "VQ4BtIV8"}, {"user_id": "oHBuT4xO"}]}]}, {"matching_parties": [{"party_attributes": {"vl37rswj": {}, "0r1hNGVf": {}, "oAReEGik": {}}, "party_id": "XlCiJ3v2", "party_members": [{"user_id": "xdfF94Ia"}, {"user_id": "Ipla49Gc"}, {"user_id": "VRbUcXPz"}]}, {"party_attributes": {"M1nE0AnV": {}, "vFFe84ug": {}, "sxtHInNr": {}}, "party_id": "Qyb5GskV", "party_members": [{"user_id": "tOFU0nib"}, {"user_id": "fiBEPTe1"}, {"user_id": "QrnhvpcG"}]}, {"party_attributes": {"ww3kDl8e": {}, "dSbxJi61": {}, "v1wTPnkL": {}}, "party_id": "8WwWC5tm", "party_members": [{"user_id": "81DePIBb"}, {"user_id": "RXlDVk4x"}, {"user_id": "oTKaNohi"}]}]}, {"matching_parties": [{"party_attributes": {"jjS425JJ": {}, "9lR4YilK": {}, "cbSwRqNL": {}}, "party_id": "ATIfoI5b", "party_members": [{"user_id": "LYs2veci"}, {"user_id": "Gh3kQu3g"}, {"user_id": "GGFGEmzw"}]}, {"party_attributes": {"8txgdgXH": {}, "AEpFqmUF": {}, "HCrzpFSB": {}}, "party_id": "bpYWp4eu", "party_members": [{"user_id": "neSPIFtM"}, {"user_id": "eUNe9s0E"}, {"user_id": "Jf5RUH4G"}]}, {"party_attributes": {"CCsDM0i4": {}, "Hwg23sSc": {}, "v3rCy0GU": {}}, "party_id": "ewL0v12O", "party_members": [{"user_id": "ffHrV2LV"}, {"user_id": "4WOXhHG5"}, {"user_id": "ss4zrmUr"}]}]}], "namespace": "r8oSQROA", "notification_payload": {}, "pod_name": "O970wuRc", "region": "Zo3Ec9So", "session_id": "dDevH25x"}' \
    > test.out 2>&1
eval_tap $? 62 'CreateSession' test.out

#- 63 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "fkTgf7Jn"}' \
    > test.out 2>&1
eval_tap $? 63 'ClaimServer' test.out

#- 64 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '17636CH2' \
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
    --region 'H7om71L5' \
    > test.out 2>&1
eval_tap $? 67 'ListProvidersByRegion' test.out

#- 68 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 68 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE