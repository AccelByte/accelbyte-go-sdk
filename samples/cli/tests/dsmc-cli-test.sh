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
    --body '{"artifactPath": "kwF00fTxmYcoOaKb", "coreDumpEnabled": true, "image": "LsQ3BPIKCzxVNasa", "imageReplicationsMap": {"TN6gEXD1FjqNaQJj": {"failure_code": "zBchb6thwca3n2vC", "region": "SAb9QchHzCkcOtmJ", "status": "WQW13j8bUstGO8n5", "uri": "bk5C8ywJpGj7bbfb"}, "QeU10JNPktr9EN0y": {"failure_code": "ucqaG8RroEM8bsjQ", "region": "HZa3HNhjnmXVi7FA", "status": "8KTnYOJYqkKqzhT8", "uri": "hSv77xyp9IaJZwhr"}, "gjaZxoGmpcXGnoUJ": {"failure_code": "K4Bsouy0nNN95OWw", "region": "BfNYqSrA8tMD3FEj", "status": "6IZS5tv8oaXuRGN9", "uri": "gAdoIHr401vLf9nN"}}, "namespace": "844TmsGiXi7hqhbm", "patchVersion": "7kH1W31NG3Ns2k8S", "persistent": false, "version": "vQbBAzqx7qhYnTk5"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "tpwAt5mqmbhniV5g", "coreDumpEnabled": true, "dockerPath": "BX5Yv21RCMkpgftI", "image": "StELnfEiL0ZDEdMn", "imageSize": 46, "namespace": "wuSZ1lNOydw9R00Y", "persistent": true, "ulimitFileSize": 51, "version": "yaLoVgvi9NobUGpy"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "igvsAop2yES1AJYt", "coreDumpEnabled": true, "dockerPath": "VoYVMfFfPFXEtv1D", "image": "uokTz38YqR6NnRo4", "imageSize": 82, "namespace": "shlIN62o9v8TL8Ty", "patchVersion": "xyPNn2sQiDEvnG5e", "persistent": true, "ulimitFileSize": 72, "uploaderFlag": "vohvUtJIvMKYoCZf", "version": "S7iyNTXFY3QZRNDT"}' \
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
    --body '{"claim_timeout": 2, "creation_timeout": 93, "default_version": "D6yPWzyvAHlBEZdP", "port": 65, "ports": {"oqhNjHz5OIeeV0JT": 95, "J3ZRlwcFI2OmfTk5": 91, "tIXX66Gz7a536gRg": 49}, "protocol": "kkiRzEx7YwvGZizq", "providers": ["rADluGOFhMPcvbN3", "b96NHxSR9i2O3b1G", "8MfAu6AXQcSEnkoW"], "session_timeout": 53, "unreachable_timeout": 30}' \
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
    --body '{"claim_timeout": 45, "creation_timeout": 56, "default_version": "UA5a0kxErYpAC9Bv", "port": 40, "protocol": "j5BdgoyL0bU5YA0e", "providers": ["p16U0tAAjF1LB6PL", "GXLOT7UBDQdIIJFC", "5gWNeZBoaGSq1RfV"], "session_timeout": 99, "unreachable_timeout": 31}' \
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
    --name 'aTHosE365DqIXhU6' \
    --count '43' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment '7FGHSxv9zOOgc05P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'jaFwfd4Li22PvgO7' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 87, "buffer_percent": 92, "configuration": "8ZFGiu00XrhPP6Qx", "enable_region_overrides": false, "extendable_session": false, "game_version": "08LBfBdXoG7VKKau", "max_count": 31, "min_count": 67, "overrides": {"8eiwHyjhXynF6w8h": {"buffer_count": 58, "buffer_percent": 6, "configuration": "h5valLywPszA73MW", "enable_region_overrides": false, "extendable_session": false, "game_version": "8keLjqgbGqHvQIV1", "max_count": 98, "min_count": 11, "name": "a8yERsGBwkKbd5pq", "region_overrides": {"SYcGR7CdGh1iolGb": {"buffer_count": 52, "buffer_percent": 70, "max_count": 62, "min_count": 42, "name": "lgeiy53K8FXvhSAA", "unlimited": false, "use_buffer_percent": true}, "8XaTQ1CZ0PZdF89U": {"buffer_count": 11, "buffer_percent": 73, "max_count": 33, "min_count": 43, "name": "HjIeVC7FQPOiB2Yh", "unlimited": true, "use_buffer_percent": true}, "8CTpBVCsB3i0c1em": {"buffer_count": 94, "buffer_percent": 13, "max_count": 5, "min_count": 3, "name": "AEFcFPoJ5blzJTEO", "unlimited": false, "use_buffer_percent": true}}, "regions": ["4xGWqqNSR65I45gO", "X42vzI2LLJDhkPXe", "k0Cj6qzj7RsQqyiR"], "session_timeout": 77, "unlimited": true, "use_buffer_percent": true}, "Z9hsLWi3GBitpkwP": {"buffer_count": 99, "buffer_percent": 28, "configuration": "2Dp6W742qdLQXB87", "enable_region_overrides": true, "extendable_session": true, "game_version": "og6zixxu6xGxrrar", "max_count": 82, "min_count": 58, "name": "vwOPgGOMneV3GgVv", "region_overrides": {"RT5SjmRHrMWVUEzM": {"buffer_count": 43, "buffer_percent": 44, "max_count": 1, "min_count": 35, "name": "weKybLvPeRdMSViX", "unlimited": false, "use_buffer_percent": true}, "yAHWtETJQA0jIkHz": {"buffer_count": 40, "buffer_percent": 1, "max_count": 87, "min_count": 64, "name": "8tv6xOtWjzsX6KsY", "unlimited": true, "use_buffer_percent": true}, "yXQGJtSzNP23TWEU": {"buffer_count": 48, "buffer_percent": 11, "max_count": 1, "min_count": 87, "name": "7sEVzYJe2WrFk6TS", "unlimited": false, "use_buffer_percent": true}}, "regions": ["zEuQjlTvHEs6jALH", "ZqF0JaUgIiiFcEyP", "UwyVMxxfIowyFPpO"], "session_timeout": 90, "unlimited": true, "use_buffer_percent": false}, "Q1QIy6P433zUPdEe": {"buffer_count": 7, "buffer_percent": 24, "configuration": "qC0LRAut6hZDGGJk", "enable_region_overrides": true, "extendable_session": false, "game_version": "dVXoHJsb9AoPudsA", "max_count": 21, "min_count": 95, "name": "LqPtJ7d4HfM0qENr", "region_overrides": {"dDq9VcUxvJAkpFMk": {"buffer_count": 30, "buffer_percent": 76, "max_count": 29, "min_count": 66, "name": "IoAnGA76X4nOvcXE", "unlimited": false, "use_buffer_percent": false}, "jukdAju9la78aeGF": {"buffer_count": 36, "buffer_percent": 64, "max_count": 7, "min_count": 61, "name": "HiZQdLXZF9o4ROx7", "unlimited": false, "use_buffer_percent": false}, "krUIbExmnXJoKJsj": {"buffer_count": 15, "buffer_percent": 50, "max_count": 89, "min_count": 18, "name": "36xliV1sLLVpHHpg", "unlimited": true, "use_buffer_percent": true}}, "regions": ["OCh5XyFXghR2T6zx", "cFXOsCtuP82bLyzL", "jbA93ceU8vB85P4w"], "session_timeout": 76, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"Y8WRx3Q0BvMgS18z": {"buffer_count": 1, "buffer_percent": 72, "max_count": 24, "min_count": 32, "name": "2EVaXuqpvKdhOJpM", "unlimited": false, "use_buffer_percent": true}, "iXpad5ZWbypLGqiT": {"buffer_count": 51, "buffer_percent": 93, "max_count": 41, "min_count": 75, "name": "9Iw0926FJKU6GLo3", "unlimited": true, "use_buffer_percent": true}, "6nN2NkfpO57I75IP": {"buffer_count": 77, "buffer_percent": 46, "max_count": 6, "min_count": 54, "name": "mUnhW3QgvEnpSEf9", "unlimited": false, "use_buffer_percent": false}}, "regions": ["aBNZtdzshhWQjMXy", "z3hQmlHecW4Q5Gg0", "hXwYgnV9txJIGIRd"], "session_timeout": 8, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'iha1Axpb7wPirupj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'uY9OnvGMdXIOElde' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 72, "buffer_percent": 60, "configuration": "bJTxhUDvPSb56ncC", "enable_region_overrides": false, "extendable_session": true, "game_version": "uFq57U1dTGQ154TU", "max_count": 33, "min_count": 78, "regions": ["fjFlt6m5n5FeN2Ne", "oyK5l5Khok3SvTRR", "1q3cE02zDOSjxn2P"], "session_timeout": 86, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'fULeUtFM1cyMG28v' \
    --namespace $AB_NAMESPACE \
    --region 'YodVGCgO2z0mGtXl' \
    --body '{"buffer_count": 71, "buffer_percent": 24, "max_count": 87, "min_count": 56, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'Gwty80DFXkSzxoo0' \
    --namespace $AB_NAMESPACE \
    --region 'PzSTFAiz6k4TsQxe' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'oDI9i2rPxdVpOfo0' \
    --namespace $AB_NAMESPACE \
    --region '9EEhIEDWaUK1NKhB' \
    --body '{"buffer_count": 20, "buffer_percent": 81, "max_count": 0, "min_count": 89, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'eM50uLexLB6Tfv7w' \
    --namespace $AB_NAMESPACE \
    --version 'IcY133zlDp9wbHeJ' \
    --body '{"buffer_count": 21, "buffer_percent": 38, "configuration": "jPojqkb6S7ru3ERq", "enable_region_overrides": true, "extendable_session": false, "game_version": "6CZHTukdmsRdEC0q", "max_count": 80, "min_count": 72, "region_overrides": {"1vm7mURMTy801vvB": {"buffer_count": 70, "buffer_percent": 83, "max_count": 31, "min_count": 69, "name": "KV6FlQ10ch9DrD8N", "unlimited": true, "use_buffer_percent": false}, "2JhozD0rUoNsqRit": {"buffer_count": 49, "buffer_percent": 49, "max_count": 22, "min_count": 73, "name": "tKTZVMUaT7oAJGPC", "unlimited": false, "use_buffer_percent": false}, "sXlqYdWR4ZgON3tN": {"buffer_count": 92, "buffer_percent": 49, "max_count": 39, "min_count": 76, "name": "yDKDkZ8AXDCg8KFV", "unlimited": true, "use_buffer_percent": true}}, "regions": ["SvwWR0O8LBAYbFth", "LHE6WM8OUmGQHRc1", "tjfzvPBAQtqszEtA"], "session_timeout": 0, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'HqyCFSv5iRhdI3MC' \
    --namespace $AB_NAMESPACE \
    --version '6uKV4ouNUYGgoTho' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'MY1xgiUDxpms34tJ' \
    --namespace $AB_NAMESPACE \
    --version 'Fz5d4ec4qIvNPi9R' \
    --body '{"buffer_count": 32, "buffer_percent": 3, "configuration": "YspKRMqoPk8NZopX", "enable_region_overrides": true, "game_version": "ab9emKVvv1boDlvB", "max_count": 28, "min_count": 66, "regions": ["ynyTWwIRsxvbtN4O", "7Pr58cSxZ598rEd3", "pt9dQwFYuAvQnP34"], "session_timeout": 57, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'Ft2Xvc21iI3YY65g' \
    --namespace $AB_NAMESPACE \
    --region '1IlUe0Py8vEY6qxr' \
    --version 'kquteENNA2E7BCss' \
    --body '{"buffer_count": 99, "buffer_percent": 74, "max_count": 63, "min_count": 35, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'YxCsjFeNQJLSNbzy' \
    --namespace $AB_NAMESPACE \
    --region 'FGrY527yQSL3LhJ3' \
    --version 'IJ5jwSGBsaCOpQQp' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'JszyNTl8f9sOWQlX' \
    --namespace $AB_NAMESPACE \
    --region 'gOFkAtVzv1ep5IJu' \
    --version 'u65HYDvDzg1tdVH4' \
    --body '{"buffer_count": 47, "buffer_percent": 78, "max_count": 53, "min_count": 87, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '15' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name '0QFyDkEZMhVPgSQw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'WzbQ9qtZ3hlbaUhM' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 37, "mem_limit": 9, "params": "ANJ1VAMxY1XRsgmz"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'TJJ49Ip7aWAChC0q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'WJlh6FYiCdMpGQCn' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 5, "mem_limit": 16, "name": "unhBxn2JQQUONpm4", "params": "RViak2o3w8cxRRYJ"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'mTG0tya1FjYRB5uk' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 29}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'YZ5d1o8vtn3lZ8wg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'WCbTprMmLaXE0rGS' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "sK6hrbQiJGt3yR0s", "port": 51}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'T9ekic9fSJ9kvCam' \
    --sortBy 'version' \
    --sortDirection 'desc' \
    --count '84' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'jtdUhEn16zbmyJDE' \
    --version 'X3lnHgWP9pNugccs' \
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
    --imageURI 'nEFoGyOyhojO06pt' \
    --version 'nCNDPjztIKfmSMyn' \
    --versionPatch '8Q2wygfYhGa1el6h' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'gU0mGs57id0NhDyl' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'G00nCzk6LT430jh5' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'MWb2LtDBts9Pl5Y6' \
    --versionPatch 'FEJyPsKjegusRlVj' \
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
    --region '3BdkPj8vVOhbXCcV' \
    --count '14' \
    --offset '51' \
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
    --region 'ETqxbrOGxH2Sx8H9' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'uYmXjiCAscP81NPI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'Da7ojRPdqe3Dk5CE' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName '4jxzeA6zTkm8sKWN' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'MT8HjW5ZlG6PUNpJ' \
    --withServer 'false' \
    --count '94' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'ELjlxhtw2KLOblMq' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'oVZaCRCA1SEHWIt3' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "uEbIW42rnbxGKkTR", "repository": "TDI3JhQhkLQlqnVl"}' \
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
    --name 'mTD4RmKnqkollAp2' \
    --count '48' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'BYcnNeoErsneuWvi' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 79, "buffer_percent": 47, "configuration": "JNACLPIhC4VBII6T", "enable_region_overrides": true, "extendable_session": false, "game_version": "xIyILyieHuK9Gxj4", "max_count": 7, "min_count": 74, "overrides": {"5S7zCv2wndu6lP4c": {"buffer_count": 83, "buffer_percent": 89, "configuration": "JC31XjXOPBdjRurd", "enable_region_overrides": true, "extendable_session": true, "game_version": "TpSa6L9m0gFLI3kS", "max_count": 32, "min_count": 88, "name": "rJAp4DsFz881CJqd", "region_overrides": {"ORT9bhlKZbhCPkPw": {"buffer_count": 78, "buffer_percent": 8, "max_count": 14, "min_count": 27, "name": "d3TwS5L8KqgNWJgP", "unlimited": true, "use_buffer_percent": false}, "kYSGLU8HLsbceMUW": {"buffer_count": 13, "buffer_percent": 57, "max_count": 88, "min_count": 28, "name": "TCTOm6LRZGAlRYbw", "unlimited": false, "use_buffer_percent": true}, "jyLRB1OrQQyTOdDE": {"buffer_count": 63, "buffer_percent": 55, "max_count": 37, "min_count": 75, "name": "n8LDo9BMGZJVA5qs", "unlimited": true, "use_buffer_percent": false}}, "regions": ["MypgiS94Y2ec16cG", "AqxWl8pBPQHBEwOl", "bL9h9357A38DzSLS"], "session_timeout": 94, "unlimited": true, "use_buffer_percent": false}, "gmBzRTm662FCNn1J": {"buffer_count": 3, "buffer_percent": 84, "configuration": "4p2ZXdZWkDP9mtSr", "enable_region_overrides": true, "extendable_session": false, "game_version": "QM3NwS7oPfxUruhz", "max_count": 7, "min_count": 60, "name": "yri9kAFMlZ6qYzAX", "region_overrides": {"Fxc7nghUOtRbb71v": {"buffer_count": 31, "buffer_percent": 1, "max_count": 7, "min_count": 50, "name": "UHqyxca4nGqwq22O", "unlimited": true, "use_buffer_percent": true}, "Dys1Yh9BPzEW1OBn": {"buffer_count": 51, "buffer_percent": 18, "max_count": 56, "min_count": 88, "name": "yCor5aECLjqRtKQS", "unlimited": true, "use_buffer_percent": true}, "sD3NXDqi3SniuL9F": {"buffer_count": 16, "buffer_percent": 42, "max_count": 88, "min_count": 47, "name": "zQh32Q2OLKapWXXC", "unlimited": false, "use_buffer_percent": true}}, "regions": ["Ne2qzY22j4lgYDb0", "I4q3aq6ebSgEsMSR", "fHitbyrwIaj2uhJq"], "session_timeout": 70, "unlimited": false, "use_buffer_percent": false}, "f7Y42lImQOhvQqlt": {"buffer_count": 82, "buffer_percent": 23, "configuration": "meZALx3rQih6ju0S", "enable_region_overrides": false, "extendable_session": false, "game_version": "7Bmvtrpivf9XDJYZ", "max_count": 1, "min_count": 43, "name": "wfpNpZJHjeasLJiW", "region_overrides": {"rOzPnv4clqzs0fKr": {"buffer_count": 69, "buffer_percent": 66, "max_count": 65, "min_count": 98, "name": "DaN6aSSCwn9ySqtD", "unlimited": true, "use_buffer_percent": true}, "LIRks0gNqt0buqpx": {"buffer_count": 29, "buffer_percent": 23, "max_count": 18, "min_count": 58, "name": "POlVCPGFPtOoGfbA", "unlimited": true, "use_buffer_percent": false}, "JvZEFMvoC7ptCGEL": {"buffer_count": 32, "buffer_percent": 9, "max_count": 43, "min_count": 8, "name": "beJbeSpffj482XYD", "unlimited": false, "use_buffer_percent": false}}, "regions": ["zMEF9kFfTJVe5wSI", "2JpF15ALER8p2yFl", "sN3mXABSA4K8Bp1R"], "session_timeout": 73, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"cJCA2scmLU1ePRuB": {"buffer_count": 65, "buffer_percent": 71, "max_count": 83, "min_count": 63, "name": "SM6xhEV5WJk5z91h", "unlimited": false, "use_buffer_percent": false}, "8SXuOn5HjyBVknUE": {"buffer_count": 83, "buffer_percent": 42, "max_count": 21, "min_count": 29, "name": "cOXexpAnqm994dMi", "unlimited": false, "use_buffer_percent": true}, "GaRXZZtq1dWFAssi": {"buffer_count": 4, "buffer_percent": 54, "max_count": 88, "min_count": 1, "name": "TMaLFXWFlOLKPfd9", "unlimited": false, "use_buffer_percent": false}}, "regions": ["3Nt06O8KISA0jQWW", "9VMyaI4kMbjjMXg2", "zk6VZxvSVAMTVH2w"], "session_timeout": 12, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'y7NL4oyqZ8d7iEbR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '67' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'NPfeo1awNVvIpcJD' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 100, "mem_limit": 25, "params": "0n6z7BjOXSqEAd4n"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'cYa3pdNJ8giYiob9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '26' \
    --offset '94' \
    --q '3oDt5b5BdN5uB93i' \
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
    --version 'nHeERor4EW0kqEoc' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region '5I2u7Aihlirf2kC3' \
    --count '45' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "U5UXT7rlILePg4oq"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "9BpbdyZRVnmwdTe2"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "pd1LfmX7eFpQAyYS", "ip": "Br8RBBheVSjx2EQJ", "name": "fMRYhF9fpusGnDGg", "port": 8}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "1sXc0sNuZCg4PORz", "pod_name": "UBgr4i0u9WUDMUSL"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "QHkx6oTVU0MWu76g"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'EsEegbqHwNq6OZeF' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'pfjLbH5XHvdql1n5' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "FnZwiIeopafDxXzV", "configuration": "FOiQqnn6XIAZTNR4", "deployment": "uAFuzPuKtHhhQAtD", "game_mode": "2IU8HpH7PKquWQhk", "matching_allies": [{"matching_parties": [{"party_attributes": {"MC9V3PiVdq9A08gJ": {}, "d332Cdk4iUbee6cA": {}, "kGtgrFZyOXHPYvOz": {}}, "party_id": "bFNIZgrfvaQyO1zV", "party_members": [{"user_id": "8UNjX0VQ9nlyYLh0"}, {"user_id": "nXtcPS0RZZ0cvRWF"}, {"user_id": "HpoJSukzkwX8aXuJ"}]}, {"party_attributes": {"Bz3LjxizBnjFgPbt": {}, "ILw6gCDlA0GZoG8w": {}, "ctfCOlolOsZyRYt8": {}}, "party_id": "HEjKsd4mQP6KQ2MI", "party_members": [{"user_id": "UFfiaVCjL5mwT9vQ"}, {"user_id": "KM2zc5MfQDak4UOA"}, {"user_id": "MuTlKGzLJxA14pn0"}]}, {"party_attributes": {"o2Zwz3Ki8CL1BzjV": {}, "aYWgYsdyMNXO197D": {}, "H8FNbxRmlPR0w8Ei": {}}, "party_id": "ZMCYsc4Aft9isj48", "party_members": [{"user_id": "Z3XqrVNWTX0Bz0lV"}, {"user_id": "O4DMXEIm7DigbVJq"}, {"user_id": "UAxND2gFuuwe1MrR"}]}]}, {"matching_parties": [{"party_attributes": {"qPRUYGkMl9X28x2U": {}, "toVg1Wtq7Iu7bkrw": {}, "l2zMWPlFAGnGMLKK": {}}, "party_id": "tS6Y6fo7OPpCwqnG", "party_members": [{"user_id": "tVx6qgnFGlt6H3Fk"}, {"user_id": "bq1x84DnZ90E0mu4"}, {"user_id": "jMqUNNLb29cf4oHG"}]}, {"party_attributes": {"G07ROHy56OGHXRnV": {}, "uvouUyYuuZWsDXu0": {}, "cK14w8dvfkLghLFO": {}}, "party_id": "uQmEAtHpfx6vkc6B", "party_members": [{"user_id": "GXdZT7ktV8WgqrvU"}, {"user_id": "45H0EghAQH57YpNr"}, {"user_id": "2iSeJh9XjMUMLMK6"}]}, {"party_attributes": {"ipmNhTz3WwqVJ541": {}, "btE6uewrAJZDr31R": {}, "vx6dJxbYaFz6ekTc": {}}, "party_id": "vabtnyGG6QLa0I2y", "party_members": [{"user_id": "ggH7FGtyzZI3ewat"}, {"user_id": "IkvTxT5xPuwrEaYd"}, {"user_id": "HOsnbUz2NbonVpkK"}]}]}, {"matching_parties": [{"party_attributes": {"U1Tmd4UXJKD40hVF": {}, "CvLXDNzpPODpxOBx": {}, "3eHgmtHKOUYiUUnS": {}}, "party_id": "09PTQzvmIncoai1N", "party_members": [{"user_id": "ROBJrGWFQ0isntqy"}, {"user_id": "dyVEMbicokjMZhOz"}, {"user_id": "8ZVoLYuXgv15o8t5"}]}, {"party_attributes": {"8bbaObz5zznkizDS": {}, "LKn4omX9TV8FZ2M6": {}, "0AWwSRX5cjkvbFbc": {}}, "party_id": "Kd4UqruZaidxxMaN", "party_members": [{"user_id": "Kxg1KtQtjcfDka6U"}, {"user_id": "XLiNxrTSV9vEqHDK"}, {"user_id": "Vm9kZY5rhpgNibRE"}]}, {"party_attributes": {"ASxVGSnMiQcWOZao": {}, "kCFhItbOUj2wucna": {}, "mTIlkcHDSxPbUien": {}}, "party_id": "rNWtE7VNHrh8GzIp", "party_members": [{"user_id": "cCljNIEeiDffSblG"}, {"user_id": "ICjlFWPaKnTeZnZ7"}, {"user_id": "zIgBpgqjGDtmo8Nt"}]}]}], "namespace": "ZkQ8ecnLHCSZXdlD", "notification_payload": {}, "pod_name": "JvfeqoGRiaig9ftT", "region": "ZBm0rc1G4mcqcU9V", "session_id": "MfajqJrrtoevJYpg"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "u3CZB0VAUV1n87i7"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'pAD5IKDi0k2wlwOZ' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'hoVB3VBWA8rmhQmd' \
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
    --region 'gZYbVVk87dfNXdIA' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE