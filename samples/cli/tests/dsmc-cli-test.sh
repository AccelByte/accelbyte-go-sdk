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
echo "1..69"

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
    --body '{"artifactPath": "w1uFIzWf", "image": "4QWWkcIz", "namespace": "YHsXVrU5", "persistent": true, "version": "9gZ96mi4"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "oofqkz7G", "dockerPath": "RMGDMiRZ", "image": "xFaEd3Yr", "imageSize": 92, "namespace": "ggmur9XB", "persistent": true, "version": "92PLLS0I"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "ox78k0lR", "dockerPath": "UyjiX71J", "image": "9Jk4JkK2", "imageSize": 47, "namespace": "CNqZFgr9", "patchVersion": "XjRcUz8t", "persistent": false, "version": "5ue2NP3p"}' \
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
    --body '{"claim_timeout": 60, "creation_timeout": 49, "default_version": "vr36RvCO", "port": 15, "ports": {"Mc0evurL": 19, "G2yydCEz": 77, "vMuKYFf8": 99}, "protocol": "4v8F3RHh", "providers": ["QfxIxxkP", "92VM3GcN", "lE69AwH2"], "session_timeout": 19, "unreachable_timeout": 90}' \
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
    --body '{"claim_timeout": 49, "creation_timeout": 5, "default_version": "fAcpDNDk", "port": 88, "protocol": "e11kIle7", "providers": ["ER5ErUmI", "iRsktdGj", "soPC7pA4"], "session_timeout": 8, "unreachable_timeout": 72}' \
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
    --name 'pqgAvfOG' \
    --count '11' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 13 'GetAllDeployment' test.out

#- 14 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'EuN3m2DZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetDeployment' test.out

#- 15 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'ejuKJapd' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 81, "buffer_percent": 35, "configuration": "Bi2ZuIYf", "enable_region_overrides": false, "game_version": "qbtdjcer", "max_count": 31, "min_count": 25, "overrides": {"oxJJrPbA": {"buffer_count": 94, "buffer_percent": 55, "configuration": "GkIh4HKN", "enable_region_overrides": false, "game_version": "fuZo5SIc", "max_count": 64, "min_count": 63, "name": "oeLOB9xO", "region_overrides": {"GuM5oQlW": {"buffer_count": 61, "buffer_percent": 19, "max_count": 53, "min_count": 75, "name": "nlDcYJSV", "unlimited": true, "use_buffer_percent": false}, "ZJEhfGcT": {"buffer_count": 14, "buffer_percent": 50, "max_count": 90, "min_count": 69, "name": "atDT34vi", "unlimited": false, "use_buffer_percent": false}, "jwak1ueB": {"buffer_count": 65, "buffer_percent": 80, "max_count": 22, "min_count": 71, "name": "B4rMmDxR", "unlimited": true, "use_buffer_percent": false}}, "regions": ["1scHVzig", "8401LOqw", "km2NgOEf"], "session_timeout": 47, "unlimited": false, "use_buffer_percent": true}, "wrMS70VW": {"buffer_count": 44, "buffer_percent": 32, "configuration": "F2GHEO3m", "enable_region_overrides": false, "game_version": "VndjpMNa", "max_count": 60, "min_count": 99, "name": "Hzvkd6UZ", "region_overrides": {"tGb1NcVD": {"buffer_count": 17, "buffer_percent": 69, "max_count": 5, "min_count": 2, "name": "4QAgBY8p", "unlimited": true, "use_buffer_percent": true}, "vteZjrCE": {"buffer_count": 10, "buffer_percent": 57, "max_count": 25, "min_count": 34, "name": "tfXHiB6M", "unlimited": true, "use_buffer_percent": true}, "MansYnRp": {"buffer_count": 84, "buffer_percent": 98, "max_count": 10, "min_count": 91, "name": "cFQB8fH7", "unlimited": false, "use_buffer_percent": false}}, "regions": ["tIv78Vf6", "APPyfhxP", "JxTwBa6Y"], "session_timeout": 55, "unlimited": true, "use_buffer_percent": false}, "qAPURj0G": {"buffer_count": 66, "buffer_percent": 98, "configuration": "Zgv9CzkY", "enable_region_overrides": false, "game_version": "Y3lwdY8m", "max_count": 97, "min_count": 57, "name": "HQIRQpJV", "region_overrides": {"2xZpsROM": {"buffer_count": 17, "buffer_percent": 31, "max_count": 59, "min_count": 79, "name": "1pMt49za", "unlimited": true, "use_buffer_percent": false}, "knfCOaN7": {"buffer_count": 1, "buffer_percent": 56, "max_count": 87, "min_count": 19, "name": "4N7Nj4T8", "unlimited": false, "use_buffer_percent": false}, "elgpgduJ": {"buffer_count": 100, "buffer_percent": 92, "max_count": 47, "min_count": 53, "name": "8xYQOjrv", "unlimited": false, "use_buffer_percent": true}}, "regions": ["0991NmBS", "h0uyFr6O", "dWWwRXYq"], "session_timeout": 88, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"kOH9VgEO": {"buffer_count": 79, "buffer_percent": 34, "max_count": 21, "min_count": 1, "name": "RG9ep22i", "unlimited": true, "use_buffer_percent": false}, "ElsPZ2y0": {"buffer_count": 35, "buffer_percent": 72, "max_count": 24, "min_count": 63, "name": "CJCsYmk6", "unlimited": true, "use_buffer_percent": true}, "vypDhl5P": {"buffer_count": 88, "buffer_percent": 64, "max_count": 80, "min_count": 74, "name": "uERADKqF", "unlimited": false, "use_buffer_percent": false}}, "regions": ["yGJ4pZds", "P2OZftPM", "OudeucL8"], "session_timeout": 77, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 15 'CreateDeployment' test.out

#- 16 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'eYgX3fh8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteDeployment' test.out

#- 17 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'dZr2s5Jn' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 14, "buffer_percent": 54, "configuration": "UNzUKtla", "enable_region_overrides": false, "game_version": "WAu6b00I", "max_count": 66, "min_count": 2, "regions": ["hJUenHfQ", "91ZfUTCY", "BWtOsSyF"], "session_timeout": 11, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateDeployment' test.out

#- 18 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'fez77UDf' \
    --namespace $AB_NAMESPACE \
    --region 'f4UBGKKc' \
    --body '{"buffer_count": 66, "buffer_percent": 50, "max_count": 100, "min_count": 40, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'CreateRootRegionOverride' test.out

#- 19 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'e1HziWml' \
    --namespace $AB_NAMESPACE \
    --region 'sQwtgZku' \
    > test.out 2>&1
eval_tap $? 19 'DeleteRootRegionOverride' test.out

#- 20 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'AvTx3sR2' \
    --namespace $AB_NAMESPACE \
    --region 'qCBWZr2M' \
    --body '{"buffer_count": 59, "buffer_percent": 68, "max_count": 96, "min_count": 58, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateRootRegionOverride' test.out

#- 21 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'PhrtrfAp' \
    --namespace $AB_NAMESPACE \
    --version 'Mqew5eOY' \
    --body '{"buffer_count": 89, "buffer_percent": 65, "configuration": "YTrFyHNy", "enable_region_overrides": false, "game_version": "NZP3qVLw", "max_count": 99, "min_count": 90, "region_overrides": {"BXvFigDP": {"buffer_count": 43, "buffer_percent": 7, "max_count": 37, "min_count": 1, "name": "42507NkP", "unlimited": true, "use_buffer_percent": true}, "WYw6cq54": {"buffer_count": 40, "buffer_percent": 46, "max_count": 65, "min_count": 41, "name": "f06pYyNb", "unlimited": true, "use_buffer_percent": false}, "5qQyHI8l": {"buffer_count": 70, "buffer_percent": 6, "max_count": 17, "min_count": 54, "name": "31RjjhQn", "unlimited": false, "use_buffer_percent": false}}, "regions": ["mmWv6qpP", "flX8WSck", "gG781th4"], "session_timeout": 83, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'CreateDeploymentOverride' test.out

#- 22 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'iYoZFWnP' \
    --namespace $AB_NAMESPACE \
    --version 'WBIZ8bk0' \
    > test.out 2>&1
eval_tap $? 22 'DeleteDeploymentOverride' test.out

#- 23 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'r9Sg3NKT' \
    --namespace $AB_NAMESPACE \
    --version 'EwlWx3Jr' \
    --body '{"buffer_count": 98, "buffer_percent": 15, "configuration": "fDz2m9GG", "enable_region_overrides": true, "game_version": "5woEYSHK", "max_count": 58, "min_count": 3, "regions": ["vQ5Oc9XS", "WFMPq6oL", "m2YtKpbj"], "session_timeout": 41, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateDeploymentOverride' test.out

#- 24 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'n7xgVelC' \
    --namespace $AB_NAMESPACE \
    --region 'eFeBaVpl' \
    --version 'zdZPSy07' \
    --body '{"buffer_count": 39, "buffer_percent": 32, "max_count": 47, "min_count": 3, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'CreateOverrideRegionOverride' test.out

#- 25 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'vfvMtGlB' \
    --namespace $AB_NAMESPACE \
    --region '9kHwPa5p' \
    --version 'XvafvxJZ' \
    > test.out 2>&1
eval_tap $? 25 'DeleteOverrideRegionOverride' test.out

#- 26 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '0u4Ia0Oe' \
    --namespace $AB_NAMESPACE \
    --region 'QY9gpWbH' \
    --version 'e30EIFjM' \
    --body '{"buffer_count": 51, "buffer_percent": 50, "max_count": 80, "min_count": 23, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateOverrideRegionOverride' test.out

#- 27 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '58' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 27 'GetAllPodConfig' test.out

#- 28 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'NEkWiMrN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetPodConfig' test.out

#- 29 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'HS6e5kIv' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 59, "mem_limit": 26, "params": "wMTGw8lt"}' \
    > test.out 2>&1
eval_tap $? 29 'CreatePodConfig' test.out

#- 30 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'nFwZdssK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeletePodConfig' test.out

#- 31 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'tfJP62fU' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 74, "mem_limit": 0, "name": "6smpYKRW", "params": "7ftTh8KA"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdatePodConfig' test.out

#- 32 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '0wnxkJ4U' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 48}' \
    > test.out 2>&1
eval_tap $? 32 'AddPort' test.out

#- 33 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'JVyP3yl5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeletePort' test.out

#- 34 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'EYOM7p8I' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "8i4megd7", "port": 64}' \
    > test.out 2>&1
eval_tap $? 34 'UpdatePort' test.out

#- 35 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'CnyEuQYW' \
    --sortBy 'version' \
    --sortDirection 'desc' \
    --count '36' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 35 'ListImages' test.out

#- 36 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'ISUQLXcM' \
    --version '6mONtBl0' \
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
    --imageURI '9jk3khIk' \
    --version 'vNeN6oFW' \
    --versionPatch 'nXDLfhiF' \
    > test.out 2>&1
eval_tap $? 39 'DeleteImagePatch' test.out

#- 40 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'u2SNhkfj' \
    > test.out 2>&1
eval_tap $? 40 'GetImageDetail' test.out

#- 41 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'a61R5eJX' \
    > test.out 2>&1
eval_tap $? 41 'GetImagePatches' test.out

#- 42 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version '32RE4SN5' \
    --versionPatch 'p9BZ3U53' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatchDetail' test.out

#- 43 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'a47KmCla' \
    --count '11' \
    --offset '20' \
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
    --region 'MwTX9kpm' \
    > test.out 2>&1
eval_tap $? 45 'CountServerDetailed' test.out

#- 46 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'ListLocalServer' test.out

#- 47 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'PZ5JlGh9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteLocalServer' test.out

#- 48 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'AmQJrXJB' \
    > test.out 2>&1
eval_tap $? 48 'GetServer' test.out

#- 49 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'etcE7Gxl' \
    > test.out 2>&1
eval_tap $? 49 'DeleteServer' test.out

#- 50 GetServerLogs
samples/cli/sample-apps Dsmc getServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'ra1Fs7Mb' \
    > test.out 2>&1
eval_tap $? 50 'GetServerLogs' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'kQv5rwRS' \
    --withServer 'true' \
    --count '81' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'S7l0qKBO' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'QM3vLKrG' \
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

#- 56 ImageLimitClient
samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'ImageLimitClient' test.out

#- 57 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version 'GvEKgWXb' \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "1QAI6XHy"}' \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "sXVyhyhM", "ip": "qld8xiDJ", "name": "V7YEWpMa", "port": 10}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "HhbFyWhT", "pod_name": "GHnSHMh7"}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "SWBD3It8"}' \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'Lg0CkvsJ' \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "UGaV1f1Z", "configuration": "LNxL1BrI", "deployment": "O3QCsj97", "game_mode": "6APKbLc8", "matching_allies": [{"matching_parties": [{"party_attributes": {"VK2c5EEh": {}, "mrlPNenY": {}, "KOVgFOtU": {}}, "party_id": "6t7zYUH5", "party_members": [{"user_id": "OkEIMwDV"}, {"user_id": "IfkqD58n"}, {"user_id": "fMkM3rdh"}]}, {"party_attributes": {"BKQCyKcO": {}, "qijxlYCX": {}, "6J7N8HUS": {}}, "party_id": "GsWYf01V", "party_members": [{"user_id": "HZmBvYdh"}, {"user_id": "MVGPbaB8"}, {"user_id": "9FTJ6vYc"}]}, {"party_attributes": {"Ket4r3FS": {}, "HfrRebYt": {}, "0iyTWRMl": {}}, "party_id": "kLhHn74Q", "party_members": [{"user_id": "6L7PiGUE"}, {"user_id": "AOmS87dX"}, {"user_id": "NH8gaQ9m"}]}]}, {"matching_parties": [{"party_attributes": {"81eMIgy7": {}, "7009eMcb": {}, "xDoI5Ovy": {}}, "party_id": "vKHGceqn", "party_members": [{"user_id": "BHqBOvtp"}, {"user_id": "0wfkDUQ9"}, {"user_id": "L4crRmyp"}]}, {"party_attributes": {"etRqHamM": {}, "1IETSkur": {}, "pjOfvtt1": {}}, "party_id": "tReMDvcJ", "party_members": [{"user_id": "v5oYSlHl"}, {"user_id": "Yg7kCkqC"}, {"user_id": "610QP4ot"}]}, {"party_attributes": {"7Lyf4MTs": {}, "hsZCenvQ": {}, "Mg3Pu5P5": {}}, "party_id": "VWrhynZo", "party_members": [{"user_id": "g1OcmTh0"}, {"user_id": "OBJGkFxJ"}, {"user_id": "XN7UhWYj"}]}]}, {"matching_parties": [{"party_attributes": {"MVWPmc0H": {}, "30Cs6bj1": {}, "uVhhrrgy": {}}, "party_id": "OaGejx17", "party_members": [{"user_id": "JtPyh1Ek"}, {"user_id": "oSzbKsXR"}, {"user_id": "ZpEF263x"}]}, {"party_attributes": {"G8LInetw": {}, "QzTrORc7": {}, "S5Woi3xD": {}}, "party_id": "3NaggYPw", "party_members": [{"user_id": "uyTLotMa"}, {"user_id": "dYi9DuOQ"}, {"user_id": "ZIKyTOzb"}]}, {"party_attributes": {"KkA3hgkU": {}, "CECEjVnX": {}, "AQxIly4b": {}}, "party_id": "HwQ6JZ8R", "party_members": [{"user_id": "pyVa4tEs"}, {"user_id": "NF4FG9O6"}, {"user_id": "JRv58TBk"}]}]}], "namespace": "vL6y29zW", "notification_payload": {}, "pod_name": "MSa1Vulv", "region": "gR47GCCX", "session_id": "cgofV4aG"}' \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "cX59IYNK"}' \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '6Ydxtfh3' \
    > test.out 2>&1
eval_tap $? 65 'GetSession' test.out

#- 66 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 66 'GetDefaultProvider' test.out

#- 67 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 67 'ListProviders' test.out

#- 68 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region 'gwnsy3Xd' \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE