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
    --body '{"artifactPath": "CDr70tkGRo0dbghA", "coreDumpEnabled": true, "image": "1X52mcBAqvWNfzhL", "imageReplicationsMap": {"7uppg50bh1Gx6kJH": {"failure_code": "YNLBVicLCMS62NT4", "region": "Tnnd5iV5nu5ygigr", "status": "4aUPf6JwiYXQYe4M", "uri": "eP9YYdXmaYvhnKrI"}, "hwKgAJz3p9qLwhoC": {"failure_code": "YhWTGgXWeVMWwalu", "region": "VuWS7qDUu0vlU0X9", "status": "MHK3RoQHfmQPQclZ", "uri": "RrPKAnoq4w9w6yCP"}, "h7hRcyXtrIuPDpBl": {"failure_code": "6YGQGWXNiwWdAZJ4", "region": "EVMTct7bnjoOloo5", "status": "KyErQruSCzaRPG1B", "uri": "deE3TTA70IYT4i1b"}}, "namespace": "8AqmWpOgCrmyDllN", "patchVersion": "hQOPmT1wVSPuoThO", "persistent": true, "ulimitFileSize": 98, "version": "YrDKkGPTr2xTlt0u"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "8STOU4EzLAGYgcas", "coreDumpEnabled": true, "dockerPath": "39g0v5fs85ijeKiY", "image": "a4c0zjDV64ToSYsv", "imageSize": 89, "namespace": "vJ9G1zAtr97B4qIl", "persistent": true, "ulimitFileSize": 6, "version": "IqXz6xLpFF6F8jah"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "qtoxaKF21MTWr6BE", "coreDumpEnabled": false, "dockerPath": "NZqo0SY7LSElRYq2", "image": "KVDgn5q3Zw7jjg8t", "imageSize": 58, "namespace": "EaXRuU18KsUcDgU9", "patchVersion": "uBiDbeBbYdVbdrVW", "persistent": false, "ulimitFileSize": 85, "uploaderFlag": "dCoGj6nEiX30P7Y3", "version": "a86Hhukrbedi9YYH"}' \
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
    --body '{"auto_deletion": true, "ghost_worker": false, "manual_buffer_override": true, "zombie_worker": false}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateWorkerConfig' test.out

#- 10 CreateWorkerConfig
samples/cli/sample-apps Dsmc createWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": true, "ghost_worker": true, "manual_buffer_override": false, "zombie_worker": true}' \
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
    --body '{"claim_timeout": 0, "creation_timeout": 100, "default_version": "wdq9pFlmEmbS5HS7", "port": 74, "ports": {"yNsDrNyfCXrBEgFo": 84, "GcfBcaEtq5AxK8SO": 19, "4I8iVB9JDvHQLKa6": 8}, "protocol": "SBqZ1yqUJHSfzjMJ", "providers": ["TPfOrCy3fjGqFAjz", "ScszKi8Q83jSwuuu", "isu44np80foZFASH"], "session_timeout": 51, "unreachable_timeout": 37}' \
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
    --body '{"claim_timeout": 32, "creation_timeout": 83, "default_version": "l4LNjGb0jO7FpTQD", "port": 28, "protocol": "gryaBoklS699P22L", "providers": ["Yr79LSscmFQJguN6", "k6xDwKIPOsJMmIVf", "jiKfQyXIiVDS6qvd"], "session_timeout": 25, "unreachable_timeout": 7}' \
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
    --name '3rkuw6MSewFUVqem' \
    --count '76' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 16 'GetAllDeployment' test.out

#- 17 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'e3b9EiQ5VLQchYC0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetDeployment' test.out

#- 18 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'zVxw0gtd9oRWzlZm' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 40, "buffer_percent": 13, "configuration": "ENsg12TXq7mOd8zp", "enable_region_overrides": true, "extendable_session": false, "game_version": "IbcuBorOpSlaYxfX", "max_count": 32, "min_count": 86, "overrides": {"eS1wtHHlPYyOesvL": {"buffer_count": 21, "buffer_percent": 38, "configuration": "uULllO3rABzgmagH", "enable_region_overrides": true, "extendable_session": true, "game_version": "RCFqMZh7uB5dDBj5", "max_count": 33, "min_count": 52, "name": "0kWSPNPkPD2XX3AG", "region_overrides": {"1EiiK9mbYRKvBqu5": {"buffer_count": 68, "buffer_percent": 10, "max_count": 54, "min_count": 41, "name": "9gGJTYB4KE0wkkeV", "unlimited": true, "use_buffer_percent": true}, "gTF1WtFjIdem4UfP": {"buffer_count": 22, "buffer_percent": 58, "max_count": 54, "min_count": 61, "name": "gn7trlZinTZm3Qd5", "unlimited": true, "use_buffer_percent": false}, "iwraO8QXRYBqDbfG": {"buffer_count": 46, "buffer_percent": 69, "max_count": 37, "min_count": 81, "name": "eQsSsp6xnUPrtzDd", "unlimited": true, "use_buffer_percent": false}}, "regions": ["IhUEaYFBDLQwXf03", "HLgAPK5GBwAle5PZ", "I90L2nApGr14nBjL"], "session_timeout": 57, "unlimited": true, "use_buffer_percent": true}, "d9Po1LWJpvBaeUz6": {"buffer_count": 93, "buffer_percent": 98, "configuration": "W5ykltO4cVczs50x", "enable_region_overrides": true, "extendable_session": false, "game_version": "L34f9LI8uSL3i6W7", "max_count": 89, "min_count": 31, "name": "qkOqgFeEZpk26O61", "region_overrides": {"NIRGjtjJ1bhzHzQa": {"buffer_count": 20, "buffer_percent": 36, "max_count": 43, "min_count": 59, "name": "slswczuxbOZGTxgX", "unlimited": false, "use_buffer_percent": false}, "ru4u8JKEJSiKvgCE": {"buffer_count": 49, "buffer_percent": 3, "max_count": 25, "min_count": 47, "name": "3YeTxX95s358E490", "unlimited": false, "use_buffer_percent": true}, "Z887X0OxRYNq9PGP": {"buffer_count": 7, "buffer_percent": 46, "max_count": 46, "min_count": 49, "name": "Sy84QgACAJzBCsRE", "unlimited": false, "use_buffer_percent": true}}, "regions": ["cKgazGN22nyCeSnq", "QRFAHq5SmyypVJq5", "hDvpxJ1I5nOrUrxY"], "session_timeout": 76, "unlimited": true, "use_buffer_percent": true}, "Fbd6Youfsx9neFjj": {"buffer_count": 80, "buffer_percent": 23, "configuration": "HdkMA44E6xIE89SO", "enable_region_overrides": true, "extendable_session": false, "game_version": "PDR6GNKMoOPq16yJ", "max_count": 38, "min_count": 76, "name": "cunrSZcUggOdcV1R", "region_overrides": {"rY4vTNQDPKVCX9Du": {"buffer_count": 24, "buffer_percent": 80, "max_count": 15, "min_count": 14, "name": "3gBOt0ywx3XAf9EK", "unlimited": false, "use_buffer_percent": false}, "POTK4FSQfqxcG5FO": {"buffer_count": 97, "buffer_percent": 98, "max_count": 17, "min_count": 8, "name": "Lf0Asf9dmUYj37Aj", "unlimited": false, "use_buffer_percent": true}, "qlogvdPJmGrw6x5X": {"buffer_count": 98, "buffer_percent": 67, "max_count": 63, "min_count": 70, "name": "7j2nObZDORXkaFyn", "unlimited": false, "use_buffer_percent": false}}, "regions": ["zUxLdLoaJkz4YyRe", "gMoU6yKivdqV7lJf", "twrYFj3WaK0wWLtq"], "session_timeout": 59, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"Xe2xnDrkCjkkPXKL": {"buffer_count": 7, "buffer_percent": 62, "max_count": 70, "min_count": 82, "name": "ZlrgotpUw2cGGpUZ", "unlimited": true, "use_buffer_percent": true}, "sMRJh2yZbGLggXDI": {"buffer_count": 24, "buffer_percent": 13, "max_count": 31, "min_count": 85, "name": "mfyezf1EgcmLQYpS", "unlimited": false, "use_buffer_percent": false}, "dPpEqIKwvOuEPELj": {"buffer_count": 63, "buffer_percent": 43, "max_count": 67, "min_count": 70, "name": "vIZ7ySxz2YAFjVJj", "unlimited": false, "use_buffer_percent": true}}, "regions": ["i44REgly1LUuQkbW", "AnKFMDeYuWjMKj5z", "YjjdUGwRiMYBLs3O"], "session_timeout": 39, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'CreateDeployment' test.out

#- 19 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'FA5LiXZr313Fy7UO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteDeployment' test.out

#- 20 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'bCYWAZDEX0NO49Rx' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 96, "buffer_percent": 35, "configuration": "nRpSf0ciIyTiKm4a", "enable_region_overrides": true, "extendable_session": true, "game_version": "OVbXqvq1oDYwA7hM", "max_count": 74, "min_count": 86, "regions": ["Fu6CsJH2QMiHZhdF", "pi0z0hu5pHbuQvdc", "5Rpn0wNXgIZsZBFb"], "session_timeout": 42, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateDeployment' test.out

#- 21 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'MhaujSMh9vB2XZXx' \
    --namespace $AB_NAMESPACE \
    --region 'HFbzEkV6eFlJLq3L' \
    --body '{"buffer_count": 3, "buffer_percent": 43, "max_count": 28, "min_count": 91, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'CreateRootRegionOverride' test.out

#- 22 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'ySa78X38Bj3GBIkD' \
    --namespace $AB_NAMESPACE \
    --region 's3dd16HIFFGoICHl' \
    > test.out 2>&1
eval_tap $? 22 'DeleteRootRegionOverride' test.out

#- 23 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'eBhAlVDPDUsUoF4q' \
    --namespace $AB_NAMESPACE \
    --region 'oS9ZQGnQtzExDZmR' \
    --body '{"buffer_count": 38, "buffer_percent": 85, "max_count": 20, "min_count": 42, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateRootRegionOverride' test.out

#- 24 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'jhxnCDQwELprXD5y' \
    --namespace $AB_NAMESPACE \
    --version '6VIZbq4IrFCGdi68' \
    --body '{"buffer_count": 5, "buffer_percent": 98, "configuration": "GV0hhprxMNJH8tVQ", "enable_region_overrides": true, "extendable_session": false, "game_version": "yc62xTCllb64OSk3", "max_count": 73, "min_count": 23, "region_overrides": {"glaFUPsxBCmPmN1R": {"buffer_count": 19, "buffer_percent": 50, "max_count": 15, "min_count": 79, "name": "IvoPeb8RWNnFVwSQ", "unlimited": false, "use_buffer_percent": false}, "qao30F7afa5TPYxS": {"buffer_count": 81, "buffer_percent": 55, "max_count": 38, "min_count": 11, "name": "7K8pO9oSvLGh2VNt", "unlimited": true, "use_buffer_percent": false}, "doH7cnnOT40pxpOM": {"buffer_count": 66, "buffer_percent": 66, "max_count": 8, "min_count": 52, "name": "Y5B6W08rD8EPg7ZN", "unlimited": false, "use_buffer_percent": false}}, "regions": ["YwR7bdD0eDbtAO2A", "7AXxhOxKogrvePfp", "sKJxLhu8oMxuE6JE"], "session_timeout": 21, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'CreateDeploymentOverride' test.out

#- 25 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'gf1YeGC6F1Vt92Aj' \
    --namespace $AB_NAMESPACE \
    --version 'pSnE5CeTY1tjocZI' \
    > test.out 2>&1
eval_tap $? 25 'DeleteDeploymentOverride' test.out

#- 26 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'ZaOp5XIxeZEd7Kwx' \
    --namespace $AB_NAMESPACE \
    --version 'fhoNAMgFJrQkuCEd' \
    --body '{"buffer_count": 32, "buffer_percent": 35, "configuration": "cohe3syz4nG4wE9l", "enable_region_overrides": true, "game_version": "qG0hGix3DRv8SAaD", "max_count": 14, "min_count": 50, "regions": ["nxEysDwlMSmaCWtf", "BiNTXJU9BDjjP87M", "QUoUBucMPsCmZRPJ"], "session_timeout": 60, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateDeploymentOverride' test.out

#- 27 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'dw1lh1H8uQGFQDkc' \
    --namespace $AB_NAMESPACE \
    --region 'LDt0GWFxXy57n9PM' \
    --version 'vqyy4280x7oDmgZP' \
    --body '{"buffer_count": 30, "buffer_percent": 8, "max_count": 55, "min_count": 48, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'CreateOverrideRegionOverride' test.out

#- 28 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'qeSN8oWOoAobpZis' \
    --namespace $AB_NAMESPACE \
    --region '1CISc6vgSts8qify' \
    --version 'l6JRg0zEhQDtdGGu' \
    > test.out 2>&1
eval_tap $? 28 'DeleteOverrideRegionOverride' test.out

#- 29 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'HuiYyW3P4QLjI4F8' \
    --namespace $AB_NAMESPACE \
    --region 'eTL9jgjGRyyMZWTa' \
    --version 'cTMgMH8chvBYUYJl' \
    --body '{"buffer_count": 85, "buffer_percent": 91, "max_count": 16, "min_count": 28, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateOverrideRegionOverride' test.out

#- 30 DeleteCreatingServerCountQueue
samples/cli/sample-apps Dsmc deleteCreatingServerCountQueue \
    --deployment 'hxqyPN5a3L9nEZ7T' \
    --namespace $AB_NAMESPACE \
    --version 'ajnVA3kIono4MyA6' \
    > test.out 2>&1
eval_tap $? 30 'DeleteCreatingServerCountQueue' test.out

#- 31 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '64' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 31 'GetAllPodConfig' test.out

#- 32 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 't2467R3gATGA62Ya' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPodConfig' test.out

#- 33 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'FZFZ8UTjdPQqA7ih' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 69, "mem_limit": 30, "params": "E8V5KyZe7HUjFQqV"}' \
    > test.out 2>&1
eval_tap $? 33 'CreatePodConfig' test.out

#- 34 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'FHolv2MdRYCc2sq7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePodConfig' test.out

#- 35 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'SVntyKRUlwCe7HDa' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 30, "mem_limit": 26, "name": "BOVukAsRLRYJ1HHD", "params": "YGMaQTzaQ0VWxZVH"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePodConfig' test.out

#- 36 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'A2mHc2kAHzi53nvQ' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 92}' \
    > test.out 2>&1
eval_tap $? 36 'AddPort' test.out

#- 37 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'YP32ts8fGVpDEmlE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'DeletePort' test.out

#- 38 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'sSZnArkE9wPnoJHY' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "sDYUY5RKCUb3vjFB", "port": 39}' \
    > test.out 2>&1
eval_tap $? 38 'UpdatePort' test.out

#- 39 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 't9R6gYwwbVHzdyDt' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    --count '73' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 39 'ListImages' test.out

#- 40 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'OIWwjg3uGWC0jj9n' \
    --version 'RM1ppxurtEZzgBLL' \
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
    --imageURI 'EFOnulZiCMgxhirF' \
    --version 'TnqfECZdAZtNy5E1' \
    --versionPatch 'YTAwVA3curFQavcB' \
    > test.out 2>&1
eval_tap $? 42 'DeleteImagePatch' test.out

#- 43 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'QtzWB8AKI05HxyqC' \
    > test.out 2>&1
eval_tap $? 43 'GetImageDetail' test.out

#- 44 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'ZQJf7KdJGuWILBl6' \
    > test.out 2>&1
eval_tap $? 44 'GetImagePatches' test.out

#- 45 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'CSqvMQzsb2w8Giiy' \
    --versionPatch 'Zq3JLd3Iy3ZeQcAF' \
    > test.out 2>&1
eval_tap $? 45 'GetImagePatchDetail' test.out

#- 46 AddBuffer
samples/cli/sample-apps Dsmc addBuffer \
    --namespace $AB_NAMESPACE \
    --body '{"AllocCount": 94, "DeploymentName": "FUtuEn4oaS3N48JQ", "JobCount": 62, "JobPriority": 48, "OverrideVersion": "V8jjtUOJX8i0rZb7", "Region": "gyS7CoxWm8KbZ5o2"}' \
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
    --region 'nopxTwu4sbbrrIYe' \
    --count '96' \
    --offset '10' \
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
    --region 'R54XeXolkBqxrd1I' \
    > test.out 2>&1
eval_tap $? 50 'CountServerDetailed' test.out

#- 51 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'ListLocalServer' test.out

#- 52 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'K2v8EmtORNt6eZuE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteLocalServer' test.out

#- 53 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'cF4ExcxKf64JiCQx' \
    > test.out 2>&1
eval_tap $? 53 'GetServer' test.out

#- 54 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'SVCDuQqKRwNgzT5a' \
    > test.out 2>&1
eval_tap $? 54 'DeleteServer' test.out

#- 55 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'TRXidcJfWTehNTYl' \
    --withServer 'false' \
    --count '72' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 55 'ListSession' test.out

#- 56 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'VDTcryVqEucEJOjI' \
    > test.out 2>&1
eval_tap $? 56 'CountSession' test.out

#- 57 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '6FRrlm8FG5ujregH' \
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
    --body '{"JobCount": 48, "Region": "D9YCwnNsobbQI0Ha", "TimeoutSecond": 88, "ZombieCount": 38}' \
    > test.out 2>&1
eval_tap $? 59 'RunZombieCleanerRequestHandler' test.out

#- 60 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "f4w3uIOYeBGA2MrN", "repository": "Ox7HpyNaJ8AXfdgv"}' \
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
    --name 'YQXaSMURIGwWh3mR' \
    --count '46' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 63 'GetAllDeploymentClient' test.out

#- 64 GetDeploymentClient
samples/cli/sample-apps Dsmc getDeploymentClient \
    --deployment 'pQGWTleMl6QGjPEi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetDeploymentClient' test.out

#- 65 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'OSJJJDINmd3euQEE' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 65, "buffer_percent": 75, "configuration": "cSgJpziTS7N3xpkj", "enable_region_overrides": true, "extendable_session": false, "game_version": "y22W0HXNUbxBBQx2", "max_count": 86, "min_count": 40, "overrides": {"VNFWZTnmPRwxZx6n": {"buffer_count": 37, "buffer_percent": 93, "configuration": "YCSi0kNGZzyAJgf3", "enable_region_overrides": true, "extendable_session": false, "game_version": "5ROmjfy1t3YDdjKJ", "max_count": 20, "min_count": 97, "name": "gw2IVxpxDkF5mEt1", "region_overrides": {"RLaYmYTnSrzgetcx": {"buffer_count": 9, "buffer_percent": 7, "max_count": 46, "min_count": 33, "name": "o3kgGSHitKOY3rBb", "unlimited": true, "use_buffer_percent": false}, "LlUKCmgtU9Sx12DM": {"buffer_count": 25, "buffer_percent": 58, "max_count": 69, "min_count": 31, "name": "TXYc7fiOQL3t0NrQ", "unlimited": false, "use_buffer_percent": false}, "4iDNhr9O8Z0s8Yhm": {"buffer_count": 25, "buffer_percent": 97, "max_count": 97, "min_count": 11, "name": "uqgAxJtsIMpwcl63", "unlimited": false, "use_buffer_percent": false}}, "regions": ["cZd5Q0xN8fOiXnSN", "HzaMgEhkHYMyRODx", "WoLRVdtDzcuIe22H"], "session_timeout": 64, "unlimited": true, "use_buffer_percent": true}, "KgV3ak4rJhgWTJep": {"buffer_count": 47, "buffer_percent": 93, "configuration": "tOzBFgBTT6BAKjcz", "enable_region_overrides": false, "extendable_session": false, "game_version": "aHbr03dhAOEHAQ10", "max_count": 67, "min_count": 42, "name": "kaHXSX80wirkqZqY", "region_overrides": {"qnH86ULd0bMln3Aj": {"buffer_count": 2, "buffer_percent": 51, "max_count": 93, "min_count": 49, "name": "i7tt3PWNp9aii4vy", "unlimited": true, "use_buffer_percent": true}, "h3FPNsq4XEZ29qgP": {"buffer_count": 97, "buffer_percent": 4, "max_count": 74, "min_count": 17, "name": "7heDhWW7FiPmdGI4", "unlimited": false, "use_buffer_percent": false}, "6FFZefZkJeCMyh5R": {"buffer_count": 40, "buffer_percent": 10, "max_count": 43, "min_count": 42, "name": "f4i2IHXRZWf013Gw", "unlimited": true, "use_buffer_percent": false}}, "regions": ["reKLpc7xaZpAgdNt", "FUFTiZpbsoGttnyV", "yZCsxG3HgQpzZChi"], "session_timeout": 97, "unlimited": true, "use_buffer_percent": false}, "9GAqnPLoZYhM8Riz": {"buffer_count": 56, "buffer_percent": 23, "configuration": "sAlhjeg8M4FM91kQ", "enable_region_overrides": true, "extendable_session": false, "game_version": "fXwkxcNr9gLDzjUP", "max_count": 25, "min_count": 61, "name": "xey7lv5akXmZmwz1", "region_overrides": {"5s10LRbg3aY3sWlb": {"buffer_count": 94, "buffer_percent": 35, "max_count": 18, "min_count": 0, "name": "zVi14T7SNsR7yS5b", "unlimited": true, "use_buffer_percent": false}, "BeTWq3Vxo09PMlMn": {"buffer_count": 77, "buffer_percent": 33, "max_count": 85, "min_count": 33, "name": "EePmUaJL3jh9CtSj", "unlimited": true, "use_buffer_percent": true}, "XyIxZKzfDWNWHw3J": {"buffer_count": 54, "buffer_percent": 10, "max_count": 57, "min_count": 39, "name": "Dyu6MOyrGYoO0Tl4", "unlimited": false, "use_buffer_percent": false}}, "regions": ["pEmeUrcZL311xBtq", "JxAMlTQDaa22SWI9", "AR8o6OM0HrqWio80"], "session_timeout": 90, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"540g3Y3eUXw9iYiA": {"buffer_count": 60, "buffer_percent": 72, "max_count": 72, "min_count": 77, "name": "zzNjr9aVHhGLqSLy", "unlimited": true, "use_buffer_percent": false}, "8kfhHiiDsgYK0PCW": {"buffer_count": 16, "buffer_percent": 71, "max_count": 52, "min_count": 72, "name": "1xQn2rMRmvokPLDy", "unlimited": true, "use_buffer_percent": true}, "C4gYRFngZ4WEQ8Tw": {"buffer_count": 78, "buffer_percent": 37, "max_count": 10, "min_count": 72, "name": "fbYKIXCHQEJYBX2n", "unlimited": false, "use_buffer_percent": false}}, "regions": ["Kpmi6EJiE8bdeqIw", "9RQ6tVbu2ZZuzvOn", "liIX3MxnThOuJI9O"], "session_timeout": 99, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 65 'CreateDeploymentClient' test.out

#- 66 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'y9zdj6btn0SUTTLY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteDeploymentClient' test.out

#- 67 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '41' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 67 'GetAllPodConfigClient' test.out

#- 68 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name '3JKJuZLryzDy6Ils' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 9, "mem_limit": 38, "params": "BQgp91A9FKS1aqK9"}' \
    > test.out 2>&1
eval_tap $? 68 'CreatePodConfigClient' test.out

#- 69 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'yaze9Rju5NLR1NNm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePodConfigClient' test.out

#- 70 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '91' \
    --offset '94' \
    --q 'R26Qys66TnSrCFj8' \
    --sortBy 'createdAt' \
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
    --version '7Q2QZ3o2pvudqUsh' \
    > test.out 2>&1
eval_tap $? 72 'ImageDetailClient' test.out

#- 73 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'hxI8dzMdongz2Gtp' \
    --count '86' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 73 'ListServerClient' test.out

#- 74 CountServerDetailedClient
samples/cli/sample-apps Dsmc countServerDetailedClient \
    --namespace $AB_NAMESPACE \
    --region 'HehBj8k0yrekU041' \
    > test.out 2>&1
eval_tap $? 74 'CountServerDetailedClient' test.out

#- 75 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "NIxYbGIDVkElR980"}' \
    > test.out 2>&1
eval_tap $? 75 'ServerHeartbeat' test.out

#- 76 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "TdCOlnKHzD2JTtZU"}' \
    > test.out 2>&1
eval_tap $? 76 'DeregisterLocalServer' test.out

#- 77 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "LKJ41JnD1DdhMocr", "ip": "oGrlmfa7igjQgrVg", "name": "0LIu6zlwLjWCqzYN", "port": 48}' \
    > test.out 2>&1
eval_tap $? 77 'RegisterLocalServer' test.out

#- 78 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "DEFAXczwd1ilx3rW", "pod_name": "VM4aVXgTibjbRxAj"}' \
    > test.out 2>&1
eval_tap $? 78 'RegisterServer' test.out

#- 79 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "8PT1lJ8gbCRX4whw"}' \
    > test.out 2>&1
eval_tap $? 79 'ShutdownServer' test.out

#- 80 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName '8G7ZgUBUZAHpvrPH' \
    > test.out 2>&1
eval_tap $? 80 'GetServerSessionTimeout' test.out

#- 81 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'YOUB5vNv32S3gLtB' \
    > test.out 2>&1
eval_tap $? 81 'GetServerSession' test.out

#- 82 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "nbly48clibJFSEYQ", "configuration": "ATyTr3THIYQy4Ueq", "deployment": "WoWAVJRVEwVw9i9q", "game_mode": "QS0c3aMGILIwkShC", "matching_allies": [{"matching_parties": [{"party_attributes": {"pC96nSPUgjOhQDB0": {}, "Rmv3gdHl19dxpcay": {}, "HEH0koxuuGtHVmSA": {}}, "party_id": "KRjAvbT4TiPv3sbO", "party_members": [{"user_id": "uYvo9htyzsCUgzYU"}, {"user_id": "rjKh7OiuVFd6bUZY"}, {"user_id": "1HpSNPbg5qeM9aTY"}]}, {"party_attributes": {"cUKAyk3e5AvpkT0K": {}, "4zLI9o0wYkTM7YZP": {}, "6tRhLrKqUKAioEWG": {}}, "party_id": "2mfQgT7SmIyU62l1", "party_members": [{"user_id": "VFp2CxKm05bLlbb1"}, {"user_id": "IxRyDUqA3eqSLn1e"}, {"user_id": "kWpHiWv7oC9adMmN"}]}, {"party_attributes": {"flAUnBC7LfXw71YV": {}, "xNVr9tFXDKXCxNw8": {}, "T4joeCPCMmPLTpO3": {}}, "party_id": "40Wa2pl7fDNLmnoB", "party_members": [{"user_id": "JAk7SrougQawyvjQ"}, {"user_id": "9qHLgi7xrbbjYkz7"}, {"user_id": "0qlttyZ6ikYpDFG6"}]}]}, {"matching_parties": [{"party_attributes": {"z8leaZDb7AIVxndX": {}, "C1RlswC22BYMnbSQ": {}, "XEKl9XWySwix0efq": {}}, "party_id": "bAo8NrHir8FwMWZv", "party_members": [{"user_id": "lXXVtG3uTF6wn45S"}, {"user_id": "3XGsXkixSAk6XKUH"}, {"user_id": "bpVNdWWIyJ1ZnlFG"}]}, {"party_attributes": {"qCqbTpnDgxZ5xBPZ": {}, "WLAdbG9z3DWZ9aA4": {}, "AyewJ6qnlpaVej2D": {}}, "party_id": "mqBJOlBlWkeM61yo", "party_members": [{"user_id": "0jztbGd6qsqmV4lZ"}, {"user_id": "r7Ny8mHwL2vodqL4"}, {"user_id": "CVcZNJ1JKOTxNGIK"}]}, {"party_attributes": {"Q4fwd5u78fzgk3bu": {}, "vDVLzHODK0ajgSHm": {}, "WKLCcmy1bjPVH4W3": {}}, "party_id": "FWxpCfNsblISn4TV", "party_members": [{"user_id": "RpyDGrcujsO6q6Rp"}, {"user_id": "qrMrpZTlL9hq1BDt"}, {"user_id": "z6fc2rM1TKxwq67t"}]}]}, {"matching_parties": [{"party_attributes": {"aPjunR4fvSx5TtWW": {}, "A36fkfH8CFYQ29bB": {}, "FrUiSye7xhmOmG0B": {}}, "party_id": "bRpdKskKRKvDgaZm", "party_members": [{"user_id": "ZxoPALrJi5EzdtvO"}, {"user_id": "yyXU3r9NepkZppOD"}, {"user_id": "SvDaHiyHtGDg9QTA"}]}, {"party_attributes": {"FmdQlOqHaS0RnOYg": {}, "HWAyLFOact7uv8lF": {}, "HSusywshiefY2ToY": {}}, "party_id": "DXvk0EjakTGJQTHu", "party_members": [{"user_id": "vFHahqxm5NDsPiC3"}, {"user_id": "I3x0h9l0iXpAEpij"}, {"user_id": "sU6EkAN7kPZV2v36"}]}, {"party_attributes": {"4GdrXtJVWOKDdRTt": {}, "HKOEZjYCypcn8mk6": {}, "77WpP2fnPoR5jpNi": {}}, "party_id": "48YKAJVUh52evWOe", "party_members": [{"user_id": "v97GVTGVLfVwM2R5"}, {"user_id": "i5jvO41TR1c1nIzw"}, {"user_id": "loBSVI3qGgRGfUQJ"}]}]}], "namespace": "6cJXaessZVqmzIfg", "notification_payload": {}, "pod_name": "DSF3qRCaWwBDX1E0", "region": "RhDB0N4luQcQByD2", "session_id": "I6yXATIX2e5fF1Mb"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateSession' test.out

#- 83 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"game_mode": "fRf3KnfsR1CRJWhX", "matching_allies": [{"matching_parties": [{"party_attributes": {"dPJmHo0wETQ6Ernk": {}, "RkS5n02IBe6TKgOc": {}, "0BgUCs5v2r3qSmp5": {}}, "party_id": "AFCEUsKRohOyOjkW", "party_members": [{"user_id": "MgVk3UHgRWtlf1z3"}, {"user_id": "MiPTrXRHnyeWycBr"}, {"user_id": "2adWdvOiqeOnLbT9"}]}, {"party_attributes": {"3mrbSBGX5ayoYcrF": {}, "vdKelv6j8D8P92xI": {}, "5OM5nW05HR4Zcpya": {}}, "party_id": "ifttk4e52K3z8oMD", "party_members": [{"user_id": "zDgPFCGx9Yz2f8aF"}, {"user_id": "IPsZIOIEJCtA39Ch"}, {"user_id": "jN4HIQAn8ol6I0SL"}]}, {"party_attributes": {"jC3ZrrCMiC7oHtkJ": {}, "OtOje8XdBAXMRl3W": {}, "yXNvnbVgFV3uLyQe": {}}, "party_id": "0uDYmYzVnOlp2zPZ", "party_members": [{"user_id": "w8UAVHiC1hP72u1z"}, {"user_id": "RtRuHkjr2X16xrns"}, {"user_id": "JxMgm3m4uqkq1U5M"}]}]}, {"matching_parties": [{"party_attributes": {"L83d8ed6nGfHNkFG": {}, "sUtUxKZVIlACNSz9": {}, "M2X9Ms7Wmygi6hwV": {}}, "party_id": "nUy9B7RqOJgfX9du", "party_members": [{"user_id": "qoekNFBR1uw75WXm"}, {"user_id": "XYejbXyydOFgH6fu"}, {"user_id": "HUSg3PWi0va3WQIP"}]}, {"party_attributes": {"6A0lBkqT4drfyxHj": {}, "WUvttNOTo1Oydpsm": {}, "J5m4RSw4q2cukhMA": {}}, "party_id": "OyOnVVwVuSGDHdJv", "party_members": [{"user_id": "PVlysrDSnRB0jHBa"}, {"user_id": "g0PxE2myyAnlsPcP"}, {"user_id": "tB3t1WX3KZlxbOLw"}]}, {"party_attributes": {"KlHU9XnFTGqeLaiK": {}, "UofFq0V8tOL0M1Ht": {}, "JSuvyDCs10xWB7To": {}}, "party_id": "RlosqqZTgkpweFxU", "party_members": [{"user_id": "MMvARppwSDnBNCWU"}, {"user_id": "YW0xgaU2zHFoBE01"}, {"user_id": "xfirYVD0cCSmuB50"}]}]}, {"matching_parties": [{"party_attributes": {"ZpXY7lrIvRswKFon": {}, "IqzCPMDGpjEs4Y3a": {}, "fq6KvY3gnTAmZlwU": {}}, "party_id": "v7XYvLd1UbpVdwwA", "party_members": [{"user_id": "EDWDecRPryhP5znq"}, {"user_id": "XTb8FQcaW3ZQieST"}, {"user_id": "U7RAL4g4O8Dxh115"}]}, {"party_attributes": {"IK81IXDlAcpbny7c": {}, "7NibDoul6xTIKKdL": {}, "Q986rOS1J0GSovE1": {}}, "party_id": "PGgFuDLRlCnHjtvP", "party_members": [{"user_id": "2G2OEPPqdlSIhXsn"}, {"user_id": "RhRchPqVvKucStjB"}, {"user_id": "HXY5JzJPFle2fAb6"}]}, {"party_attributes": {"VZ1rR30EY7Fw9moX": {}, "W7zqh73M2zSXPL8z": {}, "TIXWJxWsDQze3QaL": {}}, "party_id": "SWqIz9M2LPmyiiEE", "party_members": [{"user_id": "vCR0rR7mNitaHEMD"}, {"user_id": "cej6PEQGZ0iTS4QN"}, {"user_id": "kquKQyO544dX9qoi"}]}]}], "namespace": "788PqgsTX7YikeYj", "notification_payload": {}, "session_id": "DS5KCKpT4G79nbcR"}' \
    > test.out 2>&1
eval_tap $? 83 'ClaimServer' test.out

#- 84 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '75keVsrsA3CEJvcb' \
    > test.out 2>&1
eval_tap $? 84 'GetSession' test.out

#- 85 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'naTqUNuMhnaoD8OS' \
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
    --region '6QsOwkzN3youQ59W' \
    > test.out 2>&1
eval_tap $? 88 'ListProvidersByRegion' test.out

#- 89 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 89 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE