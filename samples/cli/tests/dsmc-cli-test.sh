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
    --body '{"artifactPath": "0Oe2iD2xrmAoSUPt", "coreDumpEnabled": false, "image": "QruqMcdL9nwnSSDS", "imageReplicationsMap": {"8plQnooihwC7fOrv": {"failure_code": "z0EV3XrmHBGGxwQt", "region": "UXh09KIAsQdCnBHL", "status": "WfjWe97mt1EGd47g", "uri": "DO2SCJZpPATuj3D4"}, "0Tzwh3TQjMVHycMg": {"failure_code": "Oub2lTy4pIsvf0yC", "region": "Uf3cjtytTwhjXlMC", "status": "SMtQWQR5ksdYqxmt", "uri": "HnwrzZKcOEgibvAT"}, "Gg2b9Zr450QC7xux": {"failure_code": "ZkAXKQshkj6EHPZz", "region": "25puMcs5rVzcii4K", "status": "vRSYOlxKdi4iBOkj", "uri": "VVkp3V3MvDM3zA0z"}}, "namespace": "cLhy7fx74JrI4eMj", "patchVersion": "zTGI16O1Ixx39J64", "persistent": false, "ulimitFileSize": 24, "version": "F8tvcRbkkd43QAUF"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "PztYBB4ABvoz1q7J", "coreDumpEnabled": true, "dockerPath": "genuuhInAJZGzm2e", "image": "LM0EfYtOroR57kS7", "imageSize": 19, "namespace": "flBqlu1xUaLTm0UJ", "persistent": true, "ulimitFileSize": 22, "version": "xTXSB6SzPDUuNSvC"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "bQE5vRXTWELyZl0B", "coreDumpEnabled": false, "dockerPath": "C096s3cwXk7kHAeW", "image": "tv9zjoitxQYO6sV7", "imageSize": 12, "namespace": "FrTguBT5bG686eSY", "patchVersion": "sIoBOyArhcJELTAa", "persistent": true, "ulimitFileSize": 31, "uploaderFlag": "oXKC7TCajpqxEOsK", "version": "EKjyEiTNp7Xze0dK"}' \
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
    --body '{"auto_deletion": true, "ghost_worker": true, "manual_buffer_override": true, "zombie_worker": false}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateWorkerConfig' test.out

#- 10 CreateWorkerConfig
samples/cli/sample-apps Dsmc createWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": false, "ghost_worker": true, "manual_buffer_override": true, "zombie_worker": true}' \
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
    --body '{"claim_timeout": 66, "creation_timeout": 70, "default_version": "smMRHIdMP98dXjzR", "port": 61, "ports": {"Lla6QDLG88j1730U": 89, "fuZPV5s934YN0WdM": 59, "JhKtfoSvndDgxRHm": 70}, "protocol": "TYIN15k1lvadpKje", "providers": ["09Ryob00AR8BTyB6", "ID6xZU6ZqoGrI9JE", "hb5QbxbXrNmFLXCF"], "session_timeout": 87, "unreachable_timeout": 14}' \
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
    --body '{"claim_timeout": 93, "creation_timeout": 44, "default_version": "TS15t4gdFpjyaLX6", "port": 70, "protocol": "AOa3fNGkJbi2wdK9", "providers": ["VNQGqUu75GBz6hVq", "fxhbJNExTta7XeS7", "7RQv1jt7HAwZux70"], "session_timeout": 38, "unreachable_timeout": 93}' \
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
    --name 'M0seVFTUyx9ITP7S' \
    --count '82' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 16 'GetAllDeployment' test.out

#- 17 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'rqGWu9OntSmXVPi3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetDeployment' test.out

#- 18 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'AcZmJ5W8V8k7r9i9' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 7, "buffer_percent": 10, "configuration": "hnZ3RYuaAJ6D9W52", "enable_region_overrides": false, "extendable_session": false, "game_version": "to82gtwosPVjYTND", "max_count": 0, "min_count": 57, "overrides": {"1xzOsshYS5HGa2Uw": {"buffer_count": 43, "buffer_percent": 30, "configuration": "LKpA5fJ8R6dJnh5f", "enable_region_overrides": false, "extendable_session": false, "game_version": "E1ABnCKITfxiuxlc", "max_count": 52, "min_count": 86, "name": "zUAbG9cskPSSRNkT", "region_overrides": {"bMDovYASnk7TLI5R": {"buffer_count": 47, "buffer_percent": 4, "max_count": 88, "min_count": 13, "name": "pHUNvWWT3AwVyjIn", "unlimited": true, "use_buffer_percent": true}, "m2UawDjld0kM0o1t": {"buffer_count": 4, "buffer_percent": 28, "max_count": 23, "min_count": 20, "name": "Vc9Y9FYiztPTHdlE", "unlimited": false, "use_buffer_percent": true}, "vnAF5kptgssQpC1P": {"buffer_count": 100, "buffer_percent": 15, "max_count": 53, "min_count": 78, "name": "j4iKIt3QqLI6aCkB", "unlimited": false, "use_buffer_percent": false}}, "regions": ["n23KiHyZVY5R9fj2", "AgQU46zZyMySfEGO", "W84VsCSXkn6WEQUH"], "session_timeout": 71, "unlimited": false, "use_buffer_percent": false}, "r0qgvSbip6a0ruyH": {"buffer_count": 59, "buffer_percent": 12, "configuration": "EogyVXtyCIbfDiC0", "enable_region_overrides": true, "extendable_session": false, "game_version": "fJvJOO5DQYQzch00", "max_count": 32, "min_count": 95, "name": "LgWs5yrMPO5mAnCF", "region_overrides": {"wGjSmWFC4zSZKq13": {"buffer_count": 59, "buffer_percent": 13, "max_count": 38, "min_count": 91, "name": "cvbitSN9nSHNtJyV", "unlimited": true, "use_buffer_percent": true}, "9kJy6jxNhJf2wh0K": {"buffer_count": 91, "buffer_percent": 1, "max_count": 52, "min_count": 81, "name": "mOHG0CthJAQfwDlH", "unlimited": true, "use_buffer_percent": false}, "ZcFGD3qrFNzJMsOM": {"buffer_count": 88, "buffer_percent": 92, "max_count": 70, "min_count": 23, "name": "C3540cbiNT1sY1lU", "unlimited": true, "use_buffer_percent": true}}, "regions": ["D0zvm5Fu6nIVPGnN", "uQFJbCYT8UqXH3JA", "2PxVmP3EQmLUmXbi"], "session_timeout": 73, "unlimited": true, "use_buffer_percent": true}, "ozcNyNy2KZppOFah": {"buffer_count": 16, "buffer_percent": 88, "configuration": "YuH7RjEwPJlSOW0e", "enable_region_overrides": false, "extendable_session": false, "game_version": "BtXFXjTkUsgeb83u", "max_count": 94, "min_count": 93, "name": "YtGN8Nq5wKhMkT5x", "region_overrides": {"ZYIPdaNYju5jex19": {"buffer_count": 75, "buffer_percent": 59, "max_count": 56, "min_count": 65, "name": "MbiI5Y6KDrQwJ4s6", "unlimited": true, "use_buffer_percent": true}, "13ydZWxw4QNqwOIq": {"buffer_count": 92, "buffer_percent": 10, "max_count": 85, "min_count": 85, "name": "WDsqS96ixPJxleKE", "unlimited": true, "use_buffer_percent": false}, "htgrPibiTAylIywb": {"buffer_count": 41, "buffer_percent": 3, "max_count": 12, "min_count": 82, "name": "Sq2JZ1YKuqX2O31N", "unlimited": false, "use_buffer_percent": true}}, "regions": ["3YBjtg6Tnb5ezpI4", "1lLShLU85ujGUyfx", "iDsCbIZNVvifeNlw"], "session_timeout": 62, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"3dk86NmJyjwbCcfO": {"buffer_count": 91, "buffer_percent": 32, "max_count": 54, "min_count": 10, "name": "ILw1QYLkhlFiJuny", "unlimited": false, "use_buffer_percent": true}, "gew4CeNQt5ysGEyt": {"buffer_count": 34, "buffer_percent": 46, "max_count": 98, "min_count": 51, "name": "SlN0itGSK8Ec8fsa", "unlimited": true, "use_buffer_percent": false}, "ODwrzlDSdzTRQR4W": {"buffer_count": 43, "buffer_percent": 30, "max_count": 13, "min_count": 78, "name": "MI9z5fpy82jWocF0", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Gq6xfMiSAksXvRPr", "6vOHn5imW3ygcsUB", "JNWGOEd3hD56Jgc9"], "session_timeout": 33, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'CreateDeployment' test.out

#- 19 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment '4sHvv1F4r38Wyc3A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteDeployment' test.out

#- 20 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'dptnIkR7Im5s0eAA' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 77, "buffer_percent": 27, "configuration": "8ezTmEetGyMFgJA3", "enable_region_overrides": false, "extendable_session": false, "game_version": "19fYoIbxazjK3m0f", "max_count": 5, "min_count": 53, "regions": ["Y16cjAbDWctbP9ce", "FP1Pl8VjBCD6ePk6", "80KYFaKzonBYaGH0"], "session_timeout": 56, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateDeployment' test.out

#- 21 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'og5cRNRGxCTIdCdA' \
    --namespace $AB_NAMESPACE \
    --region 'xKmihYEKW4ug2LKA' \
    --body '{"buffer_count": 100, "buffer_percent": 28, "max_count": 4, "min_count": 28, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'CreateRootRegionOverride' test.out

#- 22 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'w1iiZoesqIPwtszn' \
    --namespace $AB_NAMESPACE \
    --region '3i75mRtMOxYenArR' \
    > test.out 2>&1
eval_tap $? 22 'DeleteRootRegionOverride' test.out

#- 23 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment '6EmDDxxZm3bQsq3f' \
    --namespace $AB_NAMESPACE \
    --region 'CBr2lsF67WhfK6k9' \
    --body '{"buffer_count": 91, "buffer_percent": 14, "max_count": 31, "min_count": 64, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateRootRegionOverride' test.out

#- 24 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'lDZ9ozMpiaoZuhtB' \
    --namespace $AB_NAMESPACE \
    --version 'IouWeISXi1oG8YZC' \
    --body '{"buffer_count": 85, "buffer_percent": 71, "configuration": "SCTfY9JEzSp15HNU", "enable_region_overrides": true, "extendable_session": true, "game_version": "PIxK0NxnHsPMr9Xr", "max_count": 74, "min_count": 1, "region_overrides": {"vXJRCWOzc019MtjP": {"buffer_count": 95, "buffer_percent": 77, "max_count": 29, "min_count": 64, "name": "QSerY6Q2RdSOTO1o", "unlimited": true, "use_buffer_percent": true}, "6rYxzMWkrtwZAD11": {"buffer_count": 48, "buffer_percent": 88, "max_count": 19, "min_count": 56, "name": "INZpgsoccAY7YOPZ", "unlimited": false, "use_buffer_percent": true}, "9p42fzNfODv8bmve": {"buffer_count": 18, "buffer_percent": 27, "max_count": 39, "min_count": 66, "name": "DCv9OrTrm2asQKAW", "unlimited": false, "use_buffer_percent": true}}, "regions": ["Bmyy3jijVFoj9Srr", "ho39XOLfGFVTA3KB", "bAlqBmfJg988wFTI"], "session_timeout": 3, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'CreateDeploymentOverride' test.out

#- 25 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'tFkPge34O682MksK' \
    --namespace $AB_NAMESPACE \
    --version 'FMKRvQDUox2lWOXo' \
    > test.out 2>&1
eval_tap $? 25 'DeleteDeploymentOverride' test.out

#- 26 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'M7xHGi4TYuFgfgpk' \
    --namespace $AB_NAMESPACE \
    --version '65yVIq0B0i1RjtEP' \
    --body '{"buffer_count": 75, "buffer_percent": 15, "configuration": "Iw0tBxvuThBca043", "enable_region_overrides": true, "game_version": "slJLy2BH4yW0eEbW", "max_count": 2, "min_count": 16, "regions": ["LxwKPKCALDbA6vT1", "kcYSV4QRJ5gn0pME", "5mN9CsDl9BnAzBpV"], "session_timeout": 59, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateDeploymentOverride' test.out

#- 27 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'pxi6z0fyvM2tOZVo' \
    --namespace $AB_NAMESPACE \
    --region '8701wGGi4Z9hU3v5' \
    --version 'fSNDKZnyNPRRRHaJ' \
    --body '{"buffer_count": 43, "buffer_percent": 44, "max_count": 32, "min_count": 39, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'CreateOverrideRegionOverride' test.out

#- 28 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'iX1GaR7v5mpO2cKA' \
    --namespace $AB_NAMESPACE \
    --region 'yGk2Re4RlC3HxHQ8' \
    --version 'q17o9lwVpbWeqlPf' \
    > test.out 2>&1
eval_tap $? 28 'DeleteOverrideRegionOverride' test.out

#- 29 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '4uUCk2QkIihATPZM' \
    --namespace $AB_NAMESPACE \
    --region '0ALMA0YRSdlx7HXA' \
    --version 'XO6HlN1h4kgabu8m' \
    --body '{"buffer_count": 2, "buffer_percent": 12, "max_count": 51, "min_count": 100, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateOverrideRegionOverride' test.out

#- 30 DeleteCreatingServerCountQueue
samples/cli/sample-apps Dsmc deleteCreatingServerCountQueue \
    --deployment 'edjDsPA4otAIe4fh' \
    --namespace $AB_NAMESPACE \
    --version 'TAptJJIXIBgkorM7' \
    > test.out 2>&1
eval_tap $? 30 'DeleteCreatingServerCountQueue' test.out

#- 31 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '79' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 31 'GetAllPodConfig' test.out

#- 32 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'kM5bpf6kcDVYPSfB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPodConfig' test.out

#- 33 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'tYANEMBW2LklCanp' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 61, "mem_limit": 12, "params": "mWkc8LbNXOriqMp9"}' \
    > test.out 2>&1
eval_tap $? 33 'CreatePodConfig' test.out

#- 34 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name '5cVmX5VZy5eGNHV7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePodConfig' test.out

#- 35 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'hxcRs4euyLCnndIK' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 40, "mem_limit": 27, "name": "uWdWOWPbVXPCMTvo", "params": "TNoGIGq570t8eb6K"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePodConfig' test.out

#- 36 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'QS4rBm7ht8EtbSOh' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 41}' \
    > test.out 2>&1
eval_tap $? 36 'AddPort' test.out

#- 37 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'L7q0h68zmliFoBtX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'DeletePort' test.out

#- 38 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'dQA1n6L44YRlvNcI' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "5pj1YGus8QO6LzDz", "port": 8}' \
    > test.out 2>&1
eval_tap $? 38 'UpdatePort' test.out

#- 39 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'DHSD3lvqjWnhjOvg' \
    --sortBy 'version' \
    --sortDirection 'desc' \
    --count '16' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 39 'ListImages' test.out

#- 40 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'Z8bxhEbCXynDcZI7' \
    --version 'kJgyHzRlBRE29dCb' \
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
    --imageURI 'psL6agiDUXcYPgwJ' \
    --version 'NFm0NcQcBv2XeZXG' \
    --versionPatch 'Mg8RvalRy8y86QDn' \
    > test.out 2>&1
eval_tap $? 42 'DeleteImagePatch' test.out

#- 43 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version '9tKcY7t6C0wO0J65' \
    > test.out 2>&1
eval_tap $? 43 'GetImageDetail' test.out

#- 44 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version '7xBunb8KeVdFGHXE' \
    > test.out 2>&1
eval_tap $? 44 'GetImagePatches' test.out

#- 45 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'eTpoxc2pFcoCpUMk' \
    --versionPatch 'Yqz5YqCtqXI3iGGN' \
    > test.out 2>&1
eval_tap $? 45 'GetImagePatchDetail' test.out

#- 46 AddBuffer
samples/cli/sample-apps Dsmc addBuffer \
    --namespace $AB_NAMESPACE \
    --body '{"AllocCount": 94, "DeploymentName": "6U3yqY17qnaFyEjj", "JobCount": 26, "JobPriority": 36, "OverrideVersion": "RKx5V2kPZaEpTxp4", "Region": "hNV68StOXt9KukRO"}' \
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
    --region 'IT0IVkxYirT723eq' \
    --count '81' \
    --offset '69' \
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
    --region '3APfMmg8se3V3elH' \
    > test.out 2>&1
eval_tap $? 50 'CountServerDetailed' test.out

#- 51 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'ListLocalServer' test.out

#- 52 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'uqSo6zM1eLP3rUSp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteLocalServer' test.out

#- 53 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'TMsacRq9nFTiP8JG' \
    > test.out 2>&1
eval_tap $? 53 'GetServer' test.out

#- 54 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'Pcz3L4QQpOL4qvLe' \
    > test.out 2>&1
eval_tap $? 54 'DeleteServer' test.out

#- 55 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'GAwB3OOxEAZnTli2' \
    --withServer 'true' \
    --count '54' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 55 'ListSession' test.out

#- 56 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'GZrcdH2ws5hDabRv' \
    > test.out 2>&1
eval_tap $? 56 'CountSession' test.out

#- 57 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'W3JTS5wbbW6YCqKe' \
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
    --body '{"JobCount": 10, "Region": "fj1WW4G8JcKSFAcN", "TimeoutSecond": 12, "ZombieCount": 95}' \
    > test.out 2>&1
eval_tap $? 59 'RunZombieCleanerRequestHandler' test.out

#- 60 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "cqkbUWLR8HAZIHwL", "repository": "klCcOYRCxLwBujhY"}' \
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
    --name 'pKBRNX1BuI6gpCuT' \
    --count '14' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 63 'GetAllDeploymentClient' test.out

#- 64 GetDeploymentClient
samples/cli/sample-apps Dsmc getDeploymentClient \
    --deployment '1PRDkmUYSTfLeeJd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetDeploymentClient' test.out

#- 65 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'yjMygBF4rk9srZJW' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 17, "buffer_percent": 90, "configuration": "acxa3MAE79PtEb1P", "enable_region_overrides": false, "extendable_session": true, "game_version": "Jurbaod6tpreMilB", "max_count": 60, "min_count": 32, "overrides": {"XYYn7ev0XJ3iXuLQ": {"buffer_count": 89, "buffer_percent": 59, "configuration": "egSh9fobGSaKEgCl", "enable_region_overrides": false, "extendable_session": false, "game_version": "YjmjHhq16d1e4888", "max_count": 4, "min_count": 49, "name": "KUCmVDmMxwLu71Tg", "region_overrides": {"2LeDHAM4Bh9yqtt2": {"buffer_count": 85, "buffer_percent": 9, "max_count": 79, "min_count": 77, "name": "rlymM1V2w7GfclgZ", "unlimited": false, "use_buffer_percent": true}, "XpHlAnuvgt63FWei": {"buffer_count": 19, "buffer_percent": 6, "max_count": 45, "min_count": 62, "name": "NhzcBB3TExbRJgov", "unlimited": true, "use_buffer_percent": true}, "34Lcbv9N3vWLMSfQ": {"buffer_count": 18, "buffer_percent": 37, "max_count": 36, "min_count": 89, "name": "h7uUdtWxzCwdzJnC", "unlimited": false, "use_buffer_percent": false}}, "regions": ["XZTEHmkazl1yhCQM", "Bakqoyl8qz0QFIc9", "Wlb4aeKJXWTSahrM"], "session_timeout": 7, "unlimited": false, "use_buffer_percent": true}, "ztAwmMMRJYpT8Ecc": {"buffer_count": 47, "buffer_percent": 50, "configuration": "k1gxdppW9ueeY87m", "enable_region_overrides": false, "extendable_session": true, "game_version": "LDiWczJF3xlwtDLO", "max_count": 48, "min_count": 9, "name": "wZJ6cTZ3JhF4rTzK", "region_overrides": {"8acr8renFdyMqy5e": {"buffer_count": 1, "buffer_percent": 12, "max_count": 20, "min_count": 41, "name": "wwOVk5FtTsueAGZy", "unlimited": true, "use_buffer_percent": false}, "LpkPSM2DlgbxKmcx": {"buffer_count": 68, "buffer_percent": 90, "max_count": 40, "min_count": 21, "name": "bwCnKgVsvdOts1bT", "unlimited": true, "use_buffer_percent": false}, "8Eu8ZcGfuYN15WMp": {"buffer_count": 39, "buffer_percent": 0, "max_count": 23, "min_count": 34, "name": "48FCLhzwIZBzipPB", "unlimited": false, "use_buffer_percent": true}}, "regions": ["rJJJ0KU8wD3HeFbA", "idbCE77zgEojq5B7", "8UFeQWOe34CcqMfF"], "session_timeout": 11, "unlimited": false, "use_buffer_percent": false}, "UMcYIfuFmSZzxLQJ": {"buffer_count": 61, "buffer_percent": 25, "configuration": "gXXEd3zUhQGjRQos", "enable_region_overrides": false, "extendable_session": true, "game_version": "qCs5BVYhV8aovG2F", "max_count": 49, "min_count": 86, "name": "j2tfurkbFEDre9oM", "region_overrides": {"vvl114cHSCEwTEAL": {"buffer_count": 37, "buffer_percent": 79, "max_count": 89, "min_count": 0, "name": "bnhYgXjsBlfyjGVD", "unlimited": false, "use_buffer_percent": false}, "IIFw9Tlbsd4eoyKi": {"buffer_count": 12, "buffer_percent": 32, "max_count": 20, "min_count": 93, "name": "teOOah1pHnjTXgIN", "unlimited": true, "use_buffer_percent": false}, "9Hopx12gq9NJXuNi": {"buffer_count": 33, "buffer_percent": 40, "max_count": 52, "min_count": 94, "name": "HWElalsubE7TaF6B", "unlimited": true, "use_buffer_percent": true}}, "regions": ["TEQ1Jbmu8PIzrmve", "NF5KSJFjbBUKxjXs", "zLf7AnNxICZ6UbYD"], "session_timeout": 70, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"WUY4Y4bWyUPP595m": {"buffer_count": 20, "buffer_percent": 88, "max_count": 84, "min_count": 4, "name": "J1uW8Ux1lfBsSeEj", "unlimited": false, "use_buffer_percent": false}, "aGWGT1FIWDD7zTEu": {"buffer_count": 42, "buffer_percent": 80, "max_count": 73, "min_count": 44, "name": "bFItcFct3FrCsYh5", "unlimited": true, "use_buffer_percent": true}, "vPzsCc2aJbwRLkzF": {"buffer_count": 32, "buffer_percent": 3, "max_count": 29, "min_count": 6, "name": "PXje75PnPayvX6Ai", "unlimited": false, "use_buffer_percent": true}}, "regions": ["FtxBGnPufR7lrWKL", "Ruz4kAFDZWDHD4ob", "rPAqHHIPKTMciJFI"], "session_timeout": 62, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 65 'CreateDeploymentClient' test.out

#- 66 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'PPugKJsB8VlNcSro' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteDeploymentClient' test.out

#- 67 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '0' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 67 'GetAllPodConfigClient' test.out

#- 68 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'iAcSscWBZw8JwLKR' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 33, "mem_limit": 90, "params": "hE3AN9xKOYLAOQOp"}' \
    > test.out 2>&1
eval_tap $? 68 'CreatePodConfigClient' test.out

#- 69 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'xCCggda5IfqTEvFE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePodConfigClient' test.out

#- 70 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '28' \
    --offset '6' \
    --q 'u1CQL1ovrBkffdzm' \
    --sortBy 'version' \
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
    --version 'j0GSG0DfH26z5zGW' \
    > test.out 2>&1
eval_tap $? 72 'ImageDetailClient' test.out

#- 73 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'EaZT8A70FYnaT41W' \
    --count '97' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 73 'ListServerClient' test.out

#- 74 CountServerDetailedClient
samples/cli/sample-apps Dsmc countServerDetailedClient \
    --namespace $AB_NAMESPACE \
    --region '3VeXPRuOfkpceIgl' \
    > test.out 2>&1
eval_tap $? 74 'CountServerDetailedClient' test.out

#- 75 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "u9pmcJsLpeVxkADs"}' \
    > test.out 2>&1
eval_tap $? 75 'ServerHeartbeat' test.out

#- 76 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "AXDRJn5QInDOvKYT"}' \
    > test.out 2>&1
eval_tap $? 76 'DeregisterLocalServer' test.out

#- 77 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "KsX41MaRZwWJaj5B", "ip": "eFQAFYOoGfdPlQ3v", "name": "3TD6P4Z5VUzfJyJt", "port": 66}' \
    > test.out 2>&1
eval_tap $? 77 'RegisterLocalServer' test.out

#- 78 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "JkV1pTuM8yyVGYQI", "pod_name": "BFVO33JwJKlCLUsl"}' \
    > test.out 2>&1
eval_tap $? 78 'RegisterServer' test.out

#- 79 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "BsvrZhOj8Omy7WYY"}' \
    > test.out 2>&1
eval_tap $? 79 'ShutdownServer' test.out

#- 80 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'a4GfwUngVl7tgyub' \
    > test.out 2>&1
eval_tap $? 80 'GetServerSessionTimeout' test.out

#- 81 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'LYPXrp2PPS4cfquu' \
    > test.out 2>&1
eval_tap $? 81 'GetServerSession' test.out

#- 82 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "wjKv5KeA8V0t1bQe", "configuration": "LNpAJAC7KwJkgldc", "deployment": "TYUeMxVfLWQAS9Dx", "game_mode": "VQdlevbTYg0SzpUH", "matching_allies": [{"matching_parties": [{"party_attributes": {"pcGdBE1qfK5KGOHE": {}, "DordsRoQAnrfQuLh": {}, "RWo5OvL8oEUxxO3d": {}}, "party_id": "CmqN3ShiDhIWIYwZ", "party_members": [{"user_id": "7DoMLRfMA8ddeTEj"}, {"user_id": "TozNu2AUiR9qt0CV"}, {"user_id": "kCL29kCEpIKE9Bqh"}]}, {"party_attributes": {"G2afPyRTZXiTx0mL": {}, "UWBhV04y4Jm8YVvm": {}, "Wfaa69p5OWRVGPqG": {}}, "party_id": "ADAyU8mMNBOgT6iL", "party_members": [{"user_id": "GQGLDxqKwhsoCf8T"}, {"user_id": "fzAjC0y90k0Y5uI4"}, {"user_id": "xVV9Q94X2lE4tGCh"}]}, {"party_attributes": {"DTk2sw3WI0CqEtRU": {}, "YSSO9PFFyWQj6QNd": {}, "YS3vyQwAlARmSsi7": {}}, "party_id": "XuKCvUscrl0cK19y", "party_members": [{"user_id": "O16F7JFCiYa14gl7"}, {"user_id": "r0NPyh6Q5vfA295z"}, {"user_id": "PC6CVW3lsjRrbztk"}]}]}, {"matching_parties": [{"party_attributes": {"E1duAbrF28mgZtRi": {}, "7o1fFTzWrtEMfcJO": {}, "EibziP45ulG8cs35": {}}, "party_id": "Kp13ApXXP60pP8cJ", "party_members": [{"user_id": "fZw77VQgmfQy0XlR"}, {"user_id": "fkm4bUB71OYOb9rL"}, {"user_id": "hu88mmRp2roX9GHG"}]}, {"party_attributes": {"0k5gQ1jGsNUuqsan": {}, "MQ8JW6G8VSmOKCKk": {}, "FuAl81jhk5Tqyw0u": {}}, "party_id": "E9tPhjsGM7AqnZB9", "party_members": [{"user_id": "rgjpU8pU13IsyE9H"}, {"user_id": "6ZYrqLrTzdMNKiQe"}, {"user_id": "gZCokyY9yFOfhc2K"}]}, {"party_attributes": {"YaqRzCANJAnkNPzN": {}, "EqsdmJPAZHJrl2Gt": {}, "Avdq2kFkEH0sGac8": {}}, "party_id": "4uSlRyTb4kmA0kdp", "party_members": [{"user_id": "yXb87JX5g6orBW5o"}, {"user_id": "viMasg1ymaw7MkAr"}, {"user_id": "eHY2QSyyEpALq7rV"}]}]}, {"matching_parties": [{"party_attributes": {"XSadGDWMOF1xZAKA": {}, "Q5wGSsjL8uDfDiom": {}, "UOLVJsWnmYC16k6d": {}}, "party_id": "fX11e8dA8nnNhbm2", "party_members": [{"user_id": "rolwyxCKz4SnD9P2"}, {"user_id": "5sd8zMfwaopivegt"}, {"user_id": "Xr0Z0KyddCKUcwSB"}]}, {"party_attributes": {"uhE3vFpgaJgdfr6j": {}, "6s3YhwZQamVrnvrS": {}, "xVCAwWH1IQ7Mfd4s": {}}, "party_id": "YfYQ4gFcuVfuYsyO", "party_members": [{"user_id": "sbaoGsiH1Ifs45Da"}, {"user_id": "70pRxMNQ9NxzdxkK"}, {"user_id": "M8spX0yHAQ0ZicnY"}]}, {"party_attributes": {"rlNykZ9YSwctSp3C": {}, "Lmp3CflLw1AShb6a": {}, "6JFAYlp2mHXqyMfr": {}}, "party_id": "yOlwjuMX8GpQdDIf", "party_members": [{"user_id": "z6xMYhbJfRusRQr4"}, {"user_id": "h0eSkOFenIaNwTzo"}, {"user_id": "ihxVxwI1gGKSSWqu"}]}]}], "namespace": "cXbPLtEDUW9PYvM1", "notification_payload": {}, "pod_name": "G2m9Hxkrzot0Ukb0", "region": "MbPpyh0OC1KpOVKH", "session_id": "Z8m59l4i1fSigInv"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateSession' test.out

#- 83 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"game_mode": "qDrH6gFBb8TYCBJP", "matching_allies": [{"matching_parties": [{"party_attributes": {"g0MEswatoLaSIRhU": {}, "lOJq2DU5D74NMsR5": {}, "nWLDppFfeOZSalnl": {}}, "party_id": "Xyr4Klj77FDlcqkT", "party_members": [{"user_id": "hfi607hFDZ3nnQsD"}, {"user_id": "IUHYkw7KZAODZMUP"}, {"user_id": "iQKbMGcLcfZvOqbF"}]}, {"party_attributes": {"YV7biaQ0jo3ZjdZP": {}, "6W7dOjdrzUxgiPdg": {}, "V4DlJCIyhQER3WXb": {}}, "party_id": "QDSaldMiaB02IUFE", "party_members": [{"user_id": "Ux0IvPlc5MVS7wEA"}, {"user_id": "7FWZ3n2FDJ0ELeFq"}, {"user_id": "Y0Vcg1Zom9Jcl7sf"}]}, {"party_attributes": {"tTBU3CtRPJ114URg": {}, "V6Ugf25E0oCYOi9L": {}, "IDLxyIYyIDeR6Tfz": {}}, "party_id": "022xU5zE6gli4CHg", "party_members": [{"user_id": "Z2POeNcJcsr8c5Cb"}, {"user_id": "bOeqFcU2E310Hbpx"}, {"user_id": "sFkkpGIGv0q06ncx"}]}]}, {"matching_parties": [{"party_attributes": {"i0pfTeoQeh51eLdg": {}, "xaIA338GJXpS8qBY": {}, "2eeEgUmblfTMfkQR": {}}, "party_id": "O9mpxepTDOOWD8hW", "party_members": [{"user_id": "0JLanudleD7yXMFW"}, {"user_id": "zY8XAt9wSpKVhMYx"}, {"user_id": "YktFMV2JJhtMgiR4"}]}, {"party_attributes": {"Sf8eI3v2vez1pAWc": {}, "eXQ2l4JG589aUuvK": {}, "cJWAhqN4bBzG4LZu": {}}, "party_id": "GWmIba1rpylizkF9", "party_members": [{"user_id": "jatPRgXb5VxY9JEA"}, {"user_id": "cfWYfPdhbHob5uwZ"}, {"user_id": "mcZQ4qVo0KSMHCyr"}]}, {"party_attributes": {"UcHVs0vgvYzhjevB": {}, "qmT9Omy29vVgtgtk": {}, "RmDIh7NiSgTao9qf": {}}, "party_id": "NMRYLzzHxicB6Bcf", "party_members": [{"user_id": "tPGXfyt6Xi394b5K"}, {"user_id": "hohqIcjF5H6tXnfa"}, {"user_id": "DShjvlMUMkBFQW8I"}]}]}, {"matching_parties": [{"party_attributes": {"LampLZlv719o0D5e": {}, "6YAwXSQuk6JMAGWY": {}, "dUVQ8ewwh5cJyqmA": {}}, "party_id": "CasT66q0tvBhg4h2", "party_members": [{"user_id": "FjPTygHtXHQzeGwj"}, {"user_id": "PfxATH2iyJeHvV1n"}, {"user_id": "8vu8cECbc3M0dXkA"}]}, {"party_attributes": {"1D81xKMIQDDAvGUv": {}, "dD81REwd1patDEZP": {}, "WC25w7J9gdWbnCrg": {}}, "party_id": "NaYP5zjR4rBmziSj", "party_members": [{"user_id": "L14kuBx1FGWxYSyn"}, {"user_id": "OKF9Vogkqo29LMIN"}, {"user_id": "4WK93qv5qPKn8FKP"}]}, {"party_attributes": {"fkAhCqe5sd4NxdQi": {}, "2QlCjlVIMmgrJBYl": {}, "d2iaOPqylrhQoo5p": {}}, "party_id": "rHDcXmtbPSpuTD89", "party_members": [{"user_id": "oA8md1Xl3WpiRW5q"}, {"user_id": "kfRwxrQFKSigiNR1"}, {"user_id": "dH0igWHZGkcqq8uD"}]}]}], "namespace": "TH8yeM39MVYALfLH", "notification_payload": {}, "session_id": "V2cvpj2tTK2FBMA3"}' \
    > test.out 2>&1
eval_tap $? 83 'ClaimServer' test.out

#- 84 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Fy4KfZimgeKc3fn4' \
    > test.out 2>&1
eval_tap $? 84 'GetSession' test.out

#- 85 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'jBMTgg8wFt9Je7Vl' \
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
    --region '6bNO9FG3bDKoFtVU' \
    > test.out 2>&1
eval_tap $? 88 'ListProvidersByRegion' test.out

#- 89 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 89 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE