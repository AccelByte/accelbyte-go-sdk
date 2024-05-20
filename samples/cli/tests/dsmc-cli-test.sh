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
echo "1..82"

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
    --body '{"artifactPath": "wfXfz5ykHl1ehY0H", "coreDumpEnabled": false, "image": "fTMV4A4L7SPsssCh", "imageReplicationsMap": {"dxMmCUpUJif9XbYX": {"failure_code": "Ykg1QEX6uGg6l1I3", "region": "ps2ZIWJ3LgMJpZUn", "status": "RzLiWwujuDwuHbQ0", "uri": "5HUq9RgbyIpxs70h"}, "aGO8UZnpT9DJ58a8": {"failure_code": "q6Cc8QLOtQCG575U", "region": "pKX74o35CP2n3C4N", "status": "Ef1kwC7uU30nqNqJ", "uri": "yFMOFggkHYg77LDR"}, "RsfMVoswRjGiMhY5": {"failure_code": "8ss77KZttdUnXnoW", "region": "2CieXLSWNdbF7wHz", "status": "QGh2480rnnKc6Bvh", "uri": "50ckPbVAwFNgpD8c"}}, "namespace": "DEw8UwInU7h0Zf2x", "patchVersion": "pcrMDaBUUW7paQt8", "persistent": true, "version": "CoPVEcMwP1vMnfZM"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "byKrTPo4gMZxc6Z0", "coreDumpEnabled": true, "dockerPath": "hMjDS9zVBVDYYDD1", "image": "Fu5YHjOH908xljw9", "imageSize": 1, "namespace": "fGFgYz9uB6TKI9Nz", "persistent": false, "ulimitFileSize": 80, "version": "VCkI4MATLDjhRm3B"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "gLoRs0VdS7sXDJDV", "coreDumpEnabled": true, "dockerPath": "FoRqQrBKh1mamDdb", "image": "pdVr8YjB2ER7TdLx", "imageSize": 0, "namespace": "kzXx95FB60AArbZ2", "patchVersion": "WjP3dNBg5oxj1o9R", "persistent": true, "ulimitFileSize": 47, "uploaderFlag": "CVOMUQxrkj2At3UA", "version": "gY1XbM3nZnzR7JoS"}' \
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
    --body '{"claim_timeout": 6, "creation_timeout": 40, "default_version": "S70zXHhx3KRnfWhV", "port": 53, "ports": {"pKcHvCm4UscwarPv": 96, "XSqHcoqm4dwkudRu": 94, "UiEI5DdFdU6RhP8P": 19}, "protocol": "cMfVi8UdVM7oZqOB", "providers": ["PUQfKBulWmtOov2b", "kXRGwjJVG9bpkxyZ", "36r5porOvZMoe1V3"], "session_timeout": 51, "unreachable_timeout": 71}' \
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
    --body '{"claim_timeout": 66, "creation_timeout": 70, "default_version": "yrSvD2vpL9mEN6ib", "port": 74, "protocol": "9B8ioqWE2bOk43hL", "providers": ["ZMa5dVSOZ60kpuCc", "Dbl5JxcPHwJGAakV", "Sx7tGXjQDsy3TtTU"], "session_timeout": 2, "unreachable_timeout": 89}' \
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
    --name 'KitAPQHGUzNDyccJ' \
    --count '12' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'j6uTD1vc2F46lMyP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'QV5chRzayafABvo5' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 53, "buffer_percent": 31, "configuration": "ozAPhGCBfzfNO8J4", "enable_region_overrides": false, "extendable_session": false, "game_version": "Q8c3NwukM82k0gS1", "max_count": 41, "min_count": 3, "overrides": {"MmI41yIo9wGt2S6h": {"buffer_count": 79, "buffer_percent": 96, "configuration": "w6KU10hjCsOBtQGq", "enable_region_overrides": false, "extendable_session": false, "game_version": "ZX9exOyxzsqIrQ6e", "max_count": 77, "min_count": 90, "name": "HIW1FzisMX2NPygc", "region_overrides": {"j6Yz2xoKZsdfuTrQ": {"buffer_count": 13, "buffer_percent": 37, "max_count": 18, "min_count": 20, "name": "MZtiwA5b9Jhje0kv", "unlimited": false, "use_buffer_percent": true}, "KHUUzlFlCOlEBklv": {"buffer_count": 81, "buffer_percent": 73, "max_count": 44, "min_count": 96, "name": "5A7WB8phaCzfLPaV", "unlimited": false, "use_buffer_percent": true}, "E3iMYwKsCaKzZjMN": {"buffer_count": 92, "buffer_percent": 33, "max_count": 3, "min_count": 81, "name": "JfxXzGl0a52aar6I", "unlimited": true, "use_buffer_percent": false}}, "regions": ["Lipkv32s9qX0DJsf", "mFG1PH62yM13QeB4", "o1uYzvyXGnDiiiMp"], "session_timeout": 50, "unlimited": true, "use_buffer_percent": false}, "RkQGWFWzalybpMUp": {"buffer_count": 70, "buffer_percent": 91, "configuration": "WRJ8HDYk8YDn6hL1", "enable_region_overrides": true, "extendable_session": false, "game_version": "ertJasyVvrgHHcEc", "max_count": 46, "min_count": 91, "name": "A8B00kjlyDzdAQ74", "region_overrides": {"hvZd1SyUjpzKq0Xs": {"buffer_count": 95, "buffer_percent": 44, "max_count": 87, "min_count": 17, "name": "9lxyk2VWDMLl2YZJ", "unlimited": true, "use_buffer_percent": true}, "6Mt1pdKxtCzofA1r": {"buffer_count": 77, "buffer_percent": 33, "max_count": 15, "min_count": 83, "name": "85JucA2oNhxdCUw3", "unlimited": false, "use_buffer_percent": false}, "Nouq5EkJsdCyJRP8": {"buffer_count": 47, "buffer_percent": 90, "max_count": 45, "min_count": 26, "name": "SWfg4ut67qabRCcF", "unlimited": true, "use_buffer_percent": false}}, "regions": ["h3ur6fPxO19zmVx7", "E1bmPKcdmQEVkrYq", "OzY7EDNlu04c9il5"], "session_timeout": 45, "unlimited": false, "use_buffer_percent": false}, "V3XhurHogACW8lmB": {"buffer_count": 71, "buffer_percent": 52, "configuration": "gMFAoESUSs8B3zOf", "enable_region_overrides": true, "extendable_session": false, "game_version": "vogQAe0kcS8u80KX", "max_count": 32, "min_count": 30, "name": "d64uMf69AfDBsbZR", "region_overrides": {"yeUJ6sxUllLyuRRk": {"buffer_count": 7, "buffer_percent": 29, "max_count": 57, "min_count": 91, "name": "vcgSRYYtViQOxYOc", "unlimited": true, "use_buffer_percent": false}, "dkeNgYU8cSY8SQV0": {"buffer_count": 5, "buffer_percent": 53, "max_count": 14, "min_count": 23, "name": "cqVZFDJ2Qwkg7lWg", "unlimited": true, "use_buffer_percent": false}, "8ojXyFrHxrscmOET": {"buffer_count": 74, "buffer_percent": 22, "max_count": 32, "min_count": 44, "name": "tw6AOCfx4E5LPOFJ", "unlimited": true, "use_buffer_percent": false}}, "regions": ["E0BOkPecKSQk9vKc", "0qarPpCbBrzvbi0r", "PAjdXHeAe5AiJ2Ei"], "session_timeout": 61, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"4J6AMjCKQTu3oFZo": {"buffer_count": 61, "buffer_percent": 28, "max_count": 45, "min_count": 55, "name": "2RRi2EY0F0vqtDqQ", "unlimited": false, "use_buffer_percent": false}, "OMpYLWFPRqKG2Rus": {"buffer_count": 85, "buffer_percent": 57, "max_count": 13, "min_count": 30, "name": "tds3zSxNxJkyhHye", "unlimited": true, "use_buffer_percent": true}, "roIt2cZTEuS7zKf1": {"buffer_count": 11, "buffer_percent": 59, "max_count": 46, "min_count": 87, "name": "s9jVXvD57vsKjbx5", "unlimited": true, "use_buffer_percent": true}}, "regions": ["INiBswaOwpPNtNUS", "PGNOZdfdss0eeVVh", "rqOW1zZMOQFgR85c"], "session_timeout": 21, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'atB9GPH3RYxfSKj0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'mvq4aEmigUUgCJsP' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 84, "buffer_percent": 99, "configuration": "JxrTt4GZEYbIKLVW", "enable_region_overrides": true, "extendable_session": false, "game_version": "pfkwZ8DsugT2e7KK", "max_count": 0, "min_count": 14, "regions": ["oMMPPfLvXHAoh6eg", "ObwzdzaM8h3ZCnGe", "AKdCLAf3Gfu2lV6i"], "session_timeout": 32, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'NUIoUDViSjvtHRKX' \
    --namespace $AB_NAMESPACE \
    --region 'cWPt7BoMYhCZeaTI' \
    --body '{"buffer_count": 92, "buffer_percent": 86, "max_count": 57, "min_count": 1, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'tRXixX7VcagY1Qvi' \
    --namespace $AB_NAMESPACE \
    --region 'iSxaQyI9JnRjU5hN' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'yiCvjYMT97uTlVvL' \
    --namespace $AB_NAMESPACE \
    --region 'h8UsDuhTxyxCfkd6' \
    --body '{"buffer_count": 56, "buffer_percent": 21, "max_count": 35, "min_count": 48, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment '0Vyz5Ch2oirWns9h' \
    --namespace $AB_NAMESPACE \
    --version 'JFHGRJY8QZVd8EeB' \
    --body '{"buffer_count": 1, "buffer_percent": 14, "configuration": "h7CU5YvWGR0k7Egh", "enable_region_overrides": false, "extendable_session": false, "game_version": "2Qi1NVOt8R7ZMcrs", "max_count": 31, "min_count": 63, "region_overrides": {"yeoSbLtIJKfxaTuy": {"buffer_count": 13, "buffer_percent": 14, "max_count": 3, "min_count": 58, "name": "yFggAhaj1YQONPMR", "unlimited": true, "use_buffer_percent": false}, "bVxFFAhLmIVUpvsf": {"buffer_count": 31, "buffer_percent": 99, "max_count": 92, "min_count": 72, "name": "M09SfKP6IfRveeMF", "unlimited": false, "use_buffer_percent": false}, "IBqA2vPUdShHdDHX": {"buffer_count": 31, "buffer_percent": 90, "max_count": 44, "min_count": 18, "name": "jTKGpPSd3eRFK3KC", "unlimited": false, "use_buffer_percent": true}}, "regions": ["g6UIKf06TWs5an9B", "pL2X16MLSj3O420f", "QaarZTc7uJuSMfNC"], "session_timeout": 39, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment '8u8m1W74UwHRCGL0' \
    --namespace $AB_NAMESPACE \
    --version 'aJaz5NNvqJrL3J8r' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment '2R2xYxBi5MoXdqku' \
    --namespace $AB_NAMESPACE \
    --version 'chjSavboQ4IxJIol' \
    --body '{"buffer_count": 82, "buffer_percent": 30, "configuration": "9lrDZOvtzl9JKfj4", "enable_region_overrides": false, "game_version": "Wsqh7P0SfV8mDKrS", "max_count": 58, "min_count": 62, "regions": ["FDRBrAR48YVRLHlo", "u03cEchBh1LKN2jc", "T4JyWUNqGX1hbql7"], "session_timeout": 40, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'baVj5frLqGHAHIma' \
    --namespace $AB_NAMESPACE \
    --region '367u1m0XJ8FBsFHk' \
    --version '6W33uiykMJTNWFKd' \
    --body '{"buffer_count": 61, "buffer_percent": 4, "max_count": 60, "min_count": 64, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'kEyeAWYY4Kpnb0nA' \
    --namespace $AB_NAMESPACE \
    --region 'LTsvaN23x57YXGzl' \
    --version 'TH648HCmddRnuogK' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '4c1GGAwPyJyVrUFH' \
    --namespace $AB_NAMESPACE \
    --region 'JkqqdYLCdyPC1o5Y' \
    --version '44K5bLindt1JiWhc' \
    --body '{"buffer_count": 2, "buffer_percent": 94, "max_count": 11, "min_count": 63, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '76' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'pWojXIgBOtyEnmfm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'fh59OAzlu1ynfPn5' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 32, "mem_limit": 89, "params": "5jPzWWeyru5kqZL5"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'dBMU7sQRu3JMtuj6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'iqFO1fW426vvTYS5' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 71, "mem_limit": 1, "name": "UKAomtdb0NAUJnhG", "params": "Rl06GWTKkPWOp7pi"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'WHdduzqEwqTKRwQa' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 73}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'AJzXcOX73dkwFb7l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'VOzkrxGEAu4FcrLp' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "N8DNcXXtME4CzI03", "port": 58}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'blInlaTIlnlhN3xl' \
    --sortBy 'updatedAt' \
    --sortDirection 'desc' \
    --count '23' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI '57XjtfLPZiTXyqGT' \
    --version 'E8K3xRp9UUPSxouw' \
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
    --imageURI 'SIgbdyPQbGUFu44Q' \
    --version 'MvjVApKqFUeGjM5R' \
    --versionPatch 'TvEzm6l8zdmeRZ4L' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'udngCsrAOylVmrEE' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'UBSW9u2xPcjyEfeL' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'bHj4emKdWBBXYqBD' \
    --versionPatch 'c6JF322n12AWToto' \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 GetRepository
samples/cli/sample-apps Dsmc getRepository \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'GetRepository' test.out

#- 45 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'FDHriImIDQhHJcoU' \
    --count '92' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 45 'ListServer' test.out

#- 46 CountServer
samples/cli/sample-apps Dsmc countServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'CountServer' test.out

#- 47 CountServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace $AB_NAMESPACE \
    --region 'h7zywYOkedGVGdXw' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name '6MKU4zXX0zZeWHWA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'KAydsfRZjPw5xUa0' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName '8S7cAYoQyoiJDkra' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region '7J0KjyjXMM36Rllg' \
    --withServer 'true' \
    --count '84' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region '3tc6ujJcB2IVsgCu' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Ct6rRSkRgKUesqoZ' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "AAlDLNKYEMTdFk9Q", "repository": "99mzCqeGjuekbL9I"}' \
    > test.out 2>&1
eval_tap $? 55 'CreateRepository' test.out

#- 56 ExportConfigV1
samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'ExportConfigV1' test.out

#- 57 ImportConfigV1
samples/cli/sample-apps Dsmc importConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 57 'ImportConfigV1' test.out

#- 58 GetAllDeploymentClient
samples/cli/sample-apps Dsmc getAllDeploymentClient \
    --namespace $AB_NAMESPACE \
    --name 'BbIvxAxdeSqd7EeT' \
    --count '25' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'WG5JbSN2EuBU50sJ' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 52, "buffer_percent": 73, "configuration": "GaTO7wgxR4IO65aH", "enable_region_overrides": false, "extendable_session": false, "game_version": "xWm3Qa2fRp9T1yHN", "max_count": 30, "min_count": 32, "overrides": {"JbYp1t3acSD6LQb2": {"buffer_count": 77, "buffer_percent": 75, "configuration": "ifgYD4nsaLYlSkum", "enable_region_overrides": true, "extendable_session": true, "game_version": "zTKKNeYc5l3PHyTr", "max_count": 93, "min_count": 94, "name": "0tVeEyGDnIdoR4sL", "region_overrides": {"IpKfTf3Ni5FWFJ5Q": {"buffer_count": 19, "buffer_percent": 20, "max_count": 31, "min_count": 56, "name": "kVRKb2BOsJcfitbQ", "unlimited": true, "use_buffer_percent": false}, "UQNoSaaELKGe1fzD": {"buffer_count": 25, "buffer_percent": 76, "max_count": 12, "min_count": 52, "name": "TC9mxwpajwQSVG7L", "unlimited": false, "use_buffer_percent": true}, "pJUbHwVu4jn9N3dx": {"buffer_count": 14, "buffer_percent": 71, "max_count": 80, "min_count": 15, "name": "rfQ6Wer5PV5hH5Pf", "unlimited": true, "use_buffer_percent": false}}, "regions": ["9p12rB58thzTggdx", "9fbMJcLzuM2lifjz", "E5WimQduu7uv6SJB"], "session_timeout": 9, "unlimited": false, "use_buffer_percent": false}, "BSdla1f7RBdS3bRD": {"buffer_count": 10, "buffer_percent": 46, "configuration": "C3DDuVCmlthlOYcj", "enable_region_overrides": false, "extendable_session": true, "game_version": "qYQemgPcCgFbkzoI", "max_count": 39, "min_count": 81, "name": "QjMSRiflfzIIc2Oa", "region_overrides": {"kIvLWcKLbzhxphN5": {"buffer_count": 46, "buffer_percent": 74, "max_count": 80, "min_count": 36, "name": "BUfRoMqIh92n69TA", "unlimited": true, "use_buffer_percent": false}, "eJPA1bYUMFA4Wyml": {"buffer_count": 73, "buffer_percent": 29, "max_count": 81, "min_count": 20, "name": "K2tLzQQuyoSxdgRa", "unlimited": true, "use_buffer_percent": false}, "rlRLHbiOEFnjCbaC": {"buffer_count": 40, "buffer_percent": 88, "max_count": 29, "min_count": 72, "name": "uSHKlG65MRs0Pzzn", "unlimited": true, "use_buffer_percent": true}}, "regions": ["U8qSjVwpq0kQT21V", "5iliymPMXK3Csfii", "Jy9CCMLULPMVF2b7"], "session_timeout": 86, "unlimited": true, "use_buffer_percent": false}, "2gbZ6QjFPdQfx8Wx": {"buffer_count": 72, "buffer_percent": 76, "configuration": "bOoqYgb69l1YcGdB", "enable_region_overrides": false, "extendable_session": true, "game_version": "gx0WQ9bJ0XP5Eisf", "max_count": 48, "min_count": 58, "name": "51xpq857bwVJJv1r", "region_overrides": {"8aBwNdZyeZTPKjx8": {"buffer_count": 2, "buffer_percent": 18, "max_count": 43, "min_count": 35, "name": "lGTQu7c7bQwRIWyS", "unlimited": false, "use_buffer_percent": true}, "i1jZfKlDldZd2Yza": {"buffer_count": 60, "buffer_percent": 38, "max_count": 13, "min_count": 37, "name": "zWZdWmHliL6YVKIg", "unlimited": false, "use_buffer_percent": true}, "rd0JA4jSzD3LAVOY": {"buffer_count": 38, "buffer_percent": 98, "max_count": 16, "min_count": 51, "name": "oyz6FVXTxh97Pe3Z", "unlimited": true, "use_buffer_percent": false}}, "regions": ["VWA4nYYVYFYV9Iel", "wx5TShbEKc4qf9ID", "eLfIU2a3sDJfWDby"], "session_timeout": 40, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"pix4HXdVc41ULkXt": {"buffer_count": 54, "buffer_percent": 39, "max_count": 83, "min_count": 23, "name": "VVgL0xMUsVMEw7Js", "unlimited": true, "use_buffer_percent": false}, "h4w0Z40ofVG2HbTw": {"buffer_count": 19, "buffer_percent": 20, "max_count": 35, "min_count": 16, "name": "C25ALbSm3QDKceK5", "unlimited": true, "use_buffer_percent": true}, "pgL2P96oajzkdHAM": {"buffer_count": 60, "buffer_percent": 69, "max_count": 64, "min_count": 42, "name": "YpgWaMCUgCgUEFrF", "unlimited": false, "use_buffer_percent": false}}, "regions": ["aWDR1emy22NnVdIS", "dzPXX25BqzlT7MSB", "RXksLbewa59zqwfc"], "session_timeout": 81, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'Wuvtwtix9bVZfD7K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '19' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'SWIWfgNMwQ5JM3Br' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 5, "mem_limit": 47, "params": "UHJQODtuwZkT0Hey"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'fesrTrGxhAA0EZP0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '80' \
    --offset '6' \
    --q '0BPcxZ7C3ieTeE0V' \
    --sortBy 'createdAt' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 64 'ListImagesClient' test.out

#- 65 ImageLimitClient
samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'ImageLimitClient' test.out

#- 66 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version 'aZdOcto4HHzKvM4Z' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'QUdSAvEpSu8hCp47' \
    --count '61' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "FfmM9KeIORzHCK5R"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "s3QpjvVs6KpQpjfT"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "N4G5y6oYNXXcVxbI", "ip": "r4U4YKW92DAoKfYX", "name": "Xofl70xMFiT0igxv", "port": 85}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "RXMptw1rS56fFkJx", "pod_name": "wrjHRu5K4hOfhGlT"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "m7X5WFJ8VB9CnvwH"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'U7pa8fxOtmCN6Ulq' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'sEEiIMGGvDJn1zmF' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "BHOvFOvOPfmYkMfD", "configuration": "imOil80SZEh2Nn0A", "deployment": "zm4bDipVofdVP7dI", "game_mode": "drIPJRlFEk4M3BG0", "matching_allies": [{"matching_parties": [{"party_attributes": {"1s0uey3No8ypgWlq": {}, "UL5yy12OrlEgBMLP": {}, "g08FXm6FDd5Ac81I": {}}, "party_id": "aqN9bWD30tapzzj5", "party_members": [{"user_id": "MG1WCSMIRCOIG4mH"}, {"user_id": "x4XaPogo3pdqwhSZ"}, {"user_id": "Fj02YxL0uu5NBVUs"}]}, {"party_attributes": {"mKAYjMeUwHGOfmLR": {}, "atrngTydHQX1Xmsl": {}, "Gpt723KEjn8gDY0Y": {}}, "party_id": "O7IWlicrNwJ095K5", "party_members": [{"user_id": "QdZ0sA4L6lIXFklJ"}, {"user_id": "nZN8MaS30SWMdXwl"}, {"user_id": "L9M5m4a4AxwfTL78"}]}, {"party_attributes": {"Y1tnwrivSNXmWimn": {}, "Z3LakDCpgEcTp9uH": {}, "85aBQgJOYQRB1G65": {}}, "party_id": "zkK1ILnopynJkfQ0", "party_members": [{"user_id": "htUhNe8bAOk0wFJT"}, {"user_id": "Fms2EGgRt4Peu4eM"}, {"user_id": "18OBtYoVklRM5nJ3"}]}]}, {"matching_parties": [{"party_attributes": {"tFwxqWVrlTllJnnW": {}, "OpktaEQbxgs3FKxH": {}, "xE1ufhrShFyoVjvG": {}}, "party_id": "xOw6JJRWKRQ3hpnc", "party_members": [{"user_id": "juP1MGDIK2kiCBqC"}, {"user_id": "w7zhkalnQYvU0IuT"}, {"user_id": "3lm8u9fRcXSKeBQ1"}]}, {"party_attributes": {"85mSU4lpQ3GNv5yt": {}, "zpd6uzNhVGbLaIqy": {}, "PkMn3SiCzbktDQfy": {}}, "party_id": "AQSICmr7MkfSaHER", "party_members": [{"user_id": "wuYVgrWgU8WoWEe0"}, {"user_id": "St4vHuaEBMiW17Rl"}, {"user_id": "eXcaRqcJRSBjm2qU"}]}, {"party_attributes": {"zGRS7I5mmnKuPkSe": {}, "T9sdL7eBpz2lKJZ4": {}, "jTaNUuAWUr5lA2Iu": {}}, "party_id": "ffDhs1rapUpQTD9d", "party_members": [{"user_id": "7KctkwTeyVGbR1HJ"}, {"user_id": "ofnfCPkKUvJF8gEI"}, {"user_id": "bceqCNVvfDf7YKJi"}]}]}, {"matching_parties": [{"party_attributes": {"trcOrpU3Tc9brZmV": {}, "B2S3XsUtYrTHXva0": {}, "OGJQ8tIP3nMTxSpr": {}}, "party_id": "cke6suc4KZzrmMgt", "party_members": [{"user_id": "Ba5KukJyDPxzb9VJ"}, {"user_id": "SFmqYMHwd0ZWF5Pd"}, {"user_id": "1olY4UaAOJ72ZDY2"}]}, {"party_attributes": {"HdWpOxVz2KEJB1rK": {}, "p0jV53QZXu522urc": {}, "4I1bUhwA0GULmtky": {}}, "party_id": "LVBDhPNbha51HzNg", "party_members": [{"user_id": "279PZ1cpOeapW3x7"}, {"user_id": "P4wZ8sq1sdTvv5J5"}, {"user_id": "5G3EdkUBs8rr3uzl"}]}, {"party_attributes": {"r0teY4fNIXgOg793": {}, "A9FniKy4OsbqAw5s": {}, "uAhcUlioEyIhxebo": {}}, "party_id": "PuBZDGJvuEN1RbI6", "party_members": [{"user_id": "zzOiXCZRiJIH4tGZ"}, {"user_id": "XBAchft27asPcoNh"}, {"user_id": "4fV2nsPNRoScHQ0N"}]}]}], "namespace": "9pqvo9uJkHQQ42Jz", "notification_payload": {}, "pod_name": "lKEkCiOrVavL3Rcq", "region": "ss7BzTLgFWu3zReZ", "session_id": "yG2fssfyLKqNBfJJ"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "XmdVK5AukFFes1fY"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'NfZs8AxG2N8kkOKS' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID '3BlpOMLpUEjAoK7Y' \
    > test.out 2>&1
eval_tap $? 78 'CancelSession' test.out

#- 79 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 79 'GetDefaultProvider' test.out

#- 80 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 80 'ListProviders' test.out

#- 81 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region 'ZmgGqiiL8FLau4JD' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE