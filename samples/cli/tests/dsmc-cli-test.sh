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
echo "1..81"

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
    --body '{"artifactPath": "C4fcklL1hoAyBtz9", "image": "Vg21IAGsD813rJyj", "namespace": "QUR3XbWo3ixtF6AP", "persistent": true, "version": "vP7aXusoSwsk4pFM"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "zNLPm7qdLFDejCKc", "dockerPath": "lZvgzltRvmAly3MV", "image": "IJMQxUHLFpZXOoOr", "imageSize": 60, "namespace": "PsVsgr525Ptn78J9", "persistent": false, "version": "GeKeNWlMPInMQbwf"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "qtXE3XChalcuzpts", "dockerPath": "uAnBXmC6LemRWEAW", "image": "kDnBe0RXCHIHxQxj", "imageSize": 84, "namespace": "ZU2y08AHccAS3cQn", "patchVersion": "EZfbqoo2xobF0ekP", "persistent": true, "uploaderFlags": [{"name": "r1zuJrCcWKuQTuXq", "shorthand": "Lt7HEBoO2y6z81sp", "value": "d5iX96VR6FICARJn"}, {"name": "LhS9Qox5lHZzehqu", "shorthand": "qKf3xxjM6aooTvt2", "value": "GlOFw1JpTAyAkzfu"}, {"name": "uA9qXCFMtzeWZhtY", "shorthand": "3Od5QFt1rjOOav1J", "value": "FuS5boatccXUdKE7"}], "version": "4QXaU98dF1Cy1L7a"}' \
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
    --body '{"claim_timeout": 83, "creation_timeout": 19, "default_version": "HpazG3nTpvKvUhXc", "port": 39, "ports": {"XCTKO3HxaFBdGxqt": 9, "dJykliEFeD9A6uqV": 76, "9drb8ubDb8UqtgaC": 84}, "protocol": "rsAdLtdugEIRZBxV", "providers": ["HxMM8qdwIaushLu5", "JpYwCbMZdawvltrF", "5p9hwJ9JGCuVfVG2"], "session_timeout": 69, "unreachable_timeout": 50}' \
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
    --body '{"claim_timeout": 70, "creation_timeout": 33, "default_version": "4YGDMF72iOlHluPF", "port": 38, "protocol": "ofELBHQLl1kMO5KG", "providers": ["e3WA1ndloX8gf2Bf", "mhfcWgOWVdpMRF1L", "1ku6qTXKyhNQQz0G"], "session_timeout": 3, "unreachable_timeout": 72}' \
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
    --name 'mnnmfKGDYGFPlB2P' \
    --count '65' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment '2cUAPtemQgTBgAyK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'By2s1tCg5ryC8DgU' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 14, "buffer_percent": 8, "configuration": "jVtqrhtIGLHM7HSp", "enable_region_overrides": false, "extendable_session": false, "game_version": "PdLv9hHhXuR2eAOj", "max_count": 25, "min_count": 6, "overrides": {"LZCXgrn2JGpHnR2K": {"buffer_count": 24, "buffer_percent": 80, "configuration": "GlNnUYRx4HJtICIz", "enable_region_overrides": false, "extendable_session": false, "game_version": "9dthTxrL8dBaY8tk", "max_count": 37, "min_count": 92, "name": "X6EB7xteLZAR1fjA", "region_overrides": {"BtMsC0y9nUjUzHTk": {"buffer_count": 93, "buffer_percent": 54, "max_count": 5, "min_count": 46, "name": "xLApFk3kKmzaVbms", "unlimited": true, "use_buffer_percent": true}, "7az1w62zi30FDNSF": {"buffer_count": 9, "buffer_percent": 90, "max_count": 75, "min_count": 89, "name": "rt3h0fSC8p0XbFK2", "unlimited": true, "use_buffer_percent": true}, "MflNWjKpS2yuxAm6": {"buffer_count": 26, "buffer_percent": 27, "max_count": 79, "min_count": 10, "name": "Ian4WK8SnkUABAG6", "unlimited": true, "use_buffer_percent": false}}, "regions": ["0kUVlLlPjrfgUNNP", "PNPxfyxViFks1gTz", "syBphLsEt7nobeai"], "session_timeout": 37, "unlimited": false, "use_buffer_percent": true}, "zd9wYOB3NrKjUHko": {"buffer_count": 15, "buffer_percent": 78, "configuration": "c7lh1IbHYy3Ir5KC", "enable_region_overrides": false, "extendable_session": true, "game_version": "3wbJTplm1DTeIaMm", "max_count": 29, "min_count": 38, "name": "GPnIUsmB0jozR4cv", "region_overrides": {"ADw2k4qcwJ1kx5CO": {"buffer_count": 21, "buffer_percent": 86, "max_count": 84, "min_count": 18, "name": "yJeTryUtSL5Crvcj", "unlimited": false, "use_buffer_percent": false}, "k2DwAA2sqD2CuOtk": {"buffer_count": 4, "buffer_percent": 0, "max_count": 96, "min_count": 10, "name": "nK1226EidrG55S1T", "unlimited": false, "use_buffer_percent": false}, "pUPb9IZeKQZYFqjk": {"buffer_count": 99, "buffer_percent": 58, "max_count": 27, "min_count": 93, "name": "w1LYhpwhmPe8c3GR", "unlimited": false, "use_buffer_percent": false}}, "regions": ["s5JcGodXFLvaI6Oq", "dlETsZuNLj6ydBOY", "USNVB5sZkVZZXOnU"], "session_timeout": 10, "unlimited": false, "use_buffer_percent": true}, "hDhATjpU2IenQmIg": {"buffer_count": 84, "buffer_percent": 8, "configuration": "P1ZfyMNixbEaCDJ6", "enable_region_overrides": false, "extendable_session": true, "game_version": "hWhSTg5JCk9iF1J9", "max_count": 3, "min_count": 37, "name": "SVt9Rvi2bkqf0kaB", "region_overrides": {"uoI2crWmn1sKJcgk": {"buffer_count": 100, "buffer_percent": 4, "max_count": 58, "min_count": 74, "name": "gRIiLnrAzBja3556", "unlimited": true, "use_buffer_percent": true}, "lsspEl5eAssth3YU": {"buffer_count": 39, "buffer_percent": 56, "max_count": 30, "min_count": 54, "name": "elASs8m7U5f3r45p", "unlimited": false, "use_buffer_percent": true}, "Y0hVrOss9VNrP6G3": {"buffer_count": 38, "buffer_percent": 90, "max_count": 34, "min_count": 76, "name": "ejg9q2E5VY1CCIyT", "unlimited": false, "use_buffer_percent": true}}, "regions": ["xK3h2XazcNBhcRtn", "zpri5f35r9JQxXEC", "nDlatv0mYig5KxEm"], "session_timeout": 47, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"zHESfMI4k4LjW929": {"buffer_count": 46, "buffer_percent": 81, "max_count": 71, "min_count": 57, "name": "xUQlnx5xsoMf5Aty", "unlimited": false, "use_buffer_percent": false}, "C3ZpXX98FVrj9Dop": {"buffer_count": 95, "buffer_percent": 89, "max_count": 97, "min_count": 93, "name": "7vZf9KsnzBFzktxq", "unlimited": true, "use_buffer_percent": true}, "sffVgNnKyoQTgBkD": {"buffer_count": 88, "buffer_percent": 76, "max_count": 83, "min_count": 49, "name": "03E1UEPvF5ZCJnD2", "unlimited": false, "use_buffer_percent": false}}, "regions": ["b9EDhytg9DLk6EoP", "cEAAXe34Gw5sCFTR", "Xx372tNFS3ZwTpkP"], "session_timeout": 67, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'Fp8ihVkekajgDlke' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment '8K0aZ3O1I4wi6yOn' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 20, "buffer_percent": 73, "configuration": "Z0A5fb524oJn3QtU", "enable_region_overrides": false, "extendable_session": true, "game_version": "O4eYsTgyV28oVzy6", "max_count": 86, "min_count": 73, "regions": ["YiWFlhmOhfixtxWO", "HfRaX3ZvPWFM7EOh", "7FTN9vvwWT3oAhqr"], "session_timeout": 3, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment '1Wa250vmkgtJcRg2' \
    --namespace $AB_NAMESPACE \
    --region '0YgOURPaNBFiuZVv' \
    --body '{"buffer_count": 21, "buffer_percent": 11, "max_count": 1, "min_count": 42, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'x58WmZjgmrFXUv1t' \
    --namespace $AB_NAMESPACE \
    --region 'uu3yN0smFwxkReEO' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'fVjP0XqBWFjoVlgG' \
    --namespace $AB_NAMESPACE \
    --region 'NJMHmNUHMYa7oC3b' \
    --body '{"buffer_count": 60, "buffer_percent": 76, "max_count": 36, "min_count": 0, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 's8R4Mh7gCpjssN51' \
    --namespace $AB_NAMESPACE \
    --version 'f6vUpmvEOs6QksAo' \
    --body '{"buffer_count": 52, "buffer_percent": 56, "configuration": "sYnr4ZG2nWk4Qv19", "enable_region_overrides": true, "extendable_session": false, "game_version": "JmMq1UzDYfQyNJ4o", "max_count": 94, "min_count": 88, "region_overrides": {"yoE3e3PBhcrk0F9R": {"buffer_count": 27, "buffer_percent": 26, "max_count": 83, "min_count": 13, "name": "dwaCznbwHdJ7JsL8", "unlimited": true, "use_buffer_percent": false}, "SmIyKAxrBqCuivME": {"buffer_count": 18, "buffer_percent": 47, "max_count": 51, "min_count": 96, "name": "l2pVuWHQsCXQU2cY", "unlimited": true, "use_buffer_percent": true}, "6iZTHMmH5B6IlYSs": {"buffer_count": 92, "buffer_percent": 89, "max_count": 4, "min_count": 20, "name": "gTWZMAqPISREuwUL", "unlimited": true, "use_buffer_percent": true}}, "regions": ["KJXvN4M87qr4Y1fA", "0fK1p9PXDsJh8hMj", "pF09xxfL1LSVP280"], "session_timeout": 36, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'm1vyqr7Aw5JIsabV' \
    --namespace $AB_NAMESPACE \
    --version 'zvPq5JYALbGFeTt5' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'tPNpCu4VWWkxH7M2' \
    --namespace $AB_NAMESPACE \
    --version 'qHWTRH8NsA0TFgNR' \
    --body '{"buffer_count": 73, "buffer_percent": 25, "configuration": "DBCaOij6x9d97D7P", "enable_region_overrides": false, "game_version": "KiAf8FbBK1hcztxF", "max_count": 44, "min_count": 43, "regions": ["2I90BD28HWaNFcpo", "cp1vtwB3nAH4eXVV", "EixgTMSW1uaploUw"], "session_timeout": 40, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'kc8DY4RdbUx7JRNc' \
    --namespace $AB_NAMESPACE \
    --region 'PhAUnsbUI8O05hsD' \
    --version 'Dc2F3HMBYlUiNadP' \
    --body '{"buffer_count": 69, "buffer_percent": 26, "max_count": 76, "min_count": 18, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'SX1PbtYOivhWJjha' \
    --namespace $AB_NAMESPACE \
    --region '78gfAO4WJ0V459gK' \
    --version 'EGeoRkhAo8ElFBi0' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'l2idUM3I8Uz56i4L' \
    --namespace $AB_NAMESPACE \
    --region 'ctYlUpI5gm0aLVKP' \
    --version 'TbNE6g4EYK5uKK3p' \
    --body '{"buffer_count": 19, "buffer_percent": 57, "max_count": 57, "min_count": 0, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '55' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'SUWXWLSPBqgvLlwv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'e76dxx8MrfeZHNZQ' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 85, "mem_limit": 47, "params": "WTkyyfx6avJ6pmeX"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'GGOAqhpjprvBxIF2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'z18ECZBORmVMIHal' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 48, "mem_limit": 6, "name": "V4QmiRLez2YBD9G2", "params": "ZXyM4lk0Vf9KfrWm"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'YhqknmhDdWxz0MpF' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 18}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'lmzFucEZMcuiPGvE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'e1wV0v3m8roj7Pcf' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "85siDpQACJrzJhUd", "port": 19}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'TwBudbsspm4cdUQn' \
    --sortBy 'version' \
    --sortDirection 'asc' \
    --count '43' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI '787JEP2Zv8vfsW4h' \
    --version 'vYgqjdwPVXfi5JwF' \
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
    --imageURI 'GG4JKx4dje2XS9eA' \
    --version 'Xj3JNdnmzC8Q7vPU' \
    --versionPatch 'U5m1plCidc1sZRnX' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version '4ZYLA9ag0bLAs5q4' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'cFiwdj7xBOpqrB1k' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'qYwlNeLGHAYnvOOO' \
    --versionPatch '2y3rPz09SzpTON0y' \
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
    --region 'bUqfLM7vePvd1nAq' \
    --count '29' \
    --offset '50' \
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
    --region 'kruVb49lMzZFnGSc' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'pniaeOhzChMfnk54' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'kGLmRwQBGvC4sgqj' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'wGV3U4VxwH0pxgj8' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'eO7VLEutu6QNpOnK' \
    --withServer 'true' \
    --count '12' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region '2woRYe0OvDVWXbjT' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '8n6wkhh7ioRmkNoK' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "2BCJ7kxbO6k325zq", "repository": "7LX4EcCxOfpuFocW"}' \
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
    --name 'rug1Zgay38LgRrIN' \
    --count '92' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'EeU98WDZAIPpDKjR' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 57, "buffer_percent": 38, "configuration": "D2rNPQrB2MFXTJ3L", "enable_region_overrides": true, "extendable_session": true, "game_version": "ZBioKsl9NQf8bhds", "max_count": 1, "min_count": 6, "overrides": {"kPopggrrF8a7tF1t": {"buffer_count": 71, "buffer_percent": 11, "configuration": "qwnj3UuveWAKghln", "enable_region_overrides": false, "extendable_session": true, "game_version": "YY9hRkNawlWnogve", "max_count": 92, "min_count": 25, "name": "8UjGtJVW0Syll14n", "region_overrides": {"fRXA4V1kZEaMtLdB": {"buffer_count": 23, "buffer_percent": 83, "max_count": 96, "min_count": 45, "name": "0VRb4pHBO9zDb1kc", "unlimited": false, "use_buffer_percent": false}, "myJ4qFDgBnIaSh8o": {"buffer_count": 39, "buffer_percent": 19, "max_count": 2, "min_count": 49, "name": "eCKlabO477MlsTfi", "unlimited": true, "use_buffer_percent": true}, "evUfKOBqyC9tI1E6": {"buffer_count": 80, "buffer_percent": 68, "max_count": 85, "min_count": 12, "name": "4KAYq37VydMA9SRW", "unlimited": true, "use_buffer_percent": true}}, "regions": ["3geti9QJlgWPmivw", "fwOtNF0xoKmXL8B2", "pepvq1mEuQ56KYbc"], "session_timeout": 89, "unlimited": false, "use_buffer_percent": false}, "BSgSbnoFGAUtvl7N": {"buffer_count": 31, "buffer_percent": 44, "configuration": "kFhkNgRPXgj6LdVt", "enable_region_overrides": true, "extendable_session": true, "game_version": "fwe16oaTL4lRJVf5", "max_count": 12, "min_count": 53, "name": "loD61eUBUao327Ea", "region_overrides": {"aUr3dJUuPs2FISUT": {"buffer_count": 77, "buffer_percent": 98, "max_count": 21, "min_count": 1, "name": "e5gqUtw2wvc3Wm2D", "unlimited": true, "use_buffer_percent": true}, "KPiHs16e6pOVkVbq": {"buffer_count": 75, "buffer_percent": 16, "max_count": 66, "min_count": 22, "name": "2INez1l4yUhUAQ5Q", "unlimited": false, "use_buffer_percent": true}, "rA5FQlO6zeLlqaYK": {"buffer_count": 73, "buffer_percent": 55, "max_count": 72, "min_count": 56, "name": "YbPbzZbHbhmjJw4D", "unlimited": true, "use_buffer_percent": false}}, "regions": ["70HC3jmVJLXqd575", "g3rOvXVTHbqA4AzH", "IbNRPRpmBqecp3Xm"], "session_timeout": 1, "unlimited": true, "use_buffer_percent": true}, "JzOYsEBGK74s41AW": {"buffer_count": 97, "buffer_percent": 89, "configuration": "FUUK3fQeRiNdHdhh", "enable_region_overrides": true, "extendable_session": true, "game_version": "tHRoXsaApzOPiGYd", "max_count": 14, "min_count": 24, "name": "bb26ISewgeli7H0h", "region_overrides": {"hew9bDlXIgf1tyHQ": {"buffer_count": 50, "buffer_percent": 22, "max_count": 38, "min_count": 47, "name": "Qc3JqQCDlvJ7gL8t", "unlimited": true, "use_buffer_percent": false}, "4lqVuP8F7fQkDfVj": {"buffer_count": 7, "buffer_percent": 82, "max_count": 20, "min_count": 74, "name": "mBDY9qdUA7APlQdS", "unlimited": false, "use_buffer_percent": false}, "llRFncHGEqhhjQ50": {"buffer_count": 87, "buffer_percent": 51, "max_count": 36, "min_count": 41, "name": "X8Ia2iLMjY7UqVqv", "unlimited": false, "use_buffer_percent": true}}, "regions": ["R6h97YyUZW7STW6O", "Um4xuhAx7UBLtHRj", "Mbe9jcHscfJVKmjz"], "session_timeout": 28, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"FtKeBjDcaBV3eklb": {"buffer_count": 45, "buffer_percent": 40, "max_count": 33, "min_count": 100, "name": "57AdNp6f4H5jjWll", "unlimited": false, "use_buffer_percent": false}, "Vra65hrsoCQk1ITs": {"buffer_count": 45, "buffer_percent": 57, "max_count": 82, "min_count": 35, "name": "RdZr2fLRVAkLUxLk", "unlimited": true, "use_buffer_percent": false}, "0CZiSJKHsmNYk2hA": {"buffer_count": 71, "buffer_percent": 46, "max_count": 74, "min_count": 37, "name": "H97AdtIHao94jgBa", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Wo2tYNZKcmr2nyxm", "biSO3shxEZk1hsAv", "nl6ISaUKheWW8FSN"], "session_timeout": 95, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'dfZKF9CCStED2xtz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '67' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'VYAEM2EIPWP9xiwb' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 69, "mem_limit": 7, "params": "9kot9PfHfLkEPWrz"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'asrXyqVv9wQo2eft' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ImageLimitClient
samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'ImageLimitClient' test.out

#- 65 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version 'pjeEINnWdAIZ8YsY' \
    > test.out 2>&1
eval_tap $? 65 'ImageDetailClient' test.out

#- 66 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'ImebeUbvHmeSI22V' \
    --count '18' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 66 'ListServerClient' test.out

#- 67 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "9nrnjUKxdCZNg9EJ"}' \
    > test.out 2>&1
eval_tap $? 67 'ServerHeartbeat' test.out

#- 68 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Kpc4RkSVmcTXZ8OC"}' \
    > test.out 2>&1
eval_tap $? 68 'DeregisterLocalServer' test.out

#- 69 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "08iC6tBTnxPDfHGi", "ip": "sb1WnXskVF2pPvR2", "name": "gnTW1GxBd7xtUoBH", "port": 51}' \
    > test.out 2>&1
eval_tap $? 69 'RegisterLocalServer' test.out

#- 70 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "JyBc3g9h5lKMltxF", "pod_name": "yfwkm8u4ExbUMGS7"}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterServer' test.out

#- 71 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "fiC2PUwtQMPwBP6A"}' \
    > test.out 2>&1
eval_tap $? 71 'ShutdownServer' test.out

#- 72 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'XIRS9OrnKpv91126' \
    > test.out 2>&1
eval_tap $? 72 'GetServerSessionTimeout' test.out

#- 73 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName '69cRn1tzRZoubpDA' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSession' test.out

#- 74 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "l30VWyr3s21NQkaA", "configuration": "bHQpEPhDWiMLsAt1", "deployment": "yS854i031Qnjqjr3", "game_mode": "YnsbIKRBu28t6cF1", "matching_allies": [{"matching_parties": [{"party_attributes": {"nONRwBeMA3SB4Fhw": {}, "qKOo7QReAV4jU0d2": {}, "30zjtLeg0KXpZTrO": {}}, "party_id": "DPVXFLPWrecPcFc3", "party_members": [{"user_id": "9rPD9mxvaxjZRe2n"}, {"user_id": "W9Buss3lPnH6Cc8f"}, {"user_id": "ZvVnCj8JzBqBeGce"}]}, {"party_attributes": {"0lwvJ6xPzmZVGCqc": {}, "TauDXgAgQ2r81WI5": {}, "tPubX4W3CwJ4STjI": {}}, "party_id": "n3yxiHgyz7jWhcYJ", "party_members": [{"user_id": "gKcsrcjoG8eBytTT"}, {"user_id": "3ZUUQl9CxvzEBWgQ"}, {"user_id": "dq67LppHZBrFrIZH"}]}, {"party_attributes": {"5M9k176b3h0FsCPE": {}, "tH7n2qzVNmIofEbL": {}, "AnQIYQCt5HSx2eCF": {}}, "party_id": "L4O9LCFRJOpT0HuT", "party_members": [{"user_id": "Y65eZSpRGcfmyaDW"}, {"user_id": "smMEc9mMV7AgPLDh"}, {"user_id": "ckdNlg8OXUJLxyli"}]}]}, {"matching_parties": [{"party_attributes": {"81BJC6Xl2YRzi2To": {}, "b8X41ShsDt1IXpR2": {}, "dos9cSPTlpuyrnel": {}}, "party_id": "yi1WrffyPAEEPW9y", "party_members": [{"user_id": "Q35JKvV22ThMuAFH"}, {"user_id": "X55VY2GAo9sagBYU"}, {"user_id": "Llj510nd3mZL6yXV"}]}, {"party_attributes": {"m46b5NWZALBUxm8P": {}, "mhlLcSQGUcUsCMIa": {}, "t2jNxNA9tvmJij4G": {}}, "party_id": "p8id4D1t31ijfmlA", "party_members": [{"user_id": "piW4w9I9bCtlDAP3"}, {"user_id": "v9r3lAztdDlaQ81L"}, {"user_id": "fSklEzUJH3ogOCe8"}]}, {"party_attributes": {"IyNuPvyC6rvSTqDz": {}, "xd13hGKMGg7qsJFw": {}, "3jAAwZGFW8T3JDNB": {}}, "party_id": "x4R8o6UMSrubIFkB", "party_members": [{"user_id": "SUxE2MbDfuMuAUyj"}, {"user_id": "HGaXx2m6PsMlo2G5"}, {"user_id": "JeFJWFIlPKfOisEx"}]}]}, {"matching_parties": [{"party_attributes": {"B4oa3XrxQQYekxy6": {}, "JTKq44gpPuOH3taA": {}, "pXbPnSFCJKGLyYGz": {}}, "party_id": "VyZx0x2brRdlhBV6", "party_members": [{"user_id": "S2MWQ6JSWLyjc7dw"}, {"user_id": "0RBeC7seoAJrkRM5"}, {"user_id": "APRZOhota3gtWeCc"}]}, {"party_attributes": {"uhFy7ZEkaxIs7J66": {}, "9UXrXWGUFkd6CfmA": {}, "KQbiULpr03lbsRKn": {}}, "party_id": "qw3QlgM2IOXngBnV", "party_members": [{"user_id": "s7qE9zLDLOLgF5kU"}, {"user_id": "QkaBnOs83TQQZkeI"}, {"user_id": "SeRdz5NYB3Bclw1P"}]}, {"party_attributes": {"cL3bwKWDs2grgylf": {}, "JbLj8kTWoJHahanH": {}, "c4XGCnlm6myIbC8g": {}}, "party_id": "Xd9lVugZVJhxvFTw", "party_members": [{"user_id": "A9e3q3ZZPRjBbEVg"}, {"user_id": "VDPWt3L6JidcPjjy"}, {"user_id": "GmWGdQILEmMCbwQa"}]}]}], "namespace": "ve7D0SP1JMiofluo", "notification_payload": {}, "pod_name": "RmYkw1N1PHP5Y96k", "region": "iFUMptOAxxUa4f7o", "session_id": "jnfbRjlNMBqLikQM"}' \
    > test.out 2>&1
eval_tap $? 74 'CreateSession' test.out

#- 75 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "ZRln3AED7jq3rYI9"}' \
    > test.out 2>&1
eval_tap $? 75 'ClaimServer' test.out

#- 76 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'unfyyqMyhnyK1UqX' \
    > test.out 2>&1
eval_tap $? 76 'GetSession' test.out

#- 77 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'fhWNuWNqWJuuxmIc' \
    > test.out 2>&1
eval_tap $? 77 'CancelSession' test.out

#- 78 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 78 'GetDefaultProvider' test.out

#- 79 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 79 'ListProviders' test.out

#- 80 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region 'fQTXlHYmdiF5kSTv' \
    > test.out 2>&1
eval_tap $? 80 'ListProvidersByRegion' test.out

#- 81 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 81 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE