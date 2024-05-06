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
    --body '{"artifactPath": "7xkD4TkGp5yB15yR", "coreDumpEnabled": true, "image": "4dX9c0XXOWwGIV3l", "imageReplicationsMap": {"BlCV57zqGe0xJWx2": {"failure_code": "SIM4UM6z0SlBUqDl", "region": "zMEFJvo12xbjaqmi", "status": "g6KwssgRrVecPOfz", "uri": "iXN97FkLS7w2P3GN"}, "nIU5Fd9E8AdvWsw4": {"failure_code": "a1SM9HEj8o1lL9ku", "region": "MLm1bCTrAn5oGHBd", "status": "S0tNFxnwW4vmVtbs", "uri": "z0YaW9LwpluWqyhp"}, "vNIa5Z6MhwUcSAx7": {"failure_code": "mufCOYskEzKTt9KC", "region": "wuug6LpXzPnwKJGW", "status": "jyBTHnUd2hUVGX0m", "uri": "Xd8rGRJBAI0m2mWi"}}, "namespace": "WKSHPBf499VprcP4", "patchVersion": "VCTA981xV4wZ7r4z", "persistent": true, "version": "RfyzFtH9H02t60tN"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "vCkH88meGVSgeWDa", "coreDumpEnabled": true, "dockerPath": "aOtAB6FDp2FoZb9E", "image": "UVG7w9MBeE9Yj7m2", "imageSize": 54, "namespace": "2a1gVMnLMGoYON76", "persistent": false, "ulimitFileSize": 37, "version": "k7UyUD5YnJGrJKIP"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "wRaWPW3J1H3wwWOp", "coreDumpEnabled": true, "dockerPath": "JzwXqtQQ2ulf6gu8", "image": "F4P3OVFuEJ3FAf4A", "imageSize": 24, "namespace": "CSUm7HBHUP7TnigD", "patchVersion": "2c0OoWQ1uwfN0weZ", "persistent": true, "ulimitFileSize": 94, "uploaderFlag": "Ep7LEQhYXmllT8fN", "version": "7wMIDMgcSBwHE5wV"}' \
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
    --body '{"claim_timeout": 54, "creation_timeout": 2, "default_version": "b3ZO1ZwwtXndnRA7", "port": 20, "ports": {"Cq1GTa0BCKlCJL2j": 27, "0Q3ZCbMXbPJkkeBm": 98, "XbUXaEja6yDuOZCU": 83}, "protocol": "H46dPEF8wWdXpfuh", "providers": ["HZI6buA8QuQrbzgX", "7fTegfdzwxlGqbWR", "PNqucH4F2nC7PUH3"], "session_timeout": 28, "unreachable_timeout": 41}' \
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
    --body '{"claim_timeout": 94, "creation_timeout": 50, "default_version": "YUSHVaFza30UAdf0", "port": 8, "protocol": "hP7aEAGoX4EQjcRp", "providers": ["MnGHCHRd9waAVzdx", "H9im7d1KqytSuy8K", "zKkLxJ2OZqoEbwWL"], "session_timeout": 59, "unreachable_timeout": 76}' \
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
    --name 'P9IBkjfPxGaC8ZAK' \
    --count '31' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment '6lLALhZCI6GBsW0b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'jZf004lIo9wfsynz' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 23, "buffer_percent": 15, "configuration": "J0UOXvzTEEunOwhj", "enable_region_overrides": true, "extendable_session": false, "game_version": "7LPS8UtUEeAgpnKT", "max_count": 12, "min_count": 6, "overrides": {"YkKLBNPVbUgf6Jka": {"buffer_count": 6, "buffer_percent": 14, "configuration": "ANZQh4CCb9UUiI40", "enable_region_overrides": true, "extendable_session": true, "game_version": "82rhQ1ReLJjmI4Ri", "max_count": 34, "min_count": 12, "name": "I52bf6m7qXKeakoN", "region_overrides": {"DWPfjOgzPivZPNUR": {"buffer_count": 11, "buffer_percent": 44, "max_count": 8, "min_count": 37, "name": "UVHEeQaQoEO6aUqK", "unlimited": false, "use_buffer_percent": false}, "GaroV8cEQEio66Ak": {"buffer_count": 46, "buffer_percent": 34, "max_count": 9, "min_count": 16, "name": "PsRk62NaNil7DwJr", "unlimited": true, "use_buffer_percent": true}, "fc5qNjY3yuOWBcVv": {"buffer_count": 39, "buffer_percent": 25, "max_count": 11, "min_count": 3, "name": "ifNROSPeDw7sY3Zn", "unlimited": true, "use_buffer_percent": true}}, "regions": ["1sIOqfiCCm49qyf4", "SKNvpJHzcKaXtmFr", "XVYLtcanakllYcSy"], "session_timeout": 2, "unlimited": true, "use_buffer_percent": true}, "RqwnqPwrotlE9goK": {"buffer_count": 57, "buffer_percent": 55, "configuration": "lQv95nCT7FH9xSaO", "enable_region_overrides": true, "extendable_session": true, "game_version": "5sHTlZJNFPj5ugA6", "max_count": 93, "min_count": 81, "name": "cv3PENIeIc4kCOA3", "region_overrides": {"RWZffDvpObRKre0M": {"buffer_count": 59, "buffer_percent": 98, "max_count": 16, "min_count": 84, "name": "nkYYEsa2HU1X2LGX", "unlimited": false, "use_buffer_percent": true}, "V62W4DbfpBWzFZey": {"buffer_count": 51, "buffer_percent": 99, "max_count": 24, "min_count": 88, "name": "0fF5MW9IWOMKcpKh", "unlimited": false, "use_buffer_percent": false}, "rzXIMu8oq6a1STmK": {"buffer_count": 57, "buffer_percent": 73, "max_count": 37, "min_count": 34, "name": "iAMZdoG5j3POGm8b", "unlimited": true, "use_buffer_percent": false}}, "regions": ["GTzEUGzJCX6jAI5c", "VCU8OCGEBYY26Aep", "jd34onMTiG4LKtI7"], "session_timeout": 59, "unlimited": true, "use_buffer_percent": false}, "abCPfxM2uLw8yoVD": {"buffer_count": 3, "buffer_percent": 37, "configuration": "2ogoMbl8WLV05FA5", "enable_region_overrides": false, "extendable_session": false, "game_version": "hmY9jQFOcsHR8hbJ", "max_count": 36, "min_count": 3, "name": "Uip3FBa6IGRblmeu", "region_overrides": {"o0C95iJKTW1bUJYJ": {"buffer_count": 92, "buffer_percent": 49, "max_count": 67, "min_count": 77, "name": "T4a6YmTRPBT9UbWf", "unlimited": false, "use_buffer_percent": false}, "tUIfLjS8SYT2bj3f": {"buffer_count": 5, "buffer_percent": 17, "max_count": 19, "min_count": 63, "name": "W89sVTmBbF1KqP2U", "unlimited": true, "use_buffer_percent": false}, "o0ElCz7daSYof1WY": {"buffer_count": 67, "buffer_percent": 26, "max_count": 78, "min_count": 23, "name": "Nl9ag50skMjH7uup", "unlimited": false, "use_buffer_percent": false}}, "regions": ["cvCaytlfqbXoxq6H", "dgDdVLxfd0LS2Hcl", "KLeQVsMG608venPc"], "session_timeout": 59, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"gHtwRKspzbL5hgMI": {"buffer_count": 39, "buffer_percent": 35, "max_count": 13, "min_count": 78, "name": "S7ESprYwLs2YIqfB", "unlimited": false, "use_buffer_percent": false}, "ke9flI5uQuJpnM9G": {"buffer_count": 94, "buffer_percent": 99, "max_count": 92, "min_count": 4, "name": "6FFnvIV6a1nlRbZ8", "unlimited": false, "use_buffer_percent": false}, "pbwsWbDlbwAVruOC": {"buffer_count": 68, "buffer_percent": 71, "max_count": 14, "min_count": 15, "name": "zPX7UpzMzE9HkFRh", "unlimited": true, "use_buffer_percent": true}}, "regions": ["RXa0Gy2vyRQfGfeO", "44R7etsTcVtgFVx3", "xKa5E0fV6B6ssrR0"], "session_timeout": 51, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'PRa4pXAdxZMOcjc3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'gpwDmRxiD0Zln51E' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 65, "buffer_percent": 61, "configuration": "sQvfTl0GilUjdWnI", "enable_region_overrides": false, "extendable_session": false, "game_version": "WYHE73BVxg2BMAea", "max_count": 14, "min_count": 100, "regions": ["943lO8RLTsOBKl8h", "I5yZbL2PMdQSXIF6", "PQ2LBAAKdYljsbSC"], "session_timeout": 70, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment '3QB9nBvvrr7RK1Aq' \
    --namespace $AB_NAMESPACE \
    --region 'hTgcQhQ3ElpHs0EP' \
    --body '{"buffer_count": 59, "buffer_percent": 75, "max_count": 42, "min_count": 91, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment '6YkxzlVXOvMXiSHb' \
    --namespace $AB_NAMESPACE \
    --region '17eYb5AbpsCKOxfF' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'hmyaBW1ZrzREBM6i' \
    --namespace $AB_NAMESPACE \
    --region 'XcwVsRzzD2RjkZqZ' \
    --body '{"buffer_count": 21, "buffer_percent": 85, "max_count": 28, "min_count": 91, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment '24TfQ57LpRfxAbPT' \
    --namespace $AB_NAMESPACE \
    --version 'UeghpDL2SNKh4TgX' \
    --body '{"buffer_count": 71, "buffer_percent": 88, "configuration": "zVsnuLPUQMuaDnGZ", "enable_region_overrides": false, "extendable_session": false, "game_version": "qrAwBlspOMCerFz0", "max_count": 11, "min_count": 47, "region_overrides": {"JHIumYlQ303Kzluw": {"buffer_count": 98, "buffer_percent": 87, "max_count": 27, "min_count": 80, "name": "e6h2Sth0ffMyUj17", "unlimited": true, "use_buffer_percent": true}, "TJWbeBoNboWuwOH7": {"buffer_count": 14, "buffer_percent": 61, "max_count": 49, "min_count": 11, "name": "OwTQn5b76EmYnD8s", "unlimited": false, "use_buffer_percent": false}, "gVlYp9nqDFZtLhqG": {"buffer_count": 50, "buffer_percent": 60, "max_count": 22, "min_count": 50, "name": "3CI9C2d5G1gZ1RPd", "unlimited": false, "use_buffer_percent": false}}, "regions": ["Wm8jfwGsFE530ZRI", "YucxfjgAvtHsIgoR", "y4OdMQRCQy4rRBEm"], "session_timeout": 65, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'jNWppMMIOM3GcFFp' \
    --namespace $AB_NAMESPACE \
    --version '8kqcCxjTA8DCAQGa' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment '8WoTjnhk0C8lwcK4' \
    --namespace $AB_NAMESPACE \
    --version 'dl4X62p73OYUeagH' \
    --body '{"buffer_count": 75, "buffer_percent": 10, "configuration": "fZqMGcdOUbKrXtPQ", "enable_region_overrides": true, "game_version": "4ZkxJHBTRQi1bOEP", "max_count": 59, "min_count": 4, "regions": ["5NFKEBXscCW852Iq", "CZcqckKyRctlHkvN", "WoeaBEj35Sarmc7d"], "session_timeout": 32, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'IWclJXkZnxGsBVCh' \
    --namespace $AB_NAMESPACE \
    --region 'zDYRuCeiyOdp4g03' \
    --version 'K2CbkDAlDx2h6p5w' \
    --body '{"buffer_count": 28, "buffer_percent": 3, "max_count": 17, "min_count": 80, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'W1fEeJdsylRLJbE8' \
    --namespace $AB_NAMESPACE \
    --region 'CxSFKCWzOuCEUXAO' \
    --version '08H7CfMahlm7pkck' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'Z9KlP4yHPfnCFThR' \
    --namespace $AB_NAMESPACE \
    --region 'nnFLkPH0O9KK67YB' \
    --version '9D1JQP5xMh9MjGpe' \
    --body '{"buffer_count": 41, "buffer_percent": 81, "max_count": 11, "min_count": 37, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '99' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'Zff1XCIGvLGJQ2XK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '2Na2KylxdYuOxH83' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 6, "mem_limit": 39, "params": "CD3iA971HttzCzvg"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'BksWwCPQSqr3tJvb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'UtKXQmZywEih6XqQ' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 8, "mem_limit": 87, "name": "isyPeOhO7Z0CA5ps", "params": "GBJA5xhxPz0DJclN"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '9Lvf62m3aTPEIeMU' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 10}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'cc8AvTefQBSOnh1Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'e9xhiVO73hYpWdvV' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "FKYlj0bntBcLFPko", "port": 94}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'f9tTcT36cV2yEl93' \
    --sortBy 'updatedAt' \
    --sortDirection 'desc' \
    --count '75' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'WaIlWUXRyh3zeVLE' \
    --version 'pxOltckYwgRNm38z' \
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
    --imageURI '7pPyrMkmbLm0n5Oc' \
    --version 'llpzL6k39s0tFVRs' \
    --versionPatch 'gmsFzjWxV1OcHM0x' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version '2WRd1qabI3fcVvd7' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version '9mUPOMIIpQEtv9P4' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'GB2fmiguG2Qaz3lZ' \
    --versionPatch 'ORhjf4zsqnWziXYr' \
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
    --region 'WUF2n7WP37STlsGq' \
    --count '17' \
    --offset '16' \
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
    --region 'PPYlsLCkh8mLvBSS' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'YyzNJX1QyaxKZNdZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'NDhFYWeZS0B7H7mH' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'wvhCS4lzuRF1ei0O' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'sjrBqok3MzgUuaCX' \
    --withServer 'true' \
    --count '97' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region '8Rxoj8KRQDBBPi95' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '833s9fvSar6XR1nu' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "eDEJ1FNMZvLt9ZQu", "repository": "NUQFHCXUqYU850AQ"}' \
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
    --name 'K9izT4OmUYiWGzq5' \
    --count '91' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'O0EMjR8hqSvmNLJO' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 13, "buffer_percent": 22, "configuration": "suFYuXuRGZNvlcQX", "enable_region_overrides": false, "extendable_session": true, "game_version": "KwYuFuwEeUaokCLA", "max_count": 3, "min_count": 14, "overrides": {"rgrodAJYS13e8rvS": {"buffer_count": 39, "buffer_percent": 19, "configuration": "eyZUKrZd4sP6gY5w", "enable_region_overrides": true, "extendable_session": false, "game_version": "2oev6MoXNXmoR7Ag", "max_count": 68, "min_count": 25, "name": "L1HGfZ1wxJUf2xPr", "region_overrides": {"n70ayY2SdGKEPGot": {"buffer_count": 37, "buffer_percent": 7, "max_count": 60, "min_count": 29, "name": "1tBOoBUvYkXsFG1T", "unlimited": true, "use_buffer_percent": false}, "bbLbFNcPptfsWgES": {"buffer_count": 22, "buffer_percent": 43, "max_count": 79, "min_count": 78, "name": "a8YbfmIESP769icP", "unlimited": true, "use_buffer_percent": true}, "QAJ5TDXyXrct5Vfi": {"buffer_count": 20, "buffer_percent": 96, "max_count": 99, "min_count": 90, "name": "O9VYNRaYax8jWCGQ", "unlimited": true, "use_buffer_percent": false}}, "regions": ["sj2Ev8YA4GseNiPO", "m1tqg5UCh7lnlB4V", "lMyhGT5oFvJEqZNi"], "session_timeout": 49, "unlimited": false, "use_buffer_percent": true}, "Ctt2mrQ3l09bdjil": {"buffer_count": 53, "buffer_percent": 84, "configuration": "d37BqTTJSft1LtbG", "enable_region_overrides": true, "extendable_session": true, "game_version": "H5D0XcZDDdHc1Wau", "max_count": 56, "min_count": 31, "name": "FsDBocmX7M1WlN30", "region_overrides": {"ToaoD2aMJkk2mPwP": {"buffer_count": 33, "buffer_percent": 17, "max_count": 18, "min_count": 7, "name": "el1gUd9hZsqCwqBN", "unlimited": false, "use_buffer_percent": true}, "mO1DNLs1OZozobsv": {"buffer_count": 26, "buffer_percent": 89, "max_count": 18, "min_count": 29, "name": "th85RsZhbCK3o1xX", "unlimited": false, "use_buffer_percent": false}, "t5XvaxVprSKKplQE": {"buffer_count": 6, "buffer_percent": 81, "max_count": 57, "min_count": 14, "name": "G7N6U2aa2dkdwxkA", "unlimited": false, "use_buffer_percent": true}}, "regions": ["0alfSw3phnu9lAmE", "UF9T2HkyAeubdWSN", "RG2D0iegJGF9US6w"], "session_timeout": 22, "unlimited": false, "use_buffer_percent": true}, "8dw6468rYvgfUzIB": {"buffer_count": 41, "buffer_percent": 48, "configuration": "2MQq4rANvfRCEZpD", "enable_region_overrides": false, "extendable_session": false, "game_version": "LmkbWz580nvencGb", "max_count": 31, "min_count": 99, "name": "TPOzxA3PaRlS0TTR", "region_overrides": {"2TZiq2lY0UfwexjP": {"buffer_count": 72, "buffer_percent": 17, "max_count": 56, "min_count": 10, "name": "iO0ugfSYXb8Trb8L", "unlimited": false, "use_buffer_percent": true}, "PsZgELmIGsdIvOXo": {"buffer_count": 14, "buffer_percent": 15, "max_count": 54, "min_count": 49, "name": "Pycir46393ROaJqF", "unlimited": true, "use_buffer_percent": true}, "9KFl4unDP2Gf8Fcz": {"buffer_count": 13, "buffer_percent": 5, "max_count": 12, "min_count": 26, "name": "jHHlm8QVcDiGq8A7", "unlimited": false, "use_buffer_percent": true}}, "regions": ["7EM9Pej3vMv7TPY5", "ErNzAYWkd9s7O2QU", "7WvC4GxMJ3a1E439"], "session_timeout": 2, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"a6OWz4rPd9tWpBqH": {"buffer_count": 33, "buffer_percent": 89, "max_count": 82, "min_count": 64, "name": "ZNfancw3TUJOvVk9", "unlimited": false, "use_buffer_percent": false}, "Je4ypngixIxaGpTh": {"buffer_count": 93, "buffer_percent": 29, "max_count": 13, "min_count": 93, "name": "4DbN4DQsnA11ySOA", "unlimited": true, "use_buffer_percent": true}, "5XMKFf5XIsPpFlNY": {"buffer_count": 37, "buffer_percent": 95, "max_count": 56, "min_count": 17, "name": "KzNj8cMM8clxtOek", "unlimited": false, "use_buffer_percent": false}}, "regions": ["8WPUv869gFdwCWvF", "zI4MzCp5CaOgQaE5", "uOF2DH4kCxFfHU4C"], "session_timeout": 27, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'JT5ESpKzuAsVn8wG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '68' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'K1jJAWT0akCXTQBI' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 14, "mem_limit": 9, "params": "o1QJL49Lin6SqghG"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'VxrcM5M9CUlWPtJc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '7' \
    --offset '10' \
    --q 'GxNB3JOBNKzHUqgv' \
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
    --version '3yGd40IIeGkAnwKG' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'fJxTq5AJkDzYrRvA' \
    --count '5' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "65rMZVkYjmUcD7k7"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "bumtXqfdtsGlnGiq"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "FXt1r7gj7v75fXUA", "ip": "U17j2tulIy74RqxM", "name": "p8OqhFyONRz8uOSr", "port": 61}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "lEu8Fgs8pCgrCzHf", "pod_name": "LEbKByyjz5JwhwYn"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "xWXQZcZMyeG6ltd9"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'Q0U0r9CEhCweGPp0' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'JKFgtdBHiGk7W8kL' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "Y2dvG4rdDzu0hTyr", "configuration": "MkBjcQsEV5ZG4NpE", "deployment": "HBE0MN0MuMPg6V7n", "game_mode": "qKhv164kWGtkOdMi", "matching_allies": [{"matching_parties": [{"party_attributes": {"MRsCFZqC2TWgJFsF": {}, "HbngA9Jv1ApdTPtw": {}, "f5MhmJsX8EDEIc75": {}}, "party_id": "mfx1FblfxUmfqPw9", "party_members": [{"user_id": "L7Tys9ZfP8H6mxHE"}, {"user_id": "ey8w4eI6449aB6M9"}, {"user_id": "MmxI8rxlAK2TELOm"}]}, {"party_attributes": {"thnPMIe7N7jVsa0l": {}, "aXapaz8W6XjI6vXI": {}, "HVfO7IiANKsW5c0Y": {}}, "party_id": "oJvBqs5PiVNQQqlV", "party_members": [{"user_id": "IXlkA5JKKtY3wenL"}, {"user_id": "DRTdA3nYe5CjICPl"}, {"user_id": "hW7RTuIcBXa0ssG8"}]}, {"party_attributes": {"VRc6BBKVwDqs47hA": {}, "DrIKe81RoNPmoVHp": {}, "k3PHDjaftABTTBzS": {}}, "party_id": "xNYACdrQ0A9EI767", "party_members": [{"user_id": "rjxvFOwV5BIeUQXa"}, {"user_id": "2nOT2yKu7qom9w6Y"}, {"user_id": "ETS4V58k9u5CGGFC"}]}]}, {"matching_parties": [{"party_attributes": {"eWnV9c7fiNAqSbc3": {}, "lFmVT9VY38SY3VVe": {}, "nlaAaNHXlhyJOEAr": {}}, "party_id": "WX4TpoSjsMviTMBV", "party_members": [{"user_id": "rRrI3JvOP2jshiER"}, {"user_id": "VSgfMnGFBgJxXnzx"}, {"user_id": "NTnqai1y4zwDSwoA"}]}, {"party_attributes": {"AgZ7jCGqcDdtaEoK": {}, "9sJ3PG4VxLrFAJcP": {}, "QjVES5XIJge2n9xe": {}}, "party_id": "goEyv7Wr46digaXQ", "party_members": [{"user_id": "bPDls4l8toU49nl3"}, {"user_id": "dZaOf4ymvrGQ8Edh"}, {"user_id": "suDSlw5lyq4SsHlz"}]}, {"party_attributes": {"2FJr8xXobJUfcSJr": {}, "raxgBfrWY4dKX4A1": {}, "ZaQtJaLKgT16zJ0E": {}}, "party_id": "J53hh7Vjpo6NMLv1", "party_members": [{"user_id": "qw4pZYowaVeqSH99"}, {"user_id": "JzwaM3EMmzWby2Em"}, {"user_id": "JFLjGFtE0PrLZZv4"}]}]}, {"matching_parties": [{"party_attributes": {"MGKbE1bEcbM5sFQE": {}, "IpmIuOckf3TobExU": {}, "lFvANGYlu3YX5P1h": {}}, "party_id": "xt3xE1I5ID0V1smJ", "party_members": [{"user_id": "aWjIMdB5YPMMM6uH"}, {"user_id": "kqDVtLN3FMbyLf08"}, {"user_id": "4rU9415Ksa0ZDQCz"}]}, {"party_attributes": {"6SMxusg6l5umHdvn": {}, "YQfKjrPTBHS1WJPz": {}, "hoInUSZ5XB1vQBAB": {}}, "party_id": "17qncxOlFvyDFJe3", "party_members": [{"user_id": "iZfvNN0ky6JzJZjC"}, {"user_id": "0TaRTXdBfq9Rtldu"}, {"user_id": "t7bvlPe147b4T5Ve"}]}, {"party_attributes": {"9I1g6RZDiNPkaiRK": {}, "EUyJZKxOGEWj4cDX": {}, "ukBvUDFaMYsrICEd": {}}, "party_id": "8gyPkmBfRUxscdLz", "party_members": [{"user_id": "sQhxIrafOnBvvgEc"}, {"user_id": "ZcAN9mQd4HOLGG57"}, {"user_id": "FkOzAtThjv2pibgw"}]}]}], "namespace": "lnSFH2aLhGKXhkh6", "notification_payload": {}, "pod_name": "Lb7CiXdJnM5hKEuz", "region": "xobiEFQwdiPcrvNJ", "session_id": "OdfGTrlnQ5m0meF9"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "vBw1aUszyEeBMyzl"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'gKXKgtd3dok0R2IF' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'DD28FOnCdoS3vNVS' \
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
    --region 'ewGuMmJmoYk5IdaH' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE