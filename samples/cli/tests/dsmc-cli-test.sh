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
echo "1..68"

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
    --body '{"artifactPath": "snO4vAsA", "image": "YUCORa4s", "namespace": "NOfhlrut", "persistent": false, "version": "lrpZ569m"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "1593pADx", "dockerPath": "BQyFV9DD", "image": "49YxyG0m", "imageSize": 21, "namespace": "ZtLPGzY6", "persistent": false, "version": "XF11XDMg"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "K7oVqxmJ", "dockerPath": "VUMKIQsd", "image": "y9DG9rQo", "imageSize": 99, "namespace": "YtLcpib2", "patchVersion": "92gzL9uT", "persistent": false, "version": "Q7MzyowN"}' \
    > test.out 2>&1
eval_tap $? 7 'CreateImagePatch' test.out

#- 8 GetConfig
samples/cli/sample-apps Dsmc getConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'GetConfig' test.out

#- 9 CreateConfig
samples/cli/sample-apps Dsmc createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"claim_timeout": 56, "creation_timeout": 78, "default_version": "XkLXpS12", "port": 69, "ports": {"haguX0k5": 45, "TabA2ar3": 12, "Mk3efoJy": 15}, "protocol": "Pn6zJGBM", "providers": ["keRHXKj7", "Sy64R0fN", "AgTLr8Jf"], "session_timeout": 1, "unreachable_timeout": 77}' \
    > test.out 2>&1
eval_tap $? 9 'CreateConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Dsmc deleteConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Dsmc updateConfig \
    --namespace $AB_NAMESPACE \
    --body '{"claim_timeout": 80, "creation_timeout": 83, "default_version": "tid27Pse", "port": 53, "protocol": "8hlCN8Ou", "providers": ["0r2jvZOF", "vN5WmXKU", "SU2tId5G"], "session_timeout": 99, "unreachable_timeout": 88}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 ClearCache
samples/cli/sample-apps Dsmc clearCache \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ClearCache' test.out

#- 13 GetAllDeployment
samples/cli/sample-apps Dsmc getAllDeployment \
    --namespace $AB_NAMESPACE \
    --name 'WrubNT9a' \
    --count '6' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 13 'GetAllDeployment' test.out

#- 14 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment '8ITysLtj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetDeployment' test.out

#- 15 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'x0XuqrJW' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 72, "buffer_percent": 63, "configuration": "WPtRVO1U", "enable_region_overrides": true, "game_version": "PfcUHK2O", "max_count": 52, "min_count": 97, "overrides": {"CEBpPP3c": {"buffer_count": 11, "buffer_percent": 96, "configuration": "IkJqQs7p", "enable_region_overrides": true, "game_version": "kTKdzXfY", "max_count": 11, "min_count": 19, "name": "G1qli1gr", "region_overrides": {"tgheJgiF": {"buffer_count": 61, "buffer_percent": 2, "max_count": 22, "min_count": 21, "name": "I5sbB3Ad", "unlimited": false, "use_buffer_percent": true}, "wezxzXtO": {"buffer_count": 18, "buffer_percent": 73, "max_count": 74, "min_count": 47, "name": "mQaCc1Ex", "unlimited": true, "use_buffer_percent": true}, "WQbQ8yUB": {"buffer_count": 67, "buffer_percent": 29, "max_count": 51, "min_count": 53, "name": "xYsxt4Cb", "unlimited": true, "use_buffer_percent": true}}, "regions": ["j2xqkwOt", "wnYfs0iF", "QZm8JQpj"], "session_timeout": 66, "unlimited": true, "use_buffer_percent": false}, "kaYWR4aC": {"buffer_count": 10, "buffer_percent": 82, "configuration": "QbUyNnIH", "enable_region_overrides": true, "game_version": "RVEjChgc", "max_count": 0, "min_count": 28, "name": "F5WsdVm1", "region_overrides": {"A6xCD9hg": {"buffer_count": 92, "buffer_percent": 12, "max_count": 14, "min_count": 59, "name": "XmOj7qKb", "unlimited": true, "use_buffer_percent": false}, "V5g9oUHR": {"buffer_count": 89, "buffer_percent": 68, "max_count": 74, "min_count": 28, "name": "Zjv93Aj6", "unlimited": false, "use_buffer_percent": true}, "GsrlF2Rw": {"buffer_count": 12, "buffer_percent": 98, "max_count": 20, "min_count": 21, "name": "spq4hc8k", "unlimited": true, "use_buffer_percent": false}}, "regions": ["S4apPvqj", "zuc6k813", "VTajSw69"], "session_timeout": 8, "unlimited": true, "use_buffer_percent": false}, "IpFXlNc6": {"buffer_count": 97, "buffer_percent": 27, "configuration": "2oSdozK7", "enable_region_overrides": true, "game_version": "yFbbTFFL", "max_count": 49, "min_count": 86, "name": "iUQYpNEO", "region_overrides": {"2erFw2My": {"buffer_count": 9, "buffer_percent": 14, "max_count": 76, "min_count": 33, "name": "y02ZJ9BY", "unlimited": false, "use_buffer_percent": true}, "ZXEIEUyY": {"buffer_count": 29, "buffer_percent": 95, "max_count": 37, "min_count": 27, "name": "6wpMBlWe", "unlimited": true, "use_buffer_percent": false}, "hsF9mD4G": {"buffer_count": 64, "buffer_percent": 86, "max_count": 64, "min_count": 93, "name": "uw3RQjYw", "unlimited": false, "use_buffer_percent": true}}, "regions": ["ZglLrm9K", "edXIskSX", "cXzFoP2q"], "session_timeout": 47, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"Xy3QHfbu": {"buffer_count": 60, "buffer_percent": 95, "max_count": 98, "min_count": 49, "name": "MqQq1kic", "unlimited": true, "use_buffer_percent": true}, "0hvhoFyV": {"buffer_count": 80, "buffer_percent": 67, "max_count": 24, "min_count": 30, "name": "3smLgyfT", "unlimited": false, "use_buffer_percent": true}, "71Im2rEr": {"buffer_count": 81, "buffer_percent": 33, "max_count": 58, "min_count": 7, "name": "lCtMYuAk", "unlimited": true, "use_buffer_percent": false}}, "regions": ["j68A9dN4", "oVfbI3lf", "SYlprP61"], "session_timeout": 0, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 15 'CreateDeployment' test.out

#- 16 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'RRX4dgrt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteDeployment' test.out

#- 17 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment '3DmOvzM0' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 65, "buffer_percent": 62, "configuration": "fvifBmRb", "enable_region_overrides": true, "game_version": "jDZk2O64", "max_count": 0, "min_count": 96, "regions": ["4vQYz2Bc", "4BcMHyzU", "9SAhfqma"], "session_timeout": 37, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateDeployment' test.out

#- 18 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'ozQWFgFW' \
    --namespace $AB_NAMESPACE \
    --region 'J8Q1tvZ0' \
    --body '{"buffer_count": 48, "buffer_percent": 24, "max_count": 55, "min_count": 87, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'CreateRootRegionOverride' test.out

#- 19 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'sMnGMaFe' \
    --namespace $AB_NAMESPACE \
    --region 't7Ui9PeQ' \
    > test.out 2>&1
eval_tap $? 19 'DeleteRootRegionOverride' test.out

#- 20 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'h0GFJMf0' \
    --namespace $AB_NAMESPACE \
    --region 'H1R8AhOH' \
    --body '{"buffer_count": 68, "buffer_percent": 68, "max_count": 26, "min_count": 76, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateRootRegionOverride' test.out

#- 21 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'BfStXrYj' \
    --namespace $AB_NAMESPACE \
    --version 'MUvd7U2j' \
    --body '{"buffer_count": 74, "buffer_percent": 71, "configuration": "NxTENw2o", "enable_region_overrides": false, "game_version": "252Esa2f", "max_count": 63, "min_count": 96, "region_overrides": {"Mk6ZM25R": {"buffer_count": 46, "buffer_percent": 53, "max_count": 28, "min_count": 41, "name": "11BxhR00", "unlimited": true, "use_buffer_percent": false}, "v0sjPGdA": {"buffer_count": 40, "buffer_percent": 91, "max_count": 3, "min_count": 25, "name": "7y60RaLk", "unlimited": false, "use_buffer_percent": false}, "wpmsBK0g": {"buffer_count": 92, "buffer_percent": 6, "max_count": 65, "min_count": 59, "name": "mNyNWTNO", "unlimited": true, "use_buffer_percent": false}}, "regions": ["jMOEomJb", "80Sxb4iN", "DMXKoyHJ"], "session_timeout": 98, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'CreateDeploymentOverride' test.out

#- 22 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'mhdpAi88' \
    --namespace $AB_NAMESPACE \
    --version 'EffONFYs' \
    > test.out 2>&1
eval_tap $? 22 'DeleteDeploymentOverride' test.out

#- 23 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'd8GY0evN' \
    --namespace $AB_NAMESPACE \
    --version '6oJccpCj' \
    --body '{"buffer_count": 31, "buffer_percent": 88, "configuration": "RM4FjlE4", "enable_region_overrides": true, "game_version": "J3PSvsN3", "max_count": 19, "min_count": 39, "regions": ["iCSSgNqK", "CAFYcj9C", "fURB6ed9"], "session_timeout": 64, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateDeploymentOverride' test.out

#- 24 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'jo1DueU0' \
    --namespace $AB_NAMESPACE \
    --region 'fuNel81B' \
    --version 'xC7dEqAt' \
    --body '{"buffer_count": 54, "buffer_percent": 26, "max_count": 78, "min_count": 72, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'CreateOverrideRegionOverride' test.out

#- 25 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment '17oI0W6m' \
    --namespace $AB_NAMESPACE \
    --region 'KoB1Yqay' \
    --version 'DY3j1rBl' \
    > test.out 2>&1
eval_tap $? 25 'DeleteOverrideRegionOverride' test.out

#- 26 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '4LitHlTj' \
    --namespace $AB_NAMESPACE \
    --region '1wmcUOiz' \
    --version 'VYQyNmz5' \
    --body '{"buffer_count": 56, "buffer_percent": 33, "max_count": 19, "min_count": 55, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateOverrideRegionOverride' test.out

#- 27 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '38' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 27 'GetAllPodConfig' test.out

#- 28 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'K93Q3Lf8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetPodConfig' test.out

#- 29 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'Qc5i0H4v' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 64, "mem_limit": 27, "params": "CJajkjfA"}' \
    > test.out 2>&1
eval_tap $? 29 'CreatePodConfig' test.out

#- 30 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'hWvCvgsw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeletePodConfig' test.out

#- 31 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'FQnSkTqG' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 88, "mem_limit": 47, "name": "LhNCnDCR", "params": "42RyIqNG"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdatePodConfig' test.out

#- 32 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '64Nc70ZN' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 79}' \
    > test.out 2>&1
eval_tap $? 32 'AddPort' test.out

#- 33 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'VRAx49el' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeletePort' test.out

#- 34 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'B77y5oW9' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "DtKEe1Kx", "port": 28}' \
    > test.out 2>&1
eval_tap $? 34 'UpdatePort' test.out

#- 35 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'oDUf42H4' \
    --sortBy 'version' \
    --sortDirection 'desc' \
    --count '86' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 35 'ListImages' test.out

#- 36 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'syTqCPsh' \
    --version '11kcg9Iv' \
    > test.out 2>&1
eval_tap $? 36 'DeleteImage' test.out

#- 37 ExportImages
samples/cli/sample-apps Dsmc exportImages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'ExportImages' test.out

#- 38 GetImageLimit
samples/cli/sample-apps Dsmc getImageLimit \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'GetImageLimit' test.out

#- 39 DeleteImagePatch
samples/cli/sample-apps Dsmc deleteImagePatch \
    --namespace $AB_NAMESPACE \
    --imageURI 'rqPWqM1h' \
    --version 'BoWqHTid' \
    --versionPatch '66xthKrc' \
    > test.out 2>&1
eval_tap $? 39 'DeleteImagePatch' test.out

#- 40 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'X9eTAX8G' \
    > test.out 2>&1
eval_tap $? 40 'GetImageDetail' test.out

#- 41 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'o42lzXCH' \
    > test.out 2>&1
eval_tap $? 41 'GetImagePatches' test.out

#- 42 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version '3gouZlL8' \
    --versionPatch 'j1F2MKv7' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatchDetail' test.out

#- 43 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region '8LA7U7qH' \
    --count '42' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 43 'ListServer' test.out

#- 44 CountServer
samples/cli/sample-apps Dsmc countServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'CountServer' test.out

#- 45 CountServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace $AB_NAMESPACE \
    --region '1L4QSbdG' \
    > test.out 2>&1
eval_tap $? 45 'CountServerDetailed' test.out

#- 46 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'ListLocalServer' test.out

#- 47 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'G103IOMH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteLocalServer' test.out

#- 48 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'QlNbzjLG' \
    > test.out 2>&1
eval_tap $? 48 'GetServer' test.out

#- 49 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'KjfmsmSI' \
    > test.out 2>&1
eval_tap $? 49 'DeleteServer' test.out

#- 50 GetServerLogs
samples/cli/sample-apps Dsmc getServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'htWIBPWu' \
    > test.out 2>&1
eval_tap $? 50 'GetServerLogs' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'mgvgpIWZ' \
    --withServer 'false' \
    --count '18' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'EbozbZZm' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'E530QKML' \
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

#- 56 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version '0tcdwdfo' \
    > test.out 2>&1
eval_tap $? 56 'ImageDetailClient' test.out

#- 57 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "k6HpMhJy"}' \
    > test.out 2>&1
eval_tap $? 57 'DeregisterLocalServer' test.out

#- 58 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "PHOzRwtp", "ip": "hsMagU8J", "name": "epTr0s0Q", "port": 41}' \
    > test.out 2>&1
eval_tap $? 58 'RegisterLocalServer' test.out

#- 59 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "VmccEYgG", "pod_name": "EKeBobgH"}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterServer' test.out

#- 60 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "addm8zZK"}' \
    > test.out 2>&1
eval_tap $? 60 'ShutdownServer' test.out

#- 61 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'jjy7q2WG' \
    > test.out 2>&1
eval_tap $? 61 'GetServerSession' test.out

#- 62 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "hmXRUUa4", "configuration": "nLyI2Gvy", "deployment": "4FDmuDFB", "game_mode": "UxBKcEyo", "matching_allies": [{"matching_parties": [{"party_attributes": {"25mlEzdo": {}, "s3Lok2rX": {}, "Yv5oYKrA": {}}, "party_id": "na5XMmaO", "party_members": [{"user_id": "gmRuvoQV"}, {"user_id": "Mv76JzC1"}, {"user_id": "CfRyQ29H"}]}, {"party_attributes": {"Q12IUbpn": {}, "IbCM7Rwn": {}, "XKmJdogC": {}}, "party_id": "v2NN0EJ6", "party_members": [{"user_id": "1p9icxS4"}, {"user_id": "pgI6WaSM"}, {"user_id": "3U1ch3nE"}]}, {"party_attributes": {"FD83e7V0": {}, "IROJfSmw": {}, "c8wZ5NA9": {}}, "party_id": "kFhQd5sj", "party_members": [{"user_id": "xmwnps6X"}, {"user_id": "L4VKKUHy"}, {"user_id": "J0DsbN3F"}]}]}, {"matching_parties": [{"party_attributes": {"x8Q3Vdou": {}, "qsscYJTF": {}, "ZPmHFJOI": {}}, "party_id": "P51hfpMz", "party_members": [{"user_id": "VKZTbMAm"}, {"user_id": "Dk4jAFvt"}, {"user_id": "Cu1J8rvn"}]}, {"party_attributes": {"iB7icBYH": {}, "QdUaYDLh": {}, "ZEOgsRsN": {}}, "party_id": "m2rFBdZi", "party_members": [{"user_id": "Hx77JeL9"}, {"user_id": "tmiEy0KE"}, {"user_id": "maG3rp3A"}]}, {"party_attributes": {"uW3e0EBs": {}, "6H14HKyP": {}, "pURoMstE": {}}, "party_id": "e4E4Pzm3", "party_members": [{"user_id": "a8GkKBx4"}, {"user_id": "6Z0zamHb"}, {"user_id": "JrlPeyXP"}]}]}, {"matching_parties": [{"party_attributes": {"3tsMtbIe": {}, "dns4wfUX": {}, "u6bD5qUZ": {}}, "party_id": "OFw8LEps", "party_members": [{"user_id": "1yn8vKIt"}, {"user_id": "mf4ePEms"}, {"user_id": "xL2UV4YG"}]}, {"party_attributes": {"CPQ4UjsY": {}, "bp3bioCv": {}, "Og05eKbz": {}}, "party_id": "hwHW7LR4", "party_members": [{"user_id": "mNuSLx2a"}, {"user_id": "eecfdWQS"}, {"user_id": "0bk1K8v5"}]}, {"party_attributes": {"0vKVQSoD": {}, "JHFPpZQM": {}, "q9Abw8OO": {}}, "party_id": "iVENz2nN", "party_members": [{"user_id": "mabULgZ5"}, {"user_id": "jokZYTru"}, {"user_id": "eIDCnCNO"}]}]}], "namespace": "96dLdJRf", "notification_payload": {}, "pod_name": "s5wstnrC", "region": "7ciJQxOn", "session_id": "GKpbsPE9"}' \
    > test.out 2>&1
eval_tap $? 62 'CreateSession' test.out

#- 63 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "lOl66jSF"}' \
    > test.out 2>&1
eval_tap $? 63 'ClaimServer' test.out

#- 64 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '0XUnox8q' \
    > test.out 2>&1
eval_tap $? 64 'GetSession' test.out

#- 65 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 65 'GetDefaultProvider' test.out

#- 66 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 66 'ListProviders' test.out

#- 67 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region 'xr3eq3Wg' \
    > test.out 2>&1
eval_tap $? 67 'ListProvidersByRegion' test.out

#- 68 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 68 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE