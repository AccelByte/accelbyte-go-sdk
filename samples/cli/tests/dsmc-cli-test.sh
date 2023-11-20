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
    --body '{"artifactPath": "EEBy7AprIFLNxl2C", "coreDumpEnabled": false, "image": "AaHeTDMSsRrpBBI8", "imageReplicationsMap": {"TJYvQwPwqH8UMtGE": {"failure_code": "M6A1eCrWGra50nTF", "region": "XG2aBguq8SblanfG", "status": "LrBLuEnaivnMLJZx", "uri": "LL8xtfdxpDFNAAyo"}, "ZfAuIFXb02UWYj0F": {"failure_code": "7W9puczNQbq3Nlcc", "region": "UBGH7uzvz2lzrY5W", "status": "inhMwK845qEevpZe", "uri": "1WT5mhzBSF6z6WtJ"}, "KwIZLXLOwwb3ErDA": {"failure_code": "PeMxcbXzgez5N98S", "region": "nQjRSEhoK9zgOKz7", "status": "J6M5RkoqyObNcYeS", "uri": "T2A4lbtP21xpYAvW"}}, "namespace": "4nvRUBAwRes0Kkgo", "patchVersion": "2pejsvl1EFtuA1vS", "persistent": false, "version": "c2uX1aSJYQ6TTNQ6"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "mERDGEVYiYFLy5gJ", "coreDumpEnabled": true, "dockerPath": "GHZH3T8fbvtwT0Lh", "image": "QlJILwvYe97idTnD", "imageSize": 79, "namespace": "BZWjON52dFwiOdz0", "persistent": false, "ulimitFileSize": 76, "version": "xWjDO9slHligLooS"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "Qn7trC1r93Hgy43w", "coreDumpEnabled": false, "dockerPath": "jjcrR69MsXJWcb44", "image": "CWYB8Eiim2olLMc7", "imageSize": 31, "namespace": "MFUI3FGpwNxgJNPj", "patchVersion": "EYrncPuxwnEEzr5p", "persistent": false, "ulimitFileSize": 37, "uploaderFlag": "A2KESVXxv9YeZXlV", "version": "cf4ejz7sCI4xumnT"}' \
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
    --body '{"claim_timeout": 43, "creation_timeout": 10, "default_version": "ZPlFzDbuutUsnYXm", "port": 24, "ports": {"hW9KQmKLCchrb2GH": 71, "hpRmtR0GuNPB8rtu": 23, "OfF8L6E0K2HiP6Cp": 96}, "protocol": "4i4gd2FtGdR87EYH", "providers": ["hbqMsvsbintKTS6F", "7i65YdqoSXpV19Mj", "Fv3I7chbNnt8zmr7"], "session_timeout": 41, "unreachable_timeout": 57}' \
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
    --body '{"claim_timeout": 56, "creation_timeout": 35, "default_version": "yLBzkTg8KSFGgE4S", "port": 51, "protocol": "dnSoORTE2X0Fz7EK", "providers": ["R131VVYfnYD7MaCF", "DASScCaPZeP0flUW", "ivRBpln8ZUiOSu1u"], "session_timeout": 90, "unreachable_timeout": 79}' \
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
    --name 'Z0IbhiWG84XWZf8e' \
    --count '52' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'InEPu3I0xmAwNnfH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment '2v7BVFptlQCaJYus' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 58, "buffer_percent": 43, "configuration": "jGpMpUAJlOjcAGIN", "enable_region_overrides": false, "extendable_session": false, "game_version": "LZ1RYJmrkIQn5l7o", "max_count": 39, "min_count": 51, "overrides": {"ZJMLESgOfWLxccd7": {"buffer_count": 80, "buffer_percent": 74, "configuration": "lFPgcE761ozadBa3", "enable_region_overrides": false, "extendable_session": false, "game_version": "OEev2dUzGZRsbCZX", "max_count": 49, "min_count": 28, "name": "oMmNWYcWK4XuwdCk", "region_overrides": {"vc0isGKeoAXF5Ul3": {"buffer_count": 75, "buffer_percent": 16, "max_count": 3, "min_count": 96, "name": "TFmnBmuo1Nu66dfY", "unlimited": false, "use_buffer_percent": false}, "zSAm9nWNO5HABxzL": {"buffer_count": 8, "buffer_percent": 52, "max_count": 83, "min_count": 51, "name": "k1DalimFpvV9yNt6", "unlimited": true, "use_buffer_percent": false}, "WI3cgcs6SekkT6m6": {"buffer_count": 18, "buffer_percent": 62, "max_count": 39, "min_count": 86, "name": "yRk0uUSDadaT9jBn", "unlimited": true, "use_buffer_percent": false}}, "regions": ["OFuTfTCSTqSmZuXO", "bKL0OYXDbnRx8wtF", "MiNlc5YOYAYdr4Gu"], "session_timeout": 78, "unlimited": false, "use_buffer_percent": true}, "JZikYPwhs70QL0Ux": {"buffer_count": 34, "buffer_percent": 60, "configuration": "4ZAf725ifaWNe1BZ", "enable_region_overrides": false, "extendable_session": false, "game_version": "SMXCSEqp1K14q1mO", "max_count": 6, "min_count": 30, "name": "eIbPpleNjhhyAW8s", "region_overrides": {"zEmpxxjl74xSVm3z": {"buffer_count": 35, "buffer_percent": 65, "max_count": 75, "min_count": 4, "name": "LG3f4a9KoSQqLg2k", "unlimited": true, "use_buffer_percent": true}, "sBEBo2LhOyVrSIhI": {"buffer_count": 82, "buffer_percent": 48, "max_count": 95, "min_count": 19, "name": "ixOS70Q0iRaApSHy", "unlimited": false, "use_buffer_percent": true}, "qaCj4vjoCEeJi3Fi": {"buffer_count": 45, "buffer_percent": 90, "max_count": 35, "min_count": 35, "name": "U87UqugSQqt2OvCu", "unlimited": false, "use_buffer_percent": true}}, "regions": ["xIvO2vIRbTClc83I", "PeBm41zCJWJuoyEx", "n9nmZVfX5blomiJH"], "session_timeout": 82, "unlimited": false, "use_buffer_percent": false}, "XkpYSs9Npg9Jy3DU": {"buffer_count": 53, "buffer_percent": 51, "configuration": "rCpKXhbYMpiGU1tR", "enable_region_overrides": true, "extendable_session": true, "game_version": "PRSgnhkmTesmgpjP", "max_count": 58, "min_count": 12, "name": "dAWqEM1uAOCAnsSQ", "region_overrides": {"hSD1BWuhKAzCBqGo": {"buffer_count": 79, "buffer_percent": 44, "max_count": 94, "min_count": 5, "name": "tDPhq51ahIyNJEiI", "unlimited": false, "use_buffer_percent": false}, "Mkc93iX4uUcUo6IQ": {"buffer_count": 70, "buffer_percent": 15, "max_count": 41, "min_count": 54, "name": "DIWz4vWLA1r4rgyW", "unlimited": false, "use_buffer_percent": true}, "19NjiotTAVfNOjP0": {"buffer_count": 5, "buffer_percent": 38, "max_count": 80, "min_count": 48, "name": "nYtiOPKcPdqDcTiy", "unlimited": false, "use_buffer_percent": true}}, "regions": ["5jPbeKYFuq8UMEvv", "M5qk7MkhatkQcHSf", "lF1yjVpxVewWFuh7"], "session_timeout": 34, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"yZjPPug3k0EstpwL": {"buffer_count": 43, "buffer_percent": 46, "max_count": 5, "min_count": 20, "name": "yWexn5iMwwMZOBRx", "unlimited": false, "use_buffer_percent": false}, "V71sSbqyIwRFgBlT": {"buffer_count": 53, "buffer_percent": 70, "max_count": 34, "min_count": 47, "name": "GThLbmPPCpbVbwYw", "unlimited": true, "use_buffer_percent": true}, "fZhol52hptiu0PmU": {"buffer_count": 58, "buffer_percent": 28, "max_count": 76, "min_count": 7, "name": "9NYdvvcrYEsjrEaO", "unlimited": true, "use_buffer_percent": true}}, "regions": ["6ObTAuAmdao4FMQt", "ArCF2hsdI3DhGN2B", "rax2Lmuyerb9PC7H"], "session_timeout": 57, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'b2eioBHf9gbBXGfh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'qD5xPADpMI7NQMIv' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 39, "buffer_percent": 74, "configuration": "5bRQ9VIb6EyOgwxy", "enable_region_overrides": false, "extendable_session": true, "game_version": "HyLNMQViIQ2cwRVe", "max_count": 67, "min_count": 3, "regions": ["kCClfA6zQKYr0jtw", "tcXD75RXzNeiMOwk", "JfXMZYOvVtPajMTK"], "session_timeout": 23, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'y8f78L5wLK72coJY' \
    --namespace $AB_NAMESPACE \
    --region 'GnvhQ1a3PuiVbTAt' \
    --body '{"buffer_count": 25, "buffer_percent": 48, "max_count": 87, "min_count": 8, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'LcNslJdskxDPGwfb' \
    --namespace $AB_NAMESPACE \
    --region 'DpLQVWHuMzzGxt5G' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment '1YXM0AfqFqV5ALYp' \
    --namespace $AB_NAMESPACE \
    --region 'B4a2CdxD0SvYuop8' \
    --body '{"buffer_count": 73, "buffer_percent": 8, "max_count": 78, "min_count": 66, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'HSJFtbAxwgMtYUWf' \
    --namespace $AB_NAMESPACE \
    --version 'aLrC6NqGQQCRnrg2' \
    --body '{"buffer_count": 79, "buffer_percent": 44, "configuration": "LFpMzwzmmoqEZ2er", "enable_region_overrides": true, "extendable_session": false, "game_version": "6AvDOBW3IAT0PLJS", "max_count": 2, "min_count": 14, "region_overrides": {"rH3CswGMKzballqh": {"buffer_count": 36, "buffer_percent": 23, "max_count": 30, "min_count": 48, "name": "qhxMk9FKMIa03ovn", "unlimited": true, "use_buffer_percent": true}, "fHKskM32MzcaulUa": {"buffer_count": 75, "buffer_percent": 53, "max_count": 74, "min_count": 7, "name": "ialy8sQ5DYTzyHiO", "unlimited": true, "use_buffer_percent": true}, "9dkQ74LkcvYrxWNL": {"buffer_count": 83, "buffer_percent": 100, "max_count": 25, "min_count": 58, "name": "z1wf1qKmTTRI5HrZ", "unlimited": false, "use_buffer_percent": false}}, "regions": ["qAV7ey9J2ZNlJFbo", "JaAidMVs5aUrnjsq", "2AIfCyuHdYZnbggG"], "session_timeout": 12, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'SNiVcT7gDdDwlr7l' \
    --namespace $AB_NAMESPACE \
    --version '8KRGDFXDelf6WlVV' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'i57xJrU5yLngfr2l' \
    --namespace $AB_NAMESPACE \
    --version 'OF1roFa9cT3owOcP' \
    --body '{"buffer_count": 79, "buffer_percent": 2, "configuration": "j4FzuUgGO4FA2jjK", "enable_region_overrides": false, "game_version": "BQ2OI1pRkIN2y8BJ", "max_count": 39, "min_count": 15, "regions": ["VDUtQq7nqzrTpVKW", "64rtXB6sFnXAwqjb", "K5oPIY2C6bLcNi0h"], "session_timeout": 34, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'N8PJCnxn2wk3o22D' \
    --namespace $AB_NAMESPACE \
    --region 'KTQau975sacaQTX6' \
    --version 'YJ11r5RiDsH2PAuI' \
    --body '{"buffer_count": 75, "buffer_percent": 75, "max_count": 94, "min_count": 22, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'bZNUp9NwRWK23MDi' \
    --namespace $AB_NAMESPACE \
    --region 'Uk1AFXBthZUbPvUY' \
    --version 'R0nabYSPXjh23UEN' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'ULNr6rJcNsnnEjHh' \
    --namespace $AB_NAMESPACE \
    --region 'PxH82goneFNgBOMo' \
    --version 'FKSy2nEP63XxxM7w' \
    --body '{"buffer_count": 52, "buffer_percent": 64, "max_count": 85, "min_count": 4, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '52' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'iSBaDeTol95Fx5oz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '5On9xa1rAwxTKyWl' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 24, "mem_limit": 7, "params": "a08aWp6atpQTg035"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name '4tUQ419Z59Cmppuf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'CGXWItsDqAuBUjPf' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 49, "mem_limit": 7, "name": "k0Gzxk95MFW8Pqza", "params": "NzvHL4RPEu9ie4h8"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'hfJF1up9FqeQfo2r' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 56}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'AQcwKLd6cUpZe0GJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'uRmT2Cbm0FeJfSqK' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "qexQ1JqRXEWejYnm", "port": 27}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'Sq8zWXAXAI3mtyBe' \
    --sortBy 'updatedAt' \
    --sortDirection 'desc' \
    --count '43' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'eOk1vqEiCAuDhrUP' \
    --version 'kxkPyWncdtJtJmLT' \
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
    --imageURI '2dlwjpYIyQkuf60l' \
    --version '9m6pwoeUrZpbL0eE' \
    --versionPatch '1OXfLIP9iyqeVuF4' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'rBVbJfG52W55WwAv' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'mEVD0H3Wh3CzJUyQ' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'B5zM6yL2yqckBNr4' \
    --versionPatch 'mFUNzlirYxkQC55t' \
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
    --region 'GLgcfYtsYNtAAbVA' \
    --count '54' \
    --offset '46' \
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
    --region 'quMzYRZ7xU9MJiYj' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 't7jaldwlCgtKKLWe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName '8tfttiagCp8zZhUu' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'kwPlyilr6KIJRsvW' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'OJlCgeufi5wpOTpD' \
    --withServer 'false' \
    --count '61' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'CbjiDK8AoUDfdD0n' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'dDt5wIbVuAoplLwy' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "rrkaoO41HObd90gf", "repository": "tVWqgE4vSBvIlDFD"}' \
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
    --name '66E0zkMmZFcC5AVQ' \
    --count '20' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment '5jAI4xohzceFVtei' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 21, "buffer_percent": 50, "configuration": "AvPvo2IbQgWzvHoj", "enable_region_overrides": false, "extendable_session": false, "game_version": "LYIuEwL9h7DZtRot", "max_count": 23, "min_count": 21, "overrides": {"RIYfHy5ZevBJygZU": {"buffer_count": 45, "buffer_percent": 75, "configuration": "gIWtyDquTDDZ9LNO", "enable_region_overrides": true, "extendable_session": false, "game_version": "ip8VQdpyByw93cq7", "max_count": 7, "min_count": 25, "name": "3xbv5ZHgt2ULgGRB", "region_overrides": {"Xp90AXhfcvTeAHWK": {"buffer_count": 71, "buffer_percent": 66, "max_count": 47, "min_count": 50, "name": "gMSI2ekXWHtpBqXA", "unlimited": false, "use_buffer_percent": false}, "Pl20t6PuQEnB78pE": {"buffer_count": 23, "buffer_percent": 28, "max_count": 43, "min_count": 81, "name": "XgZsGwD5NtdlGmgH", "unlimited": true, "use_buffer_percent": false}, "V3Jc8gKcdZIMApkl": {"buffer_count": 90, "buffer_percent": 77, "max_count": 12, "min_count": 69, "name": "y2jLFzZ6BsAD3jvf", "unlimited": true, "use_buffer_percent": false}}, "regions": ["lvZQWaXVKAjycVkW", "uKK4lJD9FUVwnZHb", "xU63OraiXMSooVaB"], "session_timeout": 79, "unlimited": true, "use_buffer_percent": false}, "BOj37LuMXp9aL5Hh": {"buffer_count": 85, "buffer_percent": 42, "configuration": "6zBMbFblyy1a7Ub5", "enable_region_overrides": true, "extendable_session": false, "game_version": "StKQ8MYSLXeNfBMT", "max_count": 80, "min_count": 66, "name": "hBunwX4L2skLlQMI", "region_overrides": {"AtVkVIUlK7D0XJjh": {"buffer_count": 1, "buffer_percent": 55, "max_count": 78, "min_count": 45, "name": "X5wIt4UzxUbDwoJM", "unlimited": true, "use_buffer_percent": false}, "7zRZtngx6j3MSvSd": {"buffer_count": 3, "buffer_percent": 77, "max_count": 38, "min_count": 37, "name": "FjxzXe8cjZo5K5Y6", "unlimited": true, "use_buffer_percent": true}, "jECY28ggYBlHdUpT": {"buffer_count": 20, "buffer_percent": 87, "max_count": 14, "min_count": 95, "name": "rDScinpG0y5HRAxN", "unlimited": true, "use_buffer_percent": false}}, "regions": ["PnsRZLHwKGP1iQk6", "rDr99mbn2CBH2Y0Y", "LrHGC99NCnyvrNou"], "session_timeout": 94, "unlimited": false, "use_buffer_percent": false}, "pbr7U7yeha1Ze45D": {"buffer_count": 82, "buffer_percent": 47, "configuration": "DS39m0EGNUOhD4rr", "enable_region_overrides": true, "extendable_session": true, "game_version": "kXNpvSyXKt8Y9gSZ", "max_count": 4, "min_count": 16, "name": "zjyX3cWh98EEoCA7", "region_overrides": {"pWjIfIJHQLC0ctTb": {"buffer_count": 83, "buffer_percent": 70, "max_count": 83, "min_count": 32, "name": "rnEYO20QCwyxSlzO", "unlimited": false, "use_buffer_percent": false}, "GVNf6UH8SNQvKsD4": {"buffer_count": 2, "buffer_percent": 37, "max_count": 30, "min_count": 33, "name": "7G9C9IVpT8JeRch8", "unlimited": false, "use_buffer_percent": false}, "XLDekXG53gHiMbVJ": {"buffer_count": 16, "buffer_percent": 28, "max_count": 96, "min_count": 68, "name": "oWRXRK0Bzrqeq1NF", "unlimited": true, "use_buffer_percent": false}}, "regions": ["7LfdEsQ0wdleTZab", "vE6vya2gEzwVKOpw", "zbLkZ9v0jZF14tU0"], "session_timeout": 81, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"GryDzM04QNQDnbZF": {"buffer_count": 60, "buffer_percent": 39, "max_count": 17, "min_count": 96, "name": "FPwnxUiLiMvhkV9e", "unlimited": false, "use_buffer_percent": false}, "TtZemcVxvZulaK0X": {"buffer_count": 49, "buffer_percent": 47, "max_count": 55, "min_count": 10, "name": "cEp35zTodJBCw9AM", "unlimited": true, "use_buffer_percent": false}, "qaX6rJsxhfLVbcor": {"buffer_count": 41, "buffer_percent": 2, "max_count": 98, "min_count": 60, "name": "nZCE2bk4vKF6oEFR", "unlimited": false, "use_buffer_percent": false}}, "regions": ["tso76AN5NMVvtmBD", "Zefq0eA9kabNg0t3", "u08E79EWrik8eot0"], "session_timeout": 49, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment '1f5NRMpizBT22r8U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '93' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'sEgB5t1SBNOqUFV3' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 15, "mem_limit": 62, "params": "dLInnv1NNHeRN2tK"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'ieGsuY3xD0XAUGsY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '53' \
    --offset '22' \
    --q 'kYLGi4IxdF0gNN68' \
    --sortBy 'createdAt' \
    --sortDirection 'asc' \
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
    --version 'dKhItZJSxsgNpexd' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region '4UhsfnL1EjmSgDV2' \
    --count '8' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "X8LCl1XqTXflWyrJ"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "FCY5mKExQZHzViwu"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "hFFZnyAJeBtOOJP2", "ip": "CrilEUS9czxtB0WM", "name": "VXE7x23MuGxUAJiS", "port": 27}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "GUOYxuM3ocEs8nG4", "pod_name": "PY6pXIf7CVGunWbr"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "M3mjBy6n89Eilm3Y"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'cIvFrXAvdeFVotHN' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName '5PijEr8y7j3ATXry' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "LsVHxFpgj4BCt9Lr", "configuration": "DHguLSuNTv953KIa", "deployment": "6vXOttz2FMH0DwJn", "game_mode": "7UNqnY3Ci7U6gcb6", "matching_allies": [{"matching_parties": [{"party_attributes": {"upd2oEbMERyeMSVC": {}, "aHlAZYX6fajxNK1a": {}, "Yy8d9MPehT5GnA92": {}}, "party_id": "8iJrCmPtN7lCyh3Q", "party_members": [{"user_id": "RTFVAlWTnr8edDPD"}, {"user_id": "nSUyMXusmKaAZrWA"}, {"user_id": "l9dzoCsLe9mxrFeR"}]}, {"party_attributes": {"QYLgUe8jraub3Z69": {}, "6iESSDxFjBGncsfJ": {}, "1tehFrflQsgWR1f4": {}}, "party_id": "YMqLL9QogxazmkMw", "party_members": [{"user_id": "DPMvMCYidROKQzjz"}, {"user_id": "F7Aam2eYlPXfoqxL"}, {"user_id": "SkQBND1ONTAtXuyk"}]}, {"party_attributes": {"BXmRDce0N0yjUzWt": {}, "POgYRXu2zVOebdg0": {}, "L7yLcMmbMIYLLwSW": {}}, "party_id": "8UqZu48RD8pn93SP", "party_members": [{"user_id": "qtzUlpa8lS8NixSp"}, {"user_id": "50Zl0XIDP4x8loaC"}, {"user_id": "WK1KSTZIWMJn7Lkg"}]}]}, {"matching_parties": [{"party_attributes": {"TBnHSraAxVBddrdy": {}, "EGtCmzNcCyJUHSJ9": {}, "pN9vCAgFbWZfQWMT": {}}, "party_id": "oeytr2PufnhihWuq", "party_members": [{"user_id": "yjb2QttY0MSEXqsq"}, {"user_id": "MevRJjbXF20exZBM"}, {"user_id": "P9NzZ82NmWwRReG4"}]}, {"party_attributes": {"xVX4gJfIyXeZivo3": {}, "cQxQDhdsOALqyCdo": {}, "wZwkv4zB0hXNJjEy": {}}, "party_id": "hCGIrPV5aqgYRGNa", "party_members": [{"user_id": "NpGsGg46ttBmHYLi"}, {"user_id": "E6hZZqAPp9aPriCO"}, {"user_id": "MTGMc1k0TC6S7qZb"}]}, {"party_attributes": {"I46WpBooJlqFtAmm": {}, "fvzN3TTBu8EZiByF": {}, "1CIXM2EIUmdcXcAT": {}}, "party_id": "1gYqzNqmHDRG4eFu", "party_members": [{"user_id": "jg1SqbB9HkTBNh2D"}, {"user_id": "38ZTBhkQIYQUlPRX"}, {"user_id": "PcZNMawqVqJQFgnb"}]}]}, {"matching_parties": [{"party_attributes": {"XXQK6qkkgBuceldf": {}, "nCbmoHkrXImUo5f5": {}, "w2NigD9DVrM8x0cD": {}}, "party_id": "UYTzWgZYzeO5KJgh", "party_members": [{"user_id": "1A6Nm4sfrGhOpiMK"}, {"user_id": "u9s33ZBgZUYotqBU"}, {"user_id": "iQe8mMFjaBIbGrXb"}]}, {"party_attributes": {"yYS5LPmdWk9EvxiZ": {}, "vWPlXDL7mscc3x5W": {}, "rAB0SBWuWiTJ2tPg": {}}, "party_id": "indnSBnUhmuo34YC", "party_members": [{"user_id": "SUIuQcXwseeed8I2"}, {"user_id": "xJP2siFxNkD2koqR"}, {"user_id": "OhhxTKZqmGjERTlk"}]}, {"party_attributes": {"EEy8CH6jOZMqgcxV": {}, "iEyKQckOhvJgbfEY": {}, "7RkrMISVFn0QxpTh": {}}, "party_id": "4443nDFfhVaYcisA", "party_members": [{"user_id": "TG1Th1b8a4Eivtpv"}, {"user_id": "IyMhhdY7JLQ0CG1g"}, {"user_id": "QihFTdfmqZ0z8IkX"}]}]}], "namespace": "9oPTuiabU3Gnb3OU", "notification_payload": {}, "pod_name": "YdkjCvXWvaIbtEba", "region": "LhZSIiS2X7XHfiUS", "session_id": "5WW1GmCJmcqzpK2S"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "FT1OnfckXaunv08Z"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'b9mB9cmUxwBUYgft' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'i7Q7Z1Q7aUUJVJ2A' \
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
    --region 'hLel3OWY9uu4wdHO' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE