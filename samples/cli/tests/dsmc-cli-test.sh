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
    --body '{"artifactPath": "SCiegt2P", "image": "7kMrKsLC", "namespace": "D8SUDtHs", "persistent": false, "version": "kBnLFU0S"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "gUadMacE", "dockerPath": "eSAfkguU", "image": "utTOjAbg", "namespace": "VkF62oWn", "persistent": false, "version": "VjtmeD15"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "uCzCuEBC", "dockerPath": "IbCMbO97", "image": "4glS1tnt", "namespace": "pFihiHBX", "patchVersion": "ebqsciYR", "persistent": false, "version": "zA58IWGZ"}' \
    > test.out 2>&1
eval_tap $? 7 'CreateImagePatch' test.out

#- 8 GetConfig
samples/cli/sample-apps Dsmc getConfig \
    --namespace 'K4QZMxu2' \
    > test.out 2>&1
eval_tap $? 8 'GetConfig' test.out

#- 9 CreateConfig
samples/cli/sample-apps Dsmc createConfig \
    --body '{"claim_timeout": 6, "creation_timeout": 64, "default_version": "9qBQUu3C", "port": 40, "ports": {"ZylsKBrs": 52, "8cBCsSFt": 7, "oXElP8F0": 41}, "protocol": "5blPbG58", "providers": ["V4xnFaFH", "DgEFyUSU", "ZjZE7Rnl"], "session_timeout": 33, "unreachable_timeout": 56}' \
    --namespace 'YbhBC7XR' \
    > test.out 2>&1
eval_tap $? 9 'CreateConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Dsmc deleteConfig \
    --namespace 'GpLCUKUi' \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Dsmc updateConfig \
    --body '{"claim_timeout": 13, "creation_timeout": 47, "default_version": "wJLWQNvk", "port": 27, "protocol": "5Vv2w3zj", "providers": ["0I5LWY8d", "1mzPfcrg", "IYJKsWip"], "session_timeout": 38, "unreachable_timeout": 98}' \
    --namespace 'lglIbbUC' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 ClearCache
samples/cli/sample-apps Dsmc clearCache \
    --namespace '0jIRtGkV' \
    > test.out 2>&1
eval_tap $? 12 'ClearCache' test.out

#- 13 GetAllDeployment
samples/cli/sample-apps Dsmc getAllDeployment \
    --namespace 'DzujYhMA' \
    --name 'wUiThzcU' \
    --count '89' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 13 'GetAllDeployment' test.out

#- 14 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment '1qCirTZX' \
    --namespace 'tOQBW7uv' \
    > test.out 2>&1
eval_tap $? 14 'GetDeployment' test.out

#- 15 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --body '{"allow_version_override": true, "buffer_count": 0, "buffer_percent": 10, "configuration": "1DAGyQmI", "enable_region_overrides": true, "game_version": "645PlL5w", "max_count": 4, "min_count": 89, "overrides": {"EiL3cLaL": {"buffer_count": 86, "buffer_percent": 56, "configuration": "X0WTPyrE", "enable_region_overrides": false, "game_version": "WWZRrPRu", "max_count": 61, "min_count": 82, "name": "hXx8Fwze", "region_overrides": {"zlBgcwqG": {"buffer_count": 54, "buffer_percent": 69, "max_count": 80, "min_count": 19, "name": "6DqiO8H4", "use_buffer_percent": true}, "JaJXKF13": {"buffer_count": 30, "buffer_percent": 49, "max_count": 61, "min_count": 38, "name": "lXUY9GHp", "use_buffer_percent": true}, "dqqOv7GS": {"buffer_count": 84, "buffer_percent": 99, "max_count": 61, "min_count": 78, "name": "MJK5zKQV", "use_buffer_percent": true}}, "regions": ["EZaGat1X", "kiEQAvgH", "70Rdl75U"], "session_timeout": 73, "use_buffer_percent": true}, "EXY7Fzaa": {"buffer_count": 8, "buffer_percent": 71, "configuration": "6ij1RUgN", "enable_region_overrides": false, "game_version": "wvwsMqqF", "max_count": 81, "min_count": 52, "name": "ju0znNBs", "region_overrides": {"s0KM26cl": {"buffer_count": 0, "buffer_percent": 70, "max_count": 10, "min_count": 75, "name": "akSC8bRg", "use_buffer_percent": true}, "nG71MmJm": {"buffer_count": 78, "buffer_percent": 49, "max_count": 92, "min_count": 27, "name": "imJUbRUD", "use_buffer_percent": false}, "2G5u39c8": {"buffer_count": 35, "buffer_percent": 11, "max_count": 1, "min_count": 85, "name": "X7WaYaWJ", "use_buffer_percent": false}}, "regions": ["X4M1eGwa", "lHkh6Ev6", "8p5WOPPg"], "session_timeout": 64, "use_buffer_percent": true}, "Jmy9ItSb": {"buffer_count": 56, "buffer_percent": 1, "configuration": "irNZakQh", "enable_region_overrides": false, "game_version": "QkeYxBWx", "max_count": 19, "min_count": 95, "name": "Yw4ZhLqT", "region_overrides": {"i0NpXmgR": {"buffer_count": 89, "buffer_percent": 39, "max_count": 15, "min_count": 28, "name": "ttP3UNL0", "use_buffer_percent": false}, "uls5BXhE": {"buffer_count": 57, "buffer_percent": 13, "max_count": 51, "min_count": 27, "name": "UVHVD1dd", "use_buffer_percent": true}, "5LyRANNI": {"buffer_count": 92, "buffer_percent": 57, "max_count": 41, "min_count": 11, "name": "7ON4jGz0", "use_buffer_percent": true}}, "regions": ["q7BX7kDB", "nRnNUl6Q", "0tz8p8YF"], "session_timeout": 62, "use_buffer_percent": false}}, "region_overrides": {"0IWFp2jp": {"buffer_count": 93, "buffer_percent": 32, "max_count": 73, "min_count": 98, "name": "t1zczARA", "use_buffer_percent": true}, "zc2Rcd05": {"buffer_count": 97, "buffer_percent": 35, "max_count": 87, "min_count": 2, "name": "3hq7AjGW", "use_buffer_percent": false}, "jVcDNQD5": {"buffer_count": 38, "buffer_percent": 46, "max_count": 68, "min_count": 34, "name": "Lbx32ax2", "use_buffer_percent": true}}, "regions": ["2sGDyczY", "RMr7VMky", "tQzypOhR"], "session_timeout": 1, "use_buffer_percent": false}' \
    --deployment 'MSV6dtye' \
    --namespace '2HIaMbrD' \
    > test.out 2>&1
eval_tap $? 15 'CreateDeployment' test.out

#- 16 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'LKayYX7I' \
    --namespace 'rI9A9Y0a' \
    > test.out 2>&1
eval_tap $? 16 'DeleteDeployment' test.out

#- 17 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --body '{"allow_version_override": true, "buffer_count": 78, "buffer_percent": 27, "configuration": "ajexFK3Q", "enable_region_overrides": false, "game_version": "IqQ0bw6s", "max_count": 42, "min_count": 28, "regions": ["Chy8rF7L", "gjrHAHMx", "IJj6KIWG"], "session_timeout": 69, "use_buffer_percent": false}' \
    --deployment 'XXY85Q2d' \
    --namespace 'yMoEotR4' \
    > test.out 2>&1
eval_tap $? 17 'UpdateDeployment' test.out

#- 18 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --body '{"buffer_count": 33, "buffer_percent": 94, "max_count": 7, "min_count": 63, "use_buffer_percent": false}' \
    --deployment 'yzCathkc' \
    --namespace 'a5UkHRBE' \
    --region 'MxH0VmYp' \
    > test.out 2>&1
eval_tap $? 18 'CreateRootRegionOverride' test.out

#- 19 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment '2k84V2zX' \
    --namespace 'okJBuumQ' \
    --region 'M4XbZzOG' \
    > test.out 2>&1
eval_tap $? 19 'DeleteRootRegionOverride' test.out

#- 20 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --body '{"buffer_count": 8, "buffer_percent": 49, "max_count": 32, "min_count": 24, "use_buffer_percent": false}' \
    --deployment 'r5DlIfTx' \
    --namespace 'X1F0A0IG' \
    --region 'qHaQDLbz' \
    > test.out 2>&1
eval_tap $? 20 'UpdateRootRegionOverride' test.out

#- 21 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --body '{"buffer_count": 66, "buffer_percent": 52, "configuration": "Rbq8YVsY", "enable_region_overrides": true, "game_version": "zL4eDra7", "max_count": 85, "min_count": 24, "region_overrides": {"xoLiD77S": {"buffer_count": 30, "buffer_percent": 55, "max_count": 11, "min_count": 30, "name": "6QZG35aZ", "use_buffer_percent": false}, "w50zjP8T": {"buffer_count": 3, "buffer_percent": 43, "max_count": 58, "min_count": 80, "name": "ji9wstzq", "use_buffer_percent": true}, "Vwgb72cC": {"buffer_count": 3, "buffer_percent": 44, "max_count": 9, "min_count": 74, "name": "9NTPrYMs", "use_buffer_percent": false}}, "regions": ["zkzfCZFb", "9ZTvZ4B4", "tFuNO6M0"], "session_timeout": 16, "use_buffer_percent": true}' \
    --deployment 'yqbw8U9E' \
    --namespace 'oVjD3pEP' \
    --version 'dB4NnBK5' \
    > test.out 2>&1
eval_tap $? 21 'CreateDeploymentOverride' test.out

#- 22 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'fVVwImaa' \
    --namespace 'lXGJZlau' \
    --version 'FJnVm30K' \
    > test.out 2>&1
eval_tap $? 22 'DeleteDeploymentOverride' test.out

#- 23 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --body '{"buffer_count": 69, "buffer_percent": 19, "configuration": "uLr4QQM5", "enable_region_overrides": true, "game_version": "pSkxbws2", "max_count": 96, "min_count": 29, "regions": ["W4AlrF7Y", "LXUrkNAa", "kRPPKIMc"], "session_timeout": 95, "use_buffer_percent": false}' \
    --deployment 'z4Otzwsa' \
    --namespace 'ygkcoAy5' \
    --version 'd0e72IKA' \
    > test.out 2>&1
eval_tap $? 23 'UpdateDeploymentOverride' test.out

#- 24 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --body '{"buffer_count": 27, "buffer_percent": 49, "max_count": 88, "min_count": 77, "use_buffer_percent": false}' \
    --deployment 'lp1lbSGo' \
    --namespace 'BZx7rNtG' \
    --region '39OfcOoi' \
    --version 'WXIuckE9' \
    > test.out 2>&1
eval_tap $? 24 'CreateOverrideRegionOverride' test.out

#- 25 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'Hb7pJE8C' \
    --namespace 'R7uYN9aT' \
    --region 'ywjwudxd' \
    --version 'eFRwfOwU' \
    > test.out 2>&1
eval_tap $? 25 'DeleteOverrideRegionOverride' test.out

#- 26 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --body '{"buffer_count": 38, "buffer_percent": 31, "max_count": 68, "min_count": 35, "use_buffer_percent": false}' \
    --deployment 'vcqkHoPA' \
    --namespace 'NygrxFRP' \
    --region '3rWyl373' \
    --version 'VI6N15by' \
    > test.out 2>&1
eval_tap $? 26 'UpdateOverrideRegionOverride' test.out

#- 27 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace 'htCsiO4f' \
    --count '23' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 27 'GetAllPodConfig' test.out

#- 28 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'Ga4gMOQ3' \
    --namespace '0qJsQgnK' \
    > test.out 2>&1
eval_tap $? 28 'GetPodConfig' test.out

#- 29 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --body '{"cpu_limit": 43, "mem_limit": 66, "params": "znPK2e5p"}' \
    --name 'sgHjLH5F' \
    --namespace 'nlP07q6O' \
    > test.out 2>&1
eval_tap $? 29 'CreatePodConfig' test.out

#- 30 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'nORIBnku' \
    --namespace 'wf29hLX7' \
    > test.out 2>&1
eval_tap $? 30 'DeletePodConfig' test.out

#- 31 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --body '{"cpu_limit": 98, "mem_limit": 96, "name": "Yu541ks5", "params": "zzTPTsn3"}' \
    --name 'VLy7pqdg' \
    --namespace 'azMzKWeU' \
    > test.out 2>&1
eval_tap $? 31 'UpdatePodConfig' test.out

#- 32 AddPort
samples/cli/sample-apps Dsmc addPort \
    --body '{"port": 21}' \
    --name 'EVFPMOJW' \
    --namespace 'pmnGxFzS' \
    > test.out 2>&1
eval_tap $? 32 'AddPort' test.out

#- 33 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '2af4Id0y' \
    --namespace 'Urj8fOd3' \
    > test.out 2>&1
eval_tap $? 33 'DeletePort' test.out

#- 34 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --body '{"name": "ZDZhHgSB", "port": 37}' \
    --name '3wSlcmWL' \
    --namespace 'kZuExlc9' \
    > test.out 2>&1
eval_tap $? 34 'UpdatePort' test.out

#- 35 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace 'odlq5wBE' \
    --q '8Xdsjiml' \
    --sortBy 'version' \
    --sortDirection 'desc' \
    --count '81' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 35 'ListImages' test.out

#- 36 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace 'meaWhAmM' \
    --imageURI 'nxrdug1n' \
    --version 'xvqcKCY4' \
    > test.out 2>&1
eval_tap $? 36 'DeleteImage' test.out

#- 37 ExportImages
samples/cli/sample-apps Dsmc exportImages \
    --namespace 'Q6nvbzNn' \
    > test.out 2>&1
eval_tap $? 37 'ExportImages' test.out

#- 38 GetImageLimit
samples/cli/sample-apps Dsmc getImageLimit \
    --namespace '6xHIzTRr' \
    > test.out 2>&1
eval_tap $? 38 'GetImageLimit' test.out

#- 39 DeleteImagePatch
samples/cli/sample-apps Dsmc deleteImagePatch \
    --namespace 'Cjtgglau' \
    --imageURI 'ytiu5ASt' \
    --version '5XAfbGA0' \
    --versionPatch 'pSkQD9MD' \
    > test.out 2>&1
eval_tap $? 39 'DeleteImagePatch' test.out

#- 40 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace 'nh28autf' \
    --version 'WF44n2N1' \
    > test.out 2>&1
eval_tap $? 40 'GetImageDetail' test.out

#- 41 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace 'lUlBhTEW' \
    --version '9fEpTpPi' \
    > test.out 2>&1
eval_tap $? 41 'GetImagePatches' test.out

#- 42 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace 'oW0mk8Qv' \
    --version 'HUolC5NX' \
    --versionPatch '8oFy1DgN' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatchDetail' test.out

#- 43 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace '5GLz8ODk' \
    --region 'WSCgo1Nh' \
    --count '53' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 43 'ListServer' test.out

#- 44 CountServer
samples/cli/sample-apps Dsmc countServer \
    --namespace 'FuvFpYdv' \
    > test.out 2>&1
eval_tap $? 44 'CountServer' test.out

#- 45 CountServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace 'kmz9KEsq' \
    --region 'PFQQuNHE' \
    > test.out 2>&1
eval_tap $? 45 'CountServerDetailed' test.out

#- 46 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace '0mQNwaTt' \
    > test.out 2>&1
eval_tap $? 46 'ListLocalServer' test.out

#- 47 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'NuwLT3MS' \
    --namespace 'sqMif3od' \
    > test.out 2>&1
eval_tap $? 47 'DeleteLocalServer' test.out

#- 48 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace 'Aa4q9SYj' \
    --podName 'XKw82FJT' \
    > test.out 2>&1
eval_tap $? 48 'GetServer' test.out

#- 49 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace 'MbhHB4yh' \
    --podName 'vwurCTWb' \
    > test.out 2>&1
eval_tap $? 49 'DeleteServer' test.out

#- 50 GetServerLogs
samples/cli/sample-apps Dsmc getServerLogs \
    --namespace 'TpvrmI6G' \
    --podName '6Tx1DaOZ' \
    > test.out 2>&1
eval_tap $? 50 'GetServerLogs' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace 'u5FTElHZ' \
    --region 'JRj3WjoV' \
    --withServer 'false' \
    --count '75' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace 'Iy2Pv4Iy' \
    --region 'UBxiB51s' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace 'BL8IbToo' \
    --sessionID 'Y12eaID1' \
    > test.out 2>&1
eval_tap $? 53 'DeleteSession' test.out

#- 54 ExportConfigV1
samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace 'f33XuMwF' \
    > test.out 2>&1
eval_tap $? 54 'ExportConfigV1' test.out

#- 55 ImportConfigV1
samples/cli/sample-apps Dsmc importConfigV1 \
    --file 'tmp.dat' \
    --namespace 'aSEjD3nX' \
    > test.out 2>&1
eval_tap $? 55 'ImportConfigV1' test.out

#- 56 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace 'pBR6XW6t' \
    --version '5MvCcB6C' \
    > test.out 2>&1
eval_tap $? 56 'ImageDetailClient' test.out

#- 57 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --body '{"name": "nxCORnvh"}' \
    --namespace 'yrEmUIFB' \
    > test.out 2>&1
eval_tap $? 57 'DeregisterLocalServer' test.out

#- 58 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --body '{"custom_attribute": "RpHUxK5w", "ip": "vLLfgHK1", "name": "tIBgioXg", "port": 74}' \
    --namespace 'KZ6K1rMW' \
    > test.out 2>&1
eval_tap $? 58 'RegisterLocalServer' test.out

#- 59 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --body '{"custom_attribute": "lj96XkXq", "pod_name": "0uc3ofjo"}' \
    --namespace 'Iufd8KkC' \
    > test.out 2>&1
eval_tap $? 59 'RegisterServer' test.out

#- 60 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --body '{"kill_me": true, "pod_name": "oeuGxo5P"}' \
    --namespace 'ZnpvFqze' \
    > test.out 2>&1
eval_tap $? 60 'ShutdownServer' test.out

#- 61 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace 'lSV79ezl' \
    --podName 'haDcEosG' \
    > test.out 2>&1
eval_tap $? 61 'GetServerSession' test.out

#- 62 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --body '{"client_version": "TteSKkOe", "configuration": "LcSk1CHx", "deployment": "JgpVUt1A", "game_mode": "XW9Fjfyt", "matching_allies": [{"matching_parties": [{"party_attributes": {"5bE71kUx": {}, "f7Q4S3Vf": {}, "GWu3tcbu": {}}, "party_id": "zh5N4lEl", "party_members": [{"user_id": "UdbunUAq"}, {"user_id": "M77euZOH"}, {"user_id": "icECIyBT"}]}, {"party_attributes": {"UrmBtRLD": {}, "lwcB0oeH": {}, "MNekqw4g": {}}, "party_id": "phKjB68p", "party_members": [{"user_id": "yAH0RJo9"}, {"user_id": "o2LxR0eE"}, {"user_id": "jidS9zLu"}]}, {"party_attributes": {"RiZTRtwp": {}, "WXNgaZAS": {}, "MKfslidO": {}}, "party_id": "tEeM8G8V", "party_members": [{"user_id": "5vvXkUuz"}, {"user_id": "cPpTOSdB"}, {"user_id": "Eq7jeef7"}]}]}, {"matching_parties": [{"party_attributes": {"e5Zu9uNZ": {}, "lT6C1bev": {}, "ajAHjVBe": {}}, "party_id": "XBsyQVAe", "party_members": [{"user_id": "xqp3ycFo"}, {"user_id": "6qid3Jg4"}, {"user_id": "KuA7cFg9"}]}, {"party_attributes": {"vOM8Ps33": {}, "GzWstTYt": {}, "6piemCf6": {}}, "party_id": "qFBcQQXD", "party_members": [{"user_id": "j28MNYjV"}, {"user_id": "6byuNt2T"}, {"user_id": "lkhY5h96"}]}, {"party_attributes": {"LmHe2MG4": {}, "0S1m8vcx": {}, "V3p4Hro6": {}}, "party_id": "iUQhHErT", "party_members": [{"user_id": "3SrEDznd"}, {"user_id": "eNu3DUan"}, {"user_id": "e6M21pJI"}]}]}, {"matching_parties": [{"party_attributes": {"VmG7kUw6": {}, "NHOrb9tl": {}, "4Pflixel": {}}, "party_id": "YFblNuWy", "party_members": [{"user_id": "95lvJeKl"}, {"user_id": "IbuxFMdW"}, {"user_id": "JMkPeqoh"}]}, {"party_attributes": {"DQHqwEGM": {}, "MxXMhMpB": {}, "Zj7dm0SH": {}}, "party_id": "dWREZ1uq", "party_members": [{"user_id": "QNj99NSN"}, {"user_id": "YymP5ua1"}, {"user_id": "63O48pCw"}]}, {"party_attributes": {"VQlWqXs4": {}, "iBrfUDqY": {}, "Rkua5iVi": {}}, "party_id": "9OmKdkVZ", "party_members": [{"user_id": "VFtKZ7No"}, {"user_id": "HECzVq1I"}, {"user_id": "BnS7wRvW"}]}]}], "namespace": "s5kh9xep", "notification_payload": {}, "pod_name": "MgLIziEU", "region": "3xehYC4l", "session_id": "5yVyMvVu"}' \
    --namespace 'cfwL6G90' \
    > test.out 2>&1
eval_tap $? 62 'CreateSession' test.out

#- 63 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --body '{"session_id": "kzNUKzDK"}' \
    --namespace 'EB6IDdcg' \
    > test.out 2>&1
eval_tap $? 63 'ClaimServer' test.out

#- 64 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace 'tGLqfJ78' \
    --sessionID 'DbLgkCsL' \
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
    --region 'mgU32u2b' \
    > test.out 2>&1
eval_tap $? 67 'ListProvidersByRegion' test.out

#- 68 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 68 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE