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
    --body '{"artifactPath": "m6BpEq9e", "image": "ZvXr4dzp", "namespace": "iGetB0VG", "persistent": true, "version": "FAOXv6le"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "boJyk6fr", "dockerPath": "ggQn4Apn", "image": "FwB2dt6b", "imageSize": 11, "namespace": "246fLHZQ", "persistent": false, "version": "u9yS79Ab"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "n4AmEfUw", "dockerPath": "XsuRsjeD", "image": "EMGGmtM3", "imageSize": 0, "namespace": "qRG702eY", "patchVersion": "JN4r05wj", "persistent": true, "version": "lw7NFUNV"}' \
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
    --body '{"claim_timeout": 62, "creation_timeout": 21, "default_version": "0hDSqHm8", "port": 14, "ports": {"C1vIYBGp": 76, "XcUVeOvk": 65, "rkxyMlOI": 83}, "protocol": "SFK2Nhzt", "providers": ["udWBjtN3", "P39DwdZu", "17L8gBWi"], "session_timeout": 57, "unreachable_timeout": 80}' \
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
    --body '{"claim_timeout": 83, "creation_timeout": 87, "default_version": "QbJwJVsv", "port": 61, "protocol": "vS5oLp71", "providers": ["45V2dFzn", "KQTKNBGb", "DjYbcUzQ"], "session_timeout": 10, "unreachable_timeout": 28}' \
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
    --name 'D1jT38Qw' \
    --count '98' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'NgJsMLju' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'TUfZjzpr' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 79, "buffer_percent": 87, "configuration": "U5vcyE6F", "enable_region_overrides": false, "game_version": "Qjb1Uqih", "max_count": 89, "min_count": 43, "overrides": {"YIAdFkeO": {"buffer_count": 68, "buffer_percent": 40, "configuration": "MaFIdMHV", "enable_region_overrides": true, "game_version": "7KXCyxcc", "max_count": 36, "min_count": 1, "name": "NTfG3xgm", "region_overrides": {"MC6KGRbC": {"buffer_count": 53, "buffer_percent": 60, "max_count": 28, "min_count": 29, "name": "aeOxhu3t", "unlimited": false, "use_buffer_percent": false}, "SkmCWuOL": {"buffer_count": 30, "buffer_percent": 57, "max_count": 25, "min_count": 54, "name": "JO2bH93x", "unlimited": true, "use_buffer_percent": true}, "Zc61Csxy": {"buffer_count": 8, "buffer_percent": 82, "max_count": 3, "min_count": 80, "name": "NcDlYNKY", "unlimited": true, "use_buffer_percent": true}}, "regions": ["E4kzq5JP", "C4qzEG8j", "0SehAvHE"], "session_timeout": 70, "unlimited": false, "use_buffer_percent": false}, "v0qxHCGW": {"buffer_count": 37, "buffer_percent": 5, "configuration": "T1mvNFW5", "enable_region_overrides": false, "game_version": "q8QxvKv8", "max_count": 31, "min_count": 27, "name": "WMG7o6ss", "region_overrides": {"asmtjffk": {"buffer_count": 64, "buffer_percent": 21, "max_count": 49, "min_count": 91, "name": "byATZEDA", "unlimited": true, "use_buffer_percent": true}, "5LssXgFO": {"buffer_count": 19, "buffer_percent": 88, "max_count": 36, "min_count": 52, "name": "N5uDT4d3", "unlimited": false, "use_buffer_percent": false}, "vGrwiek8": {"buffer_count": 81, "buffer_percent": 74, "max_count": 80, "min_count": 45, "name": "zyeAmNEu", "unlimited": true, "use_buffer_percent": false}}, "regions": ["gU5XOYIm", "WATIAYz7", "yhIrmkbn"], "session_timeout": 25, "unlimited": true, "use_buffer_percent": true}, "bFkrqmPH": {"buffer_count": 45, "buffer_percent": 24, "configuration": "zl8ECZfo", "enable_region_overrides": false, "game_version": "7bJQYv9H", "max_count": 36, "min_count": 63, "name": "TF1e0c6Q", "region_overrides": {"pWCfb6ZI": {"buffer_count": 57, "buffer_percent": 28, "max_count": 65, "min_count": 40, "name": "pfpNjGTb", "unlimited": true, "use_buffer_percent": true}, "8t42pMfM": {"buffer_count": 25, "buffer_percent": 58, "max_count": 70, "min_count": 63, "name": "aLcZ8bJa", "unlimited": false, "use_buffer_percent": false}, "j6PTU7ly": {"buffer_count": 88, "buffer_percent": 19, "max_count": 96, "min_count": 74, "name": "aa7cpn2e", "unlimited": false, "use_buffer_percent": false}}, "regions": ["St1T1GqM", "kfqC6hou", "GSukuWUn"], "session_timeout": 34, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"NDPlaJb9": {"buffer_count": 29, "buffer_percent": 52, "max_count": 28, "min_count": 49, "name": "9aFpcH4N", "unlimited": true, "use_buffer_percent": false}, "DTH5WCzm": {"buffer_count": 17, "buffer_percent": 100, "max_count": 91, "min_count": 27, "name": "aApvcqOj", "unlimited": false, "use_buffer_percent": false}, "98AtHHfN": {"buffer_count": 20, "buffer_percent": 5, "max_count": 29, "min_count": 51, "name": "rrYrkE0K", "unlimited": true, "use_buffer_percent": false}}, "regions": ["1UvsMbw3", "CVln8XAA", "yQ2RdhNY"], "session_timeout": 3, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment '4ENQd9oq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment '10rLVsRl' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 34, "buffer_percent": 74, "configuration": "Ug5JRQpT", "enable_region_overrides": true, "game_version": "X8TdGXk7", "max_count": 7, "min_count": 7, "regions": ["4XYQmm3F", "Son5UH7P", "K3xEyvWp"], "session_timeout": 76, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'VUulhH5d' \
    --namespace $AB_NAMESPACE \
    --region 'r3KNBQ2X' \
    --body '{"buffer_count": 31, "buffer_percent": 89, "max_count": 76, "min_count": 77, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'iED2WVfT' \
    --namespace $AB_NAMESPACE \
    --region 'qTuHXHAX' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'NoN5rKQL' \
    --namespace $AB_NAMESPACE \
    --region 'OzCOSJcv' \
    --body '{"buffer_count": 55, "buffer_percent": 1, "max_count": 46, "min_count": 20, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment '2HjS0ERl' \
    --namespace $AB_NAMESPACE \
    --version 'DDejPU8W' \
    --body '{"buffer_count": 54, "buffer_percent": 80, "configuration": "5ELjI3BX", "enable_region_overrides": false, "game_version": "XtSqF9vc", "max_count": 32, "min_count": 43, "region_overrides": {"9i1AdzGd": {"buffer_count": 91, "buffer_percent": 57, "max_count": 1, "min_count": 87, "name": "cglSLACw", "unlimited": true, "use_buffer_percent": false}, "WGD0viKL": {"buffer_count": 47, "buffer_percent": 90, "max_count": 94, "min_count": 90, "name": "VhOJeDG4", "unlimited": true, "use_buffer_percent": true}, "MbqBA4fv": {"buffer_count": 64, "buffer_percent": 59, "max_count": 97, "min_count": 56, "name": "bGHfLHU9", "unlimited": false, "use_buffer_percent": true}}, "regions": ["ZHR4IQ69", "YbuzelCx", "Bhiycti7"], "session_timeout": 89, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment '2GSG82pY' \
    --namespace $AB_NAMESPACE \
    --version 'J6jm46mV' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'kVScfye3' \
    --namespace $AB_NAMESPACE \
    --version 'RMoTXhST' \
    --body '{"buffer_count": 64, "buffer_percent": 89, "configuration": "PiizbdZT", "enable_region_overrides": false, "game_version": "PyGvpl6B", "max_count": 91, "min_count": 18, "regions": ["rfAG4FD6", "3kN3znfk", "AnXdSqmc"], "session_timeout": 55, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment '4yK1BK90' \
    --namespace $AB_NAMESPACE \
    --region 'swwF1p3j' \
    --version 'R5AKY5hW' \
    --body '{"buffer_count": 57, "buffer_percent": 30, "max_count": 5, "min_count": 34, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'c8j9ohzP' \
    --namespace $AB_NAMESPACE \
    --region 'RLLDtqev' \
    --version 'UFJHIg4A' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '3liwJouo' \
    --namespace $AB_NAMESPACE \
    --region 'TGCmvsHr' \
    --version 'BkT4QBlD' \
    --body '{"buffer_count": 99, "buffer_percent": 0, "max_count": 60, "min_count": 55, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '19' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'MXjYvjg1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'FvNdaFma' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 54, "mem_limit": 59, "params": "wEAIDPYu"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'KxShFVaH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'z8COknWn' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 46, "mem_limit": 54, "name": "HeZn7TH7", "params": "wDM5F2i2"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'EH6jUMAw' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 61}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '5bvs0OJz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'DaA1NWTj' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "ksIBhtXp", "port": 15}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'Wlu17LvW' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    --count '94' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'pR0XstOr' \
    --version 'WtFXmldm' \
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
    --imageURI '8rbe75Yd' \
    --version 'R8RAkByF' \
    --versionPatch 'xiUkNq2N' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'RLmB0A0I' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'viiSbbnS' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'ZJDAu66E' \
    --versionPatch 'ZIt8Du7N' \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'qys0ibET' \
    --count '30' \
    --offset '10' \
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
    --region 'O1FXkBUU' \
    > test.out 2>&1
eval_tap $? 46 'CountServerDetailed' test.out

#- 47 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'ListLocalServer' test.out

#- 48 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'Cc285Dl9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'ymO9aHex' \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'isBxJOxT' \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'zbTqDSmP' \
    --withServer 'false' \
    --count '53' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'aMRjiYIg' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Q3aeW6fN' \
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
    --version 'oJNm23Ji' \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "XIU179sI"}' \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "WTsxLrXI", "ip": "yYlcwfFO", "name": "e2yOicjU", "port": 51}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "H3b84xGH", "pod_name": "axVKqQ5a"}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "3jzLkmjP"}' \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'tGjbXgjW' \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "QOZ0yJlt", "configuration": "OfSADURV", "deployment": "YtpdfrNv", "game_mode": "LoKNGyVd", "matching_allies": [{"matching_parties": [{"party_attributes": {"xKGtmNws": {}, "MYxufLnu": {}, "HazlLGRD": {}}, "party_id": "wbiKm3BL", "party_members": [{"user_id": "eT3ExQbE"}, {"user_id": "I2ahCgcz"}, {"user_id": "1ZfilYsE"}]}, {"party_attributes": {"Aa6NkvOx": {}, "i1mG9OU9": {}, "aAAwEXPZ": {}}, "party_id": "EZcNwSCX", "party_members": [{"user_id": "qDPXpuAk"}, {"user_id": "jFeHFpU8"}, {"user_id": "QDOIWlbS"}]}, {"party_attributes": {"UB0kxKMM": {}, "C5nlDO3F": {}, "ZaZ42Txu": {}}, "party_id": "CVNsaNvz", "party_members": [{"user_id": "hlwaRnt4"}, {"user_id": "bfYnzctE"}, {"user_id": "YfqvUkuV"}]}]}, {"matching_parties": [{"party_attributes": {"BBOs694D": {}, "7cBPQCxP": {}, "YdTFpq2O": {}}, "party_id": "h1h1Oxur", "party_members": [{"user_id": "inihtw1m"}, {"user_id": "xIOHb6em"}, {"user_id": "bUw836Hw"}]}, {"party_attributes": {"7Ff71YVE": {}, "Y8LBQ66r": {}, "epcpKr0l": {}}, "party_id": "zEZbil49", "party_members": [{"user_id": "8Tjf0t4D"}, {"user_id": "wYz7Y1Zi"}, {"user_id": "Pk1RiLhe"}]}, {"party_attributes": {"CnTZdJYx": {}, "blXuNXf2": {}, "hw8bfyiu": {}}, "party_id": "Pu3xWUmj", "party_members": [{"user_id": "2zcoR6wY"}, {"user_id": "Fu7rgRK5"}, {"user_id": "HHi5tCko"}]}]}, {"matching_parties": [{"party_attributes": {"2pXBtgDV": {}, "Se7ymfi9": {}, "t2qy2ooB": {}}, "party_id": "IUmue7uA", "party_members": [{"user_id": "aKiiVAf2"}, {"user_id": "mGx3Fdz0"}, {"user_id": "aJ6X9sfR"}]}, {"party_attributes": {"CYl7s9GV": {}, "5Wc9YXgA": {}, "GOzRX0mu": {}}, "party_id": "WtwKbATt", "party_members": [{"user_id": "Wiu70gXS"}, {"user_id": "FLjbvtYi"}, {"user_id": "ZO0UBXVZ"}]}, {"party_attributes": {"BsZ9CKXr": {}, "gAgRgdLg": {}, "cbrmJIaz": {}}, "party_id": "2RlocGUm", "party_members": [{"user_id": "MBR1GtER"}, {"user_id": "Q88NysKW"}, {"user_id": "htEZwY10"}]}]}], "namespace": "TrsEW5x8", "notification_payload": {}, "pod_name": "8oAFyqFE", "region": "poh8ijkm", "session_id": "iWFcPOlp"}' \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "N6V6xRXG"}' \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'FSsQ07Ak' \
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
    --region 'gYFroo7w' \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE