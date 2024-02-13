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
    --body '{"artifactPath": "PiyTnbONmBMMkJil", "coreDumpEnabled": false, "image": "vvFyIs7d8xmFXnsO", "imageReplicationsMap": {"nEqbd6DUsVg0WRh7": {"failure_code": "Lq235X0E9jrLwXq7", "region": "Dny12iiRohKXg4zL", "status": "dslzv9KRvet9xXFJ", "uri": "4lLh8pJ0oAe9Zb0N"}, "iNiy8WYlybOfeDuF": {"failure_code": "S7jTX2Zg09VRHVlf", "region": "MqkQLp0NsVWwc82B", "status": "dFCegsCZOXdCtAOU", "uri": "wLwyKtNkT6fEJnkF"}, "6FjvQDhAM89Btltd": {"failure_code": "STkKamSVmDevCTjh", "region": "wFsWwdggFKcabIN3", "status": "eWvz6H9j3QuU2DsB", "uri": "FeHQcaQMMYlMFR7i"}}, "namespace": "rqOk26mbZS26kHvP", "patchVersion": "mkZqtf0VLpTshdJR", "persistent": true, "version": "DvEFXsvlJA7Vg5yT"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "aNUMo3VhE8p3EdQp", "coreDumpEnabled": true, "dockerPath": "Ge08LNTIiyJ5rtSJ", "image": "aUzsb3pFYtA5KUxB", "imageSize": 34, "namespace": "3Gq1z0lgBSVkAjow", "persistent": false, "ulimitFileSize": 41, "version": "QYiBBmaHB16b73ul"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "DyMEXWYBmd3PmlWt", "coreDumpEnabled": false, "dockerPath": "sp7PGWjx4wDaFFAX", "image": "ZV0ET4zvgzCGDSVn", "imageSize": 32, "namespace": "BStg0fnmbVcBPSNO", "patchVersion": "g5QhDqjnmNc4sryH", "persistent": false, "ulimitFileSize": 85, "uploaderFlag": "xJIyCPZpZROBUVOL", "version": "WIzDNMWLAced2LcB"}' \
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
    --body '{"claim_timeout": 65, "creation_timeout": 44, "default_version": "AlHuucgSHhSQiY3E", "port": 64, "ports": {"YG5j9FXxenPaHwwh": 25, "CqLODIx66a9lwEPW": 89, "wg300B8Rzu7LeIg0": 17}, "protocol": "l0rAu4hX3X4a8EJl", "providers": ["rEyLbdwHCiGbBE29", "EcrJo2dKuifCCb04", "JyFViHqT1PoandYE"], "session_timeout": 87, "unreachable_timeout": 48}' \
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
    --body '{"claim_timeout": 11, "creation_timeout": 60, "default_version": "IEznQAHpPdDKDGYM", "port": 38, "protocol": "UaVlxIXcKITsrrSZ", "providers": ["JGnArwtIUXoiGZrm", "CDJP30qoC1AMxM7S", "mna0VRlrYP0Ez6Gi"], "session_timeout": 82, "unreachable_timeout": 72}' \
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
    --name 'gCUKOWACTTApu9c8' \
    --count '25' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'SqRwSuER79sQfxSA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'UrptkLQVYNf1AvcD' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 64, "buffer_percent": 21, "configuration": "A0m55KQtvMJazQ4b", "enable_region_overrides": true, "extendable_session": false, "game_version": "4ABpQMG1CBC4Y1Zf", "max_count": 51, "min_count": 10, "overrides": {"U3sKYkr6oeHrRe7a": {"buffer_count": 2, "buffer_percent": 17, "configuration": "ItXm4PR2JGg08D3V", "enable_region_overrides": true, "extendable_session": false, "game_version": "kvbIZaXDPHc5Z2Hj", "max_count": 93, "min_count": 96, "name": "wtlEldeSfItGZq1M", "region_overrides": {"Er27EYpQ61ODtQbq": {"buffer_count": 13, "buffer_percent": 15, "max_count": 9, "min_count": 50, "name": "cV2XJfwUDbSNshLW", "unlimited": true, "use_buffer_percent": false}, "0h6H3UoxFcuSg7PD": {"buffer_count": 51, "buffer_percent": 34, "max_count": 21, "min_count": 37, "name": "6xG6JL7LdwLWWPpz", "unlimited": false, "use_buffer_percent": true}, "9aKrI5zs04hQawK0": {"buffer_count": 24, "buffer_percent": 28, "max_count": 59, "min_count": 100, "name": "qp0DsmWwHFhHlYwm", "unlimited": true, "use_buffer_percent": false}}, "regions": ["mQLpelJFbgIeoW3j", "AQb8BPj2nZcJ22gt", "yBnqaTRLryy09tAh"], "session_timeout": 84, "unlimited": true, "use_buffer_percent": false}, "Is5oPaFrfdE5SmY4": {"buffer_count": 23, "buffer_percent": 73, "configuration": "KQUR00TdIGF665yX", "enable_region_overrides": false, "extendable_session": false, "game_version": "5eNTvdjAqTUC4ZQD", "max_count": 65, "min_count": 18, "name": "adDb5CmcwOtDla86", "region_overrides": {"lBOEo8t2jD86WR1r": {"buffer_count": 0, "buffer_percent": 7, "max_count": 86, "min_count": 80, "name": "v4ODH9HGhWiStmIK", "unlimited": true, "use_buffer_percent": false}, "X2b5hVEbGS2ZSNBL": {"buffer_count": 61, "buffer_percent": 33, "max_count": 8, "min_count": 51, "name": "flkPI47iGWaodK9C", "unlimited": false, "use_buffer_percent": false}, "WWchyE3uS6coY8kY": {"buffer_count": 67, "buffer_percent": 10, "max_count": 3, "min_count": 71, "name": "usvC5wbQeT0SKVow", "unlimited": true, "use_buffer_percent": true}}, "regions": ["McOrg7ZmKgGhe5uj", "hgk4cJHdh8Y4f5JF", "UlrrgEhE4zN389rK"], "session_timeout": 77, "unlimited": true, "use_buffer_percent": true}, "dwr8d2tPbDqDJzyP": {"buffer_count": 13, "buffer_percent": 7, "configuration": "CTY4yVuKMEph79VZ", "enable_region_overrides": false, "extendable_session": false, "game_version": "FxBtjeKd2SQsJanQ", "max_count": 96, "min_count": 48, "name": "Yvs3BtaskAZBtkv8", "region_overrides": {"PQXLdJ8V9hOAaiiH": {"buffer_count": 0, "buffer_percent": 29, "max_count": 14, "min_count": 67, "name": "DBibSzftiDBu8Vn2", "unlimited": true, "use_buffer_percent": true}, "2wvTnc2rdsnhldrZ": {"buffer_count": 1, "buffer_percent": 96, "max_count": 19, "min_count": 47, "name": "v0peDqsH8YfI1yL2", "unlimited": false, "use_buffer_percent": false}, "i0opFpncUPiZy745": {"buffer_count": 62, "buffer_percent": 51, "max_count": 28, "min_count": 90, "name": "CVfeKaqxsd3COji2", "unlimited": true, "use_buffer_percent": false}}, "regions": ["nZ4kv1wbPY3yZeW2", "YZRiBetf18mN95Sl", "SnCt6z3mk61eQgyW"], "session_timeout": 100, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"i3D7YTTiOtk048ya": {"buffer_count": 17, "buffer_percent": 72, "max_count": 23, "min_count": 51, "name": "x9KCkauYj2ygRNqh", "unlimited": true, "use_buffer_percent": false}, "OY88cgVu7HRqoouX": {"buffer_count": 9, "buffer_percent": 87, "max_count": 16, "min_count": 36, "name": "JeDFkvgnAPA335ms", "unlimited": true, "use_buffer_percent": false}, "KYQtsmPYayUb2VW2": {"buffer_count": 50, "buffer_percent": 2, "max_count": 52, "min_count": 1, "name": "JOIsgIsQZ5rvaVBM", "unlimited": false, "use_buffer_percent": false}}, "regions": ["jZmC3KVFhFPWSMFW", "ySnZNUVfCQ1iDEHT", "YoScGnqVgVTwr1EE"], "session_timeout": 75, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'nPHcGSsbOEfuLamY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'GoqSPjOq8S8r4Ql3' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 45, "buffer_percent": 11, "configuration": "r45Y7JfV5rMofHQx", "enable_region_overrides": true, "extendable_session": false, "game_version": "f4eEFP5BMFoA49rZ", "max_count": 14, "min_count": 31, "regions": ["iZfc0067CS045BEq", "RU6JjRHBQ8g93qqK", "IVNUkkWUwoJGQuyp"], "session_timeout": 10, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'UYQTHrIkdf5LyyH4' \
    --namespace $AB_NAMESPACE \
    --region 'zQCYmBA748D6QSql' \
    --body '{"buffer_count": 25, "buffer_percent": 55, "max_count": 2, "min_count": 49, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'r34xR0xopX5DZ956' \
    --namespace $AB_NAMESPACE \
    --region 'bbD3B08CZJgtenDn' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment '5Mz7RB21BAGGKVn0' \
    --namespace $AB_NAMESPACE \
    --region 'Z4rJkUSPsEzmugbG' \
    --body '{"buffer_count": 28, "buffer_percent": 48, "max_count": 84, "min_count": 3, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'N6CSE395GkrRaH4h' \
    --namespace $AB_NAMESPACE \
    --version '2wtGw2Cmbpht8ngq' \
    --body '{"buffer_count": 51, "buffer_percent": 74, "configuration": "5tpjyNXbKf8ZP82N", "enable_region_overrides": true, "extendable_session": false, "game_version": "FL0TfK1TB8cKoumn", "max_count": 75, "min_count": 72, "region_overrides": {"QeXFtVSZo2j9ojiY": {"buffer_count": 53, "buffer_percent": 75, "max_count": 61, "min_count": 96, "name": "sDYFO1mGEN60RTCB", "unlimited": false, "use_buffer_percent": false}, "D62QiNuvqoUeVqJZ": {"buffer_count": 28, "buffer_percent": 51, "max_count": 16, "min_count": 20, "name": "flMzhtlQmtQ12azl", "unlimited": true, "use_buffer_percent": true}, "gnrXwKIiCKFYWorS": {"buffer_count": 3, "buffer_percent": 88, "max_count": 34, "min_count": 96, "name": "ytjzqm9maGuo1Oe2", "unlimited": false, "use_buffer_percent": true}}, "regions": ["M77IbDnsr6ta8WtN", "UrySvDIYd6Ih97f1", "lo2DyNp2aCOEvBO7"], "session_timeout": 79, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment '1lB4yKhn3FiwQx7d' \
    --namespace $AB_NAMESPACE \
    --version 'fJC5DPpB499dtgdM' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment '9kYlyYSavbnSaePi' \
    --namespace $AB_NAMESPACE \
    --version 'sJod8FH0YEbP9vAr' \
    --body '{"buffer_count": 44, "buffer_percent": 87, "configuration": "FRW5yUG8EtJuD3cQ", "enable_region_overrides": true, "game_version": "IFevpeAjYvCNyjQT", "max_count": 54, "min_count": 80, "regions": ["H4q3ZJSQUkyWgqY4", "hYUllYeuS1LI62eK", "TMxIVFGjtmHmNyg9"], "session_timeout": 59, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'Qf86Y0U8FErnr6pw' \
    --namespace $AB_NAMESPACE \
    --region 'ppSXFH8DNzPULPs1' \
    --version 'DTeRckjRAhmEUgCf' \
    --body '{"buffer_count": 2, "buffer_percent": 1, "max_count": 22, "min_count": 90, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'fC33THic5RLTP3Wy' \
    --namespace $AB_NAMESPACE \
    --region 'kD4eHW2QuXh4qRW5' \
    --version '64e5LiH5ySyF6VLN' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'sNlZCf3Bsq3qLmdC' \
    --namespace $AB_NAMESPACE \
    --region 'EpMSjk7ZIsneU8jx' \
    --version '8bc1cTElARVE1lbI' \
    --body '{"buffer_count": 28, "buffer_percent": 10, "max_count": 62, "min_count": 69, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '38' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'kMTYGU4l34v9CsdJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'zsznaaftTgN8gKzZ' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 25, "mem_limit": 84, "params": "lEO7fCnNTuReljnx"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'FMLUdhqKIRazXM5e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'O0EqNQ2bGNKNvrxM' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 10, "mem_limit": 86, "name": "3CaSKV2mhF5wUOrV", "params": "08YWYj21VdGczWia"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'AmSsXRpM5og0po3J' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 39}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'jrRX7QUn6tPsK5HC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'JfZ8xBYetewUXLwK' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "X4Kuu6AGYKwPVdUl", "port": 94}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'cZlvQnDgyYeeatNX' \
    --sortBy 'version' \
    --sortDirection 'desc' \
    --count '23' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'ClWdECAe9fc5PNXq' \
    --version '81EtPjPXuqP3oOtt' \
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
    --imageURI 'uWlJPJHe7HeWAToT' \
    --version 'wUARCW8NEqYFFfe5' \
    --versionPatch 'EA0R6aGold9jmMGZ' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version '9NWJkhrDulbWV3mg' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'PfYg40CW7LNU3yc5' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'xeBMzahOGnhAf41H' \
    --versionPatch '0huyVWlMsF4I6jSz' \
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
    --region '6BL9R0wtsdFs3eKf' \
    --count '73' \
    --offset '27' \
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
    --region 'MvegFjXPLzw0UpR1' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'ZM3ld5ORP9lrp3GU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName '5BZmmNGz2aKQ1ten' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'Yow5yuJOf48snwrV' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'iBTkhtYsOxHgNBZF' \
    --withServer 'true' \
    --count '54' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region '73zp8F4y9muwud0S' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '63KNWwZvraCsaebX' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "MPZazjAqDpCotj0M", "repository": "Ot6ix3DH8Uazhlxx"}' \
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
    --name 'KO8ox4dVx70Pf6pB' \
    --count '85' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment '8GgdOwqWUPWA2yUn' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 66, "buffer_percent": 79, "configuration": "UvafwXYiF2GSLPaq", "enable_region_overrides": false, "extendable_session": true, "game_version": "HiOrFdFGnh3Byr3R", "max_count": 54, "min_count": 45, "overrides": {"8RrJMf9fJNav9oYx": {"buffer_count": 39, "buffer_percent": 42, "configuration": "bV6sfvfKN0LnCjKW", "enable_region_overrides": false, "extendable_session": true, "game_version": "VCpoP77PQ7mk4rJB", "max_count": 69, "min_count": 47, "name": "Lpj0jkO44DwCAOen", "region_overrides": {"jXXcnuDVXvLA295p": {"buffer_count": 31, "buffer_percent": 95, "max_count": 76, "min_count": 83, "name": "7AK6qeWkDhAdDYIH", "unlimited": true, "use_buffer_percent": true}, "HHEXTRbKqAdOjkVp": {"buffer_count": 59, "buffer_percent": 94, "max_count": 94, "min_count": 9, "name": "GtAra8squzg8ZwrA", "unlimited": false, "use_buffer_percent": true}, "DRl18hzNCRtVGuuj": {"buffer_count": 77, "buffer_percent": 91, "max_count": 62, "min_count": 27, "name": "FJJ7HL8aeFiu94Xx", "unlimited": true, "use_buffer_percent": false}}, "regions": ["Yl9tfGCJkIm6Nebu", "epYoucKiYId2GY3D", "iodIwMx1cDW1cEmi"], "session_timeout": 65, "unlimited": false, "use_buffer_percent": false}, "yJ92BMNS4lDkLKPq": {"buffer_count": 12, "buffer_percent": 24, "configuration": "ItwCFIeIOTiVKzOI", "enable_region_overrides": true, "extendable_session": true, "game_version": "aUFyRvMMj2Juw3Y8", "max_count": 59, "min_count": 31, "name": "GdCZzhmc5E6VnVAr", "region_overrides": {"ls4Fk1EGrD1Rp8qZ": {"buffer_count": 28, "buffer_percent": 27, "max_count": 14, "min_count": 78, "name": "0D6NZK4YhvO8bGtY", "unlimited": true, "use_buffer_percent": false}, "3nwnjMR6lQOqZYfZ": {"buffer_count": 19, "buffer_percent": 43, "max_count": 89, "min_count": 50, "name": "BtnllRnBqp5mqM6j", "unlimited": false, "use_buffer_percent": true}, "KXjAi0sx8msn0P4u": {"buffer_count": 100, "buffer_percent": 29, "max_count": 3, "min_count": 95, "name": "ym0VuQ9hTgIsMMZa", "unlimited": false, "use_buffer_percent": true}}, "regions": ["HOMZIZwVwepeRo52", "dHQzGjQnstcxc6bE", "J03nseW3tEyTdIe1"], "session_timeout": 45, "unlimited": true, "use_buffer_percent": true}, "T6J1PM5DyIVBVO16": {"buffer_count": 41, "buffer_percent": 80, "configuration": "AtbIKrRd03prg2dg", "enable_region_overrides": false, "extendable_session": false, "game_version": "8J4dGtn1LVCztG6p", "max_count": 26, "min_count": 3, "name": "jA2nI2M8Z5ULj68Q", "region_overrides": {"iaPGl53BPEkk83rz": {"buffer_count": 70, "buffer_percent": 41, "max_count": 78, "min_count": 44, "name": "baioWYODj08QkvZW", "unlimited": false, "use_buffer_percent": false}, "556vIhfxS3mh1fm1": {"buffer_count": 2, "buffer_percent": 100, "max_count": 22, "min_count": 58, "name": "SeEUkE2pnX7WMlCs", "unlimited": true, "use_buffer_percent": true}, "gnIr0oXTd1GfNfij": {"buffer_count": 20, "buffer_percent": 92, "max_count": 19, "min_count": 32, "name": "ixCJyjiACPJUxtGw", "unlimited": false, "use_buffer_percent": false}}, "regions": ["nL2PTVXoaQvm0f1Z", "lf1VBRV41739V630", "rTIn5rLJbpvyH6Nb"], "session_timeout": 29, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"WAHjlPiYWPyS2nmD": {"buffer_count": 77, "buffer_percent": 56, "max_count": 62, "min_count": 72, "name": "NCKyx5MOAlb8uaDJ", "unlimited": false, "use_buffer_percent": false}, "0AJ2nadWpwFAk8Up": {"buffer_count": 89, "buffer_percent": 42, "max_count": 95, "min_count": 27, "name": "u1m2sRU9ebq5Pcvi", "unlimited": false, "use_buffer_percent": false}, "6f1aItNWThVXj5eR": {"buffer_count": 63, "buffer_percent": 80, "max_count": 42, "min_count": 12, "name": "PeWKBrkZ44c5P42k", "unlimited": false, "use_buffer_percent": false}}, "regions": ["dOaUcUHCQGWfbvJF", "EBnd4KbIYEuJFcpy", "skiWCC2S7dHbeCBc"], "session_timeout": 28, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'Sfx7sJxds3erE8wC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '36' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'YSjKh5BGWCRkR5D1' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 67, "mem_limit": 35, "params": "3cjQiKxcvbPiR3ob"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'qKtPbcjUVnLDreo0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '91' \
    --offset '17' \
    --q '0gufyF0zt2qV2rMz' \
    --sortBy 'updatedAt' \
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
    --version '9E7mPazNhWQH7I50' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region '1tQwEil3k4dIN9WK' \
    --count '52' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "Rbor5PWREtIJ51pi"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "AY9BvRFyLfR0yzQ3"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "T11CTRwketeekYSf", "ip": "Tab9kom95SI3oGJb", "name": "263MhvtjGv8pjJB4", "port": 72}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "7KtrFEULf25pSUFM", "pod_name": "F2hLuQmpcDbRZgjU"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "fxcMUAv5ytbjxmNe"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'd46bj1biL3ooMHHb' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'CmXzzOFPPnVq3Mch' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "jravYipW9B9qwuAv", "configuration": "HWRSgvRbSZaA9OMe", "deployment": "GTdwOHWHTsuRL8Zi", "game_mode": "EmvTfgqDxEeFCutB", "matching_allies": [{"matching_parties": [{"party_attributes": {"lAXCCCCg3ppK1RPn": {}, "Htk4cxQ1NHiin8U2": {}, "277kWBE1X5FdaRxo": {}}, "party_id": "BvvMgWqUgwe7FvpH", "party_members": [{"user_id": "2nd7Zqb9AOApRtIM"}, {"user_id": "tLrnu0apsnwWta2P"}, {"user_id": "DoLx2Ng6t1lCTKPR"}]}, {"party_attributes": {"AVfbsMj1uYDJ1k1f": {}, "XOvElceeRc8l25Jy": {}, "wX9jhrTIfuZr77xx": {}}, "party_id": "1ojinBHMwT1kv4Ku", "party_members": [{"user_id": "ZDc8QSgswkeaG3v5"}, {"user_id": "u5IpLXQdTPW3OHx8"}, {"user_id": "RUlsTHTtlj3kaTke"}]}, {"party_attributes": {"YCDIgRHrVdlfeIwh": {}, "OJVW3t3DRemezuhx": {}, "gTuYoAEBqBp6X1nh": {}}, "party_id": "s11zssxrlkvvWzYR", "party_members": [{"user_id": "MVuJqiRFQevDAqOL"}, {"user_id": "ayfsiMVkikL340kk"}, {"user_id": "AzPa53sGFOhQwDHH"}]}]}, {"matching_parties": [{"party_attributes": {"OZ52a3ATZdmJb38v": {}, "2pwwkdWn8SxsCBa1": {}, "j1gyDWmP7aHdLbi5": {}}, "party_id": "Eb5zc90htLv2Ftcl", "party_members": [{"user_id": "4IuP33EFFPtW8bpj"}, {"user_id": "ktBo7BfRt9VSS2Jc"}, {"user_id": "b4NnYrmLsDPrmmSs"}]}, {"party_attributes": {"beYxxftcaskQ4TN9": {}, "hqeJ42HmWAoamJ5S": {}, "hnzULtM151qfrN11": {}}, "party_id": "M9DecLHEZiTMCjPY", "party_members": [{"user_id": "kc2RWlbxCkAAOa3Y"}, {"user_id": "8UaT0a7wMmITvDEX"}, {"user_id": "qphSrbIT7Fl1QQrd"}]}, {"party_attributes": {"poJWnmFqRrrettFD": {}, "6cW0iXKzT4J9Lgvs": {}, "SLvMbcti7kBBUBlG": {}}, "party_id": "IjOdSVtc2vQkHwlW", "party_members": [{"user_id": "t3SiT0WAI8ZtYEDm"}, {"user_id": "vPNeo8w7Xz9A3ZQ9"}, {"user_id": "8v4l129Wr9tSngZ6"}]}]}, {"matching_parties": [{"party_attributes": {"vNU79XFQXZWAsUNY": {}, "MWIrhYBRnHqm7ECn": {}, "7cQC3L8Ihfr1nyS0": {}}, "party_id": "TjFqMjsYATxTQRW5", "party_members": [{"user_id": "hwuYmHBUaZWDAttO"}, {"user_id": "sj5hGG0bCNjCiT8L"}, {"user_id": "Q7eX2lPfZ0ctHEva"}]}, {"party_attributes": {"jA9V8E99Op5kVdzG": {}, "PuTu3ixFxFKVKbj2": {}, "8GJJi8nQiGt4OZZw": {}}, "party_id": "8qWkKHntKT4aIb34", "party_members": [{"user_id": "9BpdI8cwbOxU4WCy"}, {"user_id": "KdPAjZVN0F29KhsX"}, {"user_id": "zONuZiBDKXuG76Oq"}]}, {"party_attributes": {"kSvlzuRzbw2W3C45": {}, "MokAUkJjJt0wgdXJ": {}, "CLYEwlIMdqBkvDmp": {}}, "party_id": "xjCxjikjGjieqeJU", "party_members": [{"user_id": "OQwpCvoO46ZjQJan"}, {"user_id": "8dL2d6CWZax8ANGe"}, {"user_id": "PHkLBZd0twI4DEvW"}]}]}], "namespace": "bZKViN0LET3FpOO1", "notification_payload": {}, "pod_name": "hOeAxuA5KysmWN46", "region": "wPOBT0QNDdVKxM4Z", "session_id": "STe0MjeKhMzeKdly"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "NptBLZBSgWUfqVj3"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'rtzh8BMtt5TlBqSI' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID '6hBCrXZPqWB8bVgl' \
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
    --region 'dF9zUBUpF26ktrEQ' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE