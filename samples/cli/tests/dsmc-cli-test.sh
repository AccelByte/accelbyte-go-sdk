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
    --body '{"artifactPath": "EOShdi2H", "image": "DMZuzTKU", "namespace": "tDW9qs9f", "persistent": false, "version": "k4quuPMi"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "ymhdhAik", "dockerPath": "HlEyv5Cq", "image": "FDuWIkpG", "imageSize": 37, "namespace": "mAvRjD35", "persistent": true, "version": "xR6zN3xb"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "WIZT22zb", "dockerPath": "lZ35jQGo", "image": "hq1CQQnY", "imageSize": 89, "namespace": "SYkmSbv1", "patchVersion": "3j0gNSMH", "persistent": true, "version": "b5V0md7o"}' \
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
    --body '{"claim_timeout": 70, "creation_timeout": 1, "default_version": "AFIz1QCH", "port": 95, "ports": {"VreXS6B0": 25, "Jm6TdMGn": 39, "GJrFeGAY": 52}, "protocol": "jzmveTyX", "providers": ["OnIAuAvr", "XYvBBhZZ", "ykSSzkQk"], "session_timeout": 79, "unreachable_timeout": 57}' \
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
    --body '{"claim_timeout": 55, "creation_timeout": 63, "default_version": "Q5G3MGhn", "port": 27, "protocol": "qTIvEYU3", "providers": ["URDOoO94", "Omx6Ya4b", "PmtTq9RJ"], "session_timeout": 76, "unreachable_timeout": 80}' \
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
    --name 'H103EHIj' \
    --count '26' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'shPxBZQw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment '43ggIKbH' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 10, "buffer_percent": 86, "configuration": "5veuJXy9", "enable_region_overrides": true, "game_version": "qJeMAyks", "max_count": 29, "min_count": 39, "overrides": {"t3cF8yFn": {"buffer_count": 93, "buffer_percent": 0, "configuration": "C9hU1xhR", "enable_region_overrides": true, "game_version": "vOutpIx2", "max_count": 28, "min_count": 66, "name": "qXlGVRnZ", "region_overrides": {"PTTANwec": {"buffer_count": 9, "buffer_percent": 44, "max_count": 40, "min_count": 41, "name": "oSMXiJAu", "unlimited": true, "use_buffer_percent": true}, "rg1SSecR": {"buffer_count": 19, "buffer_percent": 85, "max_count": 77, "min_count": 81, "name": "YHzN5qf6", "unlimited": true, "use_buffer_percent": true}, "i3KsT6qp": {"buffer_count": 51, "buffer_percent": 74, "max_count": 68, "min_count": 6, "name": "RMzUqtfa", "unlimited": false, "use_buffer_percent": true}}, "regions": ["LPO3TGd4", "U1cUal1g", "6YbGyWKo"], "session_timeout": 53, "unlimited": true, "use_buffer_percent": false}, "tbGQMHB7": {"buffer_count": 30, "buffer_percent": 77, "configuration": "DZS6AlFp", "enable_region_overrides": false, "game_version": "TYxB6Jho", "max_count": 96, "min_count": 44, "name": "tuqMgO5e", "region_overrides": {"VAem6v4V": {"buffer_count": 88, "buffer_percent": 33, "max_count": 70, "min_count": 31, "name": "k0DRUq7w", "unlimited": false, "use_buffer_percent": false}, "G2RO0prg": {"buffer_count": 88, "buffer_percent": 77, "max_count": 92, "min_count": 69, "name": "6g9XDraY", "unlimited": false, "use_buffer_percent": false}, "I3K4w6pZ": {"buffer_count": 97, "buffer_percent": 40, "max_count": 35, "min_count": 74, "name": "tYowSJ7r", "unlimited": false, "use_buffer_percent": false}}, "regions": ["AI6l4loa", "cG99yz2V", "mPGTfyFK"], "session_timeout": 85, "unlimited": false, "use_buffer_percent": false}, "P8CxZqR6": {"buffer_count": 53, "buffer_percent": 38, "configuration": "0SfRs5AC", "enable_region_overrides": true, "game_version": "8d4NmpZq", "max_count": 86, "min_count": 54, "name": "d9hPwwmE", "region_overrides": {"mrvyfCAf": {"buffer_count": 14, "buffer_percent": 50, "max_count": 93, "min_count": 97, "name": "rEzZGig3", "unlimited": false, "use_buffer_percent": false}, "hXbl6ifv": {"buffer_count": 24, "buffer_percent": 85, "max_count": 20, "min_count": 29, "name": "m3nlwZTA", "unlimited": false, "use_buffer_percent": true}, "Z3iHZR9z": {"buffer_count": 51, "buffer_percent": 60, "max_count": 76, "min_count": 57, "name": "ruYfHl67", "unlimited": true, "use_buffer_percent": true}}, "regions": ["PeZszNts", "01BhU4cU", "i9Qdkm31"], "session_timeout": 83, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"R6LdVZ53": {"buffer_count": 35, "buffer_percent": 46, "max_count": 95, "min_count": 36, "name": "KdIYOgQo", "unlimited": true, "use_buffer_percent": false}, "viXX0e9Y": {"buffer_count": 97, "buffer_percent": 5, "max_count": 30, "min_count": 4, "name": "oQdRNT1W", "unlimited": false, "use_buffer_percent": false}, "uuTbh1iu": {"buffer_count": 61, "buffer_percent": 44, "max_count": 51, "min_count": 5, "name": "kFKm8XS1", "unlimited": true, "use_buffer_percent": false}}, "regions": ["80ZbXC23", "cCXNs9jW", "pp8glH0c"], "session_timeout": 57, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment '4xPnm8Nd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'zWioXWnI' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 89, "buffer_percent": 2, "configuration": "BzlxWXku", "enable_region_overrides": true, "game_version": "wdt0zrxp", "max_count": 14, "min_count": 10, "regions": ["zfLofzFR", "cW7KQXYL", "TzQQTxDt"], "session_timeout": 43, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'H4bIn9AS' \
    --namespace $AB_NAMESPACE \
    --region 'C4dvTycO' \
    --body '{"buffer_count": 7, "buffer_percent": 6, "max_count": 3, "min_count": 96, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'pOR5Ygzk' \
    --namespace $AB_NAMESPACE \
    --region 'p8vTYVNu' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment '4miAFJ8f' \
    --namespace $AB_NAMESPACE \
    --region '4RSvEChK' \
    --body '{"buffer_count": 65, "buffer_percent": 97, "max_count": 87, "min_count": 70, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'yQsUS2cN' \
    --namespace $AB_NAMESPACE \
    --version 'Mql3SAwp' \
    --body '{"buffer_count": 26, "buffer_percent": 0, "configuration": "TTZ3gRUG", "enable_region_overrides": false, "game_version": "Yq8itu01", "max_count": 90, "min_count": 8, "region_overrides": {"91UuuhrN": {"buffer_count": 23, "buffer_percent": 94, "max_count": 85, "min_count": 79, "name": "rJdkc3UN", "unlimited": true, "use_buffer_percent": true}, "x7e7Fu79": {"buffer_count": 41, "buffer_percent": 48, "max_count": 11, "min_count": 46, "name": "YEJSFq9P", "unlimited": true, "use_buffer_percent": true}, "Emo4eE7p": {"buffer_count": 88, "buffer_percent": 19, "max_count": 20, "min_count": 89, "name": "X93c5CwS", "unlimited": true, "use_buffer_percent": true}}, "regions": ["4TiH9GJC", "C07YBFGu", "iegXJXiS"], "session_timeout": 67, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'SVUmiV3z' \
    --namespace $AB_NAMESPACE \
    --version 'zjcfbjQP' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'jOMP2XBh' \
    --namespace $AB_NAMESPACE \
    --version '1rxxxpvy' \
    --body '{"buffer_count": 65, "buffer_percent": 37, "configuration": "OdsLOYCW", "enable_region_overrides": true, "game_version": "xntcrZ6z", "max_count": 41, "min_count": 11, "regions": ["SA7tnqJe", "PDgN4GtA", "xZjZGPlG"], "session_timeout": 49, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'S8P9fkvc' \
    --namespace $AB_NAMESPACE \
    --region 'uaQk2m0E' \
    --version 'Gr86fCfP' \
    --body '{"buffer_count": 52, "buffer_percent": 69, "max_count": 58, "min_count": 36, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'oMSikNXL' \
    --namespace $AB_NAMESPACE \
    --region 'YaYKry9M' \
    --version 'h47piV58' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '2Sf34uDO' \
    --namespace $AB_NAMESPACE \
    --region 'g0dL4ie2' \
    --version 'xn3j4hSy' \
    --body '{"buffer_count": 14, "buffer_percent": 82, "max_count": 10, "min_count": 7, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '90' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'yEZPCA5U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'K9HsGn2P' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 82, "mem_limit": 31, "params": "VDYlX6bv"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'BcvOVrdb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'eWgEi9RD' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 94, "mem_limit": 5, "name": "4E6hiJsD", "params": "ggVvtnR0"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '3KL99lB2' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 72}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'vw4X68VL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name '1ME5KCtg' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "k4MdunaQ", "port": 75}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'vb84Aqrj' \
    --sortBy 'createdAt' \
    --sortDirection 'desc' \
    --count '18' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'TIxpmsFl' \
    --version 'IXm97D4u' \
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
    --imageURI 'zVwehwbb' \
    --version 'uBUtf1Lu' \
    --versionPatch 'JdQxkHV9' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version '9Mwuh4MJ' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version '9XyE79hh' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'vuvha1qj' \
    --versionPatch 'fMsNdFY3' \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'mDSk3Agn' \
    --count '31' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 44 'ListServer' test.out

#- 45 CountServer
samples/cli/sample-apps Dsmc countServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'CountServer' test.out

#- 46 CountServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace $AB_NAMESPACE \
    --region 'ci8G4xOM' \
    > test.out 2>&1
eval_tap $? 46 'CountServerDetailed' test.out

#- 47 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'ListLocalServer' test.out

#- 48 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'ZGlKFpXi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'eqHCqu0k' \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'ra1lwyG9' \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'xZxJZlNr' \
    --withServer 'false' \
    --count '57' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'TVuKEuWJ' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'PNRN8WuM' \
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
    --version 'IRHzOavO' \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "oaGevu5T"}' \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "GmLpDJF3", "ip": "kX1BRhBL", "name": "cWfwSADU", "port": 31}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "6rOSj3uv", "pod_name": "sc7ePZ19"}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "IezNZk0g"}' \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'bHTyaLCS' \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "8Et5k1CU", "configuration": "LiRjh4bB", "deployment": "c4EBeWmo", "game_mode": "C18kPNWI", "matching_allies": [{"matching_parties": [{"party_attributes": {"BlpNME7X": {}, "5gM0SgLD": {}, "0jss24cy": {}}, "party_id": "9fcJMNEN", "party_members": [{"user_id": "l8ppyYUT"}, {"user_id": "zWF5WRvx"}, {"user_id": "fhelx2MS"}]}, {"party_attributes": {"lrOLnfBI": {}, "C2oZv6bW": {}, "Hn4twihL": {}}, "party_id": "llNt7T1I", "party_members": [{"user_id": "ciDx9qSt"}, {"user_id": "eC5SPt3l"}, {"user_id": "X4cbanG7"}]}, {"party_attributes": {"YLx4K18B": {}, "W3FZny0c": {}, "gYKeVzAX": {}}, "party_id": "t1bRHxem", "party_members": [{"user_id": "C1iCaJTU"}, {"user_id": "9yURp5i8"}, {"user_id": "Fs7YfCXU"}]}]}, {"matching_parties": [{"party_attributes": {"Nyx5runH": {}, "xtGk71sM": {}, "FVtZfaMl": {}}, "party_id": "R3vfYuYY", "party_members": [{"user_id": "xD6huXlE"}, {"user_id": "boucfzJl"}, {"user_id": "VvqSC75T"}]}, {"party_attributes": {"ynlRKYrM": {}, "xNdvJa6B": {}, "gTNdDDqB": {}}, "party_id": "LlPEb7uR", "party_members": [{"user_id": "Am7HcPM3"}, {"user_id": "lt2TryWs"}, {"user_id": "yAQEyYvP"}]}, {"party_attributes": {"J1rfQovS": {}, "pQvrdkKC": {}, "ImK5cGVN": {}}, "party_id": "cwdREet6", "party_members": [{"user_id": "smGC43kY"}, {"user_id": "EmXBiJ7I"}, {"user_id": "BM5fwVgs"}]}]}, {"matching_parties": [{"party_attributes": {"byQ8YphS": {}, "aFgahGWS": {}, "YHQmM7QJ": {}}, "party_id": "fc6Hyc90", "party_members": [{"user_id": "ANYmAOoq"}, {"user_id": "SVvNAR48"}, {"user_id": "FQyBFzxF"}]}, {"party_attributes": {"nHalnkee": {}, "b3YcQqLl": {}, "Zki2saMN": {}}, "party_id": "GcaZi8Bd", "party_members": [{"user_id": "SyZDgxsX"}, {"user_id": "UJPNdSVg"}, {"user_id": "vT5woBMO"}]}, {"party_attributes": {"gFEOCytu": {}, "rZl6yYzE": {}, "LUZKRW7j": {}}, "party_id": "O1xPMBCM", "party_members": [{"user_id": "DW7kj4Dc"}, {"user_id": "TpvA7Hdo"}, {"user_id": "E3cknt1o"}]}]}], "namespace": "PpFWjFmy", "notification_payload": {}, "pod_name": "Irs5PFNF", "region": "9urbGer6", "session_id": "5rxwuYNA"}' \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "yM2Ukjw5"}' \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '9ux9IO51' \
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
    --region 'vpuhH1NP' \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE