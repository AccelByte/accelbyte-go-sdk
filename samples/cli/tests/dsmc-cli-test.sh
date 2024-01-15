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
    --body '{"artifactPath": "1SqiRwJw0FYreshA", "coreDumpEnabled": false, "image": "sMC7XqPZCsVF6pb4", "imageReplicationsMap": {"ePGFis5JGLoZEXCf": {"failure_code": "U9ND0NfcMbFfOMLa", "region": "m6wMXVBSoamsV7yv", "status": "KvMzshvCMxtvV74N", "uri": "xMb0DS4SGIVK3Mr9"}, "9fVehL1lijbG86Yc": {"failure_code": "7GriiwYTsokMSCaL", "region": "v7p1Fl6uZTHoIFKP", "status": "btVFveiCpBPoOuuG", "uri": "m5wlJkBOp7eTR7aG"}, "g5YKnQFXewMsdF5q": {"failure_code": "XOs2jDEtYQ72s9Fe", "region": "OdyNw8dYUS72bK8D", "status": "3mKz4zaPVARRzler", "uri": "bEnjKzjjZR4BShBE"}}, "namespace": "lPYhHpu2iMJhmwGN", "patchVersion": "KJZGgx2Tf7AnGAor", "persistent": false, "version": "39KIVoaAfcSfkx45"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "a9cWrmKKwDluOBD0", "coreDumpEnabled": false, "dockerPath": "2AlAF094uWWyOrF8", "image": "CBFvx3YPfcB5pGl7", "imageSize": 32, "namespace": "5BA1kj2So4J79orU", "persistent": true, "ulimitFileSize": 31, "version": "Vsmw11z6oefCIV47"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "NVa7EjCKuhOmTR3r", "coreDumpEnabled": false, "dockerPath": "yX0AoZ2wsrgNpKb2", "image": "GOnoXkUPFlEYtnuz", "imageSize": 0, "namespace": "pDOOwoMWHAOJ9Qtm", "patchVersion": "6L1fbdTMFk6AvH4M", "persistent": false, "ulimitFileSize": 42, "uploaderFlag": "u2Ovku9zTBzaOU3d", "version": "8vIUxkP32Qucf4wD"}' \
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
    --body '{"claim_timeout": 59, "creation_timeout": 12, "default_version": "MaCSpmxRf88G7GSA", "port": 92, "ports": {"bumc8DIAdpgDOfdh": 57, "M0tPKF0whwrmiPUN": 3, "LH2y4PsPWGPgPAF8": 85}, "protocol": "mNvUvAuOvukfIVEm", "providers": ["m3I5w7wNIRHZkPd5", "o6ld7KXfnb3BNMMK", "m6nMiQmhQmqSDHBN"], "session_timeout": 15, "unreachable_timeout": 6}' \
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
    --body '{"claim_timeout": 31, "creation_timeout": 75, "default_version": "INqvX4uFZeMKaR6p", "port": 5, "protocol": "HWeO1cZaEpuOJ2au", "providers": ["05t2xGo0sZ7eJNW7", "euNqt11kB68me4hG", "ZLVgQxT6pXFZpCC5"], "session_timeout": 71, "unreachable_timeout": 59}' \
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
    --name '9xeTbZjl42ZWdKNa' \
    --count '48' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'w2lS8fLr6Dbgk58i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'iqwJsjw2w5rLvyNP' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 74, "buffer_percent": 43, "configuration": "GbbjbqAIzz1zc9Us", "enable_region_overrides": true, "extendable_session": false, "game_version": "69z8UIg2Opw4wn3e", "max_count": 89, "min_count": 34, "overrides": {"uSA2wtwSsj8hZO23": {"buffer_count": 14, "buffer_percent": 5, "configuration": "3GPRURUNuP3Zz6oZ", "enable_region_overrides": true, "extendable_session": true, "game_version": "KBWs8wFaMNV0z6M3", "max_count": 37, "min_count": 18, "name": "FElH8BKLti7G69Un", "region_overrides": {"Dty2zQ2pBd1y6vqG": {"buffer_count": 34, "buffer_percent": 66, "max_count": 58, "min_count": 53, "name": "vAWLpEgLCEZkaKj8", "unlimited": true, "use_buffer_percent": true}, "cuP75CsuG5jImL8t": {"buffer_count": 40, "buffer_percent": 28, "max_count": 59, "min_count": 62, "name": "raka75EFITznN1ZR", "unlimited": true, "use_buffer_percent": false}, "awcL1wU7SjfyEGaQ": {"buffer_count": 99, "buffer_percent": 53, "max_count": 84, "min_count": 99, "name": "jZ0OoZGMEZvKkMl5", "unlimited": true, "use_buffer_percent": false}}, "regions": ["Z9ga6QOeF8lQF1qs", "1EKktsPSdqxf4Q2U", "gniBVnMfUGKgG5AH"], "session_timeout": 63, "unlimited": false, "use_buffer_percent": false}, "iq6pdhCbnguCtHv1": {"buffer_count": 73, "buffer_percent": 38, "configuration": "CeitDvIOYY68THJR", "enable_region_overrides": false, "extendable_session": true, "game_version": "6ArJg5K3qijLUwJ2", "max_count": 3, "min_count": 7, "name": "JqKTDtFCX6thdk2K", "region_overrides": {"5IPaB6cQPE4dSipr": {"buffer_count": 30, "buffer_percent": 2, "max_count": 18, "min_count": 82, "name": "an2XypJnlRzg0Ldt", "unlimited": false, "use_buffer_percent": false}, "RIDeBAW4MBaonDRp": {"buffer_count": 29, "buffer_percent": 40, "max_count": 41, "min_count": 10, "name": "jQVirDRLajZP1RbF", "unlimited": false, "use_buffer_percent": false}, "Fg5P1dZt111TRI90": {"buffer_count": 19, "buffer_percent": 37, "max_count": 23, "min_count": 30, "name": "c2hrUMTZETQUdUe9", "unlimited": false, "use_buffer_percent": false}}, "regions": ["wELBlbTa7DVEF1Ne", "cG8wQRq4zSOGhDUy", "F4fXUcPYnnnPhSPD"], "session_timeout": 94, "unlimited": true, "use_buffer_percent": false}, "CzxZbh3eF3UGbEIK": {"buffer_count": 3, "buffer_percent": 30, "configuration": "249oIh4DVUqOHfkn", "enable_region_overrides": true, "extendable_session": false, "game_version": "DaXYhuUBmGAKf5zP", "max_count": 61, "min_count": 67, "name": "5PhfDujnGQ1CjZsD", "region_overrides": {"0B3OD5iD2ymW8KAW": {"buffer_count": 77, "buffer_percent": 48, "max_count": 79, "min_count": 18, "name": "brdUuQzGtlrTtg61", "unlimited": true, "use_buffer_percent": false}, "XUUjkw0eNhyx01iN": {"buffer_count": 29, "buffer_percent": 74, "max_count": 89, "min_count": 2, "name": "t7AvpOWwo1MUzwsI", "unlimited": false, "use_buffer_percent": false}, "0xO3gISzcB7fyUcM": {"buffer_count": 4, "buffer_percent": 10, "max_count": 68, "min_count": 40, "name": "qcu0axIOureiOiGb", "unlimited": false, "use_buffer_percent": true}}, "regions": ["XMmaRyPLVShkmCtB", "WpCirNSOtxguTZI9", "E5yoy5aJ24nI5hNx"], "session_timeout": 61, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"SSPhdsQ1f9HHC2K6": {"buffer_count": 33, "buffer_percent": 67, "max_count": 93, "min_count": 53, "name": "X5OXg7MQ9TkUqvlJ", "unlimited": true, "use_buffer_percent": false}, "qNHOiBz6rishNayY": {"buffer_count": 34, "buffer_percent": 55, "max_count": 75, "min_count": 92, "name": "KTVJzl2ssVoT9pwe", "unlimited": false, "use_buffer_percent": true}, "eoP9vTdRF5SKjp7Z": {"buffer_count": 69, "buffer_percent": 20, "max_count": 25, "min_count": 22, "name": "j38JfUdgEbVkEos5", "unlimited": true, "use_buffer_percent": true}}, "regions": ["S47YXQTopP3vDpew", "wtv6mdJUBfHLS523", "EggBat8v1QdxEEWK"], "session_timeout": 5, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'bqsvKPPuj7TJ44ir' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'u9tq64DkeFsGfU4f' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 72, "buffer_percent": 38, "configuration": "FhiOQjFQzNnHjp3p", "enable_region_overrides": true, "extendable_session": true, "game_version": "95mz8AgEJBw1ENI9", "max_count": 57, "min_count": 67, "regions": ["vF5xBAxcmcptdrHj", "mG7LKNBKqaE40pqu", "0mmBIHbjXd5v2vF3"], "session_timeout": 47, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'byhfAs0IJDWx9nAL' \
    --namespace $AB_NAMESPACE \
    --region 'lGGHg8xSEKXTmgeO' \
    --body '{"buffer_count": 40, "buffer_percent": 35, "max_count": 6, "min_count": 1, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'AxmMb2ILyeNPgl4z' \
    --namespace $AB_NAMESPACE \
    --region 'LU9KvneoaIaeglhY' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'IfeLSo7nu2NdKTX5' \
    --namespace $AB_NAMESPACE \
    --region 'FHhb1iFwMh319Bkq' \
    --body '{"buffer_count": 100, "buffer_percent": 91, "max_count": 51, "min_count": 63, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'ulxWfdZlQqbmaXQt' \
    --namespace $AB_NAMESPACE \
    --version '26F9Y4Qnq7gF8VpJ' \
    --body '{"buffer_count": 1, "buffer_percent": 34, "configuration": "OKvpCMwCddHPUpLa", "enable_region_overrides": false, "extendable_session": true, "game_version": "ZSLrERPcVlESvWk7", "max_count": 41, "min_count": 83, "region_overrides": {"eQxebls9gAnD1m22": {"buffer_count": 40, "buffer_percent": 53, "max_count": 64, "min_count": 78, "name": "K9hVmWduRBcxrAtb", "unlimited": true, "use_buffer_percent": false}, "atgmgxLmGdi2OpRI": {"buffer_count": 71, "buffer_percent": 44, "max_count": 42, "min_count": 69, "name": "QtABSxiHSJRmUqLp", "unlimited": false, "use_buffer_percent": true}, "DWTfj88qxDgYf4IT": {"buffer_count": 91, "buffer_percent": 17, "max_count": 82, "min_count": 30, "name": "80NHbQz8ZQXGmj5R", "unlimited": true, "use_buffer_percent": true}}, "regions": ["vl6H7ZPQfwVO23L3", "6cfiQOmP7zy1n0aC", "I9icbLkiwoAXVlUK"], "session_timeout": 6, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'y2sdb6ZJKkp9EShl' \
    --namespace $AB_NAMESPACE \
    --version 'MEe41D6Lzdgt9IiS' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'Wt5dGikN8N576pKV' \
    --namespace $AB_NAMESPACE \
    --version 'qBo7ghbLxshyS50O' \
    --body '{"buffer_count": 85, "buffer_percent": 5, "configuration": "eqtAawft4zZS8VHR", "enable_region_overrides": false, "game_version": "ugG7LHSgG7vsCuOW", "max_count": 40, "min_count": 58, "regions": ["zGj2krKKNF1bYjZh", "gd4AutXO7M3RoCdM", "9HgpLSo3eZofByIF"], "session_timeout": 63, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment '8YqIXAYMCiLupnh0' \
    --namespace $AB_NAMESPACE \
    --region '9Mi4Y0sxo0GW149X' \
    --version 'BIpWDniH6bOAcJSG' \
    --body '{"buffer_count": 17, "buffer_percent": 17, "max_count": 47, "min_count": 16, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment '1DSXgXjbFNUBMMkC' \
    --namespace $AB_NAMESPACE \
    --region 'WBTSEZ7qWMRAQH4c' \
    --version 'hsk8DMTzspmdbvYQ' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'uO6z9c8AqtkP2uvb' \
    --namespace $AB_NAMESPACE \
    --region 'mKRKMlD5HivU6C8i' \
    --version 'k60IuouBysmWKVsv' \
    --body '{"buffer_count": 89, "buffer_percent": 33, "max_count": 19, "min_count": 77, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '6' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'Ith4ZfKiIlDRac9N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'LjkbWCGI6QU7AwYq' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 9, "mem_limit": 97, "params": "e7iS6BZiO4MbsO8K"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'ZvmpjuPjQwFsqKpZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name '68PEzIBLiI23oV4K' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 96, "mem_limit": 11, "name": "CU5Qvsv6bpOfNibZ", "params": "B3sQIeVkB7OqeRGJ"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '306RKtZHxXDNCqgn' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 22}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '7ejm9bhYUYJe8NjN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 's2HtizVK5iPteO4U' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "NlkVpxtzRvle66Qu", "port": 38}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'TS7LHSy4N4W8H2y0' \
    --sortBy 'version' \
    --sortDirection 'asc' \
    --count '2' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI '5sVxSvdAKN1bWhWk' \
    --version 'fcuraYxKjEH5KgYg' \
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
    --imageURI '2WX6MzuycpPHkdZq' \
    --version 'F98PNJqBoknrjDFQ' \
    --versionPatch 'D7lJLqI5jHVavl8m' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'k2xgAE1p69kiT73j' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'jgUGKRv25vzoeS2d' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'X3Lq57sL9H5Fl4zS' \
    --versionPatch 'EZaRu6oTeptg5En0' \
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
    --region 'qIfkPSVc20Zrt9h2' \
    --count '41' \
    --offset '92' \
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
    --region 'ZX1qnHksZqo0soRa' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'W3VkGrMkFT82rTQZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'i9m961wIotepibCt' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'q50gdbPIOMazXRDn' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'MYWbIQmeFiMgF2Kt' \
    --withServer 'true' \
    --count '13' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'zwhKVJDDGlYr8lgf' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'WwWrIgiEcVY3yYqg' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "IJN8PaeOfDYKGnB1", "repository": "PIhEU4Ht9fPns4kB"}' \
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
    --name 'ojnUNOMoXIaki9cu' \
    --count '46' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'BGGOwP953D8pCz47' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 81, "buffer_percent": 23, "configuration": "1C64PuaP3zyOiVqj", "enable_region_overrides": false, "extendable_session": false, "game_version": "XSR3qmjv3TBklM12", "max_count": 43, "min_count": 68, "overrides": {"DaGn3iUxqKu1j85x": {"buffer_count": 78, "buffer_percent": 81, "configuration": "c9afPJemVX6RtctP", "enable_region_overrides": true, "extendable_session": true, "game_version": "JMjITyGBzBkkdp7m", "max_count": 73, "min_count": 72, "name": "lluW3jQqh5Q6skR9", "region_overrides": {"5xxbTF2US3WdQZeY": {"buffer_count": 27, "buffer_percent": 32, "max_count": 5, "min_count": 89, "name": "jNz0x7Fh8vJ9ozE2", "unlimited": false, "use_buffer_percent": true}, "UDDHuWgXXQ9g6bbl": {"buffer_count": 39, "buffer_percent": 87, "max_count": 30, "min_count": 11, "name": "std8nKI9h6xQdXeG", "unlimited": true, "use_buffer_percent": true}, "LavFAbHIaI4ixyIS": {"buffer_count": 83, "buffer_percent": 9, "max_count": 76, "min_count": 17, "name": "D4u7Zwizvx2LHern", "unlimited": false, "use_buffer_percent": false}}, "regions": ["lGaDpOAGEehUOtQA", "PUFm1WiV7xcSvupE", "UwK9yO03X29RENcM"], "session_timeout": 52, "unlimited": true, "use_buffer_percent": true}, "US2R9dBvI5euJIm7": {"buffer_count": 81, "buffer_percent": 76, "configuration": "pdxFehqxGwS0FDBB", "enable_region_overrides": true, "extendable_session": false, "game_version": "oXKaxcFcmygD6Byq", "max_count": 41, "min_count": 16, "name": "1WpTn8ZhQPg9Y1w5", "region_overrides": {"mBnTRbmILXoyxxWK": {"buffer_count": 37, "buffer_percent": 38, "max_count": 22, "min_count": 12, "name": "YAbgBx5B5RggX6x3", "unlimited": true, "use_buffer_percent": true}, "N9VX6xc23Rh0PdmE": {"buffer_count": 18, "buffer_percent": 75, "max_count": 11, "min_count": 28, "name": "JQVyBnMQgiCJzJqC", "unlimited": false, "use_buffer_percent": false}, "JXw6BOjCNp6AIJ3m": {"buffer_count": 98, "buffer_percent": 31, "max_count": 62, "min_count": 69, "name": "alrJfpqhksVnLySJ", "unlimited": true, "use_buffer_percent": true}}, "regions": ["ZRUF95yK22fB9dRC", "VXkpOd4IfPVexPcX", "wWc24BrnTGMixBGH"], "session_timeout": 81, "unlimited": true, "use_buffer_percent": true}, "WwbOqemfOUKyjq1W": {"buffer_count": 36, "buffer_percent": 41, "configuration": "HU72EsfsedFWlUt4", "enable_region_overrides": true, "extendable_session": true, "game_version": "TSYp2KXayIHywnLu", "max_count": 85, "min_count": 47, "name": "fguCjSlq6gqyHx65", "region_overrides": {"cFsRrSglGqgXorq9": {"buffer_count": 8, "buffer_percent": 37, "max_count": 38, "min_count": 73, "name": "muKfll7x8tAy9i5m", "unlimited": false, "use_buffer_percent": false}, "12YCS45vdrtZWtQn": {"buffer_count": 62, "buffer_percent": 90, "max_count": 42, "min_count": 26, "name": "MQgZeEj6SAr7JQOy", "unlimited": true, "use_buffer_percent": false}, "14iB83kd9Zzkzuox": {"buffer_count": 2, "buffer_percent": 0, "max_count": 51, "min_count": 100, "name": "oj4noItEY5vlJMsS", "unlimited": false, "use_buffer_percent": false}}, "regions": ["pAh1zZl0fVkibbTr", "ibzijJBsN3OAqAwA", "MESC5sUjRlnggbrO"], "session_timeout": 29, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"sVy6RadKU6ak05GS": {"buffer_count": 63, "buffer_percent": 74, "max_count": 0, "min_count": 4, "name": "gDUa5sOShxfdrMKH", "unlimited": true, "use_buffer_percent": false}, "b4ihT2ExnFzxVlaS": {"buffer_count": 16, "buffer_percent": 82, "max_count": 5, "min_count": 76, "name": "uQwYslEEW6W6kfMD", "unlimited": false, "use_buffer_percent": false}, "3F87MXeC9VJMg7VU": {"buffer_count": 46, "buffer_percent": 59, "max_count": 76, "min_count": 73, "name": "7Zb8HHvOQ1WZpJrq", "unlimited": true, "use_buffer_percent": true}}, "regions": ["iFSzhAkfQp02Y2Pq", "EE9vbyulr0122X4T", "ZPNZGLpFEF63ITSZ"], "session_timeout": 0, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'xWA4aA2VHGrj6x9r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '65' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'OVayuahs5NhB44zK' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 39, "mem_limit": 89, "params": "4Z4hVJD2NXdS0L6d"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'S9jppncRb0kV4WZI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '100' \
    --offset '34' \
    --q 'jnG8a86uYSFBAS7T' \
    --sortBy 'createdAt' \
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
    --version 'cBmJ78SGzRLky4dv' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'ycpwnNnZ94jbEcbZ' \
    --count '22' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "HUPGfsUYCSYK2BX5"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "D5wOcgVS6ynb8ndo"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "yjfRJ8aD09fPczkj", "ip": "ruhxzgvn3BEBnw6L", "name": "sw9m6SaHTcVEqVR3", "port": 96}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "GyeTIHMdefw4o4J1", "pod_name": "kb0GQPDofNSJurjl"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "wZHoeXQ8vQk5Hn6u"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'UqxX2jEm0po9Mcsu' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'bfbW2I9wjD9svEZH' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "mtnNqAxnv9miYoEv", "configuration": "uLPjMLHdI2WMM1cC", "deployment": "4VhUqrbbR9guZuMR", "game_mode": "xygMsjpErSlmmeYT", "matching_allies": [{"matching_parties": [{"party_attributes": {"mBHQ0WPzbZR7333Z": {}, "VLoX0xCE5ZRXw5IA": {}, "AEfWMVuLQvWoP2uK": {}}, "party_id": "gjgR0804oeKUGYx9", "party_members": [{"user_id": "Q5w0OE4M80QyQPJ7"}, {"user_id": "OzUaxwK7ssEDDqhL"}, {"user_id": "loNILewhqN9oI9IO"}]}, {"party_attributes": {"Rbijqtra7I2fBoBw": {}, "g7Tco47m0jkTPkE6": {}, "lElZgwGiWltVS8uS": {}}, "party_id": "51P5gd8WLW3FEm8q", "party_members": [{"user_id": "XHxJmMtC8aHua8dq"}, {"user_id": "A8turRZinXLIrw3A"}, {"user_id": "26MTnaCwN79j4eN6"}]}, {"party_attributes": {"T3AYSFuFXRnnG4Xk": {}, "OOsrPJN9HL4lu73y": {}, "GCErgBlEupkEygaY": {}}, "party_id": "6EcbqJdx5s5Rmqvp", "party_members": [{"user_id": "U2sZOZisb5ogmFUP"}, {"user_id": "FgKPVqKc1oupNMct"}, {"user_id": "cAPa5LZKNGVvz3UP"}]}]}, {"matching_parties": [{"party_attributes": {"jyuZuxkhFZHHjWur": {}, "IRvzxFPKoFvwI9SU": {}, "kJ4plDtsgj13H7jD": {}}, "party_id": "8sjssrpbmhFSjEtt", "party_members": [{"user_id": "x1I8Rnuy7VNmKZia"}, {"user_id": "QsY0jFuZ8HEFPNlo"}, {"user_id": "7rnmDEY9YwUZCWz9"}]}, {"party_attributes": {"BOWqUcl55LoM59Ah": {}, "0bxo5wZeeFzz4SqX": {}, "Hw3p5Ry0f5wEJTZ7": {}}, "party_id": "8oQmmxZfo2tHf3AO", "party_members": [{"user_id": "u6iFEHTVx8neV1bL"}, {"user_id": "78Od4AaNBSpmtpPo"}, {"user_id": "Y18TeJI4BF2xTccA"}]}, {"party_attributes": {"IzDxEq6CGG3ZoGdh": {}, "w8dlCu8xT7RUh86V": {}, "KB2391VYerXjwNyR": {}}, "party_id": "qKtPUaBTVGP49BSL", "party_members": [{"user_id": "SXmBtGppd3M0X0GN"}, {"user_id": "8uwx8iJTsSZw4pMV"}, {"user_id": "pAZWn0j5pHOqVC9y"}]}]}, {"matching_parties": [{"party_attributes": {"6jezCmVWPYBeYBzg": {}, "4CBfYyjo1eVYHgF0": {}, "lHzi0v1gcs39EQzZ": {}}, "party_id": "ztXTJXHB1zrmizNX", "party_members": [{"user_id": "VP2nbDrjiWs0DIvX"}, {"user_id": "zBwfKWTRTDFb5OCx"}, {"user_id": "QEmeZVPdqSzog8Gn"}]}, {"party_attributes": {"OvDDoPHD36eea4Wm": {}, "SH5tH6BE842mSNqQ": {}, "oXJVuokbN1cbBSQ1": {}}, "party_id": "xi7hiw4NOKLUSkMb", "party_members": [{"user_id": "bLxbHkIw2a86xatH"}, {"user_id": "uZv31Ti7Uro3QVHs"}, {"user_id": "fPNvkhK8UeyTHUW0"}]}, {"party_attributes": {"yFlPy91rF6hpESXW": {}, "CUbtkMdkmSZiz0wU": {}, "YWtHtspdalSIoFJB": {}}, "party_id": "YRu7Lid2kZNqOWQq", "party_members": [{"user_id": "xYn3jSWhGLgI6yMu"}, {"user_id": "jQnvG5ck3h7cS3Tq"}, {"user_id": "KVzRHQtGgOEfLrt3"}]}]}], "namespace": "U2KZ8YQ9xLjSbHqj", "notification_payload": {}, "pod_name": "ZqsuHJUOg20UNqdr", "region": "H7oMEChrs17xRmu7", "session_id": "WCGuU9rAHqexMFce"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "Kn4iTJ0k7gDcx9x4"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'GMR6mj7FxLiSiOnR' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'QK9qpTQiIb1XsIda' \
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
    --region '8mSaEeXol7UVy6kB' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE