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
    --body '{"artifactPath": "KHHMzlcp", "image": "gqqOz9QM", "namespace": "n2Y66e8A", "persistent": true, "version": "A7OUuRnk"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "wd1Wcrrr", "dockerPath": "JqWNlCSm", "image": "7QNO2vdi", "imageSize": 54, "namespace": "niboZetM", "persistent": false, "version": "MTJG7q3n"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "5gCXxAgq", "dockerPath": "sjv5srro", "image": "oa87FoZ1", "imageSize": 12, "namespace": "EnykNw0d", "patchVersion": "es5YJavZ", "persistent": true, "version": "2m27u1z0"}' \
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
    --body '{"claim_timeout": 74, "creation_timeout": 89, "default_version": "AoPnTB4Z", "port": 2, "ports": {"m5CqUyTj": 43, "mbO2QGbf": 63, "YlVAi8TN": 50}, "protocol": "nV5VPnz6", "providers": ["636ADvx9", "qPdd5cNX", "hJSFO2Ep"], "session_timeout": 26, "unreachable_timeout": 71}' \
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
    --body '{"claim_timeout": 18, "creation_timeout": 31, "default_version": "HuXKD2iB", "port": 80, "protocol": "1yrOeXiv", "providers": ["4OVX89DV", "K8LLigXq", "foLSbPAP"], "session_timeout": 73, "unreachable_timeout": 97}' \
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
    --name 'fT2pOFWH' \
    --count '52' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 13 'GetAllDeployment' test.out

#- 14 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'vHs7yb3Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetDeployment' test.out

#- 15 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'zVxsa57P' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 11, "buffer_percent": 72, "configuration": "mLL4Mifn", "enable_region_overrides": false, "game_version": "q8yCGGf3", "max_count": 88, "min_count": 7, "overrides": {"J9fZZ35x": {"buffer_count": 89, "buffer_percent": 23, "configuration": "w6Kaychh", "enable_region_overrides": false, "game_version": "YddoBptY", "max_count": 55, "min_count": 58, "name": "hlSFZCll", "region_overrides": {"yqtc7uKn": {"buffer_count": 0, "buffer_percent": 57, "max_count": 63, "min_count": 93, "name": "HDQptPP6", "unlimited": false, "use_buffer_percent": true}, "iyUYSay3": {"buffer_count": 52, "buffer_percent": 28, "max_count": 49, "min_count": 86, "name": "362LbDLu", "unlimited": false, "use_buffer_percent": false}, "LuFjDJV6": {"buffer_count": 71, "buffer_percent": 95, "max_count": 30, "min_count": 59, "name": "SHVU8IHn", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Hm9Atbct", "i4Fnhtks", "YtPvdMJk"], "session_timeout": 47, "unlimited": false, "use_buffer_percent": false}, "bNXzOKS2": {"buffer_count": 50, "buffer_percent": 53, "configuration": "9527hjBt", "enable_region_overrides": true, "game_version": "KnN23Oxm", "max_count": 60, "min_count": 31, "name": "9SwuC89H", "region_overrides": {"sGFnf9kt": {"buffer_count": 10, "buffer_percent": 17, "max_count": 47, "min_count": 32, "name": "qdHyzb7A", "unlimited": false, "use_buffer_percent": false}, "pt3efcnV": {"buffer_count": 88, "buffer_percent": 32, "max_count": 95, "min_count": 17, "name": "YnIxcGkP", "unlimited": false, "use_buffer_percent": false}, "Acf9cRrn": {"buffer_count": 11, "buffer_percent": 50, "max_count": 42, "min_count": 54, "name": "VACe7BZc", "unlimited": true, "use_buffer_percent": true}}, "regions": ["dHQyq26A", "AOMHxZSJ", "b5BAKLW1"], "session_timeout": 80, "unlimited": true, "use_buffer_percent": false}, "2KvLNWvD": {"buffer_count": 66, "buffer_percent": 68, "configuration": "pNLP4TkH", "enable_region_overrides": false, "game_version": "J0mldJlF", "max_count": 46, "min_count": 84, "name": "nzVEAkN7", "region_overrides": {"7DcqiM10": {"buffer_count": 87, "buffer_percent": 82, "max_count": 14, "min_count": 57, "name": "2nNiY3rl", "unlimited": false, "use_buffer_percent": true}, "SGClSVwk": {"buffer_count": 66, "buffer_percent": 91, "max_count": 36, "min_count": 10, "name": "mwvhSCxk", "unlimited": true, "use_buffer_percent": true}, "6XdlTp7v": {"buffer_count": 91, "buffer_percent": 27, "max_count": 60, "min_count": 52, "name": "j4fH5naA", "unlimited": true, "use_buffer_percent": false}}, "regions": ["aXG6LRKY", "hZ9pA6eD", "RTOW735T"], "session_timeout": 49, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"JOkHwlCn": {"buffer_count": 1, "buffer_percent": 45, "max_count": 66, "min_count": 21, "name": "1QjlK4dI", "unlimited": false, "use_buffer_percent": true}, "yZAsWoRS": {"buffer_count": 40, "buffer_percent": 89, "max_count": 19, "min_count": 96, "name": "6Yrr19sw", "unlimited": false, "use_buffer_percent": true}, "f0mmkgYs": {"buffer_count": 21, "buffer_percent": 89, "max_count": 44, "min_count": 100, "name": "nutsSmcf", "unlimited": true, "use_buffer_percent": true}}, "regions": ["PWnGtF7X", "hllXMA1w", "Dz3x3fSi"], "session_timeout": 78, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 15 'CreateDeployment' test.out

#- 16 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'N7Dk1rfN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteDeployment' test.out

#- 17 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'z0MDEPbA' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 18, "buffer_percent": 67, "configuration": "doR1ggwr", "enable_region_overrides": false, "game_version": "JpujIoBG", "max_count": 89, "min_count": 82, "regions": ["ZG3HaBUp", "CC9EG53F", "mqGDjGiM"], "session_timeout": 78, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateDeployment' test.out

#- 18 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'yB4SiyzC' \
    --namespace $AB_NAMESPACE \
    --region '2DPoLHmx' \
    --body '{"buffer_count": 54, "buffer_percent": 89, "max_count": 81, "min_count": 47, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'CreateRootRegionOverride' test.out

#- 19 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment '1Fs8XOp6' \
    --namespace $AB_NAMESPACE \
    --region 'o8V28TIR' \
    > test.out 2>&1
eval_tap $? 19 'DeleteRootRegionOverride' test.out

#- 20 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'b9UdmuTJ' \
    --namespace $AB_NAMESPACE \
    --region 'rpst92py' \
    --body '{"buffer_count": 10, "buffer_percent": 35, "max_count": 85, "min_count": 90, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateRootRegionOverride' test.out

#- 21 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'WaxI6DCA' \
    --namespace $AB_NAMESPACE \
    --version 'yxnDJHE8' \
    --body '{"buffer_count": 37, "buffer_percent": 31, "configuration": "4s4anxzU", "enable_region_overrides": true, "game_version": "edoeefMn", "max_count": 77, "min_count": 23, "region_overrides": {"LVcAfXLk": {"buffer_count": 2, "buffer_percent": 34, "max_count": 73, "min_count": 82, "name": "8B49EO1w", "unlimited": false, "use_buffer_percent": true}, "8YV3xTAd": {"buffer_count": 22, "buffer_percent": 20, "max_count": 0, "min_count": 51, "name": "lCvP6v27", "unlimited": false, "use_buffer_percent": false}, "M4TnABCn": {"buffer_count": 54, "buffer_percent": 20, "max_count": 58, "min_count": 22, "name": "LwoeNt6J", "unlimited": true, "use_buffer_percent": true}}, "regions": ["VM2jtZXY", "MmnSLLi9", "FMVlpTFd"], "session_timeout": 14, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'CreateDeploymentOverride' test.out

#- 22 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment '6o5hnEhA' \
    --namespace $AB_NAMESPACE \
    --version 'gqS2cJiB' \
    > test.out 2>&1
eval_tap $? 22 'DeleteDeploymentOverride' test.out

#- 23 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'tIZs95gO' \
    --namespace $AB_NAMESPACE \
    --version 'x0Y5hsmw' \
    --body '{"buffer_count": 37, "buffer_percent": 82, "configuration": "WgOfYUpO", "enable_region_overrides": true, "game_version": "qe70tnkI", "max_count": 92, "min_count": 83, "regions": ["g6H2TkD3", "5KVgVeUQ", "hVLu0JCB"], "session_timeout": 62, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateDeploymentOverride' test.out

#- 24 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'RzcWQTGv' \
    --namespace $AB_NAMESPACE \
    --region '2eLeCc26' \
    --version 'U2xUP6j5' \
    --body '{"buffer_count": 13, "buffer_percent": 68, "max_count": 78, "min_count": 34, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'CreateOverrideRegionOverride' test.out

#- 25 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'YBUJL73i' \
    --namespace $AB_NAMESPACE \
    --region 'oWLNhU2y' \
    --version 'EkS3Kog5' \
    > test.out 2>&1
eval_tap $? 25 'DeleteOverrideRegionOverride' test.out

#- 26 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'vzGjoAN3' \
    --namespace $AB_NAMESPACE \
    --region 'VUQoO9rq' \
    --version 'ktfGgHd5' \
    --body '{"buffer_count": 1, "buffer_percent": 76, "max_count": 97, "min_count": 6, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateOverrideRegionOverride' test.out

#- 27 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '45' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 27 'GetAllPodConfig' test.out

#- 28 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'iwh08jzT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetPodConfig' test.out

#- 29 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'lZXPvuGo' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 25, "mem_limit": 60, "params": "pq3uU363"}' \
    > test.out 2>&1
eval_tap $? 29 'CreatePodConfig' test.out

#- 30 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'kC1GW5ML' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeletePodConfig' test.out

#- 31 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'uN2sKAGZ' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 32, "mem_limit": 22, "name": "T10gegrZ", "params": "jl7T3wGq"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdatePodConfig' test.out

#- 32 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'yfaJBn8r' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 50}' \
    > test.out 2>&1
eval_tap $? 32 'AddPort' test.out

#- 33 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'AtUJ1aQZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeletePort' test.out

#- 34 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'yoW6dojn' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "O3x4dIPO", "port": 36}' \
    > test.out 2>&1
eval_tap $? 34 'UpdatePort' test.out

#- 35 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'yizyKXy3' \
    --sortBy 'version' \
    --sortDirection 'asc' \
    --count '19' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 35 'ListImages' test.out

#- 36 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'KxH6ULl8' \
    --version 'YgolRtYk' \
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
    --imageURI 'K1hnUlLd' \
    --version 'sCFG5ocQ' \
    --versionPatch 'JK8dOrZZ' \
    > test.out 2>&1
eval_tap $? 39 'DeleteImagePatch' test.out

#- 40 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'jfiIOaCS' \
    > test.out 2>&1
eval_tap $? 40 'GetImageDetail' test.out

#- 41 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'PSPdZpAp' \
    > test.out 2>&1
eval_tap $? 41 'GetImagePatches' test.out

#- 42 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'S4ZSUIv9' \
    --versionPatch 'DLQRKuXr' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatchDetail' test.out

#- 43 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'BX6DLVUd' \
    --count '4' \
    --offset '70' \
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
    --region '82UfOf8m' \
    > test.out 2>&1
eval_tap $? 45 'CountServerDetailed' test.out

#- 46 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'ListLocalServer' test.out

#- 47 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'lsd7Hdkl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteLocalServer' test.out

#- 48 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'quNsuaEp' \
    > test.out 2>&1
eval_tap $? 48 'GetServer' test.out

#- 49 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'MbAWakzL' \
    > test.out 2>&1
eval_tap $? 49 'DeleteServer' test.out

#- 50 GetServerLogs
samples/cli/sample-apps Dsmc getServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 's45SlZVh' \
    > test.out 2>&1
eval_tap $? 50 'GetServerLogs' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'qvxXp1n1' \
    --withServer 'true' \
    --count '86' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'XSy0vSip' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'f8kJcS3p' \
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
    --version '8y86hjxK' \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "DVdXRVHd"}' \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "cNbX5yWK", "ip": "FV0Kzdkw", "name": "9xJjMp2r", "port": 100}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "asx5M6DO", "pod_name": "AGWcTJKY"}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "Ugo4jF8N"}' \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'yFiNwoOc' \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "cdGYmbq1", "configuration": "QOuaz9jd", "deployment": "qYcbnuZE", "game_mode": "kK9bivFR", "matching_allies": [{"matching_parties": [{"party_attributes": {"tqqUQloY": {}, "zFSo4AA2": {}, "qTf7etjY": {}}, "party_id": "CG2HCqs1", "party_members": [{"user_id": "M7l9cXF5"}, {"user_id": "UTLCbi8M"}, {"user_id": "61hRrAMv"}]}, {"party_attributes": {"mOD3yckf": {}, "I8O9TRL2": {}, "t4YrDmEf": {}}, "party_id": "Z7ztHIJ6", "party_members": [{"user_id": "hfsDunhG"}, {"user_id": "7qqYwY9b"}, {"user_id": "QM9IWZtp"}]}, {"party_attributes": {"a5JV5pyM": {}, "7T2SDguN": {}, "omMr0luP": {}}, "party_id": "KzTkvyol", "party_members": [{"user_id": "qDVTnTta"}, {"user_id": "PjtwF1tz"}, {"user_id": "eYYTz48e"}]}]}, {"matching_parties": [{"party_attributes": {"bVx7nusy": {}, "0KYaIx7N": {}, "Cb7UFcsF": {}}, "party_id": "xfrX26WT", "party_members": [{"user_id": "0ASo2toD"}, {"user_id": "5C34fg6o"}, {"user_id": "b5dfJYp5"}]}, {"party_attributes": {"lJ8vFoLI": {}, "Ez7LkwgL": {}, "3MuIHoGP": {}}, "party_id": "2NiiVnRV", "party_members": [{"user_id": "VmtavCg1"}, {"user_id": "OZb6wDxM"}, {"user_id": "FkMHCFia"}]}, {"party_attributes": {"gTEfo46I": {}, "PgKAyMGe": {}, "UJNRTNzN": {}}, "party_id": "CHXRBFz9", "party_members": [{"user_id": "y4PCtkjW"}, {"user_id": "wrJLwaFc"}, {"user_id": "iDvM333i"}]}]}, {"matching_parties": [{"party_attributes": {"bz71NBPJ": {}, "44zUyyl6": {}, "4rExoLth": {}}, "party_id": "ul9DZP8B", "party_members": [{"user_id": "cn73m8Vr"}, {"user_id": "2Du33QXd"}, {"user_id": "vklILwPG"}]}, {"party_attributes": {"cPg90qrW": {}, "xPoJaQTH": {}, "MHMT7WhG": {}}, "party_id": "drVAjfWc", "party_members": [{"user_id": "5vm1rA8p"}, {"user_id": "iEHnbnKB"}, {"user_id": "Hkg9T4Rx"}]}, {"party_attributes": {"2oR9EQH0": {}, "XI7dbVgl": {}, "JbasIy3E": {}}, "party_id": "Ye7o8XRm", "party_members": [{"user_id": "6iuZSzuW"}, {"user_id": "dQxHQL0V"}, {"user_id": "sUWkDmPW"}]}]}], "namespace": "klP70YbM", "notification_payload": {}, "pod_name": "7YjhJZL8", "region": "hKzQW8iV", "session_id": "MS6ubNSO"}' \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "HTzJ2v63"}' \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Holl8FGk' \
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
    --region 'NxiXORsC' \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE