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
    --body '{"artifactPath": "au6zBDUF0ULT7xij", "coreDumpEnabled": true, "image": "0GVAqNQh0jgu7NqD", "imageReplicationsMap": {"rw6ftJ3NJLouSGic": {"failure_code": "hAWXw8PKjJB2O66u", "region": "tOlPGep7LEknAiwe", "status": "kXvOxn0q5Wy1WuQb", "uri": "aUTHU8mZFGWZQI1f"}, "OR2roiZVziij5SaW": {"failure_code": "vtPLNEPixgFQx4AE", "region": "cDDgbRmiSzNbANG8", "status": "3vjl4vfrjmpTYWY3", "uri": "mZFcRdhZDPECp3iT"}, "L9j0b6ALNKBKHcPU": {"failure_code": "jLuVrAy2tJsDilK9", "region": "lehQoMPqSlPCpNBD", "status": "xfnjJ6mCPN4LZ4YS", "uri": "w4ylgaxVQsdE0gum"}}, "namespace": "wnZtwww0ulKe3tOy", "patchVersion": "0kIEuYyfwgISMNQ5", "persistent": false, "version": "OjvRTVaWXO64uakP"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "ZkDk2Y6MILrMuvqg", "coreDumpEnabled": false, "dockerPath": "6SFzv2f3ZnWb86P5", "image": "2Qx0bjFVcQNfrf9K", "imageSize": 43, "namespace": "gvEhxB2i9ftxu2BW", "persistent": true, "ulimitFileSize": 87, "version": "7U6Pl0H7q48aX0qV"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "alkXo8H2iQMsx9lm", "coreDumpEnabled": true, "dockerPath": "wxZwjemj0O3i2TbA", "image": "SXZq3WqGqI0tD9Ko", "imageSize": 38, "namespace": "7wwlz7zH20mNMevL", "patchVersion": "EyN9mK43b6sYtHN1", "persistent": true, "ulimitFileSize": 37, "uploaderFlag": "YXuSkU2RtSZh04Z3", "version": "XAVQcZRtLS1wt2HE"}' \
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
    --body '{"claim_timeout": 37, "creation_timeout": 88, "default_version": "FVpF8XoP9suAcz1F", "port": 17, "ports": {"5rtFb1KJUPM60Plp": 76, "E6UlaXmmUo8upQKn": 90, "cRSLU6U7QklKv4w0": 30}, "protocol": "k8DkH2SNDWbPI8TM", "providers": ["BIImfANwSOdGySod", "ZR983dRHEcZafkmv", "tN9zKtjVIplrkxxm"], "session_timeout": 66, "unreachable_timeout": 82}' \
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
    --body '{"claim_timeout": 91, "creation_timeout": 41, "default_version": "sBIDYKMCtqXckbIV", "port": 36, "protocol": "rZ0ZAZrp6tYnoKHI", "providers": ["1wdGBrTifYDGGDVi", "1mhsRkrRj4xwXYhO", "RJke26UocvTAuhKk"], "session_timeout": 99, "unreachable_timeout": 13}' \
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
    --name 'rFiVEgylFuwUQsB6' \
    --count '92' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment '1umEhJzLtUb1zYxr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'dVCGNHSPsCVocKq6' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 2, "buffer_percent": 64, "configuration": "7mArJsX678dYpgOa", "enable_region_overrides": true, "extendable_session": true, "game_version": "qzWZ7gcCYHD3Gwoe", "max_count": 7, "min_count": 37, "overrides": {"RQnghgX97Mw3q95a": {"buffer_count": 65, "buffer_percent": 32, "configuration": "lbyaOUw2aiNiiAMZ", "enable_region_overrides": false, "extendable_session": true, "game_version": "urFPNMYT4FSmqSQX", "max_count": 98, "min_count": 78, "name": "Tl4SqqXxHMVgKCaX", "region_overrides": {"pfqGB5HLhmPDu65h": {"buffer_count": 35, "buffer_percent": 0, "max_count": 6, "min_count": 69, "name": "cBhLXImllxlbgFf5", "unlimited": true, "use_buffer_percent": false}, "drOZOt0Ua50KZ6Qo": {"buffer_count": 32, "buffer_percent": 22, "max_count": 16, "min_count": 41, "name": "zyaWiaBkd10Ysf16", "unlimited": true, "use_buffer_percent": true}, "ne18OSFEnFGte9Yk": {"buffer_count": 88, "buffer_percent": 4, "max_count": 57, "min_count": 78, "name": "IYqCNpbaiLBTgLkE", "unlimited": true, "use_buffer_percent": true}}, "regions": ["6bRtkgzzLrsn0Uv5", "Gd609CMU3QspQdl7", "uhuuzoyO4i4riov7"], "session_timeout": 52, "unlimited": false, "use_buffer_percent": false}, "zJQxTb5jsafe7hoW": {"buffer_count": 92, "buffer_percent": 70, "configuration": "ypYo0RvLXtqKugKN", "enable_region_overrides": true, "extendable_session": false, "game_version": "rHkYpLD5wUnRqlap", "max_count": 62, "min_count": 99, "name": "7ek2f1YUbPdZj9uU", "region_overrides": {"cEk6tWKJpf83bjtV": {"buffer_count": 82, "buffer_percent": 14, "max_count": 75, "min_count": 0, "name": "caxTBatz0nTzyi0o", "unlimited": false, "use_buffer_percent": false}, "VwLEPicXEbbSlzCC": {"buffer_count": 51, "buffer_percent": 14, "max_count": 13, "min_count": 73, "name": "uHHXFaDcHymcFcvU", "unlimited": true, "use_buffer_percent": false}, "M6RRpJhILoJ6Ywyw": {"buffer_count": 52, "buffer_percent": 31, "max_count": 11, "min_count": 31, "name": "ol9kOMQm8eH6QFQu", "unlimited": true, "use_buffer_percent": false}}, "regions": ["BS8UuhU1yYJKfM5V", "oNvbieuHiVEMc31k", "x4zD5zP1qLaz5MdT"], "session_timeout": 66, "unlimited": false, "use_buffer_percent": true}, "XD8yw6jPpKU3vHEV": {"buffer_count": 100, "buffer_percent": 2, "configuration": "utmkO6WOKQlXNeg4", "enable_region_overrides": false, "extendable_session": false, "game_version": "lg4myPJYXrkcc3bE", "max_count": 39, "min_count": 0, "name": "WLvpzk2dHksGeJCe", "region_overrides": {"qTKmXrJEUsR1t1a7": {"buffer_count": 100, "buffer_percent": 84, "max_count": 6, "min_count": 14, "name": "bCxkGqMf2YOIxtF6", "unlimited": false, "use_buffer_percent": true}, "OSa7nG46KuaS4tM2": {"buffer_count": 71, "buffer_percent": 70, "max_count": 52, "min_count": 97, "name": "BF0tf5PiAi4ggD2i", "unlimited": true, "use_buffer_percent": false}, "94qgE4Lhh3ujfW6I": {"buffer_count": 64, "buffer_percent": 83, "max_count": 81, "min_count": 72, "name": "mvDtj23ryQw07wut", "unlimited": false, "use_buffer_percent": true}}, "regions": ["z8z31Vow1jSAIMx0", "9LerRzMJAn3y55BR", "6SnLn2NpeCtzc6is"], "session_timeout": 62, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"0JEQpsBxujNVBS0h": {"buffer_count": 43, "buffer_percent": 7, "max_count": 83, "min_count": 59, "name": "GQ6BzJYQ6KkHOnTn", "unlimited": false, "use_buffer_percent": true}, "zlqGa5OGypkQA423": {"buffer_count": 20, "buffer_percent": 88, "max_count": 37, "min_count": 42, "name": "YwxzS6QNYYj8u1ef", "unlimited": false, "use_buffer_percent": true}, "KoFMHCqlcYB1d3T0": {"buffer_count": 33, "buffer_percent": 21, "max_count": 84, "min_count": 52, "name": "UTIkOoh4gvdxAOJk", "unlimited": false, "use_buffer_percent": true}}, "regions": ["l53Hl5QppqFsMSKj", "yuhmGfAVs06jxFgc", "3FcDstISYIdOqVF2"], "session_timeout": 2, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment '2NdJlOySFXwvaEjJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'mPTF6p5qJZuNLyVV' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 57, "buffer_percent": 57, "configuration": "DaJGe3OrghbkJxP0", "enable_region_overrides": false, "extendable_session": false, "game_version": "ZYyu75kTEYJR6tdv", "max_count": 69, "min_count": 30, "regions": ["OKDFMNrawFeytMeB", "jR2BHzqnpAFsjkqc", "2BlBXUUp5NdWDC75"], "session_timeout": 70, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'i8Lkn3j7tGfyiYhp' \
    --namespace $AB_NAMESPACE \
    --region 'DqkTrB0LGyVNuAtV' \
    --body '{"buffer_count": 54, "buffer_percent": 85, "max_count": 13, "min_count": 59, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'cQOrk5phxEwrGLGm' \
    --namespace $AB_NAMESPACE \
    --region 'pjcORjjkWAWJzuyD' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'CQqqKmIKLoNLR9jj' \
    --namespace $AB_NAMESPACE \
    --region 'hXn4muiAy4IyrrGM' \
    --body '{"buffer_count": 99, "buffer_percent": 79, "max_count": 3, "min_count": 24, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment '7uTts6yAc8aqVji5' \
    --namespace $AB_NAMESPACE \
    --version 'JkDfYXdPPax3sPeb' \
    --body '{"buffer_count": 81, "buffer_percent": 17, "configuration": "dGa3x4eSss058J5m", "enable_region_overrides": false, "extendable_session": true, "game_version": "ezm5LKQ2qVjTiLq5", "max_count": 88, "min_count": 96, "region_overrides": {"mRilt5I4DelANeQO": {"buffer_count": 11, "buffer_percent": 64, "max_count": 100, "min_count": 97, "name": "YW7tdPFcXOhyvADi", "unlimited": false, "use_buffer_percent": true}, "mjeM5zXa68nU1vRX": {"buffer_count": 21, "buffer_percent": 83, "max_count": 95, "min_count": 58, "name": "ZBdWLXrUk9XHjY1T", "unlimited": true, "use_buffer_percent": false}, "BVmJvAJ8vvtDoF0N": {"buffer_count": 59, "buffer_percent": 0, "max_count": 93, "min_count": 4, "name": "lixMNWXbp8RO1iET", "unlimited": true, "use_buffer_percent": true}}, "regions": ["ZcyxzZK0F5ImLGTB", "nWxCKCBI5bozyfmK", "4PjR8XSZZrMVvV4o"], "session_timeout": 29, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'zl3Xd2phQ2SNyFlH' \
    --namespace $AB_NAMESPACE \
    --version 'BLeZCB00JvUScPUd' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'YwjhkpdfPUgRNK76' \
    --namespace $AB_NAMESPACE \
    --version '1dzynzIqjTrU6m8C' \
    --body '{"buffer_count": 98, "buffer_percent": 46, "configuration": "TwSjDy9W2TNtr7Oi", "enable_region_overrides": true, "game_version": "04uxEBW2CdyD9de0", "max_count": 56, "min_count": 91, "regions": ["uoPTUy7UAVjWnIz5", "mPw7rxOOYPfDb7xm", "2SKSR5AJRXX2Milp"], "session_timeout": 61, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'tE3XMVexXGbTeqPu' \
    --namespace $AB_NAMESPACE \
    --region 'xljANwsr319pAjPM' \
    --version 'N4hDY6S9FeNz1zYs' \
    --body '{"buffer_count": 32, "buffer_percent": 34, "max_count": 87, "min_count": 84, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'eXVKPoyPWIdVlsuk' \
    --namespace $AB_NAMESPACE \
    --region 'y00AV7UOL5vTr1Md' \
    --version 'bwqi9qZwJqxU86wX' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'RFYqkQgDviOUsay2' \
    --namespace $AB_NAMESPACE \
    --region 'PmxHaGckLQg02FkA' \
    --version 'n9GGKDpAtKu5sjfx' \
    --body '{"buffer_count": 74, "buffer_percent": 97, "max_count": 73, "min_count": 42, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '77' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'Sh3EiZvZSrTR5aHT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '3oK3m1b7VQHoRBaB' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 10, "mem_limit": 80, "params": "SwGloRjO07da8oxN"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'fCiMNrSu6VubQ1Nx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'fKDXp1zbJxs5PSke' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 100, "mem_limit": 4, "name": "4o2K9aOULn86bpdS", "params": "TarDKlXNm9GOhAig"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'OiJ3ejsz0NENVNlr' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 86}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'dFgZ0WzikZB6IgR9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'DBA7uz4tyUZR470J' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "xhbmKIzkSdrU9rMs", "port": 25}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'kgm2P8nCz2aLYaJW' \
    --sortBy 'version' \
    --sortDirection 'asc' \
    --count '53' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'wKiGTF28uO8SzTxY' \
    --version 'LywWikElPoZeJZke' \
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
    --imageURI 'B7QcdEMYBNn6gfRg' \
    --version '8ssbZO881xPnddwC' \
    --versionPatch '7GuGJRPwUqAVgoq0' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'irL7i4Krdg6XJeoT' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'aF1lkxFtL3p7GMsh' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'eQVEtA2d8w5NhTDX' \
    --versionPatch '1jLLJdmLNy8ckUPL' \
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
    --region '4zboaGf8uzWyyq7Z' \
    --count '22' \
    --offset '47' \
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
    --region 'jhh2hRle8FWhRHKP' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name '1LkJhnBc2fvvBmn1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName '17WC9uVS2qLvgfGU' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'whMjYILIz1FrhEVg' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'ahZjEKppDjewuOVH' \
    --withServer 'true' \
    --count '100' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'vm3SHatct4uW6Z9Y' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '56BIMV9Jvqaem7k2' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "ZATBeoFNj3nhTewN", "repository": "5ZzpRtlebzqDflFf"}' \
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
    --name 'M0VexNfquOYQlif4' \
    --count '17' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'sGXJQEg2Y3g1N0wg' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 25, "buffer_percent": 40, "configuration": "n7qjfXz96mITE1nD", "enable_region_overrides": true, "extendable_session": false, "game_version": "qaS00IoRK7glp0U8", "max_count": 89, "min_count": 6, "overrides": {"cUiXfmtGHVCE86M5": {"buffer_count": 87, "buffer_percent": 5, "configuration": "AAy2LOaCBPCCxAzJ", "enable_region_overrides": true, "extendable_session": true, "game_version": "NsKXXOuwXcK356YM", "max_count": 17, "min_count": 57, "name": "CH3THfm7drfa7tKA", "region_overrides": {"6hJdElVNj5mvJPbV": {"buffer_count": 87, "buffer_percent": 27, "max_count": 72, "min_count": 16, "name": "8BVXQMydzUQxDxYA", "unlimited": false, "use_buffer_percent": true}, "7WgrOP4tyVWSEhaj": {"buffer_count": 6, "buffer_percent": 98, "max_count": 52, "min_count": 74, "name": "N2Nm2mhyMlD0kQBw", "unlimited": true, "use_buffer_percent": false}, "As4oczcrkC3VjwpI": {"buffer_count": 33, "buffer_percent": 28, "max_count": 72, "min_count": 28, "name": "lSCmglHVJWvT7tHx", "unlimited": true, "use_buffer_percent": false}}, "regions": ["ZdIvDz5EdeMkqsh8", "bh6DofO0Yirc0N3A", "GEzCzWFjN4Mk6C8w"], "session_timeout": 16, "unlimited": false, "use_buffer_percent": false}, "V8PtudtoLq1cCKXA": {"buffer_count": 62, "buffer_percent": 88, "configuration": "0dl4NCwE60sw6aom", "enable_region_overrides": false, "extendable_session": true, "game_version": "apbhaeOA147O0hKR", "max_count": 46, "min_count": 27, "name": "249QDifhNB3GrpjN", "region_overrides": {"M4SSKDotTK6LZFel": {"buffer_count": 97, "buffer_percent": 67, "max_count": 60, "min_count": 55, "name": "R7bEGlEC1yL5xLYi", "unlimited": true, "use_buffer_percent": false}, "8G0lYuy3nZZlYRmv": {"buffer_count": 58, "buffer_percent": 14, "max_count": 6, "min_count": 83, "name": "oyZ6UZ73MnDlO7tT", "unlimited": false, "use_buffer_percent": false}, "1uj54SvNkBxSdlU6": {"buffer_count": 66, "buffer_percent": 58, "max_count": 18, "min_count": 29, "name": "TfiRr385eXGo6iWh", "unlimited": true, "use_buffer_percent": false}}, "regions": ["OiBCmhwSTV7MLnyp", "bgbPO8G3PFFCR0nm", "WyDzn2rQzqP7ZSgF"], "session_timeout": 54, "unlimited": true, "use_buffer_percent": true}, "rsNdFQvRwB3Nbby5": {"buffer_count": 32, "buffer_percent": 27, "configuration": "dxBvT7wjVSZTUFiK", "enable_region_overrides": true, "extendable_session": false, "game_version": "NVyNm33zu5Gb6E9A", "max_count": 68, "min_count": 84, "name": "fhM6TkzTMMwZujTs", "region_overrides": {"ghWOAyZZWp3FSKlY": {"buffer_count": 7, "buffer_percent": 77, "max_count": 96, "min_count": 93, "name": "aSZ6GAB2yhlt69u1", "unlimited": false, "use_buffer_percent": false}, "CJyoAkE7ONqqqdjE": {"buffer_count": 24, "buffer_percent": 43, "max_count": 85, "min_count": 54, "name": "9Rggyas7bkxqsZCY", "unlimited": false, "use_buffer_percent": false}, "SX5Gy9oxDiqkNJ9F": {"buffer_count": 67, "buffer_percent": 35, "max_count": 8, "min_count": 80, "name": "dEUwuvDgaTeTmeKD", "unlimited": false, "use_buffer_percent": false}}, "regions": ["01PyIQ8R6iEDGRfa", "3tI3xW3z6eDHOjMa", "fF0GI3iuU63Jbkn7"], "session_timeout": 97, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"qvXlGViDg79o7Keo": {"buffer_count": 60, "buffer_percent": 23, "max_count": 18, "min_count": 45, "name": "htx7btg6tCJ92qNJ", "unlimited": false, "use_buffer_percent": false}, "jjG8AgBZvbAo7Byg": {"buffer_count": 66, "buffer_percent": 100, "max_count": 75, "min_count": 51, "name": "5Y5VLkgTDNpFNjH0", "unlimited": true, "use_buffer_percent": false}, "whWYS8jSpYl8ZjhQ": {"buffer_count": 56, "buffer_percent": 48, "max_count": 34, "min_count": 67, "name": "Ikpw8YMyE8SE0xPu", "unlimited": false, "use_buffer_percent": true}}, "regions": ["lPjZ53spJlcZhkGK", "QkJMWrJcRxyvXyt2", "t3ZYrMv1mTILWGBn"], "session_timeout": 53, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'pYZ3roVXaFFVmmm1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '71' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'He25AZkRyDFshFyN' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 67, "mem_limit": 55, "params": "mFrtklZj2i2rZcqO"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'wuWKOOvQlxp7RM8p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '92' \
    --offset '19' \
    --q 'tfGrf1MilEWiY4mo' \
    --sortBy 'version' \
    --sortDirection 'desc' \
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
    --version 'wEYmmTpU50aCc4Rj' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'x4mEj1KuDFLQ12ql' \
    --count '44' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "FsozSe3A8Pc2due2"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "RAidFniAkXUL39wU"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "50iyhr50m72ztAFe", "ip": "a5rYOCtRabXJO4R7", "name": "TPQ5wG2Ja9VcIRSS", "port": 6}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "kUW3g24BG0PLLPFB", "pod_name": "0N6UkqYSBE0kElLR"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "rCLgM7TlDnOWTswH"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'rR3kk2GvHVqedG4k' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName '5d0mq4b5xVoRaJxi' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "rUmHlkOh2GMSPbjy", "configuration": "ceKKokGvckKMWSWf", "deployment": "Rxo50XJaiznegzno", "game_mode": "c2HJ55WRkkldBtI6", "matching_allies": [{"matching_parties": [{"party_attributes": {"VPLTlPXEHVjabTgm": {}, "T9hPKejgCM58xfEF": {}, "3CVwWI1BNlhlyp4Y": {}}, "party_id": "HFKeDLDKVb8Z5CQG", "party_members": [{"user_id": "r7Mb8CC2CaSI0MQO"}, {"user_id": "MvmZKnzlPXJYSfla"}, {"user_id": "Lhx9x0LDJJtKhUQB"}]}, {"party_attributes": {"iJVBblTbdGobo0Cs": {}, "fPfXGyJ33chpKFHS": {}, "lh0YAfA1n1KJi8hm": {}}, "party_id": "VBSHPywM8b1Lf8qa", "party_members": [{"user_id": "8tRWK0etM0gJb6fN"}, {"user_id": "dcJ8xnohvwf0uTfw"}, {"user_id": "0cxq2u5FWBMvtua9"}]}, {"party_attributes": {"TDls9Vy1F7and98c": {}, "fNDUZubpJDses08i": {}, "fAMcbqW27eIqM82H": {}}, "party_id": "13DWgAlyyIzYd1yd", "party_members": [{"user_id": "RLMW1lmVcAI2AmEw"}, {"user_id": "jVNUxzXQQC0gxfQf"}, {"user_id": "o8V4HfcTBgrZtXSQ"}]}]}, {"matching_parties": [{"party_attributes": {"wZWGlVl8L7qhoWzP": {}, "ts9EqMqgSzM4uAdC": {}, "JhRSpOXqyY3DERoy": {}}, "party_id": "TiqB4sG5bbYkO3cl", "party_members": [{"user_id": "P5N7jBgSnaUdkg46"}, {"user_id": "spmxXDSGhUkqxrDE"}, {"user_id": "2WL3uq8NcHNJKP65"}]}, {"party_attributes": {"0SIh7slNoJao3DIN": {}, "ciqwddIsFC1scU5z": {}, "5Et9fuV4aCm5h7nW": {}}, "party_id": "vhVLfiKCXQQ22zxQ", "party_members": [{"user_id": "vmIO31OQBKAh4rFJ"}, {"user_id": "03WBc2NybjU6LVNg"}, {"user_id": "W3CaPCxnoe7xj0ul"}]}, {"party_attributes": {"ZbYj6Sxb9XS2MSNG": {}, "yZnVgSFGNFTfxGE8": {}, "lcsJ5jI1NHSbL5hJ": {}}, "party_id": "Rep9YP7yGDWr6QfJ", "party_members": [{"user_id": "MuVdLEworIXTMj8p"}, {"user_id": "H7S3scvlChjQnTAt"}, {"user_id": "XHyqdRtXtYC347AJ"}]}]}, {"matching_parties": [{"party_attributes": {"7d54JB2q690g2oSV": {}, "ryHlhgWftMaHp7KB": {}, "OuChInsRdHoK6IVN": {}}, "party_id": "COYiXvHppc4NSAn0", "party_members": [{"user_id": "2A45rOT4JeTGTv22"}, {"user_id": "ojoky6vgvxDPAv3V"}, {"user_id": "mkVjJXM0EljeWhy4"}]}, {"party_attributes": {"D1eUSaEIONY23izt": {}, "gq27X9Y3RWZsRQBY": {}, "bQAOsL388MiCtq5H": {}}, "party_id": "DEETZCnXQjOeFPDN", "party_members": [{"user_id": "agR6bYXgfuw3PFJO"}, {"user_id": "BEgAKYHvRVWv1nnK"}, {"user_id": "2GCLtOEeIqlP2wdS"}]}, {"party_attributes": {"tKxpc7cr4l92RjsV": {}, "cMoIfDuRJeTO3eaj": {}, "wc5idXjSQy3oShuF": {}}, "party_id": "ub6ebTSBgOZCeMWz", "party_members": [{"user_id": "dWIrOB1hQ58XdPSv"}, {"user_id": "KWjQmgb0zPocKZ2O"}, {"user_id": "QXrc3Uj7J1nxtdyL"}]}]}], "namespace": "E4QzDukxSBkKK1Ln", "notification_payload": {}, "pod_name": "zoWfDu52RYTI5Gfy", "region": "XjIuNh4XBKSRGhGg", "session_id": "QUYw11UId7puzHH5"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "iXL1p41KM0wjjSZq"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'V0FuxO1IBHirADdD' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID '7trOSEtzUm5Bl7dV' \
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
    --region 'NodyLGG8fSuBB0FU' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE