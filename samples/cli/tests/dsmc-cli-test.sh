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
    --body '{"artifactPath": "E6pPcMjd4TrqOrQU", "image": "1cwhwRett3yPW2zQ", "imageReplicationsMap": {"DVcM6nv2xijipkPy": {"failure_code": "8dIX3kvGKffppckV", "region": "E1Ycncx2QW7yRWad", "status": "Quyz5kCq2enoUQ65", "uri": "sbHC0AOoaxsMu41f"}, "CsjBhxo6WTBEkUmy": {"failure_code": "bRHGfm9o98gZ17FY", "region": "d8EGemFXuqx1BNSf", "status": "7PoopjyvUGqVzLTd", "uri": "pehSBQZ5eAzjgf4h"}, "vPxmF6shN6mpi6K2": {"failure_code": "miaGWr4cZapJ7mht", "region": "JxbDudvjYaYBu0B7", "status": "uLGyozdoSIt5t6qW", "uri": "nvPxg4comm01H9kW"}}, "namespace": "XQydUQcc0MzSCDgF", "patchVersion": "mSh74VhhfutAfDEd", "persistent": true, "version": "wzxNa6YBPRnUx4hu"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "e0kc4iQkUHeGi87c", "coreDumpEnabled": true, "dockerPath": "ABNv4xGOXfx6n58e", "image": "imwL291R62sCwYvb", "imageSize": 96, "namespace": "PYI9BE2AwRyg4LdG", "persistent": false, "version": "hKZ9qQMBq2jbEsRV"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "bAXrbDB0urO9h5SZ", "coreDumpEnabled": false, "dockerPath": "4O5hj6XwCGb466SO", "image": "YqAhGGKYqpllJvbt", "imageSize": 82, "namespace": "8R4pDZWPhsySMgdW", "patchVersion": "PRcduWUmyL53hooM", "persistent": false, "uploaderFlag": "yciPR3JpPxhmkue6", "version": "cXIi8GXFY2xgK92J"}' \
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
    --body '{"claim_timeout": 12, "creation_timeout": 56, "default_version": "luFD7WVhLwYDripH", "port": 59, "ports": {"EJzoqcuA7Prs0ssC": 57, "oSccxWdYSOnSZk6D": 74, "ooCjcCAD21OIOIwe": 10}, "protocol": "BBGvyVWVicyCJzPF", "providers": ["8apsYheA7qPg8Xa7", "rySSEC8Bw4pCf8xF", "fzZ1vs1wGQcFlovY"], "session_timeout": 71, "unreachable_timeout": 64}' \
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
    --body '{"claim_timeout": 56, "creation_timeout": 33, "default_version": "NuYaBpoUfyJajYpz", "port": 22, "protocol": "4xX3RA2zBgzFaqTe", "providers": ["G3aF3A2ByDfmF4c3", "fJtCCNrtLPl6v7r7", "C3UQkWmfegwCBsyw"], "session_timeout": 96, "unreachable_timeout": 45}' \
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
    --name 'PgmZn5r4NJl0jT7E' \
    --count '18' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'xbSydqknv4ItavIC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'dShy6BGuztj4av7i' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 31, "buffer_percent": 33, "configuration": "oIjxgluiK446AOZI", "enable_region_overrides": false, "extendable_session": true, "game_version": "rCkmWDZf4JG47nuh", "max_count": 4, "min_count": 20, "overrides": {"7FboxcmjxvzbinHb": {"buffer_count": 66, "buffer_percent": 64, "configuration": "AqRNb1FOG5qyBTqk", "enable_region_overrides": true, "extendable_session": false, "game_version": "OKpWh6IDxuSyPhiK", "max_count": 42, "min_count": 39, "name": "FZlPapsaNfYfl7OS", "region_overrides": {"HIHu964TOQRQdl7Q": {"buffer_count": 44, "buffer_percent": 14, "max_count": 34, "min_count": 41, "name": "ytoLFwmlGza7sXae", "unlimited": true, "use_buffer_percent": true}, "iTXNPy88hDCxAMO5": {"buffer_count": 32, "buffer_percent": 68, "max_count": 96, "min_count": 77, "name": "YmwkSgPsIIZyxmE3", "unlimited": true, "use_buffer_percent": false}, "dlVGG4ooh6RkBruU": {"buffer_count": 16, "buffer_percent": 74, "max_count": 98, "min_count": 39, "name": "gh4FxBvKcKMDgB72", "unlimited": false, "use_buffer_percent": false}}, "regions": ["j8KOfOrnAlGuoaKD", "7TrY0Wrcf4QPdRQl", "C6ym6GFkBiVFKcUr"], "session_timeout": 35, "unlimited": true, "use_buffer_percent": false}, "mmhiB1GwmGIdzpVr": {"buffer_count": 68, "buffer_percent": 26, "configuration": "VnxgBaT1BjaoZ4Be", "enable_region_overrides": false, "extendable_session": true, "game_version": "hYHYbtSOOWS5rjGy", "max_count": 52, "min_count": 9, "name": "gqmDtPHgbtpV6KFD", "region_overrides": {"oqwRQPawDEmRzBss": {"buffer_count": 58, "buffer_percent": 91, "max_count": 88, "min_count": 28, "name": "hFRKbKMmMeaPsj0T", "unlimited": false, "use_buffer_percent": true}, "qIzPXELuZG2s9UsR": {"buffer_count": 63, "buffer_percent": 74, "max_count": 39, "min_count": 66, "name": "ePFSVAQyIFPFwxiQ", "unlimited": true, "use_buffer_percent": false}, "OQ8BL2W23kMEoH2A": {"buffer_count": 79, "buffer_percent": 83, "max_count": 89, "min_count": 55, "name": "Ih6sXL18VafqTSZS", "unlimited": false, "use_buffer_percent": false}}, "regions": ["x06Zqql3yQ3Ris9A", "ze0p0b06pLvez4to", "bkB7pVtAg719fIeb"], "session_timeout": 95, "unlimited": false, "use_buffer_percent": true}, "A43jRQlHX2fdMuC2": {"buffer_count": 9, "buffer_percent": 2, "configuration": "myBDdA4KwPSHgFX1", "enable_region_overrides": true, "extendable_session": true, "game_version": "1YCWkfcDKe7aAiHi", "max_count": 18, "min_count": 20, "name": "LXHkYvQnUCluDcj3", "region_overrides": {"NUUoUdDVT6P8bWzf": {"buffer_count": 90, "buffer_percent": 86, "max_count": 25, "min_count": 8, "name": "96PS65MprYofoJxf", "unlimited": false, "use_buffer_percent": false}, "LAsPnWfvUU9SDdnR": {"buffer_count": 91, "buffer_percent": 41, "max_count": 52, "min_count": 24, "name": "S1eavaDuFOrNvXqh", "unlimited": false, "use_buffer_percent": true}, "K3tsHZkAh19GDSPh": {"buffer_count": 26, "buffer_percent": 14, "max_count": 0, "min_count": 60, "name": "z6K2eYSf53YbAl8l", "unlimited": true, "use_buffer_percent": false}}, "regions": ["79DFmYWHlFtQakQL", "AKAlyALgu5I69xNS", "8N7SZoOQeRqUhw3z"], "session_timeout": 20, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"d8iL2e1PdJWmqzQb": {"buffer_count": 37, "buffer_percent": 39, "max_count": 72, "min_count": 17, "name": "sm4VVSN7jETlrXlh", "unlimited": false, "use_buffer_percent": false}, "VwS7ZRMqSw5Ndnzd": {"buffer_count": 81, "buffer_percent": 42, "max_count": 100, "min_count": 25, "name": "AMIJGvDsfQBw7x8t", "unlimited": true, "use_buffer_percent": false}, "4j84iborBh8ilHKZ": {"buffer_count": 40, "buffer_percent": 77, "max_count": 15, "min_count": 22, "name": "waPnHyakOKVAiyWM", "unlimited": false, "use_buffer_percent": false}}, "regions": ["t4JqVaHmHWJZ5Y08", "Sg1Rs0cKUDn0XpAr", "n7gR28pMcYPrSgz6"], "session_timeout": 79, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'LPPJvTe2EYyoRDoD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'Tcinaq9DSKNKqxHG' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 82, "buffer_percent": 95, "configuration": "4SR8q7NSP1McenJT", "enable_region_overrides": false, "extendable_session": true, "game_version": "NmjMhLYqY1gq3zUe", "max_count": 92, "min_count": 48, "regions": ["dvExOTcBqDjqrp6U", "7pGqzlwXevcHJDQE", "ediYTyxjF2Ikndv1"], "session_timeout": 50, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment '21LYmlSIBDjTEsml' \
    --namespace $AB_NAMESPACE \
    --region 'LOQ05U3shBaKuMnT' \
    --body '{"buffer_count": 26, "buffer_percent": 20, "max_count": 49, "min_count": 4, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'G5IDF4jUh5Gzb7LX' \
    --namespace $AB_NAMESPACE \
    --region 'kmEtXveeGyLPh06D' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'uQPV4DvJ2ktaKcBI' \
    --namespace $AB_NAMESPACE \
    --region 'iEEqshZ4gUvFQZhn' \
    --body '{"buffer_count": 44, "buffer_percent": 18, "max_count": 10, "min_count": 1, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'f1gC8ohoO6OuVcNH' \
    --namespace $AB_NAMESPACE \
    --version 'cgHnbm0uPO8VAS0C' \
    --body '{"buffer_count": 65, "buffer_percent": 43, "configuration": "iOCUUEa1eGnZ64VV", "enable_region_overrides": true, "extendable_session": true, "game_version": "pC2wVE2tsrQ3mbcV", "max_count": 34, "min_count": 63, "region_overrides": {"hxeiT1kxvyA2Btkv": {"buffer_count": 28, "buffer_percent": 92, "max_count": 8, "min_count": 10, "name": "duukA2U8CeZSBIiE", "unlimited": true, "use_buffer_percent": false}, "cFY2NANdfytXtRvG": {"buffer_count": 37, "buffer_percent": 46, "max_count": 18, "min_count": 75, "name": "DApKwNG6JX3jfhLp", "unlimited": true, "use_buffer_percent": false}, "IFILn6HzYgUITPj0": {"buffer_count": 24, "buffer_percent": 94, "max_count": 67, "min_count": 97, "name": "sgjtwG24Ijie5DB4", "unlimited": false, "use_buffer_percent": false}}, "regions": ["UXgNYrxmGwLrTxVq", "C5cumtowsuZVxxw7", "CcyXOCArXFGBY8Ww"], "session_timeout": 75, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'eHbx8vv2MDeh5L3w' \
    --namespace $AB_NAMESPACE \
    --version 'diL10M7MRAKBKXVp' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'YAls4SBDHDbm9Ycx' \
    --namespace $AB_NAMESPACE \
    --version 'UBV3lFULdyMiK7pc' \
    --body '{"buffer_count": 48, "buffer_percent": 97, "configuration": "XcOaZGu0iYJ7onVr", "enable_region_overrides": true, "game_version": "sxKuhBlhecH2qv41", "max_count": 24, "min_count": 51, "regions": ["eCcZ2XGYI4nrFVMm", "pw0s3wxx43u0fkrQ", "BSdzFgYxsaOVCPsu"], "session_timeout": 10, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'eHjqx7SlJV95EY98' \
    --namespace $AB_NAMESPACE \
    --region 'BaBOyVi7TARTVyMJ' \
    --version 'we6K7pY4brJvEVFH' \
    --body '{"buffer_count": 9, "buffer_percent": 97, "max_count": 13, "min_count": 38, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'nIKQhu18ZpZGGLWt' \
    --namespace $AB_NAMESPACE \
    --region 'ocSK8Ir4pFU3JghP' \
    --version 'z4hPUV167RnZFpXH' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'cCcFn9055WFefAQx' \
    --namespace $AB_NAMESPACE \
    --region 'H90Eg4NAJpz4TV16' \
    --version 'cGtY8ctEJ8LCUL5S' \
    --body '{"buffer_count": 66, "buffer_percent": 81, "max_count": 94, "min_count": 91, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '87' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name '8ZIJpBhuQUT9SFaQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '63cEhNeTScyDR041' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 9, "mem_limit": 46, "params": "8DoWvME3TScH7UTz"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'vCsQPqkqajevlcwz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'NTQYePLG86GtrzNx' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 52, "mem_limit": 59, "name": "69f4Ktw5VLEkCaAy", "params": "Ftz5yo1ern2JDWJB"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'HcUYOsG5mSIM1Zcx' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 92}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'nmOD783IT0Rvfnni' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'kAN1H1e8HDnt3bEZ' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Pkg2Jp4xe1K2SQV9", "port": 80}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'A3f9wiQdBk1YKefo' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    --count '34' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI '16RlxCZCDrJeAugC' \
    --version 'qKxEMWpXS4AaJZje' \
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
    --imageURI 'YwwntcLYVkRSaSj8' \
    --version 'okixGRT7pIneoQL0' \
    --versionPatch 'LvVMVM5T1oiExSio' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'w7net5HxFqhqHEDs' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'qmqkfPLXwK1go253' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'f4LQyCl2Qt8f1yAr' \
    --versionPatch 'j0nF7Qp9UDXSmqoZ' \
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
    --region 'SJJpNnrQmoaG0bbd' \
    --count '95' \
    --offset '15' \
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
    --region 'CD3x0QNNfolF4O8D' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name '9nxVLpQD1d5D9iI9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'Xa5wJCxLpBT5bLsl' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'gZtUy9ZPrWe2tUBs' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'GLyDr0wkUP2VVsoA' \
    --withServer 'true' \
    --count '1' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'hAHDdmC7Gk9Q1KAz' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '7mUs4eRlO3MDbYgx' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "4tCos1RMcjfzxg2g", "repository": "cr6ZPiUGEk6Svo3K"}' \
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
    --name 'vgI19Glflhog8bJF' \
    --count '20' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'nvb74mlj3TL3KQft' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 10, "buffer_percent": 99, "configuration": "f2Fq4XiJ63EGgdUI", "enable_region_overrides": true, "extendable_session": false, "game_version": "eUe6YNuGeCVW5OVs", "max_count": 15, "min_count": 9, "overrides": {"YHY6Aw8dWuvd9dv0": {"buffer_count": 3, "buffer_percent": 92, "configuration": "E5a2knaqyRZ71P8Q", "enable_region_overrides": true, "extendable_session": true, "game_version": "yvD6eh0m80ZngFCh", "max_count": 95, "min_count": 99, "name": "vzqczN9eteo8j9Qb", "region_overrides": {"0kGDwzMho1nBfQ8W": {"buffer_count": 14, "buffer_percent": 68, "max_count": 70, "min_count": 48, "name": "1W6i7hQf9u0pxOES", "unlimited": true, "use_buffer_percent": true}, "Zsg0D2MPSJVUNIuH": {"buffer_count": 29, "buffer_percent": 62, "max_count": 89, "min_count": 18, "name": "TEzRt1qAXrBetn4K", "unlimited": false, "use_buffer_percent": true}, "zJYOxcwXPIXKCAxd": {"buffer_count": 12, "buffer_percent": 94, "max_count": 69, "min_count": 14, "name": "4T5yf1z1rXjIBX6T", "unlimited": true, "use_buffer_percent": false}}, "regions": ["RSu5zDoWteYXAf5y", "j7ZYwJRXi9mTNpZX", "1K7U0Rl3LL650Tzj"], "session_timeout": 45, "unlimited": false, "use_buffer_percent": false}, "CEv3s4oOAtPTr58a": {"buffer_count": 31, "buffer_percent": 74, "configuration": "PMKklilrmyO7zu2v", "enable_region_overrides": false, "extendable_session": true, "game_version": "j8aeDCLymZ5yFQO4", "max_count": 50, "min_count": 41, "name": "xngNaC6aKXA7cdq8", "region_overrides": {"so9WcDYtnDDab96r": {"buffer_count": 30, "buffer_percent": 40, "max_count": 94, "min_count": 79, "name": "JzSgtI6V77Md3d6C", "unlimited": false, "use_buffer_percent": true}, "MdFmpU7oZuCMHbuA": {"buffer_count": 36, "buffer_percent": 27, "max_count": 34, "min_count": 98, "name": "zjYsPQoNnPJgE05y", "unlimited": true, "use_buffer_percent": true}, "OhdyfqWA3j9YQs1L": {"buffer_count": 51, "buffer_percent": 17, "max_count": 12, "min_count": 77, "name": "9nvplMo0Q8SmmaMR", "unlimited": true, "use_buffer_percent": true}}, "regions": ["i8EUXp05z6UG90h1", "nosZQ4UkZL5tNNym", "JV0Dmt3O9xReK9nU"], "session_timeout": 65, "unlimited": true, "use_buffer_percent": true}, "NdDjfuObCFOjy7qt": {"buffer_count": 27, "buffer_percent": 10, "configuration": "LtMfnziRIyZmpggi", "enable_region_overrides": true, "extendable_session": false, "game_version": "uHSV4OKvzBWhBd6U", "max_count": 59, "min_count": 35, "name": "hGlyZCFO9vMdlAJm", "region_overrides": {"HSKJSfi0Bo0NdOI1": {"buffer_count": 99, "buffer_percent": 58, "max_count": 51, "min_count": 64, "name": "bn7qWJvRmwOaSr0t", "unlimited": true, "use_buffer_percent": false}, "GQOezWeU7qG3Bvg6": {"buffer_count": 10, "buffer_percent": 81, "max_count": 93, "min_count": 83, "name": "bn1wfzfM53W3X526", "unlimited": false, "use_buffer_percent": false}, "VUjmfc8gqinGIe3S": {"buffer_count": 91, "buffer_percent": 75, "max_count": 27, "min_count": 95, "name": "22DXPwda7fQkUa2j", "unlimited": true, "use_buffer_percent": true}}, "regions": ["5tkXGuKwIqCKDdIB", "UiBD49c364ijNkEJ", "ufG0TSTYqPfLWXLI"], "session_timeout": 39, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"CioHGWVBrJOAuGQ7": {"buffer_count": 40, "buffer_percent": 88, "max_count": 66, "min_count": 48, "name": "6QW7ZJS1FpfLTxXl", "unlimited": false, "use_buffer_percent": true}, "L8aA9L5LUPDL9wKe": {"buffer_count": 55, "buffer_percent": 6, "max_count": 92, "min_count": 4, "name": "UIxcXHR3QmmSSvac", "unlimited": false, "use_buffer_percent": true}, "1vya5JCUYGFI2Ieh": {"buffer_count": 84, "buffer_percent": 94, "max_count": 76, "min_count": 55, "name": "Wjglpm0LYZaRKXJW", "unlimited": true, "use_buffer_percent": false}}, "regions": ["KgTuQDv6pN3iOLc2", "7JJvbWwulY3n9gag", "1o3P0mkPvhG2NcOu"], "session_timeout": 38, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'iFOGQ4uxpTduiOIr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '21' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name '2XyETvW777igcPmR' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 91, "mem_limit": 92, "params": "IGAUdbA7qSJRDC4X"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'CRZLKXReAfxy6G50' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '42' \
    --offset '18' \
    --q 'va9fmLjw0q0NGGtB' \
    --sortBy 'updatedAt' \
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
    --version 'iMr7LBLyZfVouyei' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'No8aVbeHZyAjpA2H' \
    --count '75' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "dspOG7jE0EpNm5hd"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "UbbNKIrMHRx7EaGn"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "mzz9J38OpdlTBfuw", "ip": "VExY7d9qGopsbkMo", "name": "ryIb9qtnu2F8lCPH", "port": 34}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "b2r9mjus4n9hZrIi", "pod_name": "XkdMjTaOzEvsluiD"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "o0YJ5OpQkJkt6Nye"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'jU9RxfbANx94MAZ3' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName '12LLFXAmHOLshItR' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "T52oVmxVBkM0XiwG", "configuration": "2j0YFbLmBTVNULcY", "deployment": "7FY0LCllJKe1UWAd", "game_mode": "rQBiSeH2SSzSHV15", "matching_allies": [{"matching_parties": [{"party_attributes": {"37oOAQlHib0bA1ra": {}, "K7SItIqwyh3hzvMP": {}, "FHseMdzueKWI9skG": {}}, "party_id": "FKRbJKQXUK3Xf9be", "party_members": [{"user_id": "f3C4z2TlAf7n7IOm"}, {"user_id": "C4mUq0gH9JGo6fmu"}, {"user_id": "NgdihtX8lQqCsyIO"}]}, {"party_attributes": {"26AZThaDdRyLqErP": {}, "EzjOamrhQG9V9uT3": {}, "ioTDpCUKkhmLFvRF": {}}, "party_id": "vfPqmqlUfNwHfjGm", "party_members": [{"user_id": "b2NkcEfliu86mqU2"}, {"user_id": "tSQ6GHI9SMeLBbCu"}, {"user_id": "LddSeyxRwX7xg7jh"}]}, {"party_attributes": {"xkpgwC07h86sGuJK": {}, "nNaMcvuXR3G57Irc": {}, "11K3pmyFXii9nhXf": {}}, "party_id": "EhPSPzVyJvtiPnI6", "party_members": [{"user_id": "V8ontiXIWXEgWsM2"}, {"user_id": "6MxiaRAZqcDAgRjD"}, {"user_id": "UIDFg2LnznujyAmH"}]}]}, {"matching_parties": [{"party_attributes": {"NSuh76JDdGj0p5OF": {}, "Uj9FXW2ai16aCwKh": {}, "fQtaXW60j2FgDIkU": {}}, "party_id": "62ziFEma1BDNi6LT", "party_members": [{"user_id": "DXimjE3q3MmlVQrf"}, {"user_id": "L5Ngheo3XBHRB8yI"}, {"user_id": "8vGmDpxOj4PoH8Ln"}]}, {"party_attributes": {"VNL14R1AtJosH17u": {}, "Igf4J6H7XwQo0r1n": {}, "f427jWcUa4NojNbq": {}}, "party_id": "164jj63pvjqeJ9kz", "party_members": [{"user_id": "wGdJ3Y0MedEmBDJT"}, {"user_id": "GmNubkBW7Y2w8LGa"}, {"user_id": "8WVVPZCjrqKssT4S"}]}, {"party_attributes": {"AWHCLtoVyB3TiMyS": {}, "MMUHf2NcYdxskE1o": {}, "T9MYxKdS3GPJ63rm": {}}, "party_id": "OGtmRwYp8RFskn8q", "party_members": [{"user_id": "BLmYQPs4fDIWFnT0"}, {"user_id": "AYHVAuKUQOXrBia6"}, {"user_id": "JC92Uy3VWSyO5lJu"}]}]}, {"matching_parties": [{"party_attributes": {"QKNaR9qYEVhG6bGc": {}, "5eV4mVFph1eXMRzx": {}, "CUHngZaEwHIlj09J": {}}, "party_id": "qXwPPpyO2dpXjV7E", "party_members": [{"user_id": "vupAp4VzAXdMUaMW"}, {"user_id": "P7B6Z17xozszyAOa"}, {"user_id": "GQVPbLXCpYp3ceWq"}]}, {"party_attributes": {"kHP48GtsBX4ZdtSz": {}, "A0nPPUrV0myEMqKL": {}, "2a1Dfab8yURQpcCD": {}}, "party_id": "O83BASbT3uuJ9ACY", "party_members": [{"user_id": "vMvzWuMIEKuGTwLR"}, {"user_id": "Fr78rPgg0TOcD5Ed"}, {"user_id": "O7rNGfLkPmmh2xku"}]}, {"party_attributes": {"lfqeXSqUF1N0JyE3": {}, "ne9HsJ7TWvmp3TgS": {}, "9RtuuZ5d8eH1i7Ym": {}}, "party_id": "HRYcCwvmvDWpnuhK", "party_members": [{"user_id": "7vWtDvSYePMPuipw"}, {"user_id": "YGwXvnBnXzN4iq2U"}, {"user_id": "iLhM61laD16BKDQX"}]}]}], "namespace": "STkGYnYsYXcyOBBl", "notification_payload": {}, "pod_name": "1w8aS0GjfkibIHSL", "region": "nVp3xdwmeCEh80mk", "session_id": "8TOKkPjkMMHAczLf"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "20J4KsnLMbbwNxax"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'svVq0G4dMmpLxMC9' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'LwxIXNWY1Z8ixRTz' \
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
    --region 'eLK9L5Id77FYZfXt' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE