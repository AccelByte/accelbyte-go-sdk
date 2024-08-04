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
    --body '{"artifactPath": "FU4TYtgI90DrgtIP", "coreDumpEnabled": true, "image": "JJjyn9TRQlyrlw6r", "imageReplicationsMap": {"pbMrCFbiNf8sjRN6": {"failure_code": "ctHGdb5mlV5VbG8l", "region": "ivDWikcDNzuyJYRR", "status": "HqkMcnNTITlhBDX6", "uri": "kDtcIStRbwsFCWQq"}, "zVE0jlLvUIdOYi70": {"failure_code": "8XXX9u1p7lRz7PBl", "region": "i7lbQqfF72jp6ACS", "status": "lWYXdLsNpLp793TX", "uri": "i0ASSlMOLp06lcLp"}, "3by7L7huC5Orm1kI": {"failure_code": "GE4Q0hMhTaSLCXnv", "region": "cdu3YEyKF5xTrvL1", "status": "od3uC1RiXmUzjRs1", "uri": "DXPYEoo1sALMfcpR"}}, "namespace": "4mE20EU880IKSlgm", "patchVersion": "e1wiZ1aXLcdJJgEe", "persistent": true, "ulimitFileSize": 27, "version": "9uKrLQpyv15r43b1"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "XP0JOsXZq95O2rrK", "coreDumpEnabled": true, "dockerPath": "vG3OHzSlwZ9mNoUI", "image": "bOJtJWLWCyZOzbcN", "imageSize": 43, "namespace": "xLAkg6iXJhWSaHzA", "persistent": true, "ulimitFileSize": 97, "version": "EHOBM4WAA3X7uNKb"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "j3tcFqu5STUwIcbu", "coreDumpEnabled": false, "dockerPath": "MVD7ojrl6CUqJ2le", "image": "8sZP55aCDaIg2eih", "imageSize": 80, "namespace": "gRcmrZVdjDW7A2SG", "patchVersion": "Dwq2luDwybhyv4mx", "persistent": true, "ulimitFileSize": 68, "uploaderFlag": "05HAhlYhoPlRb1v6", "version": "lbOpgH3Wd5NXiX9k"}' \
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
    --body '{"auto_deletion": false, "ghost_worker": true, "manual_buffer_override": true, "zombie_worker": true}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateWorkerConfig' test.out

#- 10 CreateWorkerConfig
samples/cli/sample-apps Dsmc createWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": false, "ghost_worker": true, "manual_buffer_override": true, "zombie_worker": false}' \
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
    --body '{"claim_timeout": 70, "creation_timeout": 75, "default_version": "ImyyesLRQ7ZHGVXU", "port": 51, "ports": {"DrWOrFxhmEnC8NGD": 96, "yzm5hQpbJpcrRPo9": 71, "BKD08nm5bs3wnGX2": 65}, "protocol": "u1hIeCftbotG2hoc", "providers": ["Su776qTWxlatN17J", "T8LPoyhpADWvTq2J", "52VtshswLILrc5MK"], "session_timeout": 12, "unreachable_timeout": 45}' \
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
    --body '{"claim_timeout": 7, "creation_timeout": 29, "default_version": "hO7pk4M881LtoAR4", "port": 3, "protocol": "7NR6lPug6MaZbvIB", "providers": ["njOOKLnnBdYdR0h2", "wktw955Zf8TgIPNs", "ARl377kVOqnQXSv4"], "session_timeout": 25, "unreachable_timeout": 30}' \
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
    --name 'aYUp7HPsb3qA5vRT' \
    --count '74' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 16 'GetAllDeployment' test.out

#- 17 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment '5ZUJkXmHLuwFwTxs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetDeployment' test.out

#- 18 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'Bxh87J9APyG2oHeJ' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 85, "buffer_percent": 72, "configuration": "uKi8AuX8cTxNAEva", "enable_region_overrides": false, "extendable_session": false, "game_version": "kKv0SYTYLKSwi61O", "max_count": 95, "min_count": 43, "overrides": {"Ylo4vQgrsScrhktZ": {"buffer_count": 24, "buffer_percent": 74, "configuration": "tYctvHqeYMq5Uara", "enable_region_overrides": true, "extendable_session": true, "game_version": "UHobbz2De5Qy8fBN", "max_count": 74, "min_count": 100, "name": "Ks08MmaLTbNaZ1cv", "region_overrides": {"5H1nEBbwceV9kfCx": {"buffer_count": 2, "buffer_percent": 52, "max_count": 19, "min_count": 2, "name": "GvNeDLucOgRj0QEk", "unlimited": true, "use_buffer_percent": false}, "I2ldjQtNvZfHXkXZ": {"buffer_count": 97, "buffer_percent": 6, "max_count": 79, "min_count": 77, "name": "h2nGiwLJWSFZXxE1", "unlimited": false, "use_buffer_percent": false}, "hvWrIXOJxxcagwdg": {"buffer_count": 48, "buffer_percent": 61, "max_count": 29, "min_count": 5, "name": "rHPRvU8uhAY4GpHY", "unlimited": true, "use_buffer_percent": true}}, "regions": ["L6DmAEdfs1AoWY3S", "v4ctZeIReW9RJeou", "EYhrwj5szUHYAkMY"], "session_timeout": 16, "unlimited": false, "use_buffer_percent": false}, "S71bukuOjJppbeHX": {"buffer_count": 94, "buffer_percent": 0, "configuration": "9ZOPGDO94ImiHWnD", "enable_region_overrides": false, "extendable_session": false, "game_version": "sAHBkM4nr0dMpXlM", "max_count": 73, "min_count": 86, "name": "vSUh3kZtjgL37CI1", "region_overrides": {"fuqlq3ACtIkkSnFH": {"buffer_count": 74, "buffer_percent": 51, "max_count": 95, "min_count": 57, "name": "G0gnfempOKEDKgWw", "unlimited": false, "use_buffer_percent": true}, "2MChXXUAslvPmexE": {"buffer_count": 89, "buffer_percent": 63, "max_count": 29, "min_count": 83, "name": "sxP96TB2UsjIs1tS", "unlimited": false, "use_buffer_percent": true}, "rLYtjXWMWGTgupbD": {"buffer_count": 89, "buffer_percent": 85, "max_count": 74, "min_count": 48, "name": "ylNuVLCdprNddH80", "unlimited": true, "use_buffer_percent": true}}, "regions": ["tXNAH2cihGIAvn4l", "gF9dWOsT91amwmBQ", "pr7QL1ja76OSxEVg"], "session_timeout": 22, "unlimited": true, "use_buffer_percent": true}, "pgy0hE9J82Qasit4": {"buffer_count": 53, "buffer_percent": 50, "configuration": "cNIfxQ7k74V0fI0L", "enable_region_overrides": false, "extendable_session": false, "game_version": "wTYnYfaELPa39fqj", "max_count": 98, "min_count": 52, "name": "LdCBnR9d0GSBcd2V", "region_overrides": {"f65vh0CCMyEd6MHH": {"buffer_count": 45, "buffer_percent": 50, "max_count": 96, "min_count": 29, "name": "yod63scKcwa486S8", "unlimited": false, "use_buffer_percent": true}, "vZoNiJwZi9ptRk47": {"buffer_count": 46, "buffer_percent": 39, "max_count": 30, "min_count": 89, "name": "NFcUYFh7esNhNkZz", "unlimited": true, "use_buffer_percent": false}, "Rx9U1j9v9yQm5PCw": {"buffer_count": 19, "buffer_percent": 86, "max_count": 21, "min_count": 15, "name": "4tPUaAk6odxL5V6A", "unlimited": true, "use_buffer_percent": false}}, "regions": ["KZ4ELxODjpcF60YR", "k443Y4JU9dRVjA6j", "JmGJYEW7UTMD9eA2"], "session_timeout": 93, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"Yy4N1AttTQ9cL5Nw": {"buffer_count": 53, "buffer_percent": 36, "max_count": 18, "min_count": 92, "name": "gwHFq5xBH5ccn8th", "unlimited": false, "use_buffer_percent": false}, "o5FAgCT0SMFyTMUX": {"buffer_count": 7, "buffer_percent": 29, "max_count": 42, "min_count": 25, "name": "h4lH0lgwYFUpLAdV", "unlimited": false, "use_buffer_percent": false}, "VfnlHdaVjZXS60vr": {"buffer_count": 25, "buffer_percent": 9, "max_count": 53, "min_count": 10, "name": "OaDwBOy0hAnaGuiF", "unlimited": true, "use_buffer_percent": false}}, "regions": ["oQd81Py15BAhxrl9", "laMVRFlCdG3aKnq5", "EDpOubuzVLQYIg2S"], "session_timeout": 21, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'CreateDeployment' test.out

#- 19 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'S5jXYTzZ40brgG31' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteDeployment' test.out

#- 20 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment '73YVo8uwaPNkUWUk' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 96, "buffer_percent": 10, "configuration": "1yaWkotkoCsYNTga", "enable_region_overrides": true, "extendable_session": false, "game_version": "rp6KqyKVR9hw4jcY", "max_count": 66, "min_count": 95, "regions": ["069FSPEQSUBfNtXP", "9FVCHqIrIByzykFd", "y6TNNHA4UmFfFc56"], "session_timeout": 6, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateDeployment' test.out

#- 21 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'byNsYwG9iNV7p6A0' \
    --namespace $AB_NAMESPACE \
    --region 's7lrKyqZRxZRxfyA' \
    --body '{"buffer_count": 41, "buffer_percent": 32, "max_count": 34, "min_count": 56, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'CreateRootRegionOverride' test.out

#- 22 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'vVKviIXbj4iywUyz' \
    --namespace $AB_NAMESPACE \
    --region 'kBgRtBkKZJSnNzIm' \
    > test.out 2>&1
eval_tap $? 22 'DeleteRootRegionOverride' test.out

#- 23 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'Ubm3WXp7biYYbcTi' \
    --namespace $AB_NAMESPACE \
    --region 'bqUqxg3dLTKMAK37' \
    --body '{"buffer_count": 75, "buffer_percent": 71, "max_count": 81, "min_count": 1, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateRootRegionOverride' test.out

#- 24 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'OR6Wqu3ry8khQxmF' \
    --namespace $AB_NAMESPACE \
    --version 'RmHlnedw2huSb7yo' \
    --body '{"buffer_count": 47, "buffer_percent": 46, "configuration": "czGvsHYwtNgXTItZ", "enable_region_overrides": false, "extendable_session": false, "game_version": "sDiK1RFdyTzUR2dy", "max_count": 68, "min_count": 32, "region_overrides": {"GHOwD2wxzZucrUDB": {"buffer_count": 90, "buffer_percent": 96, "max_count": 96, "min_count": 20, "name": "d959vKVgTZtMCEoO", "unlimited": true, "use_buffer_percent": true}, "vKSVBDbXSfCk8yZC": {"buffer_count": 54, "buffer_percent": 15, "max_count": 0, "min_count": 24, "name": "vo5hO4cUQVbGfSLw", "unlimited": true, "use_buffer_percent": false}, "irVj14wU7F6ybUZF": {"buffer_count": 58, "buffer_percent": 15, "max_count": 36, "min_count": 20, "name": "fw47EAkFJ2oxFS6r", "unlimited": false, "use_buffer_percent": true}}, "regions": ["Laa9P22UhcUvgbRT", "XdKJ3CfbDClTb8Gm", "d3ADq3CgiCtzzeJN"], "session_timeout": 44, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'CreateDeploymentOverride' test.out

#- 25 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'pymdattQrkwnminu' \
    --namespace $AB_NAMESPACE \
    --version '9a8QjT3G5VdccrWi' \
    > test.out 2>&1
eval_tap $? 25 'DeleteDeploymentOverride' test.out

#- 26 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'Cubr0f5gzYKFKgBs' \
    --namespace $AB_NAMESPACE \
    --version 'ErnTz42BoqGkonZS' \
    --body '{"buffer_count": 22, "buffer_percent": 6, "configuration": "yHGs2K3bAZZ8y2AP", "enable_region_overrides": false, "game_version": "iwZE7Wwksu28yLDO", "max_count": 87, "min_count": 49, "regions": ["E3MtFfRlkRffXnQp", "O0V2rfplw8ziI3nA", "GB5qqgpIYbyrdUO1"], "session_timeout": 45, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateDeploymentOverride' test.out

#- 27 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment '1T72zXOcSU0QarJL' \
    --namespace $AB_NAMESPACE \
    --region 'QUrZSeLtQz4Eu8K7' \
    --version 'iRUQI8Lslw7AR0dl' \
    --body '{"buffer_count": 70, "buffer_percent": 15, "max_count": 82, "min_count": 32, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'CreateOverrideRegionOverride' test.out

#- 28 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'FEgqGM2HGI2K0Dcp' \
    --namespace $AB_NAMESPACE \
    --region 'UmzYiZ70QykMO6QX' \
    --version '1A1ZedfAjFboMtDL' \
    > test.out 2>&1
eval_tap $? 28 'DeleteOverrideRegionOverride' test.out

#- 29 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '2PKpiVnRLmBePprD' \
    --namespace $AB_NAMESPACE \
    --region 'LKCKl0QI8rxwGVym' \
    --version 'OYlYRThQa0Zs0sBn' \
    --body '{"buffer_count": 9, "buffer_percent": 84, "max_count": 95, "min_count": 14, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateOverrideRegionOverride' test.out

#- 30 DeleteCreatingServerCountQueue
samples/cli/sample-apps Dsmc deleteCreatingServerCountQueue \
    --deployment '46qN8MGtmdVnU3rT' \
    --namespace $AB_NAMESPACE \
    --version 'hjpGBg3MkRwsRXJ3' \
    > test.out 2>&1
eval_tap $? 30 'DeleteCreatingServerCountQueue' test.out

#- 31 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '81' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 31 'GetAllPodConfig' test.out

#- 32 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'wQ8ddNz4QBfczTEw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPodConfig' test.out

#- 33 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '07LJmPsuAUOMO3VX' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 98, "mem_limit": 32, "params": "HapRz6diPU4mYkaK"}' \
    > test.out 2>&1
eval_tap $? 33 'CreatePodConfig' test.out

#- 34 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'bwmgDeCwrUiMw4w5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePodConfig' test.out

#- 35 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'H2PiEPvXKNjuyGyy' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 67, "mem_limit": 34, "name": "iBaEAxzuuxi11hYE", "params": "K11Jym5oNtn7DdfI"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePodConfig' test.out

#- 36 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'vGOhm9k238DJEaCd' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 84}' \
    > test.out 2>&1
eval_tap $? 36 'AddPort' test.out

#- 37 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '8Q4H5ulEsYpbxBt7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'DeletePort' test.out

#- 38 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name '3JeN0xoCXdL2FvvU' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "VXeO7PrpihGTZZYq", "port": 73}' \
    > test.out 2>&1
eval_tap $? 38 'UpdatePort' test.out

#- 39 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q '1lMGYiL9F2en5cjx' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    --count '75' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 39 'ListImages' test.out

#- 40 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'SzzKk0Bu6IMwJd5r' \
    --version '3d121SUebghSgv6W' \
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
    --imageURI 'U9mz0qLzT9Mdup6b' \
    --version 'u3jZFMuizyiymTyC' \
    --versionPatch 'Jz737FflnN3kEUui' \
    > test.out 2>&1
eval_tap $? 42 'DeleteImagePatch' test.out

#- 43 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'nSnNf8FGtYOrVvsw' \
    > test.out 2>&1
eval_tap $? 43 'GetImageDetail' test.out

#- 44 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'N1mkQtAYQV475u6s' \
    > test.out 2>&1
eval_tap $? 44 'GetImagePatches' test.out

#- 45 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'jpMPYKwVEKkHdcgq' \
    --versionPatch 'qREQoCIQdipQHKG6' \
    > test.out 2>&1
eval_tap $? 45 'GetImagePatchDetail' test.out

#- 46 AddBuffer
samples/cli/sample-apps Dsmc addBuffer \
    --namespace $AB_NAMESPACE \
    --body '{"AllocCount": 32, "DeploymentName": "ZxvE4oPsuvFM9UmL", "JobCount": 39, "JobPriority": 74, "OverrideVersion": "Cqj4Ulgp33oBYONx", "Region": "cBORl9GfkErz7yda"}' \
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
    --region 'exspngby2yrxERJ3' \
    --count '92' \
    --offset '61' \
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
    --region 'GNXrJRkTkUIb4ST0' \
    > test.out 2>&1
eval_tap $? 50 'CountServerDetailed' test.out

#- 51 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'ListLocalServer' test.out

#- 52 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'Ryi7iiWlHRfrqkhX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteLocalServer' test.out

#- 53 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName '4XwncbY91Y1Js6NW' \
    > test.out 2>&1
eval_tap $? 53 'GetServer' test.out

#- 54 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName '6QNmFUDf3jCUkMN5' \
    > test.out 2>&1
eval_tap $? 54 'DeleteServer' test.out

#- 55 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'WxE3VmePElpCOvDO' \
    --withServer 'false' \
    --count '26' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 55 'ListSession' test.out

#- 56 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'Vhk3aXWDJrvaLjmn' \
    > test.out 2>&1
eval_tap $? 56 'CountSession' test.out

#- 57 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'I7jG6nBmIFm5zJRu' \
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
    --body '{"JobCount": 58, "Region": "kPJq8kTflMhppy2K", "TimeoutSecond": 67, "ZombieCount": 25}' \
    > test.out 2>&1
eval_tap $? 59 'RunZombieCleanerRequestHandler' test.out

#- 60 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "ZFpc9tZ0CGog53fu", "repository": "40w6My1VsBAdiH7Q"}' \
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
    --name 'kxHV6Hw8CvAM82Ss' \
    --count '1' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 63 'GetAllDeploymentClient' test.out

#- 64 GetDeploymentClient
samples/cli/sample-apps Dsmc getDeploymentClient \
    --deployment 'rWUMscHzqWCZo9Gc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetDeploymentClient' test.out

#- 65 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment '5JSy8Uz2v74ooHF3' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 65, "buffer_percent": 20, "configuration": "LaEpWUIICBQTOOUY", "enable_region_overrides": true, "extendable_session": false, "game_version": "xFtxBFqGlqUFaiR2", "max_count": 36, "min_count": 58, "overrides": {"8RLGZwsL3q7eG43d": {"buffer_count": 29, "buffer_percent": 21, "configuration": "QSdG9zlMHCPapebq", "enable_region_overrides": false, "extendable_session": false, "game_version": "nRQJUvxseputL4Iw", "max_count": 32, "min_count": 51, "name": "HDH8ByW2bDePco5d", "region_overrides": {"qlKi76m5NOXJksKS": {"buffer_count": 90, "buffer_percent": 14, "max_count": 66, "min_count": 58, "name": "IWwqOlX32sYtoEgS", "unlimited": false, "use_buffer_percent": true}, "H4cB6ycrlUKrO9eJ": {"buffer_count": 33, "buffer_percent": 72, "max_count": 96, "min_count": 8, "name": "eK5WFC8CCwkddpwx", "unlimited": true, "use_buffer_percent": true}, "Ypr3wMvQ7Cn9dinr": {"buffer_count": 76, "buffer_percent": 81, "max_count": 60, "min_count": 69, "name": "vBmrlrpf4ESFjPDx", "unlimited": false, "use_buffer_percent": false}}, "regions": ["ryj9JOGNRJ8t1RjQ", "iZWsEeVxkq4Y5DGI", "yYqmqy4eX01o3cdT"], "session_timeout": 36, "unlimited": false, "use_buffer_percent": false}, "4KkWRHFxpW3PtF1Y": {"buffer_count": 29, "buffer_percent": 1, "configuration": "mmdhRP0HxVapPybS", "enable_region_overrides": false, "extendable_session": false, "game_version": "5SRPUictYVvrQu5X", "max_count": 50, "min_count": 46, "name": "h6noDGCLX93kIrsz", "region_overrides": {"jMEyiqs8P1Jo1TuQ": {"buffer_count": 50, "buffer_percent": 99, "max_count": 15, "min_count": 73, "name": "UT5vP3eyycdPPL6n", "unlimited": true, "use_buffer_percent": false}, "FklIKBAQq3lzHjjl": {"buffer_count": 50, "buffer_percent": 100, "max_count": 31, "min_count": 76, "name": "iCC2G5qLRZLEVmJM", "unlimited": true, "use_buffer_percent": false}, "P0diJ81ZRDLLKbIj": {"buffer_count": 60, "buffer_percent": 83, "max_count": 99, "min_count": 98, "name": "anjKJTxfMYiOcCsV", "unlimited": true, "use_buffer_percent": true}}, "regions": ["yatQWB2orbbWTCge", "7opZM6rvW0HWGZjX", "Fi9Kw6v1fOdPvakq"], "session_timeout": 10, "unlimited": true, "use_buffer_percent": false}, "oEMB0BN4a2K4OgTL": {"buffer_count": 5, "buffer_percent": 91, "configuration": "p5NF2nAWTaxjkahG", "enable_region_overrides": true, "extendable_session": true, "game_version": "VhtL3B2aHDbs4GmG", "max_count": 91, "min_count": 21, "name": "HjkxsvxOl0Jh4XJS", "region_overrides": {"0of26icLnZPVLSAq": {"buffer_count": 79, "buffer_percent": 47, "max_count": 100, "min_count": 51, "name": "Lmaq0j21nHjPEavf", "unlimited": false, "use_buffer_percent": false}, "p15AudL3lXlIE2rI": {"buffer_count": 11, "buffer_percent": 93, "max_count": 97, "min_count": 52, "name": "Pp7UxNafCBuNDgW5", "unlimited": true, "use_buffer_percent": false}, "whpAdvy6MLb5zgoz": {"buffer_count": 24, "buffer_percent": 52, "max_count": 55, "min_count": 44, "name": "bsARlhKfxLcdxO64", "unlimited": false, "use_buffer_percent": true}}, "regions": ["1X3Wzyt2S8wQ0AEG", "SbhPRjGdDhhd6ICj", "oJCNkg58Sq1kB6EZ"], "session_timeout": 49, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"XAoV282TKxyv4WRA": {"buffer_count": 73, "buffer_percent": 49, "max_count": 14, "min_count": 46, "name": "KourQXGBWcE7dwht", "unlimited": false, "use_buffer_percent": true}, "H3OajEtVbLmWQrgH": {"buffer_count": 91, "buffer_percent": 88, "max_count": 98, "min_count": 38, "name": "bnhkh2EQCx8kt4bH", "unlimited": true, "use_buffer_percent": false}, "7xMOy7G7KRXbPIFb": {"buffer_count": 86, "buffer_percent": 24, "max_count": 93, "min_count": 24, "name": "CCac7nyTwSBGKp0I", "unlimited": true, "use_buffer_percent": false}}, "regions": ["8HJZwTxVgtxkhPEi", "Zxn4HNnIy6BF4qMi", "GlBWSguylUVqD9ye"], "session_timeout": 47, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 65 'CreateDeploymentClient' test.out

#- 66 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'ysClZ5ctrMms78s7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteDeploymentClient' test.out

#- 67 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '99' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 67 'GetAllPodConfigClient' test.out

#- 68 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name '3JkcpUzao4Gu9dyL' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 19, "mem_limit": 98, "params": "7GLpCXj88fOIsW2D"}' \
    > test.out 2>&1
eval_tap $? 68 'CreatePodConfigClient' test.out

#- 69 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name '7ic7T5PxgJ8tGA5A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePodConfigClient' test.out

#- 70 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '95' \
    --offset '50' \
    --q 'tKkmrsgCVBWCL1W0' \
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
    --version 'JlYZWt3wXYOwqOQR' \
    > test.out 2>&1
eval_tap $? 72 'ImageDetailClient' test.out

#- 73 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'I8VhHknPWYyd0nLL' \
    --count '65' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 73 'ListServerClient' test.out

#- 74 CountServerDetailedClient
samples/cli/sample-apps Dsmc countServerDetailedClient \
    --namespace $AB_NAMESPACE \
    --region '4K2QP6YalNz1Uv6n' \
    > test.out 2>&1
eval_tap $? 74 'CountServerDetailedClient' test.out

#- 75 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "GUG4bVMczCMPU3H9"}' \
    > test.out 2>&1
eval_tap $? 75 'ServerHeartbeat' test.out

#- 76 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "9XYs99MtriOk41iu"}' \
    > test.out 2>&1
eval_tap $? 76 'DeregisterLocalServer' test.out

#- 77 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "rSpBfJB9X328vCJ1", "ip": "GJwo04EvDZBi6uyj", "name": "mrVKkJiHoccTQJtd", "port": 1}' \
    > test.out 2>&1
eval_tap $? 77 'RegisterLocalServer' test.out

#- 78 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "yhWYRKqPiUNRbrZc", "pod_name": "xHBHGOwISw2OzPPu"}' \
    > test.out 2>&1
eval_tap $? 78 'RegisterServer' test.out

#- 79 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "B9IYqEwZ2qOs8P4D"}' \
    > test.out 2>&1
eval_tap $? 79 'ShutdownServer' test.out

#- 80 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'h6maQUdGWury04UY' \
    > test.out 2>&1
eval_tap $? 80 'GetServerSessionTimeout' test.out

#- 81 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName '8EhaUq7SY4zE20O1' \
    > test.out 2>&1
eval_tap $? 81 'GetServerSession' test.out

#- 82 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "E5roTVSZma1V2hPc", "configuration": "ohF6uUs7FDwtuFYO", "deployment": "m25MDi1mWQrBZN2M", "game_mode": "LgxKLgw4ilMG2Anl", "matching_allies": [{"matching_parties": [{"party_attributes": {"RJJfS5gB8z3bkdpA": {}, "snRfoeel8SOORIrO": {}, "6g1ScCaf886LNFbL": {}}, "party_id": "R549PJtfFzvWlLuz", "party_members": [{"user_id": "Sx6JcBYzylraY59a"}, {"user_id": "NPSywp5ZllD0QgnH"}, {"user_id": "zxwCIXdusCvjJD1y"}]}, {"party_attributes": {"tP4bV6VHP01Cm67J": {}, "76SFt5ud8sAjT8JT": {}, "3u5XaOJolBT6uQLw": {}}, "party_id": "pcvYVMyjO3iP23ET", "party_members": [{"user_id": "h9CLLuIlbE0Gom4P"}, {"user_id": "cAVXyAngjWHrOsYr"}, {"user_id": "jl0fYkOJPsn9k52K"}]}, {"party_attributes": {"8pnwemd5xai6suvP": {}, "Ap7CphU46ZtC61fT": {}, "iBhmpjj8dm22N8id": {}}, "party_id": "OfnEQ6BqiiWuRFcw", "party_members": [{"user_id": "rB9Uh3ZdR5VpxNTx"}, {"user_id": "m6gpDb0PruePdaFs"}, {"user_id": "y1mgevu7BxoXCt8M"}]}]}, {"matching_parties": [{"party_attributes": {"NKR5RE2uAJxfJqp0": {}, "968ruZqFsnegoahl": {}, "r5DnlPpJ9AdYw4Fw": {}}, "party_id": "yl4fQUFhsNVf7ifh", "party_members": [{"user_id": "1K5YoqhbWk9KsXm1"}, {"user_id": "pBHfys2eTuoJFoxH"}, {"user_id": "iug9KuuDT0q43F2z"}]}, {"party_attributes": {"sRuGaGrngbkJ4LbZ": {}, "HEbd2IuGzbDrCypT": {}, "xB1YVgTCtsAYWvn8": {}}, "party_id": "P9QDzOqDNR2p5HQw", "party_members": [{"user_id": "4D8OejRHSiE7T3ms"}, {"user_id": "PDytwYpLfUWQOyzU"}, {"user_id": "Sc0G2Z5s6eAViTNw"}]}, {"party_attributes": {"Kef7lE5ILq9IPn1J": {}, "qvLgBgduQgn1Vjw8": {}, "lK0ilO338KKVEu2h": {}}, "party_id": "2uWo5pK8H3HD15yK", "party_members": [{"user_id": "G6oX29l90wJaAbyL"}, {"user_id": "DUFbY24NSpI5wT0s"}, {"user_id": "dMusdX6lk1Mq7z76"}]}]}, {"matching_parties": [{"party_attributes": {"K7YIroCkpGLmKOic": {}, "EGgUTy2kKCnjirGO": {}, "P9LD4RECQrajXPf7": {}}, "party_id": "Jocu5i5V1jAWyuwZ", "party_members": [{"user_id": "cHYj4JgoiVHI6T8F"}, {"user_id": "DsQ9G3GtcBQzmczT"}, {"user_id": "RdeQoXsoP9Dus1U5"}]}, {"party_attributes": {"FgAqqk80k4ldRFN7": {}, "QU7nODFrF1BtMaPb": {}, "6whJhMTxyigJ6mrv": {}}, "party_id": "3eHlUydLKFna6kEd", "party_members": [{"user_id": "ky4GKqxdK0fIe0uc"}, {"user_id": "CNsd0UJdDAicsJbs"}, {"user_id": "i9RwxJYWLlJnK1Il"}]}, {"party_attributes": {"wcmCdCUJ2Popnja9": {}, "7rxzxo5uxrYqdL8y": {}, "cF8BeJxzYwM3tp3x": {}}, "party_id": "UvMPr9C36GTmIqw2", "party_members": [{"user_id": "m5cO8VsNomfut5fa"}, {"user_id": "ulCOp4CnWPnqNryi"}, {"user_id": "xHnRipcSndPGmluA"}]}]}], "namespace": "vPEVihthyQ8AqMcC", "notification_payload": {}, "pod_name": "DjPBKEMCucnSbjXp", "region": "ln78lim3FCWnKvkn", "session_id": "feFExkRQeYvzFVqO"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateSession' test.out

#- 83 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"game_mode": "w4cYmV12n5yOl7Ni", "matching_allies": [{"matching_parties": [{"party_attributes": {"HEb7WNrKwikE83xn": {}, "Fho27sT8JmGN8nX9": {}, "vUJGYQwDk5Xdd2Kd": {}}, "party_id": "MSYkNTrNIWQ5FlZH", "party_members": [{"user_id": "DjmV8DNY2WU850Bc"}, {"user_id": "hHnWrdUQPKaPin5u"}, {"user_id": "mVgE0YtTyDm8GRAO"}]}, {"party_attributes": {"AtTKHc3MBaZo9Nve": {}, "gAucCGqFPmkKbHU5": {}, "tjsq3mHdkpEzSa1T": {}}, "party_id": "0UC7ECVAQleXgH8y", "party_members": [{"user_id": "tJWOBwsXfT8vUsDE"}, {"user_id": "6VL7gdCzRNNLIK9H"}, {"user_id": "AquztlIUxduLcj0S"}]}, {"party_attributes": {"T0EPFP0vYGF1Ldx8": {}, "ki8R53pL17LSpLVO": {}, "6vv0loBf3M9EEVUj": {}}, "party_id": "virKbio38XdK4Yvd", "party_members": [{"user_id": "pTK7KFSkpJiYuKc7"}, {"user_id": "uhc1aq1YrmL4T2hl"}, {"user_id": "nIqYe92EmNNHR6cF"}]}]}, {"matching_parties": [{"party_attributes": {"OrwJEutPDU786v9A": {}, "iig413IcnePHG1T6": {}, "LJpLIUMM30KHAaBV": {}}, "party_id": "MNxG93ZmT6Pb8i9Y", "party_members": [{"user_id": "ekXqY8ncGhno0elA"}, {"user_id": "fd5ZX5Vw7xELs64j"}, {"user_id": "3bq6AxUjaJAPQUtR"}]}, {"party_attributes": {"fOQafhTYX9Sjz3XZ": {}, "scfhrys5FLXX5Hfh": {}, "siU4vVDL83GjSuKe": {}}, "party_id": "3EjaItV8Hjjr1aUU", "party_members": [{"user_id": "NMFa049hXKgBJEM8"}, {"user_id": "P1nfDP76qLQSUu9l"}, {"user_id": "XdjsYvVayPQ1xghY"}]}, {"party_attributes": {"eM5wzfMIKQVTuAYL": {}, "GXqvZ4tLESEAbHqR": {}, "1pNQLVUBAkTb151t": {}}, "party_id": "sKj1O3u3zsWUmq6A", "party_members": [{"user_id": "WIrofdohJLt88Dwr"}, {"user_id": "NZSlKjckFE1OAcli"}, {"user_id": "cj7OHDDNJkEuPNG0"}]}]}, {"matching_parties": [{"party_attributes": {"44iwOln0DjdAWw1R": {}, "5UK69LJkqfGiWE1u": {}, "ALVLa7BtqhKh4U5r": {}}, "party_id": "XnzGyK0dOrXazBDt", "party_members": [{"user_id": "m9WNgjIPVTjYspTq"}, {"user_id": "Vh4dnk8qGM9ZqxeX"}, {"user_id": "iUvQ28WSoIuSeicW"}]}, {"party_attributes": {"xOyx27Y71R7nVvLu": {}, "DhJQAqDUWw9UjpbD": {}, "TDGofcY9uqzdTa6N": {}}, "party_id": "kwsGASqcMOkNFsEs", "party_members": [{"user_id": "BeQ0G9AS1NcCvAa7"}, {"user_id": "8w1bGHL3uBEP4InD"}, {"user_id": "mBgXvbYynTIDlkHj"}]}, {"party_attributes": {"NFwkYg0UCikG2kHJ": {}, "t4uRuj0oUG5U24VC": {}, "7TcGN1QiQ5Cib352": {}}, "party_id": "nwHRReRJ9g1dTPij", "party_members": [{"user_id": "0emeEFQlivwFgVs4"}, {"user_id": "A8DAyu3vDHXaBW4L"}, {"user_id": "AAWOTqech2YJtc4u"}]}]}], "namespace": "RDgyx3nVco854eYs", "notification_payload": {}, "session_id": "nkGrlP7LGKXt7S9j"}' \
    > test.out 2>&1
eval_tap $? 83 'ClaimServer' test.out

#- 84 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'KVmBGBxQPrvzQm1G' \
    > test.out 2>&1
eval_tap $? 84 'GetSession' test.out

#- 85 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'y0eyA8TzFI0OzbFD' \
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
    --region 'SuAQDTggZUGhtqEF' \
    > test.out 2>&1
eval_tap $? 88 'ListProvidersByRegion' test.out

#- 89 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 89 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE