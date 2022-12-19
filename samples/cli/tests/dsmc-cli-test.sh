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
    --body '{"artifactPath": "mveNT8go", "image": "JDMoTxxz", "namespace": "SrXyksB6", "persistent": false, "version": "8su2f032"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "n86mwrCo", "dockerPath": "7e1fSezN", "image": "o0jeO7Zf", "imageSize": 89, "namespace": "jZnLKjiw", "persistent": true, "version": "76aReeFt"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "2TY4Jv71", "dockerPath": "gr5tRSFv", "image": "Nd2HhEiB", "imageSize": 95, "namespace": "ZS3nzrq0", "patchVersion": "ruerNA9k", "persistent": false, "version": "3fhGxaXo"}' \
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
    --body '{"claim_timeout": 9, "creation_timeout": 29, "default_version": "ByETzoht", "port": 98, "ports": {"NIv3UNuQ": 42, "kR4nutex": 55, "HnSFLpLO": 65}, "protocol": "a6CL1hgO", "providers": ["KP77tU5i", "myrjFRpB", "tPlMEVzV"], "session_timeout": 92, "unreachable_timeout": 71}' \
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
    --body '{"claim_timeout": 55, "creation_timeout": 68, "default_version": "smhjI0Ut", "port": 20, "protocol": "Sz1umwLY", "providers": ["1fuz1Mme", "85E2iGZO", "3er2iphw"], "session_timeout": 49, "unreachable_timeout": 59}' \
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
    --name '3VhXrHjr' \
    --count '4' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'SbCjhDYi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'UrG7yhaN' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 6, "buffer_percent": 32, "configuration": "LtP6gpgv", "enable_region_overrides": false, "game_version": "mfe69Ikw", "max_count": 83, "min_count": 7, "overrides": {"5eSVdCHO": {"buffer_count": 13, "buffer_percent": 41, "configuration": "IdlmZeRn", "enable_region_overrides": false, "game_version": "pmBDMdFd", "max_count": 39, "min_count": 70, "name": "A4tjGPsF", "region_overrides": {"Bv5L0Vok": {"buffer_count": 56, "buffer_percent": 0, "max_count": 39, "min_count": 27, "name": "iCMyh7l2", "unlimited": false, "use_buffer_percent": false}, "E5zaWO3q": {"buffer_count": 59, "buffer_percent": 72, "max_count": 0, "min_count": 67, "name": "mblMmT8v", "unlimited": false, "use_buffer_percent": false}, "FWARpinJ": {"buffer_count": 76, "buffer_percent": 25, "max_count": 82, "min_count": 11, "name": "77Qk5aJj", "unlimited": true, "use_buffer_percent": true}}, "regions": ["j30sjKIE", "uQfPhiKa", "McgiPw6P"], "session_timeout": 85, "unlimited": false, "use_buffer_percent": true}, "XO3gW1Yr": {"buffer_count": 13, "buffer_percent": 45, "configuration": "nnmn94tK", "enable_region_overrides": false, "game_version": "oVhiEb6P", "max_count": 2, "min_count": 78, "name": "v0BRDp8b", "region_overrides": {"EDhZBBhc": {"buffer_count": 22, "buffer_percent": 10, "max_count": 53, "min_count": 83, "name": "ytJPh5SO", "unlimited": true, "use_buffer_percent": false}, "mVKcfu0S": {"buffer_count": 24, "buffer_percent": 86, "max_count": 6, "min_count": 8, "name": "szjtHjMf", "unlimited": true, "use_buffer_percent": false}, "9fi2X9bZ": {"buffer_count": 35, "buffer_percent": 99, "max_count": 69, "min_count": 56, "name": "1VS3a1g3", "unlimited": true, "use_buffer_percent": true}}, "regions": ["q9ZCyB7v", "D8xaklMB", "5Gv69hP0"], "session_timeout": 65, "unlimited": false, "use_buffer_percent": true}, "tl3F4D6v": {"buffer_count": 11, "buffer_percent": 9, "configuration": "pKIJ82d6", "enable_region_overrides": true, "game_version": "4GOamGCd", "max_count": 23, "min_count": 51, "name": "JPAKn4td", "region_overrides": {"Kdgyh40l": {"buffer_count": 11, "buffer_percent": 3, "max_count": 53, "min_count": 71, "name": "WwiFNoaV", "unlimited": false, "use_buffer_percent": false}, "FEX81cRk": {"buffer_count": 32, "buffer_percent": 70, "max_count": 83, "min_count": 94, "name": "iVi1F6Kb", "unlimited": false, "use_buffer_percent": true}, "k1U0NsNH": {"buffer_count": 86, "buffer_percent": 48, "max_count": 24, "min_count": 91, "name": "WJbuQA92", "unlimited": false, "use_buffer_percent": false}}, "regions": ["uGyVNcde", "AqdEbRBG", "oZoybJLx"], "session_timeout": 80, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"CIwG3C95": {"buffer_count": 91, "buffer_percent": 20, "max_count": 8, "min_count": 37, "name": "9jenvUjD", "unlimited": false, "use_buffer_percent": true}, "i8vnbyJY": {"buffer_count": 31, "buffer_percent": 10, "max_count": 71, "min_count": 38, "name": "J2mBcGGb", "unlimited": false, "use_buffer_percent": true}, "1LmyFbbJ": {"buffer_count": 50, "buffer_percent": 75, "max_count": 18, "min_count": 56, "name": "ftQCUXAc", "unlimited": false, "use_buffer_percent": true}}, "regions": ["IX675k52", "MThaNors", "lCBxlrmq"], "session_timeout": 96, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment '0iWZMfm6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment '9P4GQc0H' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 41, "buffer_percent": 20, "configuration": "yGAoptOy", "enable_region_overrides": false, "game_version": "XmFrvkcg", "max_count": 20, "min_count": 19, "regions": ["gAmfNQyN", "9OxOFnl0", "5bOmOzJa"], "session_timeout": 68, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 's7pwFhmU' \
    --namespace $AB_NAMESPACE \
    --region '86EBNBes' \
    --body '{"buffer_count": 14, "buffer_percent": 13, "max_count": 49, "min_count": 22, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'vhObu7ca' \
    --namespace $AB_NAMESPACE \
    --region 'hpQwArxV' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment '3sVNd3Iw' \
    --namespace $AB_NAMESPACE \
    --region 'CqeXvVXV' \
    --body '{"buffer_count": 67, "buffer_percent": 3, "max_count": 2, "min_count": 76, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'lJ0jAzJz' \
    --namespace $AB_NAMESPACE \
    --version 'dwziMcD8' \
    --body '{"buffer_count": 61, "buffer_percent": 39, "configuration": "xvKRyMXL", "enable_region_overrides": false, "game_version": "wefzNgmW", "max_count": 22, "min_count": 16, "region_overrides": {"DATo71rm": {"buffer_count": 82, "buffer_percent": 26, "max_count": 97, "min_count": 49, "name": "E6uQXRQb", "unlimited": true, "use_buffer_percent": true}, "v5wry4kb": {"buffer_count": 66, "buffer_percent": 12, "max_count": 16, "min_count": 52, "name": "ySpJClU4", "unlimited": false, "use_buffer_percent": true}, "GImJ1hHW": {"buffer_count": 56, "buffer_percent": 68, "max_count": 38, "min_count": 23, "name": "in1CwGlB", "unlimited": true, "use_buffer_percent": true}}, "regions": ["TD6lawjS", "4fyIDg0v", "eFTvxNHa"], "session_timeout": 20, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'pgxLuqaS' \
    --namespace $AB_NAMESPACE \
    --version 'qRrMGOJy' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment '2nzUlQwx' \
    --namespace $AB_NAMESPACE \
    --version 'IQr7sf0K' \
    --body '{"buffer_count": 5, "buffer_percent": 65, "configuration": "FGLRs13H", "enable_region_overrides": false, "game_version": "HLhwku2R", "max_count": 90, "min_count": 66, "regions": ["F1rVgx1s", "E6pSeVcZ", "alzdqZAO"], "session_timeout": 78, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'kJu71Xro' \
    --namespace $AB_NAMESPACE \
    --region 'wxtPy27b' \
    --version 'KDzhLGW2' \
    --body '{"buffer_count": 73, "buffer_percent": 19, "max_count": 41, "min_count": 45, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'YDVF0VkW' \
    --namespace $AB_NAMESPACE \
    --region 'nNCgn1Fv' \
    --version '0sKDMnFj' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'HpgnmVgx' \
    --namespace $AB_NAMESPACE \
    --region '2epPGiKN' \
    --version '6bnEOXhX' \
    --body '{"buffer_count": 1, "buffer_percent": 85, "max_count": 97, "min_count": 63, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '32' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'UEJSrCA8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '22PAVZPA' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 34, "mem_limit": 56, "params": "3y7L5YBc"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'STFGoFyK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'dcDKF9zp' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 14, "mem_limit": 79, "name": "nZvp1gaW", "params": "On7rlIkj"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '0xTgCsiS' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 11}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'ysFUVJ2c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'XQKyepom' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "w5q5cuST", "port": 49}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q '7tFDNDzd' \
    --sortBy 'createdAt' \
    --sortDirection 'desc' \
    --count '48' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'ioKMjupw' \
    --version 'bR6mH7sT' \
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
    --imageURI 'VvXJjmrc' \
    --version 'ftjRBChF' \
    --versionPatch 'iBLvLgIZ' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'S1GjmgYp' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'DcfnYFe7' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'OYfgZiYV' \
    --versionPatch 'tqVUfugh' \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region '8s8VFKen' \
    --count '78' \
    --offset '69' \
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
    --region 'N3Z8asBF' \
    > test.out 2>&1
eval_tap $? 46 'CountServerDetailed' test.out

#- 47 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'ListLocalServer' test.out

#- 48 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'dXOPiP8r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'ywHtRyWt' \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'hH4h1NUC' \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region '7eu5Ly08' \
    --withServer 'false' \
    --count '32' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'RNdp6Rcg' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'arB76HvW' \
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
    --version 'QFP1D2Vn' \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "v3hHjPuO"}' \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "rbL6ge3c", "ip": "ioR2TLEm", "name": "CHvEBUtY", "port": 28}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "KJ4BGQNq", "pod_name": "G8z7s8ZV"}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "7bGLa5s1"}' \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'IWH7oLCO' \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "Sh1C6yBh", "configuration": "P7Fo8eTM", "deployment": "VvrDoc0E", "game_mode": "i3KtEnvm", "matching_allies": [{"matching_parties": [{"party_attributes": {"zHz2vMqb": {}, "5BcVYNnz": {}, "ZEfTz16Y": {}}, "party_id": "l6MAVuWf", "party_members": [{"user_id": "AZhvSWBF"}, {"user_id": "s2JMbVsP"}, {"user_id": "OZtsQteU"}]}, {"party_attributes": {"MwhsGqvy": {}, "fBs1WBkk": {}, "W3boCmp4": {}}, "party_id": "kizBko0a", "party_members": [{"user_id": "iw2pyQza"}, {"user_id": "ADTb1gIT"}, {"user_id": "9CeR6t6M"}]}, {"party_attributes": {"ymXbM506": {}, "JhOmqo23": {}, "13IuQTIP": {}}, "party_id": "JuUXyrW3", "party_members": [{"user_id": "fG3Lvwi6"}, {"user_id": "CTNIdlPu"}, {"user_id": "hhhDwD4z"}]}]}, {"matching_parties": [{"party_attributes": {"PsSDPf3K": {}, "Z3P7UrPr": {}, "1DMPCpjh": {}}, "party_id": "Mjpr59RY", "party_members": [{"user_id": "iTkapZC3"}, {"user_id": "V4KO8hXt"}, {"user_id": "HYLpkbNG"}]}, {"party_attributes": {"pPVhXhG6": {}, "kyaiSzMj": {}, "ZcbNk4yC": {}}, "party_id": "mgdxBYhg", "party_members": [{"user_id": "9iIQYwKT"}, {"user_id": "kGl3wYyk"}, {"user_id": "kabyt3Eg"}]}, {"party_attributes": {"K30NDIq9": {}, "mCrNwYFp": {}, "em7NZpMT": {}}, "party_id": "Fe7Hz39K", "party_members": [{"user_id": "nJEaLsLF"}, {"user_id": "K4X3WymF"}, {"user_id": "OriPsThq"}]}]}, {"matching_parties": [{"party_attributes": {"lWhkcKu7": {}, "Bo5syL2l": {}, "XXlqzlMw": {}}, "party_id": "ttXwMFlB", "party_members": [{"user_id": "3FRTKRRy"}, {"user_id": "eKgKdcGG"}, {"user_id": "9rgWNkNH"}]}, {"party_attributes": {"AN1AqZHI": {}, "yjbMaIlf": {}, "xYis5qWP": {}}, "party_id": "b4rUhj3Z", "party_members": [{"user_id": "myp077XX"}, {"user_id": "NimnWSAD"}, {"user_id": "1hDm3M6S"}]}, {"party_attributes": {"1t4tMaA0": {}, "rcK1F5n4": {}, "rMJLpRvf": {}}, "party_id": "BjpOtX2x", "party_members": [{"user_id": "jlCK94h7"}, {"user_id": "H1h4yuin"}, {"user_id": "jSPIRyQd"}]}]}], "namespace": "ajJU8uaR", "notification_payload": {}, "pod_name": "7qluaLor", "region": "mihatYQA", "session_id": "IxKfVACh"}' \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "whtbJg4K"}' \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'uqNL5g58' \
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
    --region 'HzcSTmdZ' \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE