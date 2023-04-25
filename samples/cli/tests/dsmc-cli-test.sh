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
    --body '{"artifactPath": "SFVDvEDRjnk2wepx", "image": "xoXPhhAaWzDz89EL", "namespace": "jy4CHUMlTaLdDQEK", "persistent": true, "version": "Wkj4BxVtrivAO1MD"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "g0vDvDzEutsvHplx", "dockerPath": "RBRrlDwNwY98cSYh", "image": "M6iMd9DG5PDWwmFU", "imageSize": 36, "namespace": "ZsLh5sZamosRgyoc", "persistent": true, "version": "cE6ZFag6ZjCFdME6"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "wwXGUR0vYPy1nMag", "dockerPath": "6DJydS5A4lsiaSr4", "image": "rknTFJfqwAm04Wrs", "imageSize": 59, "namespace": "4B3YI2ULBZKmY5Og", "patchVersion": "OVtObnW4h58oNtlP", "persistent": false, "version": "oj3hgiLWchmctVj9"}' \
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
    --body '{"claim_timeout": 96, "creation_timeout": 96, "default_version": "PgZcKHJolwUr4kWY", "port": 84, "ports": {"VBuw0OJTAZ5AD5uU": 87, "R0020k68b1Tzn4DB": 55, "vYt2vnvTP0dCaBqT": 31}, "protocol": "6nebzbPjh5z0Jyik", "providers": ["6dKkCjEZj7LTKmDb", "PmM9akPwaPA37u63", "Gi46nwO7QV0kyCm9"], "session_timeout": 85, "unreachable_timeout": 1}' \
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
    --body '{"claim_timeout": 51, "creation_timeout": 57, "default_version": "8QXx4T8X6sD4B2i4", "port": 72, "protocol": "o7v0k6uQdFcRkm0C", "providers": ["kNLmPhvXhsjQxFqJ", "h3t5s1gADzvK2fhG", "RFwAloqFFiZu074G"], "session_timeout": 40, "unreachable_timeout": 12}' \
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
    --name '90FlhtyPnFskfEGU' \
    --count '78' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'E1pxqZR4sZ6KJNMp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment '528YWpXBr2NUMrpe' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 78, "buffer_percent": 83, "configuration": "slvR2u8Pn482dyBd", "enable_region_overrides": false, "game_version": "3ZBxtiaR1ehNIezl", "max_count": 49, "min_count": 92, "overrides": {"eXD9ik2R3c1XmBHc": {"buffer_count": 97, "buffer_percent": 16, "configuration": "zNcSUiNexTRxtoxG", "enable_region_overrides": true, "game_version": "mWjZoNygkoxthtzi", "max_count": 43, "min_count": 1, "name": "iS1pMbDbrwueDIeh", "region_overrides": {"pkCS7d16fsaV8ZpL": {"buffer_count": 3, "buffer_percent": 78, "max_count": 83, "min_count": 38, "name": "5oHMFKnoca7mhcwS", "unlimited": false, "use_buffer_percent": false}, "3vJ6nyb7Y4neezKA": {"buffer_count": 12, "buffer_percent": 31, "max_count": 75, "min_count": 44, "name": "QnEfFqGEc37fRs6j", "unlimited": false, "use_buffer_percent": true}, "GaosvUMLP4VgalmW": {"buffer_count": 66, "buffer_percent": 70, "max_count": 88, "min_count": 27, "name": "FWpTnBwXrRJvH5oK", "unlimited": true, "use_buffer_percent": true}}, "regions": ["ELwV7kTWExerQ0tZ", "19RfgswIszfq5Pnd", "oAtGe2aaWusVxr1S"], "session_timeout": 24, "unlimited": false, "use_buffer_percent": false}, "TACuqioyq2gbPjhe": {"buffer_count": 9, "buffer_percent": 34, "configuration": "UzejL2wH3r6NrTBx", "enable_region_overrides": true, "game_version": "oB9NwYXxrwbw59zw", "max_count": 96, "min_count": 5, "name": "X5qCsxrlOOqDMV0F", "region_overrides": {"6GrDQWNgy7hLaksz": {"buffer_count": 2, "buffer_percent": 36, "max_count": 83, "min_count": 22, "name": "TRKjUEe5EOwl6pSS", "unlimited": false, "use_buffer_percent": false}, "9PbprmAmwRUiKVfe": {"buffer_count": 85, "buffer_percent": 45, "max_count": 78, "min_count": 48, "name": "q0u3ZubsobY1m2EF", "unlimited": true, "use_buffer_percent": false}, "hGRxc1jkZG3SFyQp": {"buffer_count": 20, "buffer_percent": 77, "max_count": 13, "min_count": 82, "name": "tAhNJY2QSmQZoN5Z", "unlimited": true, "use_buffer_percent": true}}, "regions": ["H02jBquJgzamW2P3", "GU6PtGdg1Uoa99Ic", "LGVw90pSYTyiEnlj"], "session_timeout": 72, "unlimited": true, "use_buffer_percent": false}, "9v1Q2xyHgiORAry6": {"buffer_count": 82, "buffer_percent": 52, "configuration": "smF8XjILUMB4Ezj0", "enable_region_overrides": true, "game_version": "gZtN9mNKZTjQlZH9", "max_count": 13, "min_count": 42, "name": "WsDhxSd6wXjUM5tT", "region_overrides": {"Vt29KQqoyVErs149": {"buffer_count": 54, "buffer_percent": 44, "max_count": 97, "min_count": 45, "name": "MA6qDWfOvqcNAuLJ", "unlimited": true, "use_buffer_percent": true}, "S6W9uRj2gkwAt9Qc": {"buffer_count": 74, "buffer_percent": 42, "max_count": 6, "min_count": 100, "name": "KUJFEckZCBSAijHS", "unlimited": false, "use_buffer_percent": false}, "7V8MvN4ERr2qEpGp": {"buffer_count": 96, "buffer_percent": 75, "max_count": 4, "min_count": 91, "name": "QHBpUUbfFbs2qUFT", "unlimited": true, "use_buffer_percent": false}}, "regions": ["k9e5wgXH2ovrH0NG", "eN6kDLLtI8GmU8fF", "HNMKioyZmHQ2UnIY"], "session_timeout": 30, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"5RlcF7VCGwyrxzWn": {"buffer_count": 61, "buffer_percent": 78, "max_count": 33, "min_count": 21, "name": "MjbfjFTXcMmzD3i0", "unlimited": true, "use_buffer_percent": false}, "AgXD6Uj3rgHCsczk": {"buffer_count": 89, "buffer_percent": 44, "max_count": 74, "min_count": 29, "name": "W7B4uL3m2lni5khl", "unlimited": true, "use_buffer_percent": true}, "YUpGhmgkkh1YQVZ6": {"buffer_count": 38, "buffer_percent": 72, "max_count": 38, "min_count": 42, "name": "fCJGC4NF5hJMOxzd", "unlimited": true, "use_buffer_percent": false}}, "regions": ["kCyQ6e437RJchc1B", "yWFfX9whUJzxmQss", "1OA7TNyUMD1cVXL3"], "session_timeout": 12, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'i4Njmf9MSkYQ1KTP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'apvkuAdwEkYiVEJ7' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 54, "buffer_percent": 22, "configuration": "ehoIzECk3C8WlbEI", "enable_region_overrides": true, "game_version": "8COyp49dR33tnk6Z", "max_count": 35, "min_count": 14, "regions": ["z7LtzqDyoum9vMyt", "uEUFMjYYk4TVLAN3", "1KfV3UDeqoYfOjl8"], "session_timeout": 55, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'Jdwpjy3MkR8WKP9e' \
    --namespace $AB_NAMESPACE \
    --region 'MOM6IYMBMiIatWWZ' \
    --body '{"buffer_count": 71, "buffer_percent": 12, "max_count": 34, "min_count": 52, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'oLj7SdasDxeu1NSH' \
    --namespace $AB_NAMESPACE \
    --region 'p4TGM2YVwxHNvkZW' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment '9ivCClbxR65ua53l' \
    --namespace $AB_NAMESPACE \
    --region 'baxr7ZGNQakrhWVN' \
    --body '{"buffer_count": 39, "buffer_percent": 44, "max_count": 88, "min_count": 37, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment '7EODLkn2o2V04V2P' \
    --namespace $AB_NAMESPACE \
    --version 'VVncmWobmfpFkjS7' \
    --body '{"buffer_count": 56, "buffer_percent": 46, "configuration": "lXgJLIwEy3m5LoIx", "enable_region_overrides": true, "game_version": "3RLeF15ijGvoS8B2", "max_count": 70, "min_count": 47, "region_overrides": {"TB3xteCjZmJRvOkU": {"buffer_count": 66, "buffer_percent": 18, "max_count": 73, "min_count": 73, "name": "fC3abnqwjRCpQeLx", "unlimited": true, "use_buffer_percent": false}, "OOxMjjGzGqfUkiSf": {"buffer_count": 8, "buffer_percent": 57, "max_count": 91, "min_count": 52, "name": "8Ur82d90DC59GhD3", "unlimited": false, "use_buffer_percent": true}, "9LZljqh3fAUh9Q1O": {"buffer_count": 26, "buffer_percent": 53, "max_count": 16, "min_count": 96, "name": "2BLsGT8tvzm8ns3t", "unlimited": true, "use_buffer_percent": false}}, "regions": ["ZkivdF5pdwxGA83b", "BCDIKIKTFu0gHAoy", "6EqREcTYSkM2W3VO"], "session_timeout": 24, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'on26mZaAO21XCDFm' \
    --namespace $AB_NAMESPACE \
    --version '6zj13xDt2WRNJjHE' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'aweQFCTdJllNFcm7' \
    --namespace $AB_NAMESPACE \
    --version 'IRIIwPED1YSBxSI0' \
    --body '{"buffer_count": 21, "buffer_percent": 47, "configuration": "fq2FO43OCDJoQ3FF", "enable_region_overrides": true, "game_version": "v3U7irHHI4vtvQXB", "max_count": 80, "min_count": 0, "regions": ["v16PBGopARlDMaEV", "o7esUZCePKgKQsaN", "SufC84njsedLP8rl"], "session_timeout": 58, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'yj1ToCBe3X4iiZyW' \
    --namespace $AB_NAMESPACE \
    --region '4wkFVRUUWZjdywUb' \
    --version 'Aoq1j7TkjYAUKp84' \
    --body '{"buffer_count": 78, "buffer_percent": 96, "max_count": 13, "min_count": 86, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'UAJ7Zg5uITketJTS' \
    --namespace $AB_NAMESPACE \
    --region 'GOA0WrRIm31ylHyK' \
    --version 'pgBHQ1YsX3KoRmdP' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'Q82R8qHioNNpAJTh' \
    --namespace $AB_NAMESPACE \
    --region 'USdFSXXMQ4bANDBM' \
    --version 'EvvmkpvwTKeqWdk6' \
    --body '{"buffer_count": 74, "buffer_percent": 0, "max_count": 52, "min_count": 33, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '10' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'ANZkZpj76fDAvEm8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'PU3keiKQMAv58dqc' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 75, "mem_limit": 48, "params": "TUaDdt2YES6wwxj8"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'VQHxvWST3HbsTYcw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'HAl3yALsyn95DQ59' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 13, "mem_limit": 66, "name": "CsUASTjVXlreoG4g", "params": "4Y2sftT0R1omHic6"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'uroeD4TGT9WQQaMQ' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 93}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'ybrRjJnYDRq0sCK7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'gU0L0mNYTRrHnRKX' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "y4iGwWnS0nvtiXwS", "port": 39}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'esEmlVPqHaZDmrVv' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    --count '57' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI '5kk2xecMfTURA1Yn' \
    --version 'JlPVA4DVnYUkM0u7' \
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
    --imageURI 'uT5ris4j1AJTbTqV' \
    --version 'nBfj6Wsp5QOwIgHs' \
    --versionPatch 'ueERwYFQwSyT3LvI' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version '5CbVDgNRy4VxUDfe' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'blqM6aj5EagknfPf' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'U92Aixp69nP5OMFD' \
    --versionPatch 'vuYy08RrKlFv3PY6' \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region '709eRWyXQuuqwFW3' \
    --count '92' \
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
    --region 'LPOZtgMnoQlGRjXu' \
    > test.out 2>&1
eval_tap $? 46 'CountServerDetailed' test.out

#- 47 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'ListLocalServer' test.out

#- 48 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'CXqAiwXWrb8ebWuR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'FT3XYuaOAUKDZUMv' \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'UDlvwqxdL5vlSNab' \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'X9cKWNH8bMJbtN1C' \
    --withServer 'false' \
    --count '46' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'Vh6tDU5Y31NvNLCq' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'XLMsEyDeaV5B8CUB' \
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
    --version 'ZCRLIXjOduiD82sx' \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "KImi7jxV1qTmwzKr"}' \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "76qh3uQYdPBs9H16", "ip": "3BWbUiKDYa7CmxhW", "name": "sEYpACVQS6MXPD9U", "port": 23}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "Q6IzY6cn93jrS8U1", "pod_name": "v3AVmuNkjVpCqPov"}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "7jh2Uj5Sg0zAxI0a"}' \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'vO0au5VnyZTH5F0q' \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "328d7nGv48XZnPON", "configuration": "IfAhXfOQspYHiO32", "deployment": "zXdhKXaTgf8yIz6Z", "game_mode": "3jcgsj5fHrnxrY4R", "matching_allies": [{"matching_parties": [{"party_attributes": {"IcwQthJdvXhGl87k": {}, "96o2gBQMSvfsYEuY": {}, "6HFPJ0ufKiqpFNvT": {}}, "party_id": "QStNLPDVIzb2N0GE", "party_members": [{"user_id": "MMQSegFaivmyAoPf"}, {"user_id": "SYmkaRwXSBFZG2WD"}, {"user_id": "QydbGRzVzIdtUKDx"}]}, {"party_attributes": {"25Mqo8GoKpjIjoyN": {}, "J0nHqFeU7wsoLRV9": {}, "HyJoE8ZShIVlTny5": {}}, "party_id": "nu1QrYYvCsIIS8Hm", "party_members": [{"user_id": "sE6IrMMsfvvdt8BL"}, {"user_id": "ESyK0aiyuae7HleQ"}, {"user_id": "6DAzybP5aF9v8Iix"}]}, {"party_attributes": {"Ox03ZFDxrL4tuAsz": {}, "NUSdtAKl3cv1JQyx": {}, "5tlEFGoSsWvC8lsw": {}}, "party_id": "v7RUhGl7y4CiiqdT", "party_members": [{"user_id": "hEi7bqiOQoiZJlA0"}, {"user_id": "rN6WPRZwp3Y8S6xA"}, {"user_id": "5LK1VBORBIdGZU1i"}]}]}, {"matching_parties": [{"party_attributes": {"tij1GH61bXgPcTMe": {}, "7LUx1qQb2xXjiymM": {}, "Rm36BOHKwTny29j3": {}}, "party_id": "rmuvBAls8SifSBgW", "party_members": [{"user_id": "DBLAdSuWrUMv822W"}, {"user_id": "gEznb0nCGrmkq4ob"}, {"user_id": "93B0a0Hr386g0TsK"}]}, {"party_attributes": {"CQrIiiZZXwLxl6Bb": {}, "6qH4Veibf6UqTynl": {}, "N1oBfIlJIYUBNoU5": {}}, "party_id": "HeRImLgBD4HuJLbo", "party_members": [{"user_id": "oO3jlDlHxsI7MFza"}, {"user_id": "CSagEV3jByjRV6fx"}, {"user_id": "C4tvhJknx0VBHoGU"}]}, {"party_attributes": {"OsT9hOV89noDCe8R": {}, "8tBru51hxPpy4pa6": {}, "QGvl3e7uXU0JM2mp": {}}, "party_id": "IZVKPWH9cljXiFXQ", "party_members": [{"user_id": "rzDjHP5dvGTvaVfy"}, {"user_id": "ANsQPJ7xPmgHFGVN"}, {"user_id": "eGNfgUp0LlVKwvWe"}]}]}, {"matching_parties": [{"party_attributes": {"0OEmVBVzuuKlgsyJ": {}, "JNEwJXwRU5E9GGDv": {}, "8O9uk0ZS0DpKDuVG": {}}, "party_id": "fXW5Mnmcn5GGNzln", "party_members": [{"user_id": "s65peGR98iCbCIal"}, {"user_id": "tIVVPFHPTEvbWlAe"}, {"user_id": "VtvHxpQvs1DPs0av"}]}, {"party_attributes": {"eWb8YjVMX2tcWgqX": {}, "i5Ht9LQnEvvHxwfz": {}, "ibJslaZXYyc2rAcU": {}}, "party_id": "72JkEn2vgWv5vMMK", "party_members": [{"user_id": "JgbstJELtEHwQLMg"}, {"user_id": "5pBmS9IwOJOsWau0"}, {"user_id": "uHyCnDRhxF8MpAgi"}]}, {"party_attributes": {"O7VE8n6pnHMsieWK": {}, "je3Xv2EcZwvaj6pR": {}, "C1ySqIFaf0oOO1fx": {}}, "party_id": "PMaqwwmjlRz7jQ9B", "party_members": [{"user_id": "LoEU1wHX7xB7PwxK"}, {"user_id": "djtWh3HVQWlBcdpr"}, {"user_id": "ldMmDtdrDhPWzqyZ"}]}]}], "namespace": "NY8eEURB78BT1vbX", "notification_payload": {}, "pod_name": "2fDQcwBTlDEmGW7E", "region": "9RwFaeiso7ZJjH5i", "session_id": "tYiluyrX7UypHUXh"}' \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "Q0ci1khwDhXZdzr2"}' \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ZtwiO12kaqaCi1lF' \
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
    --region 'TP3bSI30fQ5xsr1y' \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE