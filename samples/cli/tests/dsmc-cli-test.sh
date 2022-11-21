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
echo "1..70"

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
    --body '{"artifactPath": "Nl7rUCWQ", "image": "cg8e63qy", "namespace": "SYNb22s3", "persistent": false, "version": "r572rxfb"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "qiosSVRP", "dockerPath": "fZXvZs9J", "image": "vYC647a7", "imageSize": 67, "namespace": "ahkc77CS", "persistent": false, "version": "96Z2yyNB"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "P9vMAVke", "dockerPath": "eDs13oQv", "image": "fm2Izu0H", "imageSize": 38, "namespace": "Snm2fDDa", "patchVersion": "nPmsrbkp", "persistent": true, "version": "OusETvSZ"}' \
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
    --body '{"claim_timeout": 13, "creation_timeout": 32, "default_version": "5IZDlFJ2", "port": 65, "ports": {"VqLdeLHi": 27, "Z8hTeDlz": 22, "aCHfO56K": 12}, "protocol": "s9kW41dz", "providers": ["jHvbgJAZ", "RPp0gbD7", "6LTPihsu"], "session_timeout": 99, "unreachable_timeout": 13}' \
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
    --body '{"claim_timeout": 53, "creation_timeout": 11, "default_version": "BCAmxDqy", "port": 74, "protocol": "csL1l0R5", "providers": ["g1Uq2yYA", "qn1EFk97", "OQjPJKga"], "session_timeout": 31, "unreachable_timeout": 81}' \
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
    --name 'AN80yjSg' \
    --count '54' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'qgn5nWPm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment '2ncxSpcm' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 41, "buffer_percent": 80, "configuration": "iF2RNDjp", "enable_region_overrides": false, "game_version": "lVoM5Fb7", "max_count": 21, "min_count": 86, "overrides": {"GJD4WnbK": {"buffer_count": 52, "buffer_percent": 23, "configuration": "5SrVlYbm", "enable_region_overrides": true, "game_version": "aRZ1Z3mN", "max_count": 70, "min_count": 88, "name": "r8plFhBx", "region_overrides": {"F9QX8yMd": {"buffer_count": 52, "buffer_percent": 2, "max_count": 61, "min_count": 28, "name": "7Z0YAw3A", "unlimited": false, "use_buffer_percent": false}, "2m4jknR2": {"buffer_count": 8, "buffer_percent": 1, "max_count": 33, "min_count": 38, "name": "vvj3FWge", "unlimited": true, "use_buffer_percent": true}, "z24QuY5x": {"buffer_count": 76, "buffer_percent": 100, "max_count": 19, "min_count": 6, "name": "rznm9dSK", "unlimited": true, "use_buffer_percent": true}}, "regions": ["tKo1ZLej", "og3WNpmJ", "zgwU9HOH"], "session_timeout": 87, "unlimited": false, "use_buffer_percent": false}, "chFEMwoR": {"buffer_count": 64, "buffer_percent": 42, "configuration": "2t9eyxik", "enable_region_overrides": true, "game_version": "aGISngCK", "max_count": 44, "min_count": 27, "name": "gPC7kfi9", "region_overrides": {"wULoo5Wj": {"buffer_count": 100, "buffer_percent": 28, "max_count": 52, "min_count": 72, "name": "6CM84ENQ", "unlimited": true, "use_buffer_percent": false}, "HxYmjcps": {"buffer_count": 51, "buffer_percent": 63, "max_count": 65, "min_count": 85, "name": "sbFNZWha", "unlimited": true, "use_buffer_percent": false}, "7zMNIQ6P": {"buffer_count": 43, "buffer_percent": 15, "max_count": 14, "min_count": 14, "name": "p71yzU8Q", "unlimited": true, "use_buffer_percent": true}}, "regions": ["SwRMAqQO", "kSBzkIja", "7eACRo4m"], "session_timeout": 74, "unlimited": false, "use_buffer_percent": false}, "gd8ssM3P": {"buffer_count": 80, "buffer_percent": 92, "configuration": "YqiabJJo", "enable_region_overrides": false, "game_version": "D7A2d8rU", "max_count": 38, "min_count": 12, "name": "t4sLFydV", "region_overrides": {"2ToRzFQr": {"buffer_count": 94, "buffer_percent": 87, "max_count": 94, "min_count": 32, "name": "hac7xa80", "unlimited": true, "use_buffer_percent": true}, "uWjbGGnQ": {"buffer_count": 27, "buffer_percent": 91, "max_count": 15, "min_count": 35, "name": "SwqOJ0ku", "unlimited": false, "use_buffer_percent": false}, "f6iqnc3Y": {"buffer_count": 87, "buffer_percent": 6, "max_count": 59, "min_count": 75, "name": "Uk3IFVRi", "unlimited": true, "use_buffer_percent": false}}, "regions": ["5Vn6KlEs", "VvhhMkCE", "IqGfugVB"], "session_timeout": 82, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"EddNjEEy": {"buffer_count": 19, "buffer_percent": 32, "max_count": 65, "min_count": 81, "name": "ihUg5aSX", "unlimited": false, "use_buffer_percent": true}, "vBrWxXdu": {"buffer_count": 32, "buffer_percent": 49, "max_count": 6, "min_count": 67, "name": "IgrS3BuS", "unlimited": false, "use_buffer_percent": false}, "sUNZkpOL": {"buffer_count": 17, "buffer_percent": 16, "max_count": 49, "min_count": 52, "name": "LysqE0Gi", "unlimited": true, "use_buffer_percent": false}}, "regions": ["TFIKT9SL", "bcA6rmeA", "1hRwxa1v"], "session_timeout": 79, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'KjKvtfhi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'JtOJ6h7T' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 95, "buffer_percent": 37, "configuration": "bJtt25gh", "enable_region_overrides": false, "game_version": "gnNyP2Eh", "max_count": 16, "min_count": 12, "regions": ["9uS5MhRK", "TdjCUGL0", "WqOBpuk6"], "session_timeout": 20, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'r5t8y0G7' \
    --namespace $AB_NAMESPACE \
    --region 'j9BSqghY' \
    --body '{"buffer_count": 4, "buffer_percent": 14, "max_count": 86, "min_count": 7, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'QIihmEQa' \
    --namespace $AB_NAMESPACE \
    --region 'Er6Sh3cK' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment '7poRVRuN' \
    --namespace $AB_NAMESPACE \
    --region 'cziukzXA' \
    --body '{"buffer_count": 22, "buffer_percent": 31, "max_count": 0, "min_count": 83, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'DgF1jghW' \
    --namespace $AB_NAMESPACE \
    --version '87lzYciZ' \
    --body '{"buffer_count": 9, "buffer_percent": 22, "configuration": "cF8uI9kW", "enable_region_overrides": true, "game_version": "YPoAsxCU", "max_count": 94, "min_count": 53, "region_overrides": {"cVh1VKmL": {"buffer_count": 14, "buffer_percent": 68, "max_count": 1, "min_count": 21, "name": "eqC7kP0t", "unlimited": true, "use_buffer_percent": true}, "6luA3Vod": {"buffer_count": 8, "buffer_percent": 0, "max_count": 100, "min_count": 76, "name": "xsN2X3uK", "unlimited": false, "use_buffer_percent": true}, "yRDGXU6m": {"buffer_count": 15, "buffer_percent": 37, "max_count": 73, "min_count": 89, "name": "F90gODWQ", "unlimited": false, "use_buffer_percent": true}}, "regions": ["n8emvV2L", "NqQgUHyV", "jf5EdhPe"], "session_timeout": 38, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 's4xzI7j4' \
    --namespace $AB_NAMESPACE \
    --version 'bbUMAS75' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'UEoPQqjP' \
    --namespace $AB_NAMESPACE \
    --version 'keIueMNy' \
    --body '{"buffer_count": 74, "buffer_percent": 53, "configuration": "ppIU8QtC", "enable_region_overrides": false, "game_version": "hdrDJ0CS", "max_count": 33, "min_count": 53, "regions": ["hSxshp18", "TjUrSN0M", "oOYcXY0y"], "session_timeout": 22, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'TDpsTEnE' \
    --namespace $AB_NAMESPACE \
    --region 'XaEwWczX' \
    --version 'FOd477Sj' \
    --body '{"buffer_count": 6, "buffer_percent": 76, "max_count": 46, "min_count": 21, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'j6vvTzJs' \
    --namespace $AB_NAMESPACE \
    --region 'FKDeMLlG' \
    --version 'corWDDyE' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'h7QMdG29' \
    --namespace $AB_NAMESPACE \
    --region 'pkUoq8nR' \
    --version '4vH0TIIZ' \
    --body '{"buffer_count": 77, "buffer_percent": 92, "max_count": 28, "min_count": 39, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '57' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'K4fTEJD4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'BqNS5sRL' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 2, "mem_limit": 35, "params": "O8YK2Upx"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'ugNt7fD2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'Q9KvoyP7' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 4, "mem_limit": 20, "name": "lv8xzUzx", "params": "KyVw7z9h"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'mH5hzdwg' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 73}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'ww8V1htz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'phZeo9lC' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "JjHluR11", "port": 14}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q '8hR4JhEJ' \
    --sortBy 'version' \
    --sortDirection 'asc' \
    --count '53' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'e4dpQ2BE' \
    --version '3fp0UOya' \
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
    --imageURI '16HacHJx' \
    --version 'IkeBQMww' \
    --versionPatch '6hlPsUr4' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'JRPxlh9I' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'lQnf7nxL' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'DDPFP6Pp' \
    --versionPatch 'BoZ3bLHw' \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'uFQHJWBO' \
    --count '50' \
    --offset '29' \
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
    --region '3LzDCA61' \
    > test.out 2>&1
eval_tap $? 46 'CountServerDetailed' test.out

#- 47 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'ListLocalServer' test.out

#- 48 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'UQnSPaj1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName '6UukeeZe' \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'jxWk8ZdB' \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 GetServerLogs
samples/cli/sample-apps Dsmc getServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'VIhA2h4Z' \
    > test.out 2>&1
eval_tap $? 51 'GetServerLogs' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region '3NtJGDGE' \
    --withServer 'true' \
    --count '5' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'rqrbvtzB' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'rHVQwG9h' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 ExportConfigV1
samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'ExportConfigV1' test.out

#- 56 ImportConfigV1
samples/cli/sample-apps Dsmc importConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 56 'ImportConfigV1' test.out

#- 57 ImageLimitClient
samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'ImageLimitClient' test.out

#- 58 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version 'iNRrippY' \
    > test.out 2>&1
eval_tap $? 58 'ImageDetailClient' test.out

#- 59 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "TKRD38Uw"}' \
    > test.out 2>&1
eval_tap $? 59 'DeregisterLocalServer' test.out

#- 60 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "DAIAPsaZ", "ip": "MtLTb5LP", "name": "I5WM2bRx", "port": 78}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterLocalServer' test.out

#- 61 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "8jSFyUCA", "pod_name": "FEzsQJc3"}' \
    > test.out 2>&1
eval_tap $? 61 'RegisterServer' test.out

#- 62 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "1CjO2yNq"}' \
    > test.out 2>&1
eval_tap $? 62 'ShutdownServer' test.out

#- 63 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'okRFV6Lb' \
    > test.out 2>&1
eval_tap $? 63 'GetServerSession' test.out

#- 64 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "pqOTq74b", "configuration": "w1Q8cZHQ", "deployment": "LUOJwMJt", "game_mode": "hBlraSvK", "matching_allies": [{"matching_parties": [{"party_attributes": {"Xz3DYng3": {}, "Io6NqEmd": {}, "QYP4Hox4": {}}, "party_id": "BaijZra3", "party_members": [{"user_id": "iaOlaxSa"}, {"user_id": "7AckrAG7"}, {"user_id": "YZg8LNLq"}]}, {"party_attributes": {"AzJziQxZ": {}, "FLoYDrLS": {}, "055JQy9r": {}}, "party_id": "V0bnF73k", "party_members": [{"user_id": "J2NCOTfC"}, {"user_id": "C8ObbsS5"}, {"user_id": "TuIjWvl4"}]}, {"party_attributes": {"d1PmmRpB": {}, "JVp5aE92": {}, "zsTs6q9C": {}}, "party_id": "sc3ocpZN", "party_members": [{"user_id": "8bWcTSBZ"}, {"user_id": "OwtgRcPI"}, {"user_id": "I7J1sv8R"}]}]}, {"matching_parties": [{"party_attributes": {"ySUtMIMU": {}, "Rk23K84o": {}, "60poXdVX": {}}, "party_id": "92vKFyni", "party_members": [{"user_id": "8DNKOAfJ"}, {"user_id": "i8VlYBRb"}, {"user_id": "sADLg7pA"}]}, {"party_attributes": {"QH5taSHI": {}, "NzL5R2T6": {}, "Q2vr2eX0": {}}, "party_id": "z3ND9sls", "party_members": [{"user_id": "Io1FUEuN"}, {"user_id": "F37zRVtP"}, {"user_id": "80sg58CV"}]}, {"party_attributes": {"2rIGs5w0": {}, "2t1XoknH": {}, "y6TTXg6a": {}}, "party_id": "1ndCCSpL", "party_members": [{"user_id": "4qdYpNcO"}, {"user_id": "nuRhIlVA"}, {"user_id": "hIqFzAKg"}]}]}, {"matching_parties": [{"party_attributes": {"AFFFEswe": {}, "6Mbcsc7p": {}, "7y8XMe0e": {}}, "party_id": "GWvpx5MI", "party_members": [{"user_id": "psYadRaz"}, {"user_id": "XP7ylPzf"}, {"user_id": "hCzDu20i"}]}, {"party_attributes": {"jXC56kzs": {}, "dwAzi3Ti": {}, "FoI421G4": {}}, "party_id": "GkQ9zqC2", "party_members": [{"user_id": "hai2e5IV"}, {"user_id": "W7hNHvvQ"}, {"user_id": "W0DOiBOJ"}]}, {"party_attributes": {"Ujk3n0G1": {}, "IoXdIqtn": {}, "bcmbrDYX": {}}, "party_id": "iwizNJAG", "party_members": [{"user_id": "kCA1nrx2"}, {"user_id": "DoU8whfC"}, {"user_id": "qlWuGUeU"}]}]}], "namespace": "CWosmPkQ", "notification_payload": {}, "pod_name": "jlU7egaO", "region": "r6VQU1WP", "session_id": "VONUACvS"}' \
    > test.out 2>&1
eval_tap $? 64 'CreateSession' test.out

#- 65 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "cpxgMhzm"}' \
    > test.out 2>&1
eval_tap $? 65 'ClaimServer' test.out

#- 66 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'DEoUNlLU' \
    > test.out 2>&1
eval_tap $? 66 'GetSession' test.out

#- 67 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 67 'GetDefaultProvider' test.out

#- 68 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 68 'ListProviders' test.out

#- 69 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region 'qXaPO0Um' \
    > test.out 2>&1
eval_tap $? 69 'ListProvidersByRegion' test.out

#- 70 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 70 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE