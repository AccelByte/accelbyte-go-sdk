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
echo "1..89"

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
    --body '{"artifactPath": "oEvwSCCYuacqg0pi", "coreDumpEnabled": true, "image": "aCQTlfB2e21ORApE", "imageReplicationsMap": {"G91Dh6xGlNBBmyVm": {"failure_code": "MkuNYsCE8gqLjzq4", "region": "GCF0vU8DJvgxduET", "status": "mOR7s4UZzqNcnU8R", "uri": "yYddYzrImN1ZdII3"}, "vY1N7ZkgsW170o55": {"failure_code": "2nc3JizHqGVANcnK", "region": "HwDd3hhdXoblL9fH", "status": "DVQ31XwrMgxA2jH4", "uri": "AwYPIfY2BGYkKGO9"}, "Sp7eVcmaywmIFmZj": {"failure_code": "X7uQMBjPB2rLOnDR", "region": "Sq1n2M18SlN7bzzy", "status": "qGorCgygEYuAq5iH", "uri": "BgrZ4iJgjmcCcOHG"}}, "namespace": "lMg2FlHRSCoqQ1kL", "patchVersion": "zloPbRJtdTgqg7zU", "persistent": true, "ulimitFileSize": 0, "version": "ZdzNbW7GE4aWVmjk"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "ZOZ6uSH6z4U2pXWh", "coreDumpEnabled": false, "dockerPath": "we6IbbDarE93ucC3", "image": "XlEIRFXVMTSURXKN", "imageSize": 79, "namespace": "adhOSpO6JsDg4jCy", "persistent": true, "ulimitFileSize": 37, "version": "0HnrIc0HilBbzu3B"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "ieYifA83e9Zelqrq", "coreDumpEnabled": true, "dockerPath": "udsqkGdrec9WgCeL", "image": "WwCQ3fsOb1ePUXAf", "imageSize": 74, "namespace": "2p4NmGKuTxHU8zOC", "patchVersion": "gvf5WhhhCB2J7rF2", "persistent": true, "ulimitFileSize": 30, "uploaderFlag": "oVYaQQ1mz0yafJYZ", "version": "slOlL0a0kHEGfk3h"}' \
    > test.out 2>&1
eval_tap $? 6 'CreateImagePatch' test.out

#- 7 GetLowestInstanceSpec
samples/cli/sample-apps Dsmc getLowestInstanceSpec \
    > test.out 2>&1
eval_tap $? 7 'GetLowestInstanceSpec' test.out

#- 8 GetWorkerConfig
samples/cli/sample-apps Dsmc getWorkerConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'GetWorkerConfig' test.out

#- 9 UpdateWorkerConfig
samples/cli/sample-apps Dsmc updateWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": false, "ghost_worker": false, "manual_buffer_override": false, "zombie_worker": true}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateWorkerConfig' test.out

#- 10 CreateWorkerConfig
samples/cli/sample-apps Dsmc createWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": true, "ghost_worker": false, "manual_buffer_override": true, "zombie_worker": true}' \
    > test.out 2>&1
eval_tap $? 10 'CreateWorkerConfig' test.out

#- 11 GetConfig
samples/cli/sample-apps Dsmc getConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetConfig' test.out

#- 12 CreateConfig
samples/cli/sample-apps Dsmc createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"claim_timeout": 8, "creation_timeout": 67, "default_version": "dNq86q0RjGh8lFKq", "port": 12, "ports": {"gFR7y5xlaVPDlaEh": 31, "momp2NZxUu3wiIoB": 55, "OkEP3wGTC6M7EJHk": 100}, "protocol": "RoiQJ3JThJXNN2fM", "providers": ["P5lEm8wQNoTgONhq", "C3Hzs90UKolXRlkt", "fZ2joViWOmpo3Hse"], "session_timeout": 46, "unreachable_timeout": 51}' \
    > test.out 2>&1
eval_tap $? 12 'CreateConfig' test.out

#- 13 DeleteConfig
samples/cli/sample-apps Dsmc deleteConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteConfig' test.out

#- 14 UpdateConfig
samples/cli/sample-apps Dsmc updateConfig \
    --namespace $AB_NAMESPACE \
    --body '{"claim_timeout": 26, "creation_timeout": 52, "default_version": "oZ8rVEGXI8qtN8ze", "port": 53, "protocol": "Sda082i42TRmKyST", "providers": ["z38BglbbE64Ot9kQ", "1A2S1cOkgxtlGc8B", "atSrH2zW5nfQTdTa"], "session_timeout": 94, "unreachable_timeout": 82}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateConfig' test.out

#- 15 ClearCache
samples/cli/sample-apps Dsmc clearCache \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'ClearCache' test.out

#- 16 GetAllDeployment
samples/cli/sample-apps Dsmc getAllDeployment \
    --namespace $AB_NAMESPACE \
    --name 'wZcmK8c6p8Rtwohd' \
    --count '19' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 16 'GetAllDeployment' test.out

#- 17 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'HZ9zIXZuMKhZFjOm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetDeployment' test.out

#- 18 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'iVusFtxJf2lojQwO' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 67, "buffer_percent": 0, "configuration": "JXubRxVze0JqhQzq", "enable_region_overrides": true, "extendable_session": true, "game_version": "dp3jGC3aflCV5WoC", "max_count": 21, "min_count": 82, "overrides": {"2VPwv6Ef2crCAt3c": {"buffer_count": 7, "buffer_percent": 38, "configuration": "RZb79QKOhGnUsKoW", "enable_region_overrides": true, "extendable_session": true, "game_version": "XnFwWqBIjkFFPmXc", "max_count": 64, "min_count": 45, "name": "fAFsHWm8jLQ6kMUH", "region_overrides": {"kidp6QEJ4oOZasZ8": {"buffer_count": 36, "buffer_percent": 44, "max_count": 19, "min_count": 95, "name": "Ekl7rjjjumutf1pC", "unlimited": false, "use_buffer_percent": false}, "cWyQBw7f9IkMH1Cw": {"buffer_count": 0, "buffer_percent": 37, "max_count": 56, "min_count": 45, "name": "A397GQ5bz02Gfe5x", "unlimited": false, "use_buffer_percent": true}, "D8FEzcoSRhScAKXR": {"buffer_count": 99, "buffer_percent": 78, "max_count": 66, "min_count": 19, "name": "89lKXCynyvZFmgPs", "unlimited": false, "use_buffer_percent": true}}, "regions": ["bFst08SDVNdBDZJN", "6gs9E2Y6siACcAGI", "1O1bxrdsByl6zgRE"], "session_timeout": 18, "unlimited": false, "use_buffer_percent": true}, "4qGgBztrtyjl3kcO": {"buffer_count": 56, "buffer_percent": 84, "configuration": "k4Ao2vYCYEPRftNG", "enable_region_overrides": false, "extendable_session": true, "game_version": "bD0NlnvhEeo8uijv", "max_count": 8, "min_count": 15, "name": "gCMPLmU2tyd4IvUj", "region_overrides": {"Pdo7wzogu2ePTI6B": {"buffer_count": 90, "buffer_percent": 53, "max_count": 7, "min_count": 65, "name": "kaOcBGRUUONrhn6o", "unlimited": true, "use_buffer_percent": true}, "BeC7sSys08vKm7kk": {"buffer_count": 29, "buffer_percent": 43, "max_count": 64, "min_count": 13, "name": "U1htCHFa7y9kRKwR", "unlimited": true, "use_buffer_percent": false}, "I1ga4S8wn8N6epYB": {"buffer_count": 78, "buffer_percent": 83, "max_count": 58, "min_count": 70, "name": "bVyAfQR6edCyKYaj", "unlimited": true, "use_buffer_percent": false}}, "regions": ["Y2QaBYTm6aYgJlIT", "oQdWRfBspDNCb0NZ", "pPvnA717nT1BwCgq"], "session_timeout": 6, "unlimited": true, "use_buffer_percent": true}, "zY96X3NwHB20Vyw0": {"buffer_count": 91, "buffer_percent": 53, "configuration": "3gonQFYXNYyYw6Gr", "enable_region_overrides": true, "extendable_session": false, "game_version": "9zJYfxMMgJ1bh8Wi", "max_count": 62, "min_count": 12, "name": "tNy2p99jaWsXtmT0", "region_overrides": {"lovdBdq5huvYwu7Q": {"buffer_count": 42, "buffer_percent": 20, "max_count": 56, "min_count": 38, "name": "mS3Pp24O34THukLB", "unlimited": true, "use_buffer_percent": true}, "fRezU7McNvhAggAF": {"buffer_count": 50, "buffer_percent": 57, "max_count": 21, "min_count": 66, "name": "FHl3OCUKXjdAT0Hl", "unlimited": true, "use_buffer_percent": true}, "7eDcjQmM8c5fpZ6M": {"buffer_count": 2, "buffer_percent": 55, "max_count": 63, "min_count": 41, "name": "y2npSuLfQipH5hJr", "unlimited": false, "use_buffer_percent": false}}, "regions": ["GGWKOD7stRp0orBc", "pCfdA79WWwbw17xU", "qLxdoZ67ESWgfbha"], "session_timeout": 74, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"4EnzlQalQfYrewYA": {"buffer_count": 9, "buffer_percent": 41, "max_count": 51, "min_count": 0, "name": "xoy8yTgf6pnmqkCt", "unlimited": true, "use_buffer_percent": false}, "5mJ4rV1ehf9adZmn": {"buffer_count": 7, "buffer_percent": 23, "max_count": 5, "min_count": 14, "name": "2wFfNLRhoEkvzmwi", "unlimited": true, "use_buffer_percent": false}, "S1KX1fJY7AoWJkNr": {"buffer_count": 72, "buffer_percent": 0, "max_count": 60, "min_count": 35, "name": "qyF33uHZha1VAbPp", "unlimited": true, "use_buffer_percent": true}}, "regions": ["ExRQ5EgzruGATo5p", "FjFmRZuauBvfZVEE", "nyguH7e9vpvdf3r7"], "session_timeout": 16, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'CreateDeployment' test.out

#- 19 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment '5S8odIxDiLkFq4Vk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteDeployment' test.out

#- 20 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment '18iFzfARNvDwY7L1' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 56, "buffer_percent": 85, "configuration": "YuQkmlPoP5aIhuPy", "enable_region_overrides": false, "extendable_session": true, "game_version": "Bkv80uPtCGYUUwMj", "max_count": 35, "min_count": 54, "regions": ["gRvqhfF3wI4RTOoY", "ZcOCwLVHKcwEjBZc", "e3TAprDT3ij2pjkX"], "session_timeout": 51, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateDeployment' test.out

#- 21 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'KVDK6WMyouVhjxkF' \
    --namespace $AB_NAMESPACE \
    --region 'W3hVbuepgVKCB0AJ' \
    --body '{"buffer_count": 69, "buffer_percent": 97, "max_count": 77, "min_count": 35, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'CreateRootRegionOverride' test.out

#- 22 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'FnrMQRui6GC3pN8N' \
    --namespace $AB_NAMESPACE \
    --region 'pFIpT2sCcnB6KvJt' \
    > test.out 2>&1
eval_tap $? 22 'DeleteRootRegionOverride' test.out

#- 23 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'c4aPglPq1iUaKV79' \
    --namespace $AB_NAMESPACE \
    --region 'hsLUPu8NSNz1JCAs' \
    --body '{"buffer_count": 33, "buffer_percent": 55, "max_count": 89, "min_count": 3, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateRootRegionOverride' test.out

#- 24 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'nvvt9FUDT32RVAhu' \
    --namespace $AB_NAMESPACE \
    --version 'kSh1kCGuzavg0b7P' \
    --body '{"buffer_count": 50, "buffer_percent": 11, "configuration": "7dmWTWUEbNa5qjwq", "enable_region_overrides": true, "extendable_session": true, "game_version": "VwS3K8yCnIJDXynd", "max_count": 85, "min_count": 75, "region_overrides": {"50FSb2SO7qsLYpru": {"buffer_count": 12, "buffer_percent": 88, "max_count": 24, "min_count": 24, "name": "U2qYXmAof64XNIUL", "unlimited": true, "use_buffer_percent": false}, "etBNs6OMVs6rSJgz": {"buffer_count": 4, "buffer_percent": 12, "max_count": 46, "min_count": 59, "name": "onJo74zPYlrNzOKF", "unlimited": true, "use_buffer_percent": true}, "2kkZxN9Ae5opGcNh": {"buffer_count": 86, "buffer_percent": 26, "max_count": 92, "min_count": 26, "name": "KixTh5hyBsXFJYsL", "unlimited": true, "use_buffer_percent": true}}, "regions": ["J8Wtuz9o27qUKaAC", "BAhZXVrwQxALyuRP", "d64lCDbKYGTMSduA"], "session_timeout": 5, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'CreateDeploymentOverride' test.out

#- 25 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'DReeClAOPZJwXLJl' \
    --namespace $AB_NAMESPACE \
    --version 'snNXGbXHPsAmIXya' \
    > test.out 2>&1
eval_tap $? 25 'DeleteDeploymentOverride' test.out

#- 26 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment '0TjSByARu4BnFLXF' \
    --namespace $AB_NAMESPACE \
    --version 'HaSQucwZDcDzMyrf' \
    --body '{"buffer_count": 26, "buffer_percent": 37, "configuration": "xANdixTdRFnbAVdl", "enable_region_overrides": false, "game_version": "Ss8uDEOP61htYIfH", "max_count": 55, "min_count": 75, "regions": ["ooyY4yxdQA9BS1Lj", "eEpA1SFNIIg2InYP", "fpNZFiPrINrg56OL"], "session_timeout": 21, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateDeploymentOverride' test.out

#- 27 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment '4kK4QaJJtD1Hv1az' \
    --namespace $AB_NAMESPACE \
    --region '3yojHo5jTXgRA0jM' \
    --version 'bwF3hqNpdxzaFJBm' \
    --body '{"buffer_count": 59, "buffer_percent": 66, "max_count": 3, "min_count": 86, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'CreateOverrideRegionOverride' test.out

#- 28 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'J8npTyKLB6ukm2T3' \
    --namespace $AB_NAMESPACE \
    --region 'VNNi5EbAOPb61Bss' \
    --version 'I5fI8KeNVV9FjQkh' \
    > test.out 2>&1
eval_tap $? 28 'DeleteOverrideRegionOverride' test.out

#- 29 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'OEdLUhlrZyTkBkko' \
    --namespace $AB_NAMESPACE \
    --region 'gVWvjXULee3ViGWe' \
    --version 'Fowtwztqpsid2v1f' \
    --body '{"buffer_count": 93, "buffer_percent": 90, "max_count": 3, "min_count": 59, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateOverrideRegionOverride' test.out

#- 30 DeleteCreatingServerCountQueue
samples/cli/sample-apps Dsmc deleteCreatingServerCountQueue \
    --deployment 'AFKwca02EJO8bcP5' \
    --namespace $AB_NAMESPACE \
    --version 'zg7rMxlIdxEir9PG' \
    > test.out 2>&1
eval_tap $? 30 'DeleteCreatingServerCountQueue' test.out

#- 31 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '67' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 31 'GetAllPodConfig' test.out

#- 32 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'Uj2dp6upfPmuMCzQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPodConfig' test.out

#- 33 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'RAxJ4h3MbaRQ6VmP' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 60, "mem_limit": 79, "params": "jmYK8IJNaVaYZcGz"}' \
    > test.out 2>&1
eval_tap $? 33 'CreatePodConfig' test.out

#- 34 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'gydrUPu2UctWk0C2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePodConfig' test.out

#- 35 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'pVR4Yq2eePkDbFI9' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 68, "mem_limit": 7, "name": "5mBULdR45MfWQest", "params": "vgvU3H18qVHuM5Py"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePodConfig' test.out

#- 36 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'gzAMs0Ipd6BEZ2Yv' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 16}' \
    > test.out 2>&1
eval_tap $? 36 'AddPort' test.out

#- 37 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '8zEFMEeDuYIGzAB5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'DeletePort' test.out

#- 38 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'ehntjjAwvqk0wdDA' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Kh7GtQdovLL4iJcD", "port": 65}' \
    > test.out 2>&1
eval_tap $? 38 'UpdatePort' test.out

#- 39 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'WYbm2eZ7N1KvnDWn' \
    --sortBy 'version' \
    --sortDirection 'desc' \
    --count '8' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 39 'ListImages' test.out

#- 40 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'CaikMYciGtGdbEbJ' \
    --version 'q1b9NfQ7CQxagYZv' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImage' test.out

#- 41 GetImageLimit
samples/cli/sample-apps Dsmc getImageLimit \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'GetImageLimit' test.out

#- 42 DeleteImagePatch
samples/cli/sample-apps Dsmc deleteImagePatch \
    --namespace $AB_NAMESPACE \
    --imageURI 'VHSKaTmCRA9NDepf' \
    --version 'Nfa76gOQDi9sBa7K' \
    --versionPatch 'fSTHcWdrt042gwV3' \
    > test.out 2>&1
eval_tap $? 42 'DeleteImagePatch' test.out

#- 43 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'IeFkIa12nFbDLFhD' \
    > test.out 2>&1
eval_tap $? 43 'GetImageDetail' test.out

#- 44 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'UvmQcXWHmU9ZvQNH' \
    > test.out 2>&1
eval_tap $? 44 'GetImagePatches' test.out

#- 45 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'xHd4l3PiIZmnuSZN' \
    --versionPatch 'EQyLva2T179M2Xpj' \
    > test.out 2>&1
eval_tap $? 45 'GetImagePatchDetail' test.out

#- 46 AddBuffer
samples/cli/sample-apps Dsmc addBuffer \
    --namespace $AB_NAMESPACE \
    --body '{"AllocCount": 2, "DeploymentName": "eWkkV0Ar9UzkQ5Km", "JobCount": 13, "JobPriority": 8, "OverrideVersion": "ebIv1EfWX1K8clX1", "Region": "HUu6LNl6ewhbfVEN"}' \
    > test.out 2>&1
eval_tap $? 46 'AddBuffer' test.out

#- 47 GetRepository
samples/cli/sample-apps Dsmc getRepository \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'GetRepository' test.out

#- 48 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region '2Hm16fmw0ghGnjZb' \
    --count '80' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 48 'ListServer' test.out

#- 49 CountServer
samples/cli/sample-apps Dsmc countServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'CountServer' test.out

#- 50 CountServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace $AB_NAMESPACE \
    --region '2PP9WJEROwjLPhhn' \
    > test.out 2>&1
eval_tap $? 50 'CountServerDetailed' test.out

#- 51 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'ListLocalServer' test.out

#- 52 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'PDXhGVkz8bFJwav8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteLocalServer' test.out

#- 53 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'Uf14HPBuioDXVVyr' \
    > test.out 2>&1
eval_tap $? 53 'GetServer' test.out

#- 54 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'Da3UCWSJXVt663Dy' \
    > test.out 2>&1
eval_tap $? 54 'DeleteServer' test.out

#- 55 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'pIBVfXAoqLIAiDpE' \
    --withServer 'true' \
    --count '90' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 55 'ListSession' test.out

#- 56 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'AEELOacv1cabsg2S' \
    > test.out 2>&1
eval_tap $? 56 'CountSession' test.out

#- 57 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'mR4NJpASGLP30Nxe' \
    > test.out 2>&1
eval_tap $? 57 'DeleteSession' test.out

#- 58 RunGhostCleanerRequestHandler
samples/cli/sample-apps Dsmc runGhostCleanerRequestHandler \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'RunGhostCleanerRequestHandler' test.out

#- 59 RunZombieCleanerRequestHandler
samples/cli/sample-apps Dsmc runZombieCleanerRequestHandler \
    --namespace $AB_NAMESPACE \
    --body '{"JobCount": 83, "Region": "RJCxcgdYw86MqQgi", "TimeoutSecond": 47, "ZombieCount": 87}' \
    > test.out 2>&1
eval_tap $? 59 'RunZombieCleanerRequestHandler' test.out

#- 60 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "YcF4WxflnFROY3W9", "repository": "8ia9opdciqB3pqkv"}' \
    > test.out 2>&1
eval_tap $? 60 'CreateRepository' test.out

#- 61 ExportConfigV1
samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'ExportConfigV1' test.out

#- 62 ImportConfigV1
samples/cli/sample-apps Dsmc importConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 62 'ImportConfigV1' test.out

#- 63 GetAllDeploymentClient
samples/cli/sample-apps Dsmc getAllDeploymentClient \
    --namespace $AB_NAMESPACE \
    --name 'Vd3Ej1maVX5RU2Ia' \
    --count '32' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 63 'GetAllDeploymentClient' test.out

#- 64 GetDeploymentClient
samples/cli/sample-apps Dsmc getDeploymentClient \
    --deployment '8pduc2GlERKsErey' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetDeploymentClient' test.out

#- 65 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'MzkymleY5tXHiNE3' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 59, "buffer_percent": 98, "configuration": "ZiIx6d8zdcBhE7KM", "enable_region_overrides": true, "extendable_session": true, "game_version": "V4TcorDW4RKDCKQx", "max_count": 62, "min_count": 64, "overrides": {"0ess2AyWkMLfctXK": {"buffer_count": 7, "buffer_percent": 72, "configuration": "3qfnRFX8uBanqKtZ", "enable_region_overrides": false, "extendable_session": false, "game_version": "UPqvg5J3EDo1ff2z", "max_count": 98, "min_count": 22, "name": "4dq4ORXZyld4rB28", "region_overrides": {"Z6ILSisIbXmc18C0": {"buffer_count": 16, "buffer_percent": 20, "max_count": 49, "min_count": 86, "name": "BkUXXJ6ZJdRUF1VB", "unlimited": true, "use_buffer_percent": false}, "fmiPZ5qFm7bkoypy": {"buffer_count": 30, "buffer_percent": 46, "max_count": 50, "min_count": 100, "name": "Y8vsQuexjJJELtHT", "unlimited": true, "use_buffer_percent": true}, "JeFpgjLcX8oh37W7": {"buffer_count": 6, "buffer_percent": 45, "max_count": 37, "min_count": 33, "name": "8PuWP3otGmaXkkBc", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Y6JWgKNFrUFEsmbA", "R453c9CoYouyY3EG", "7LPQuKh1Qo5M3hZo"], "session_timeout": 0, "unlimited": false, "use_buffer_percent": false}, "bTO3c7O03M21HxC9": {"buffer_count": 33, "buffer_percent": 94, "configuration": "axxGTz8rXjTyGkCh", "enable_region_overrides": true, "extendable_session": false, "game_version": "uzOWeRkUc2PFtWmD", "max_count": 10, "min_count": 70, "name": "LlOGgbZIAFyqm1zf", "region_overrides": {"kxGlrCR03fVmup2e": {"buffer_count": 91, "buffer_percent": 14, "max_count": 18, "min_count": 39, "name": "EDyTIlpKMgpxYF1o", "unlimited": true, "use_buffer_percent": true}, "gWGwT9YLHXVRuUvw": {"buffer_count": 56, "buffer_percent": 47, "max_count": 26, "min_count": 56, "name": "3cZDxWCm8InoMKxU", "unlimited": true, "use_buffer_percent": true}, "d4dziKfjtifug3nk": {"buffer_count": 14, "buffer_percent": 91, "max_count": 12, "min_count": 56, "name": "rqvV19PlztNsGslS", "unlimited": true, "use_buffer_percent": true}}, "regions": ["wUcpkXJ4ssJBBxpp", "6eTNRG1oqOHoCfG9", "hTdsyrfc4kfkwQwB"], "session_timeout": 39, "unlimited": true, "use_buffer_percent": true}, "V04wCNuXOyIGPKdF": {"buffer_count": 86, "buffer_percent": 85, "configuration": "FVpbN4mYneIaUQgw", "enable_region_overrides": true, "extendable_session": false, "game_version": "LDAbiYZ8pqrm6jtE", "max_count": 68, "min_count": 37, "name": "vcnEvPJhtSu5dsPL", "region_overrides": {"bwioZXlHkCUXKIpE": {"buffer_count": 23, "buffer_percent": 17, "max_count": 69, "min_count": 58, "name": "m8MfUnWmpM5Csebc", "unlimited": true, "use_buffer_percent": true}, "8vH9ZwV9NfaeIhIK": {"buffer_count": 7, "buffer_percent": 12, "max_count": 95, "min_count": 19, "name": "jUahSKsN0o0n1jRT", "unlimited": true, "use_buffer_percent": false}, "OWavbypV2qPq5og8": {"buffer_count": 99, "buffer_percent": 63, "max_count": 23, "min_count": 93, "name": "VzE2AQduThmMNJpA", "unlimited": true, "use_buffer_percent": true}}, "regions": ["xe0u81Vkfxb2EVow", "rj0TDV8PEgmbKWHh", "8rQ1uUTqleGJXLze"], "session_timeout": 71, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"dNLnuRZebdnEsUJr": {"buffer_count": 90, "buffer_percent": 26, "max_count": 43, "min_count": 71, "name": "FDgearosG0fa34xb", "unlimited": true, "use_buffer_percent": true}, "HeaIGQNTt4FkZg2S": {"buffer_count": 28, "buffer_percent": 11, "max_count": 89, "min_count": 28, "name": "Rmg4wARVDMG94Mod", "unlimited": false, "use_buffer_percent": true}, "cFkTFRzeJxyZlkd5": {"buffer_count": 25, "buffer_percent": 87, "max_count": 67, "min_count": 35, "name": "rMVzRRp5VVcg6wtq", "unlimited": false, "use_buffer_percent": true}}, "regions": ["c4bJ2jrLeNIMRCaq", "dAwNQLuUHnyQvxN4", "j3KwflM2PDnztQCM"], "session_timeout": 25, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 65 'CreateDeploymentClient' test.out

#- 66 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment '0du1cRCaJ1TF53E4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteDeploymentClient' test.out

#- 67 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '64' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 67 'GetAllPodConfigClient' test.out

#- 68 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'gVaBgQ4xRyqg7A3u' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 25, "mem_limit": 13, "params": "4tdUPk92OpMsx5dB"}' \
    > test.out 2>&1
eval_tap $? 68 'CreatePodConfigClient' test.out

#- 69 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'OtT3ehfTfAXJTWe8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePodConfigClient' test.out

#- 70 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '66' \
    --offset '26' \
    --q 'MKpPzxxE9gBhLYT8' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 70 'ListImagesClient' test.out

#- 71 ImageLimitClient
samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'ImageLimitClient' test.out

#- 72 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version 'JTWmvR9VttqSyZHa' \
    > test.out 2>&1
eval_tap $? 72 'ImageDetailClient' test.out

#- 73 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'Qfk1wbvC1y0IOAMi' \
    --count '15' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 73 'ListServerClient' test.out

#- 74 CountServerDetailedClient
samples/cli/sample-apps Dsmc countServerDetailedClient \
    --namespace $AB_NAMESPACE \
    --region 'pp51CxL8tNMd3Ymu' \
    > test.out 2>&1
eval_tap $? 74 'CountServerDetailedClient' test.out

#- 75 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "IO9v7vA5zyHyuPfr"}' \
    > test.out 2>&1
eval_tap $? 75 'ServerHeartbeat' test.out

#- 76 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "FvNwb48La3bYVPFz"}' \
    > test.out 2>&1
eval_tap $? 76 'DeregisterLocalServer' test.out

#- 77 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "ZK7g4RfQQwtNjwmW", "ip": "4MeemJ9D1KeFb1cl", "name": "rQYp6Nbf8bpn0tIf", "port": 80}' \
    > test.out 2>&1
eval_tap $? 77 'RegisterLocalServer' test.out

#- 78 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "uVp2qvEz4ASfD5Ax", "pod_name": "ZSbv95cxzfFrsSrD"}' \
    > test.out 2>&1
eval_tap $? 78 'RegisterServer' test.out

#- 79 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "xVGCTEHPDPpkGrpu"}' \
    > test.out 2>&1
eval_tap $? 79 'ShutdownServer' test.out

#- 80 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'PTnrInEMF4Xj81aZ' \
    > test.out 2>&1
eval_tap $? 80 'GetServerSessionTimeout' test.out

#- 81 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'hrQpxO5JeazqVea6' \
    > test.out 2>&1
eval_tap $? 81 'GetServerSession' test.out

#- 82 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "l0eVPcYkdmplsXdu", "configuration": "Y2c0J3d1PKe0veur", "deployment": "ecINSbXDZoQv5ug4", "game_mode": "9WqaOyRboTwLXjkL", "matching_allies": [{"matching_parties": [{"party_attributes": {"8e8vMtqbvt6MAH8t": {}, "PuaXjI5NUKUsYyVB": {}, "XL06JarznOSwlZ4d": {}}, "party_id": "8PApYXN3ta5ZTCoI", "party_members": [{"user_id": "4CEeueJhIlCbHRU8"}, {"user_id": "W9ppIYfMKm1xU9zn"}, {"user_id": "8ANQPmaoG3P1Au5s"}]}, {"party_attributes": {"9mbrd4nvkgZ0Aq2b": {}, "k0rmI21E24Jl56YW": {}, "hJihIoKbSq2LicSX": {}}, "party_id": "Nctbi0vFzYm0pPjT", "party_members": [{"user_id": "USl3R5cY75cLNKqu"}, {"user_id": "s0Q62PDcIoXgypRj"}, {"user_id": "JHZm0WqsS36iZOPe"}]}, {"party_attributes": {"ICAz9UZwARuNyxp3": {}, "Ip21i4liZ1180IQe": {}, "Q8mIu36OhCySJWbU": {}}, "party_id": "uGIpid6y1GMH39aI", "party_members": [{"user_id": "ppvqj3yIjziqBNA8"}, {"user_id": "kbdMkaiYrffi04yu"}, {"user_id": "c84vfe3sztps9RSu"}]}]}, {"matching_parties": [{"party_attributes": {"j2trZx3vxKEyCT69": {}, "6mzJkjy2A13DEZCZ": {}, "FtNWMNZzDsIhfu5S": {}}, "party_id": "I7cZOQbj1v8IY0Hl", "party_members": [{"user_id": "HnxqLszEmDeV8Mjh"}, {"user_id": "BsJ6FJtZJAsqGe34"}, {"user_id": "FUsPWB8PHLcYBvAv"}]}, {"party_attributes": {"7ezSZTlNscVBt3bM": {}, "Rcw1J1hRZz30KMha": {}, "aKmfDwY4vZUO8ME1": {}}, "party_id": "F50kulSsOYYWARDM", "party_members": [{"user_id": "7OtQD6E2YZtRtbzm"}, {"user_id": "bwcDLFoim5X9rXIv"}, {"user_id": "CiUU79mVPYZmljnk"}]}, {"party_attributes": {"0sDhwPbnyBvpo10C": {}, "TTUOD80mx7RWcfco": {}, "FL8rDLRqTNXRTfWv": {}}, "party_id": "JWJNxRvvy4fsqVlN", "party_members": [{"user_id": "xZ24SoOROyL703jm"}, {"user_id": "9G96IR90UVHORV8H"}, {"user_id": "lJPH68UkQHgR7870"}]}]}, {"matching_parties": [{"party_attributes": {"aArB1vo0tNMu6oLZ": {}, "nOhrzl1QS1wI3i7m": {}, "FETbJNoUtq6fOft5": {}}, "party_id": "FHaxlJHwcIrHsq00", "party_members": [{"user_id": "tyFYvIw0gAmJ6ZBn"}, {"user_id": "XwD0tOr5SztWGCjh"}, {"user_id": "Gl2dmyytd8UsYNBB"}]}, {"party_attributes": {"qAx3AShdFwlqaDzW": {}, "6I8r29m1qYdFZnqL": {}, "1pyygmRsmDSQ9cSW": {}}, "party_id": "PVb5zCjAALOqhlcj", "party_members": [{"user_id": "ob5Z71VqownPc1fW"}, {"user_id": "iWVvGYO1owRLcvrT"}, {"user_id": "Eak9Re2tAN1xtQVg"}]}, {"party_attributes": {"71HtcMjRANUAdQ6t": {}, "QxE6azWHKGt24yjQ": {}, "aZMQmsNMVm3WADCX": {}}, "party_id": "hp8mNJlFpaYlo6LK", "party_members": [{"user_id": "llZhJDDzh3tlmTbQ"}, {"user_id": "doWgoPnXHFBAud9y"}, {"user_id": "Qa5lGrOC84hLIDy3"}]}]}], "namespace": "7u0IexAFwqcqi70O", "notification_payload": {}, "pod_name": "6mfBwIdQAUrXK1bF", "region": "zZaWNcpFDaVvgwUS", "session_id": "9vaLe5xkohyctn2O"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateSession' test.out

#- 83 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"game_mode": "CHyVtxGRJ6TzmTcI", "matching_allies": [{"matching_parties": [{"party_attributes": {"wWZp7dxkP95zSeEw": {}, "Z7rPsgMeV14PoznD": {}, "RcH9jcyEgzuXmP1Y": {}}, "party_id": "pnQam5FrH9CyHqyT", "party_members": [{"user_id": "xaawpee1ptVDUZMk"}, {"user_id": "tEaZi7L8nzLnQJ9r"}, {"user_id": "31yZyyoD5E9B332s"}]}, {"party_attributes": {"ml3vPAsbHtFkbs7v": {}, "84dxXdR4CBOHrd1E": {}, "Dnaa6nE8nhTHzZrr": {}}, "party_id": "ncN2cgFzFKAerSQ1", "party_members": [{"user_id": "a3vn3Hs30fbhTPYe"}, {"user_id": "Mpwr03Ga3cUEOBlG"}, {"user_id": "VSJhFQbUGW6asayO"}]}, {"party_attributes": {"aV4mz4894gmDZcid": {}, "jjrK05QTFRI1alN9": {}, "UMNfzSbbDiU9qHX9": {}}, "party_id": "fBVvLKeApRlg07WY", "party_members": [{"user_id": "nl3lRRL6vdAnpicn"}, {"user_id": "6UMiV1MKZlEgvXAe"}, {"user_id": "kCEc07UAeXNwYCIn"}]}]}, {"matching_parties": [{"party_attributes": {"Ov3mJ2u8u2rZMBU2": {}, "PXUMvGJjTL9Ccng4": {}, "qWhvRRuX4ToNEqal": {}}, "party_id": "Db7AYwArCm3UyqrO", "party_members": [{"user_id": "AYQyFYOXpHd2CIw7"}, {"user_id": "jTpK6gIVXgpI641m"}, {"user_id": "raXRipbaDaSSMOjZ"}]}, {"party_attributes": {"cvdGZHTulKXSlq9l": {}, "p4dD76lSVDV1nLzP": {}, "criRgUfS38vTePpT": {}}, "party_id": "VFn5cbE4URsh59UE", "party_members": [{"user_id": "zK109BR9PCg28XWy"}, {"user_id": "dc9PDlYDeFo9WrTE"}, {"user_id": "GsIVf5vYj9C7ju6W"}]}, {"party_attributes": {"yILn2f0NRQWth7lt": {}, "R2q6YlT2h7os8Uno": {}, "bdUYsdGnnmjCI5tv": {}}, "party_id": "4nAieoYlWFQnM9j1", "party_members": [{"user_id": "R6qxOV4LjkJOVlgz"}, {"user_id": "pIN2w9ALbDmVYbc7"}, {"user_id": "E3FpHIm2HKRygDtg"}]}]}, {"matching_parties": [{"party_attributes": {"MEFSxIi4glSkSkAN": {}, "FIqgn9MFkwo6os7X": {}, "vnggYQo4gtqUFWfh": {}}, "party_id": "hor23dQNFmXshFaS", "party_members": [{"user_id": "0gShUumTzW12gEgf"}, {"user_id": "dvucMkH6BqwueSvh"}, {"user_id": "5LKZpaTqP2mhPqlf"}]}, {"party_attributes": {"Q2wyC5WZNsOpfniv": {}, "6vJrcClFnXbluQVm": {}, "imsREARO6FNjs6Oj": {}}, "party_id": "lMRRVjJB4OEnNXUV", "party_members": [{"user_id": "NL2AJVYCiSjf2lnI"}, {"user_id": "uDf2b3q8kdlJEBR7"}, {"user_id": "KObtdztyR5jXCMQ6"}]}, {"party_attributes": {"ATBZ3AhezGYbrYkx": {}, "WGXZWpMJK0Bn4rEk": {}, "SjE47GyEneWPMGB8": {}}, "party_id": "Y4XiftVxIfahNqjo", "party_members": [{"user_id": "UK5EjqTud22JQ0Sx"}, {"user_id": "y7ZQXDqcxVLDI8nn"}, {"user_id": "bEwhr9UufTUkx3FK"}]}]}], "namespace": "eYHhglSyIjbdhU9b", "notification_payload": {}, "session_id": "bFw2wUHI7lOY0bMa"}' \
    > test.out 2>&1
eval_tap $? 83 'ClaimServer' test.out

#- 84 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'HgDGRtFenObryl1D' \
    > test.out 2>&1
eval_tap $? 84 'GetSession' test.out

#- 85 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'KnkfNqPoTSCRSCc3' \
    > test.out 2>&1
eval_tap $? 85 'CancelSession' test.out

#- 86 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 86 'GetDefaultProvider' test.out

#- 87 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 87 'ListProviders' test.out

#- 88 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region '8ciM4xWHusHikQ8H' \
    > test.out 2>&1
eval_tap $? 88 'ListProvidersByRegion' test.out

#- 89 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 89 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE