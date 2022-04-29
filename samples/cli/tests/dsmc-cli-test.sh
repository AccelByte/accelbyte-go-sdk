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

export JUSTICE_BASE_URL="$AB_BASE_URL"
export APP_CLIENT_ID="$AB_CLIENT_ID"
export APP_CLIENT_SECRET="$AB_CLIENT_SECRET"

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

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_TOKEN="/tmp/justice-sample-apps/userData"

echo "TAP version 13"
echo "1..68"

#- 1 Login
rm -f $TEMP_TOKEN \
    && mkdir -p $(dirname $TEMP_TOKEN) \
    && echo {"\"access_token"\":"\"foo"\"} >> $TEMP_TOKEN
eval_tap 0 1 'Login # SKIP not tested' test.out

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
    --body '{"artifactPath": "FtBxyZcD", "image": "XBpGlsQu", "namespace": "Ju8vMf0I", "persistent": true, "version": "JkTrd8ID"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "cV2zXnTK", "dockerPath": "jXY1bPqa", "image": "miBxx9Cs", "namespace": "18EY84ek", "persistent": true, "version": "qRzHU1oh"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "570KQBVa", "dockerPath": "ewc72krS", "image": "ha68n3Yn", "namespace": "ozp1C2Km", "patchVersion": "IQTuBdNE", "persistent": true, "version": "xFb8CJ17"}' \
    > test.out 2>&1
eval_tap $? 7 'CreateImagePatch' test.out

#- 8 GetConfig
samples/cli/sample-apps Dsmc getConfig \
    --namespace 'M7DJZaMS' \
    > test.out 2>&1
eval_tap $? 8 'GetConfig' test.out

#- 9 CreateConfig
samples/cli/sample-apps Dsmc createConfig \
    --body '{"claim_timeout": 47, "creation_timeout": 61, "default_version": "CbZbygyo", "port": 1, "ports": {"rORoeNHS": 2}, "protocol": "8Rh3kgs9", "providers": ["qqJbnQso"], "session_timeout": 54, "unreachable_timeout": 12}' \
    --namespace 'iVpP8Cm3' \
    > test.out 2>&1
eval_tap $? 9 'CreateConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Dsmc deleteConfig \
    --namespace 'yvASUoxd' \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Dsmc updateConfig \
    --body '{"claim_timeout": 46, "creation_timeout": 46, "default_version": "FqmAGTJ8", "port": 68, "protocol": "EdagEtp4", "providers": ["w29KOu9c"], "session_timeout": 87, "unreachable_timeout": 98}' \
    --namespace 'DqWHkkP8' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 ClearCache
samples/cli/sample-apps Dsmc clearCache \
    --namespace 'npLEKMfj' \
    > test.out 2>&1
eval_tap $? 12 'ClearCache' test.out

#- 13 GetAllDeployment
samples/cli/sample-apps Dsmc getAllDeployment \
    --namespace 'iX7jpkVZ' \
    --count '21' \
    --name '3IaQYEmq' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 13 'GetAllDeployment' test.out

#- 14 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'odOEGt9g' \
    --namespace 'POj0c6i0' \
    > test.out 2>&1
eval_tap $? 14 'GetDeployment' test.out

#- 15 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --body '{"allow_version_override": false, "buffer_count": 42, "buffer_percent": 69, "configuration": "as73ucYn", "enable_region_overrides": true, "game_version": "AJ3DK5T4", "max_count": 61, "min_count": 28, "overrides": {"gg0Y39Uo": {"buffer_count": 23, "buffer_percent": 31, "configuration": "v5bVAgts", "enable_region_overrides": true, "game_version": "hUTDUscb", "max_count": 85, "min_count": 59, "name": "jbTQuPMz", "region_overrides": {"2PTRlkyU": {"buffer_count": 82, "buffer_percent": 80, "max_count": 44, "min_count": 50, "name": "PFJ42cwm", "use_buffer_percent": true}}, "regions": ["BBSMNcoA"], "use_buffer_percent": true}}, "region_overrides": {"OjKNjfcY": {"buffer_count": 67, "buffer_percent": 25, "max_count": 0, "min_count": 100, "name": "gBU1sqjy", "use_buffer_percent": false}}, "regions": ["RSOFQBtu"], "use_buffer_percent": true}' \
    --deployment 'Z8hRVX7L' \
    --namespace 'GOvDdYiQ' \
    > test.out 2>&1
eval_tap $? 15 'CreateDeployment' test.out

#- 16 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'S9i7mV1C' \
    --namespace '91pjG9gp' \
    > test.out 2>&1
eval_tap $? 16 'DeleteDeployment' test.out

#- 17 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --body '{"allow_version_override": true, "buffer_count": 75, "buffer_percent": 48, "configuration": "cTQdvln2", "enable_region_overrides": true, "game_version": "uSQWEXL6", "max_count": 74, "min_count": 62, "regions": ["E1YHo9m1"], "use_buffer_percent": false}' \
    --deployment '8hHtWvbN' \
    --namespace 'YqgUqslA' \
    > test.out 2>&1
eval_tap $? 17 'UpdateDeployment' test.out

#- 18 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --body '{"buffer_count": 34, "buffer_percent": 63, "max_count": 82, "min_count": 17, "use_buffer_percent": true}' \
    --deployment 'aCv8kU9d' \
    --namespace 'BBpdsJLh' \
    --region 'sVyExrkx' \
    > test.out 2>&1
eval_tap $? 18 'CreateRootRegionOverride' test.out

#- 19 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'oot0B7WO' \
    --namespace 'fercZdpM' \
    --region 'ci37Ds7Y' \
    > test.out 2>&1
eval_tap $? 19 'DeleteRootRegionOverride' test.out

#- 20 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --body '{"buffer_count": 88, "buffer_percent": 10, "max_count": 61, "min_count": 46, "use_buffer_percent": false}' \
    --deployment 'I3uzLteM' \
    --namespace 'bFAlt4hr' \
    --region '7HmOYiBA' \
    > test.out 2>&1
eval_tap $? 20 'UpdateRootRegionOverride' test.out

#- 21 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --body '{"buffer_count": 22, "buffer_percent": 38, "configuration": "AOXmlG6e", "enable_region_overrides": false, "game_version": "1dTdoTFp", "max_count": 55, "min_count": 69, "region_overrides": {"cuC1dQY9": {"buffer_count": 80, "buffer_percent": 70, "max_count": 26, "min_count": 70, "name": "6Te9vD8l", "use_buffer_percent": false}}, "regions": ["z7Hu8AD7"], "use_buffer_percent": false}' \
    --deployment 'dWunvizU' \
    --namespace '0q1pHyhh' \
    --version 'ERoGgdry' \
    > test.out 2>&1
eval_tap $? 21 'CreateDeploymentOverride' test.out

#- 22 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'sMizBGSR' \
    --namespace 'dP2l7DNS' \
    --version 'Z8Aq0XiP' \
    > test.out 2>&1
eval_tap $? 22 'DeleteDeploymentOverride' test.out

#- 23 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --body '{"buffer_count": 75, "buffer_percent": 85, "configuration": "XSe07Zdd", "enable_region_overrides": false, "game_version": "JjBwj9HJ", "max_count": 66, "min_count": 85, "regions": ["KseEdSXR"], "use_buffer_percent": true}' \
    --deployment 'Svguauw1' \
    --namespace 'xT7eMwSl' \
    --version '9MLH0NnT' \
    > test.out 2>&1
eval_tap $? 23 'UpdateDeploymentOverride' test.out

#- 24 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --body '{"buffer_count": 70, "buffer_percent": 41, "max_count": 22, "min_count": 79, "use_buffer_percent": true}' \
    --deployment 'BvwJaQa5' \
    --namespace '47JllvA8' \
    --region 'RWSpabUt' \
    --version '7xk6QxyW' \
    > test.out 2>&1
eval_tap $? 24 'CreateOverrideRegionOverride' test.out

#- 25 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'hfqoWfJw' \
    --namespace '2o8oWUqv' \
    --region 'PCZ2HzT7' \
    --version 'NXmWDlXs' \
    > test.out 2>&1
eval_tap $? 25 'DeleteOverrideRegionOverride' test.out

#- 26 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --body '{"buffer_count": 41, "buffer_percent": 79, "max_count": 69, "min_count": 6, "use_buffer_percent": false}' \
    --deployment 'sNOlvkfw' \
    --namespace 'aSbnsuLC' \
    --region 'gToxuVTe' \
    --version 'kJgvg6h5' \
    > test.out 2>&1
eval_tap $? 26 'UpdateOverrideRegionOverride' test.out

#- 27 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace 'HIpH0Dvi' \
    --count '31' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 27 'GetAllPodConfig' test.out

#- 28 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'Ek4vj3LD' \
    --namespace 'p4yqDt8Q' \
    > test.out 2>&1
eval_tap $? 28 'GetPodConfig' test.out

#- 29 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --body '{"cpu_limit": 92, "mem_limit": 59, "params": "pxlHasin"}' \
    --name 'GcjrkmRM' \
    --namespace 'ttgjDSaI' \
    > test.out 2>&1
eval_tap $? 29 'CreatePodConfig' test.out

#- 30 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'VBmft3Ud' \
    --namespace 'g7p9PGmY' \
    > test.out 2>&1
eval_tap $? 30 'DeletePodConfig' test.out

#- 31 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --body '{"cpu_limit": 67, "mem_limit": 20, "name": "X4MsisSX", "params": "28nARxWR"}' \
    --name 'pv5ou5xt' \
    --namespace 'vd28OUfC' \
    > test.out 2>&1
eval_tap $? 31 'UpdatePodConfig' test.out

#- 32 AddPort
samples/cli/sample-apps Dsmc addPort \
    --body '{"port": 38}' \
    --name '8UJC5flN' \
    --namespace 'yj6HsTtX' \
    > test.out 2>&1
eval_tap $? 32 'AddPort' test.out

#- 33 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '8P3llnaa' \
    --namespace 'S9lqyygP' \
    > test.out 2>&1
eval_tap $? 33 'DeletePort' test.out

#- 34 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --body '{"name": "cfkJIxfQ", "port": 51}' \
    --name 'a8kNVbDx' \
    --namespace 'VMq7HJk0' \
    > test.out 2>&1
eval_tap $? 34 'UpdatePort' test.out

#- 35 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace 'F89xAc3Y' \
    --count '95' \
    --offset '11' \
    --q 'aENtrl0p' \
    --sortBy 'version' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 35 'ListImages' test.out

#- 36 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace 'zHuBMYQS' \
    --imageURI 'A2jz1ZOp' \
    --version 'dOjSyMdd' \
    > test.out 2>&1
eval_tap $? 36 'DeleteImage' test.out

#- 37 ExportImages
samples/cli/sample-apps Dsmc exportImages \
    --namespace 'B41JuMf7' \
    > test.out 2>&1
eval_tap $? 37 'ExportImages' test.out

#- 38 GetImageLimit
samples/cli/sample-apps Dsmc getImageLimit \
    --namespace 'RUyBHRj8' \
    > test.out 2>&1
eval_tap $? 38 'GetImageLimit' test.out

#- 39 DeleteImagePatch
samples/cli/sample-apps Dsmc deleteImagePatch \
    --namespace 'IiRimRll' \
    --imageURI 'HT6Dc40v' \
    --version 'FFA6gpU7' \
    --versionPatch 'EW3x1dCp' \
    > test.out 2>&1
eval_tap $? 39 'DeleteImagePatch' test.out

#- 40 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace 'm55gOeqQ' \
    --version 'IqcJVKmB' \
    > test.out 2>&1
eval_tap $? 40 'GetImageDetail' test.out

#- 41 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace 'M1J1IbuT' \
    --version 'rrkbmuT1' \
    > test.out 2>&1
eval_tap $? 41 'GetImagePatches' test.out

#- 42 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace 'whOqmEnD' \
    --version 'XIWrBPlS' \
    --versionPatch 'ay46mv71' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatchDetail' test.out

#- 43 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace 'BAZAOjtF' \
    --count '70' \
    --offset '42' \
    --region 'mTj7tT7T' \
    > test.out 2>&1
eval_tap $? 43 'ListServer' test.out

#- 44 CountServer
samples/cli/sample-apps Dsmc countServer \
    --namespace 'ZHWDdCkI' \
    > test.out 2>&1
eval_tap $? 44 'CountServer' test.out

#- 45 CountServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace 'sZoArWwP' \
    --region 'HcyFAdAt' \
    > test.out 2>&1
eval_tap $? 45 'CountServerDetailed' test.out

#- 46 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace 'YciLIgRw' \
    > test.out 2>&1
eval_tap $? 46 'ListLocalServer' test.out

#- 47 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'FRr0gwB9' \
    --namespace 'tz3vp99X' \
    > test.out 2>&1
eval_tap $? 47 'DeleteLocalServer' test.out

#- 48 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace 'VlV8rK3t' \
    --podName 'E6n0smip' \
    > test.out 2>&1
eval_tap $? 48 'GetServer' test.out

#- 49 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace '1tw3L7cU' \
    --podName 'd9pqtv6J' \
    > test.out 2>&1
eval_tap $? 49 'DeleteServer' test.out

#- 50 GetServerLogs
samples/cli/sample-apps Dsmc getServerLogs \
    --namespace 'fPZwcCVO' \
    --podName 'XcVa80Tm' \
    > test.out 2>&1
eval_tap $? 50 'GetServerLogs' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace 'CwtD2lAH' \
    --count '29' \
    --offset '79' \
    --region 'dcBIgzrD' \
    --withServer 'True' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace 'WpFBYGmm' \
    --region 'BawMyoKy' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace 'NpdAasm8' \
    --sessionID 'xwUfzOlQ' \
    > test.out 2>&1
eval_tap $? 53 'DeleteSession' test.out

#- 54 ExportConfigV1
samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace 'iZY4NbOQ' \
    > test.out 2>&1
eval_tap $? 54 'ExportConfigV1' test.out

#- 55 ImportConfigV1
samples/cli/sample-apps Dsmc importConfigV1 \
    --file 'tmp.dat' \
    --namespace 'XJ7uOTzN' \
    > test.out 2>&1
eval_tap $? 55 'ImportConfigV1' test.out

#- 56 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace 'Mvuq2tNl' \
    --version '4CX4IjiK' \
    > test.out 2>&1
eval_tap $? 56 'ImageDetailClient' test.out

#- 57 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --body '{"name": "4DEUJRVK"}' \
    --namespace '3l9Eb0R1' \
    > test.out 2>&1
eval_tap $? 57 'DeregisterLocalServer' test.out

#- 58 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --body '{"custom_attribute": "XRb0RH8v", "ip": "S1smeOln", "name": "grdTXCza", "port": 82}' \
    --namespace 'BtkZMio4' \
    > test.out 2>&1
eval_tap $? 58 'RegisterLocalServer' test.out

#- 59 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --body '{"custom_attribute": "wcyhloVS", "pod_name": "3rYp8Qtc"}' \
    --namespace 'EmCEVc75' \
    > test.out 2>&1
eval_tap $? 59 'RegisterServer' test.out

#- 60 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --body '{"kill_me": false, "pod_name": "eypWjDNh"}' \
    --namespace 'zCL5sWS2' \
    > test.out 2>&1
eval_tap $? 60 'ShutdownServer' test.out

#- 61 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace 'qwO763iE' \
    --podName 'klkzLm88' \
    > test.out 2>&1
eval_tap $? 61 'GetServerSession' test.out

#- 62 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --body '{"client_version": "LpLuYRO3", "configuration": "C55yHpwK", "deployment": "2JaqenDG", "game_mode": "n7a2NUpl", "matching_allies": [{"matching_parties": [{"party_attributes": {"WiLjq06n": {}}, "party_id": "6a0rW8Ef", "party_members": [{"user_id": "kpaXtwYZ"}]}]}], "namespace": "JaQ4WbwN", "notification_payload": {}, "pod_name": "msFYetjE", "region": "urH8eloJ", "session_id": "zNKtRUaT"}' \
    --namespace 'z1ETdsmw' \
    > test.out 2>&1
eval_tap $? 62 'CreateSession' test.out

#- 63 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --body '{"session_id": "zjkkn9oi"}' \
    --namespace 'Ql05g7cO' \
    > test.out 2>&1
eval_tap $? 63 'ClaimServer' test.out

#- 64 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace '3ZMb6Ojl' \
    --sessionID 'o6DMNpP2' \
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
    --region 'qMrTQ1Up' \
    > test.out 2>&1
eval_tap $? 67 'ListProvidersByRegion' test.out

#- 68 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 68 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE