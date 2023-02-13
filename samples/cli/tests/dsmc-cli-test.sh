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
    --body '{"artifactPath": "grud5WOH", "image": "CNrr3QDB", "namespace": "z32pGFyA", "persistent": false, "version": "pN6QfC7K"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "KI53sTtt", "dockerPath": "ToyDgUuQ", "image": "C39gRhxS", "imageSize": 47, "namespace": "VwFKz2s9", "persistent": false, "version": "jnAvASRh"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "XchYcYtd", "dockerPath": "es19zhNX", "image": "dfMh9KQ8", "imageSize": 93, "namespace": "boCZzZxb", "patchVersion": "wJI6C00o", "persistent": true, "version": "AXOQeI8b"}' \
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
    --body '{"claim_timeout": 91, "creation_timeout": 71, "default_version": "WbueNVGK", "port": 16, "ports": {"vylO1Tnd": 94, "vMdNnyGr": 88, "6TxCkTl9": 49}, "protocol": "rjz9OgMO", "providers": ["LAjZ6Sq0", "cD9sUYtI", "BXylvTvS"], "session_timeout": 96, "unreachable_timeout": 44}' \
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
    --body '{"claim_timeout": 31, "creation_timeout": 97, "default_version": "pa2XhuGY", "port": 74, "protocol": "bDtCXVhz", "providers": ["HIfDcuDF", "jzLBA4Hj", "8MmgYtSt"], "session_timeout": 72, "unreachable_timeout": 89}' \
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
    --name 'tGRRAlmt' \
    --count '59' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'qB6EXeQK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'IW1hgLFD' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 85, "buffer_percent": 3, "configuration": "tvhw0Bv9", "enable_region_overrides": true, "game_version": "KiOw5RDw", "max_count": 22, "min_count": 15, "overrides": {"4Rom37Dm": {"buffer_count": 81, "buffer_percent": 29, "configuration": "kNQSWdtr", "enable_region_overrides": false, "game_version": "CQNLSSEV", "max_count": 50, "min_count": 82, "name": "NIy5iGJf", "region_overrides": {"gGmgzove": {"buffer_count": 64, "buffer_percent": 29, "max_count": 48, "min_count": 40, "name": "HuODtAts", "unlimited": false, "use_buffer_percent": false}, "jD0evtXU": {"buffer_count": 68, "buffer_percent": 17, "max_count": 60, "min_count": 44, "name": "hyRMaO1V", "unlimited": false, "use_buffer_percent": false}, "7vdhLMlm": {"buffer_count": 46, "buffer_percent": 10, "max_count": 85, "min_count": 53, "name": "NhTJ6xzi", "unlimited": false, "use_buffer_percent": false}}, "regions": ["mJCR9a1H", "VYSWxhuT", "dvtKGAlu"], "session_timeout": 67, "unlimited": true, "use_buffer_percent": true}, "3XoctwoF": {"buffer_count": 30, "buffer_percent": 91, "configuration": "LcLQFzWq", "enable_region_overrides": false, "game_version": "yt1kySPA", "max_count": 34, "min_count": 7, "name": "vkLLpzhU", "region_overrides": {"dYWW64I0": {"buffer_count": 70, "buffer_percent": 68, "max_count": 30, "min_count": 0, "name": "8y7I6iYv", "unlimited": false, "use_buffer_percent": false}, "0yG1ZIb6": {"buffer_count": 60, "buffer_percent": 6, "max_count": 17, "min_count": 51, "name": "cO2VkuXv", "unlimited": true, "use_buffer_percent": true}, "YVLIjjEy": {"buffer_count": 7, "buffer_percent": 50, "max_count": 89, "min_count": 57, "name": "vlpwiF7k", "unlimited": true, "use_buffer_percent": true}}, "regions": ["eBWcxFTY", "L5rNwZa8", "Jrq9xAl4"], "session_timeout": 93, "unlimited": false, "use_buffer_percent": false}, "3IL2BrCS": {"buffer_count": 73, "buffer_percent": 54, "configuration": "EfMreaUa", "enable_region_overrides": false, "game_version": "XE2joL0o", "max_count": 43, "min_count": 67, "name": "aq346TrA", "region_overrides": {"s518PPCL": {"buffer_count": 53, "buffer_percent": 5, "max_count": 13, "min_count": 87, "name": "V5Tp1HeP", "unlimited": false, "use_buffer_percent": false}, "sFo7XLci": {"buffer_count": 69, "buffer_percent": 10, "max_count": 20, "min_count": 36, "name": "AwQhWGIS", "unlimited": false, "use_buffer_percent": false}, "10sApAHD": {"buffer_count": 59, "buffer_percent": 21, "max_count": 88, "min_count": 90, "name": "TiXLmX3V", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Gtj695im", "hxoQFyyE", "J11qQTOm"], "session_timeout": 82, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"RmDKiVP9": {"buffer_count": 12, "buffer_percent": 82, "max_count": 87, "min_count": 73, "name": "cDPZHPbZ", "unlimited": false, "use_buffer_percent": true}, "9qDEzOeq": {"buffer_count": 59, "buffer_percent": 22, "max_count": 90, "min_count": 14, "name": "nEy7dokh", "unlimited": true, "use_buffer_percent": true}, "bO99H3Em": {"buffer_count": 29, "buffer_percent": 23, "max_count": 24, "min_count": 96, "name": "7UYyKMk6", "unlimited": false, "use_buffer_percent": true}}, "regions": ["MYZVJxFL", "e95cKdtS", "mf0Kadff"], "session_timeout": 17, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment '6d0no06O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'rQ1DqqSF' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 36, "buffer_percent": 32, "configuration": "5JPjeijg", "enable_region_overrides": true, "game_version": "xIC8fszP", "max_count": 28, "min_count": 22, "regions": ["tCNVP6LG", "hYoxTjLa", "2Qo6UPf3"], "session_timeout": 65, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'Gjhr54nT' \
    --namespace $AB_NAMESPACE \
    --region 'BnaHuumP' \
    --body '{"buffer_count": 72, "buffer_percent": 82, "max_count": 29, "min_count": 40, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'ntkQPUt0' \
    --namespace $AB_NAMESPACE \
    --region 'i48n3vXv' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment '3eVNsmJU' \
    --namespace $AB_NAMESPACE \
    --region 'ASLpzHK7' \
    --body '{"buffer_count": 44, "buffer_percent": 81, "max_count": 67, "min_count": 41, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'fmZBmfXI' \
    --namespace $AB_NAMESPACE \
    --version 'Q25bLSfk' \
    --body '{"buffer_count": 32, "buffer_percent": 47, "configuration": "P8ELsPXr", "enable_region_overrides": true, "game_version": "zKnr9i2n", "max_count": 26, "min_count": 93, "region_overrides": {"H23ww5mV": {"buffer_count": 30, "buffer_percent": 95, "max_count": 96, "min_count": 23, "name": "Vi0o2YQa", "unlimited": true, "use_buffer_percent": false}, "skReucjz": {"buffer_count": 35, "buffer_percent": 51, "max_count": 56, "min_count": 15, "name": "TmKZTGpb", "unlimited": false, "use_buffer_percent": false}, "2hsq7Ayf": {"buffer_count": 14, "buffer_percent": 93, "max_count": 90, "min_count": 14, "name": "H1slVon2", "unlimited": true, "use_buffer_percent": true}}, "regions": ["eihaYUfG", "qyWjwBUe", "dlbeeywd"], "session_timeout": 26, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'itYEDnMt' \
    --namespace $AB_NAMESPACE \
    --version 'ujGF569n' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'ijt6rcx1' \
    --namespace $AB_NAMESPACE \
    --version 'HBoPxcS2' \
    --body '{"buffer_count": 48, "buffer_percent": 57, "configuration": "lBpyPe0x", "enable_region_overrides": true, "game_version": "foGyHFJx", "max_count": 49, "min_count": 51, "regions": ["66fUD8GA", "QPyLWm0J", "yErGGD8A"], "session_timeout": 14, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'QCIc28mH' \
    --namespace $AB_NAMESPACE \
    --region 'NmBwAsa1' \
    --version 'DUBj5srv' \
    --body '{"buffer_count": 30, "buffer_percent": 20, "max_count": 7, "min_count": 0, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'u2o8GcBi' \
    --namespace $AB_NAMESPACE \
    --region 'mcJCkQAH' \
    --version 'HAPcOkmC' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'F0wg3xtF' \
    --namespace $AB_NAMESPACE \
    --region 'o0QFh9xo' \
    --version 'VzWfYmo8' \
    --body '{"buffer_count": 81, "buffer_percent": 38, "max_count": 16, "min_count": 64, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '8' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'Qcmw1FAZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'z9i1ZBRR' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 74, "mem_limit": 49, "params": "tpmtVj6G"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name '23yF7i0o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'GdpG4daE' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 54, "mem_limit": 12, "name": "1MOj6BYC", "params": "2QrUEePb"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'dJgRML7F' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 18}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'Xt3KReGZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name '5ct9s9k6' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "y04uMe8R", "port": 82}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'hPVxYmpp' \
    --sortBy 'updatedAt' \
    --sortDirection 'desc' \
    --count '65' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'WJGRwOuh' \
    --version 'PDKn5TiX' \
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
    --imageURI 'ApPcAn8Y' \
    --version 'RZaiHFFr' \
    --versionPatch 'JsKf2Zw2' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version '8MkFGsfU' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'B3xl4sET' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'uewVwZzA' \
    --versionPatch 'IDTHTW47' \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'TdNv6QLA' \
    --count '46' \
    --offset '51' \
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
    --region 'onGCi4Qc' \
    > test.out 2>&1
eval_tap $? 46 'CountServerDetailed' test.out

#- 47 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'ListLocalServer' test.out

#- 48 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'IUmEx8vh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'mzr1Z42K' \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName '1McuVgo4' \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 't88PK9mu' \
    --withServer 'false' \
    --count '22' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'taXTe82F' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'huwewJ3f' \
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
    --version 'gC4PlhL8' \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Vsxb6Uw6"}' \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "kBBCytos", "ip": "0bVsG3mU", "name": "1H2k8vTn", "port": 54}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "XpIdwUzm", "pod_name": "ljo9HUjg"}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "VErsY6gZ"}' \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'ZUyo8GwO' \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "VfJi89MM", "configuration": "w8o21gpK", "deployment": "wFBSTcFM", "game_mode": "Ak6WHtBj", "matching_allies": [{"matching_parties": [{"party_attributes": {"hYvW8Awn": {}, "j5XTmWrz": {}, "TOd2j3Ha": {}}, "party_id": "D1Y6QpGZ", "party_members": [{"user_id": "AJ4GEUNE"}, {"user_id": "FFvKAFMz"}, {"user_id": "bDQ7rGjU"}]}, {"party_attributes": {"VLrqkZpu": {}, "pFprWDT0": {}, "6NMBf78W": {}}, "party_id": "ap5f1AvR", "party_members": [{"user_id": "Yhm8sBmM"}, {"user_id": "NGd458Aw"}, {"user_id": "xWfdW1br"}]}, {"party_attributes": {"IVYtU7Pt": {}, "nXMSzsI7": {}, "zUbsroPX": {}}, "party_id": "dJJSDFNn", "party_members": [{"user_id": "R16SSkfG"}, {"user_id": "iQ3cB47J"}, {"user_id": "H3JEMSrv"}]}]}, {"matching_parties": [{"party_attributes": {"BEzfazBY": {}, "L0OMICQ1": {}, "TGplrotl": {}}, "party_id": "ic5rybmy", "party_members": [{"user_id": "jivmQphi"}, {"user_id": "EmUzDIm8"}, {"user_id": "WdHQU0al"}]}, {"party_attributes": {"d3DPLmiE": {}, "6uuO1ZwV": {}, "EA38NwSo": {}}, "party_id": "t8fOnUxK", "party_members": [{"user_id": "7OOWMzxD"}, {"user_id": "umN5kzr9"}, {"user_id": "89yzt1Kc"}]}, {"party_attributes": {"cRYTQLgA": {}, "fLV18xro": {}, "QIYnpgTJ": {}}, "party_id": "zIkdU5Xc", "party_members": [{"user_id": "V2iV1Z8l"}, {"user_id": "ZFBEZQkz"}, {"user_id": "bojPfM1d"}]}]}, {"matching_parties": [{"party_attributes": {"FTAWefkl": {}, "PuDQB5h2": {}, "8dbOEgBZ": {}}, "party_id": "N7amqVzA", "party_members": [{"user_id": "MTfTC7wu"}, {"user_id": "blASu6Gj"}, {"user_id": "DU22Btdw"}]}, {"party_attributes": {"M5qx74Ew": {}, "sLz06cId": {}, "qONGwJPq": {}}, "party_id": "nF3vXbNC", "party_members": [{"user_id": "OHghsm66"}, {"user_id": "nt5hZcvM"}, {"user_id": "uS7c0Wyi"}]}, {"party_attributes": {"QLJ14ttF": {}, "nBTgC4Un": {}, "4mG1vZGW": {}}, "party_id": "Dyp1aZEH", "party_members": [{"user_id": "ZcIzZY4t"}, {"user_id": "d5jLsyg1"}, {"user_id": "VpqKYZB7"}]}]}], "namespace": "s73Bpytn", "notification_payload": {}, "pod_name": "FWQL6bY6", "region": "57fG41Dq", "session_id": "nulvvJ1w"}' \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "w8J7HtKo"}' \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'MYYZlIa8' \
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
    --region 'EXRHRRxl' \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE