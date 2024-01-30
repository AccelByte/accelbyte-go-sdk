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
    --body '{"artifactPath": "lICy2CS18OT4vPeG", "coreDumpEnabled": true, "image": "DFWD80AHG1CrwY9L", "imageReplicationsMap": {"2y5ztvJhDPmBX3ya": {"failure_code": "rYKJw8DlkXDg29mZ", "region": "Sd8lHBlCsd2CbkHy", "status": "3kuDFEXfEA9TzHqh", "uri": "PLfwr6Yg70XI1Ozc"}, "nXtjX8Xxxa2x1k8b": {"failure_code": "DUMdahLkETmh1LAD", "region": "AXP34iOf3YdGJMHn", "status": "kxPVKyA6MToYFbyx", "uri": "dQeIIzP1EAyIjz7Z"}, "sz3uC9tlRCgxmKfU": {"failure_code": "SCUpYTWcamGJJljQ", "region": "jEY46PfehzNtmMVM", "status": "iH5btlj6bcD72ZhL", "uri": "araCPJa9qrLG9Uat"}}, "namespace": "aNFqnxnqNY7WLcvW", "patchVersion": "mS5uYjdYhNen91Fy", "persistent": false, "version": "LSv6r7xrhOqETpg3"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "FBtDwXSPkkIzdQKr", "coreDumpEnabled": true, "dockerPath": "RCPskctysPaiiRj4", "image": "0DaM4HDSg0qB3jJ1", "imageSize": 79, "namespace": "BliYl0SAq1rM8PPm", "persistent": true, "ulimitFileSize": 83, "version": "KGNzboKuxYg8C38K"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "GbGgfgTo5bQr9YUf", "coreDumpEnabled": false, "dockerPath": "Yv3P2xhHf54eqgyJ", "image": "tqqI45PqbjKdqojQ", "imageSize": 81, "namespace": "Q2RLyQ1fnBUDnf9b", "patchVersion": "nrAWKZTh10eZY3jO", "persistent": false, "ulimitFileSize": 62, "uploaderFlag": "cNnUtXgoeubTbv1O", "version": "ADzZuFjzT4eu0R7g"}' \
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
    --body '{"claim_timeout": 97, "creation_timeout": 81, "default_version": "7ueQz3RtWbXVxKx9", "port": 56, "ports": {"F7AUVgMQ3ymwZfMI": 70, "ou6lgy6W9gRxIgSm": 86, "6HzqizPgbQTfDGwY": 49}, "protocol": "zvPVlwjgfZ4bVuFj", "providers": ["5TBjQBrdY0u71VeP", "ILYDipHAnSs6c3Kx", "qVujndpywzgrjnLY"], "session_timeout": 90, "unreachable_timeout": 81}' \
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
    --body '{"claim_timeout": 45, "creation_timeout": 61, "default_version": "dyX9KF4ZwfNQZCbJ", "port": 89, "protocol": "YcJMyj4oSR9rSSk3", "providers": ["G9IeDC21NuFQuror", "RZ1d0SyQKfP7JvnF", "OcMdhyWPfTPXAL7L"], "session_timeout": 92, "unreachable_timeout": 24}' \
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
    --name 'OpY4muOpjjAjii17' \
    --count '36' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'zwMyLHOT7kfFM6FT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'lLUyAdzijC9L9S5y' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 54, "buffer_percent": 66, "configuration": "RzY0IxlMsFWsOta1", "enable_region_overrides": false, "extendable_session": true, "game_version": "PJLeUu8HV6y3Grfx", "max_count": 73, "min_count": 17, "overrides": {"iHaTuW74AJbQ67gz": {"buffer_count": 93, "buffer_percent": 68, "configuration": "SGFnlxbMVrwz8ao4", "enable_region_overrides": false, "extendable_session": false, "game_version": "5QAyd3R1P2Kf28jX", "max_count": 61, "min_count": 51, "name": "iQRvmZWqfSEBRJ0S", "region_overrides": {"2xnZjusba8kFPQxX": {"buffer_count": 65, "buffer_percent": 14, "max_count": 40, "min_count": 40, "name": "OPufil0Rr4d3DRMp", "unlimited": true, "use_buffer_percent": true}, "LO26xz9DUOtZjTd6": {"buffer_count": 53, "buffer_percent": 37, "max_count": 95, "min_count": 9, "name": "PVqdjLgzByj96u7o", "unlimited": false, "use_buffer_percent": false}, "yFe3r6p2qFaRHOhU": {"buffer_count": 71, "buffer_percent": 89, "max_count": 74, "min_count": 76, "name": "rEn4sdSStH6g9dR0", "unlimited": false, "use_buffer_percent": false}}, "regions": ["SeokADJ1xwbo8Ffv", "FxvAir704x9fxvtM", "ZBmTtqY3mkz8jSti"], "session_timeout": 86, "unlimited": false, "use_buffer_percent": false}, "bKnf7raDlYyWmbaR": {"buffer_count": 75, "buffer_percent": 26, "configuration": "QrqXc4RrfXxvyfiq", "enable_region_overrides": false, "extendable_session": false, "game_version": "LdDNjEUalhfqYkIV", "max_count": 75, "min_count": 7, "name": "z96mrjcFABLHcSvE", "region_overrides": {"EMJR8iJp9jtHfEOy": {"buffer_count": 87, "buffer_percent": 55, "max_count": 3, "min_count": 64, "name": "HmcXKPOs5n2K3t7e", "unlimited": false, "use_buffer_percent": false}, "NMezwBcGzMjEYAEq": {"buffer_count": 4, "buffer_percent": 37, "max_count": 70, "min_count": 26, "name": "LdGgF0mJ0HG4UgpZ", "unlimited": false, "use_buffer_percent": true}, "rZqr9wnVBB8dW90b": {"buffer_count": 94, "buffer_percent": 84, "max_count": 78, "min_count": 44, "name": "FEHug0dotGwjD2i1", "unlimited": false, "use_buffer_percent": true}}, "regions": ["DUfTcyplJVdmZg3W", "g30lDufDIwtCJ2WF", "wULRRnrTqzSIkttZ"], "session_timeout": 34, "unlimited": false, "use_buffer_percent": true}, "wcvNi6Dkl75KTwhD": {"buffer_count": 10, "buffer_percent": 83, "configuration": "o6FpuCGOauhPPksN", "enable_region_overrides": false, "extendable_session": false, "game_version": "VBUbjPT851hFKehI", "max_count": 39, "min_count": 88, "name": "3riajk3tqXnxtOj5", "region_overrides": {"01nXWkos5fn4R68L": {"buffer_count": 54, "buffer_percent": 13, "max_count": 37, "min_count": 88, "name": "KHK3gxsjk84qezu5", "unlimited": true, "use_buffer_percent": true}, "jgyYhqvMTbAQKJqr": {"buffer_count": 24, "buffer_percent": 59, "max_count": 35, "min_count": 24, "name": "oKExBB1ZG5SxU5Dp", "unlimited": true, "use_buffer_percent": true}, "E6GqTObl9uj4Ychj": {"buffer_count": 75, "buffer_percent": 72, "max_count": 70, "min_count": 91, "name": "FbqDldS9sMugQ4tD", "unlimited": false, "use_buffer_percent": false}}, "regions": ["GaDU5b1M3TfUUhdR", "e46asODqR2vdHRaT", "50u45crs7N4CyfR9"], "session_timeout": 66, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"tFTzfu8dAvZJxgDX": {"buffer_count": 68, "buffer_percent": 30, "max_count": 60, "min_count": 30, "name": "tzEDvtEIOJSaPy94", "unlimited": false, "use_buffer_percent": true}, "E60FhCIbadXEwob7": {"buffer_count": 80, "buffer_percent": 3, "max_count": 54, "min_count": 100, "name": "wsN5i9b6KonfMyhB", "unlimited": true, "use_buffer_percent": true}, "bcIIt8ohcaaaJ2Wn": {"buffer_count": 1, "buffer_percent": 14, "max_count": 52, "min_count": 65, "name": "Mr1JnmXwyTSbyx3z", "unlimited": true, "use_buffer_percent": true}}, "regions": ["0VEoRj9IwiUJPoIf", "K4DBJ4BqkXTb0lBm", "wkqwwg3Rpnyz6QUX"], "session_timeout": 56, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'm5iaT8vPkrMOxiC0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment '8b7RWj2xC66Ql7RS' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 6, "buffer_percent": 0, "configuration": "PF5Tgsktjj0UNGaM", "enable_region_overrides": false, "extendable_session": true, "game_version": "hsU32c5HQBEg5MDE", "max_count": 60, "min_count": 97, "regions": ["tcrM0dQpHyDSBJfc", "ucnMbZdMSvL1nJNH", "VkCCNPY7nxHhE1Yr"], "session_timeout": 65, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'zK0dkNi9u6fpFSKa' \
    --namespace $AB_NAMESPACE \
    --region 'Zz3I90BLbqWLSgsK' \
    --body '{"buffer_count": 34, "buffer_percent": 82, "max_count": 63, "min_count": 38, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment '6TYcE5IYRiPnndyF' \
    --namespace $AB_NAMESPACE \
    --region 'e35ICuJUkuM5BE4A' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'fyRJnFCBamKxOQ7s' \
    --namespace $AB_NAMESPACE \
    --region 'zTXDxUq9Sm5HXc3q' \
    --body '{"buffer_count": 54, "buffer_percent": 8, "max_count": 34, "min_count": 63, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'lC9clSZU9XtjVuMC' \
    --namespace $AB_NAMESPACE \
    --version '4X0xCnlSuNuDD3Vp' \
    --body '{"buffer_count": 25, "buffer_percent": 27, "configuration": "n4jABxer1NA4FL1y", "enable_region_overrides": false, "extendable_session": false, "game_version": "6mpeVg4bb1czUQSM", "max_count": 29, "min_count": 74, "region_overrides": {"24KjH508Q2YUC27K": {"buffer_count": 37, "buffer_percent": 19, "max_count": 41, "min_count": 96, "name": "ulFyRQsFX671XVL1", "unlimited": true, "use_buffer_percent": false}, "bCaw4xcV5Xe3iAjK": {"buffer_count": 20, "buffer_percent": 4, "max_count": 88, "min_count": 73, "name": "JRcxBjOpLmQae3ae", "unlimited": true, "use_buffer_percent": false}, "nen2yNq63UEzJRly": {"buffer_count": 74, "buffer_percent": 82, "max_count": 59, "min_count": 19, "name": "hpogUAJIEjvlvZOy", "unlimited": false, "use_buffer_percent": false}}, "regions": ["IXab52rsXwRlHGU7", "v22Tpvol3uIxJGDD", "lGkcYoLQWxHapyeq"], "session_timeout": 13, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'AqmVlZVnKpWjN0IZ' \
    --namespace $AB_NAMESPACE \
    --version 'UqebRUb1jqc11IZj' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'IOAhCIHbDC1zKGwC' \
    --namespace $AB_NAMESPACE \
    --version 'mxcsEqjIk3pTwaZN' \
    --body '{"buffer_count": 44, "buffer_percent": 75, "configuration": "s3oBMejEYrNcJSsj", "enable_region_overrides": true, "game_version": "agwMFhS98h58HGv4", "max_count": 49, "min_count": 9, "regions": ["VFyp9efG66oo5e1U", "fG0tkgVnJ7zRUcuy", "jdHJw3clWJx21MAI"], "session_timeout": 10, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'ueDad2bU9v9XPygl' \
    --namespace $AB_NAMESPACE \
    --region 'WJvHaQuhdQYO6ZxD' \
    --version 'JXCAI9RgcAl7x96z' \
    --body '{"buffer_count": 92, "buffer_percent": 94, "max_count": 100, "min_count": 79, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'VlJ7ixzMP3TvnTb7' \
    --namespace $AB_NAMESPACE \
    --region 'VPsMylrqFSoLzyz4' \
    --version 'yLYxdNWzzT7rQ7Ov' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'SLt5dMUEay1VABVA' \
    --namespace $AB_NAMESPACE \
    --region 'ZmwI6FZDUUsPst5q' \
    --version 'tHW0V0tXU75Z7EKH' \
    --body '{"buffer_count": 79, "buffer_percent": 63, "max_count": 33, "min_count": 6, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '31' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'd4lo40byUfX16mYm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'zrAXfYTX7Uw4ysUA' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 25, "mem_limit": 68, "params": "Z7aUm6SnTwE2nXb9"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'IgXrVjYDrTWYXlX0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'j9vAjVWK7xLGgR3Y' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 53, "mem_limit": 35, "name": "fpaEMZzr9oThQFBG", "params": "7w4pqQ4tIyh1QKRh"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'tGzXR0B1ywFs1IT7' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 79}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '8SHHA7oXvpz3RvGF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'yIhjCdeuJgf2uNiw' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "iHKDG7RdUt1RQKcS", "port": 67}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'w4cN4KtpxcAgKIGP' \
    --sortBy 'version' \
    --sortDirection 'asc' \
    --count '22' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'AbOopl8ZwurAddOH' \
    --version 'w8cDerBpnVvha5M2' \
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
    --imageURI 'NzmeqQbEDACLCcZy' \
    --version 'GCqdUoLDhPQMUfDk' \
    --versionPatch 'qwkkRAbMERQLaHGe' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'GQcisDVsp9YfVB0Q' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'KOM5RgrbnnNBAnfn' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'XxBeKU7fx3OJuQdw' \
    --versionPatch '1jZv11FT7oPBUJv2' \
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
    --region '1R18MJ7sYoIbofwZ' \
    --count '88' \
    --offset '15' \
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
    --region 'bhV4Vpzs35KZew82' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name '4tLlFfCeo9h2CG2T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'u4LzoFJFuKWUmeJt' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'DkmFLrq3k4hM3DRz' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'Z80FDsOFfs6ycuBG' \
    --withServer 'false' \
    --count '81' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'AX9PUzjkXPx81hPZ' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'dsOScTSUajz4Uz0S' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "2007JZXSj9i9EX97", "repository": "oPbIjVyYwQDtCMQC"}' \
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
    --name 'ZhCw3cURnSc3GP67' \
    --count '10' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'CYYUmLaZM1HydtPd' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 13, "buffer_percent": 60, "configuration": "t4yX5tgnNGvEkCJ5", "enable_region_overrides": true, "extendable_session": false, "game_version": "Uk52sNxmZhhONWHN", "max_count": 78, "min_count": 31, "overrides": {"gtC0yYjLbBat3kK2": {"buffer_count": 42, "buffer_percent": 93, "configuration": "iUjyz9zoQCmXM8Wk", "enable_region_overrides": false, "extendable_session": true, "game_version": "NMLfPKYM0UYMgzco", "max_count": 6, "min_count": 88, "name": "5ODIN9MhvvPO1ghH", "region_overrides": {"QGqlAiFT42YRceNi": {"buffer_count": 55, "buffer_percent": 38, "max_count": 58, "min_count": 6, "name": "EPN2vEDgDGVEaRpC", "unlimited": false, "use_buffer_percent": true}, "3LzFuVf1Rh0WT3GP": {"buffer_count": 13, "buffer_percent": 27, "max_count": 67, "min_count": 28, "name": "OYIEi5GNfYwIkWaK", "unlimited": false, "use_buffer_percent": true}, "I7S1jWSeyrrB9LSB": {"buffer_count": 19, "buffer_percent": 8, "max_count": 72, "min_count": 4, "name": "kMYl7W2ufwpNAsAG", "unlimited": false, "use_buffer_percent": true}}, "regions": ["HIdVstJra7zIgsTc", "7Fr6AhBA4J5BMgbJ", "PB5BnsBaGT5L7IoL"], "session_timeout": 14, "unlimited": true, "use_buffer_percent": false}, "1qkRhlPzF3elbsOy": {"buffer_count": 89, "buffer_percent": 23, "configuration": "uXONdlTNdqhrgXe8", "enable_region_overrides": true, "extendable_session": false, "game_version": "Lzbd27GqhexmbRqx", "max_count": 92, "min_count": 84, "name": "i0UvcfsZMBfhlOF8", "region_overrides": {"g8yz19QAcBWFKeqn": {"buffer_count": 25, "buffer_percent": 78, "max_count": 16, "min_count": 89, "name": "oPYrlBXY9PZCgzWQ", "unlimited": false, "use_buffer_percent": true}, "NdGXZmWCqqrv81ID": {"buffer_count": 56, "buffer_percent": 100, "max_count": 62, "min_count": 75, "name": "SM5cqzLdou8q4YtV", "unlimited": false, "use_buffer_percent": false}, "AqENhhAgzB0Idrm0": {"buffer_count": 84, "buffer_percent": 53, "max_count": 63, "min_count": 27, "name": "YJYTcuMJzvjWHbvh", "unlimited": true, "use_buffer_percent": false}}, "regions": ["TP85x5uXyHynvlr6", "vbtxfWYcr5pQz8CD", "Z1ZzDwxUUfXV7Z8V"], "session_timeout": 17, "unlimited": true, "use_buffer_percent": false}, "UrX0D5lVzml6wrTE": {"buffer_count": 68, "buffer_percent": 10, "configuration": "uovo6OO7syn244XE", "enable_region_overrides": false, "extendable_session": false, "game_version": "jiikWsCbZVPwHj1Y", "max_count": 43, "min_count": 35, "name": "R8W12shYTcVtNp17", "region_overrides": {"iNVllLKBXdDVl4vO": {"buffer_count": 67, "buffer_percent": 92, "max_count": 34, "min_count": 1, "name": "LtxYiKN6DClyS1Wd", "unlimited": true, "use_buffer_percent": false}, "miySpbAKiAGT9VqI": {"buffer_count": 77, "buffer_percent": 19, "max_count": 42, "min_count": 53, "name": "zaiJTa2dn9us6BBI", "unlimited": true, "use_buffer_percent": false}, "AYK6MvX0eDhew9y0": {"buffer_count": 44, "buffer_percent": 51, "max_count": 84, "min_count": 93, "name": "m9OMISKWq0tdF4BF", "unlimited": false, "use_buffer_percent": true}}, "regions": ["a0AXstomyENKKnqZ", "Zv48wFMChwOujVZ7", "cFnrzMnSpEODRadX"], "session_timeout": 53, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"k0RRzNXklBzBvLk0": {"buffer_count": 25, "buffer_percent": 52, "max_count": 35, "min_count": 5, "name": "72oYsnQZTBiWeOwq", "unlimited": false, "use_buffer_percent": true}, "LlTBkN7ahTict5Fx": {"buffer_count": 15, "buffer_percent": 44, "max_count": 18, "min_count": 52, "name": "ibN9FFFSD1PfIjS3", "unlimited": true, "use_buffer_percent": true}, "sl7II8QfjYOYUTke": {"buffer_count": 65, "buffer_percent": 4, "max_count": 6, "min_count": 97, "name": "vy1AaqVdtilMVU6A", "unlimited": true, "use_buffer_percent": false}}, "regions": ["f2pZkJiNl2n2xHfL", "L6ehz3aZKzIlRZU7", "zgjlIuAq9wxNELch"], "session_timeout": 18, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'hNyJqo1NCQWKXs2b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '26' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'CVbjbVGYbIkobprd' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 34, "mem_limit": 43, "params": "F1ehIJ4WlBqXTJCC"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'uzylv3ngaXzZCnCS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '65' \
    --offset '80' \
    --q 'vshjwb6XzHxRqGxg' \
    --sortBy 'createdAt' \
    --sortDirection 'asc' \
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
    --version 'BbIDjHqjmdd0GX1k' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'EJ74Rp0ivesRqgbi' \
    --count '48' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "hZ49dBNCTgIDZLVk"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "5q9ce9tBbiQyEIbw"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "qifcZN52iRPfFiUl", "ip": "EbP1Bu18JPhLZqRv", "name": "VUaT1q0JGw4C2GgX", "port": 21}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "vP47f1cnH263zILN", "pod_name": "CPtZ2gQVghj0A7Rx"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "WtwFA2PFhIatM8JL"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'LYNWp5QJRcVHBT5D' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'WrL7jSXTrJQClui3' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "LLXI7NraO8dKqcn2", "configuration": "wHuZ7XsBVXpoQ8XG", "deployment": "K5BGWEOMWD82rHn9", "game_mode": "QdcaoW5MLdVvR71j", "matching_allies": [{"matching_parties": [{"party_attributes": {"TJ39p6AQvraUr6ZQ": {}, "8d0zxEvZuiWyDqMQ": {}, "3qVGXCZxCRBMGJh7": {}}, "party_id": "kSM73oUV8P3MZ0ZP", "party_members": [{"user_id": "61mImYRO2T5yq8ph"}, {"user_id": "Za0uNfIxf19Sy99H"}, {"user_id": "9GhhIIHpYRqiwgsj"}]}, {"party_attributes": {"3I514nIjtHNMg7vf": {}, "6wwkAMC7Uppc4vnA": {}, "BheP8zPGCkfTEzS4": {}}, "party_id": "rHlaCXsRuqTkBdI8", "party_members": [{"user_id": "yzV3w5NpjqUmidgM"}, {"user_id": "R3ECKb4MwpZfAMR7"}, {"user_id": "2hh0khWgRtPFuf7f"}]}, {"party_attributes": {"PtWt80JmAjoo6nV2": {}, "oSwUE0T5XSY9A33F": {}, "tFzuna1jkqi6P2Pi": {}}, "party_id": "pISVMsJ6HUJKlZNP", "party_members": [{"user_id": "6Tcm2Su0SwT1tABG"}, {"user_id": "xlVBXgXxwz2N9Hhe"}, {"user_id": "XjzWnKf8Db106ouB"}]}]}, {"matching_parties": [{"party_attributes": {"C1srZfhABiFSHNIM": {}, "Azzs1O3TIHsZHYiq": {}, "agBwDy0KwiDimwNX": {}}, "party_id": "I4u4aBf98gDsaw21", "party_members": [{"user_id": "frJ56Ki18aRsU8im"}, {"user_id": "3DiXWOrNv0DqrhqB"}, {"user_id": "0OYJ4MRF2WUqfMN9"}]}, {"party_attributes": {"zbeea7qSsDZ6BFdR": {}, "wOxEDL38ylXqGsPs": {}, "CqZTNWxZZt9dkgg4": {}}, "party_id": "oOpKSWbzThihrqoE", "party_members": [{"user_id": "MBbrhswEvqkl9j7R"}, {"user_id": "LdPj3t4aF0JDoS1u"}, {"user_id": "xUGL4yxPRlob4I8O"}]}, {"party_attributes": {"5gRb0LRDsswqRZVj": {}, "1lJJsRu1Z226C6kE": {}, "Eeeyy7pUuNO1wh74": {}}, "party_id": "IcBFHiQhZegPHCtn", "party_members": [{"user_id": "fxwozhQHuLG6Uj45"}, {"user_id": "Xj14MwfVRoCbhKFU"}, {"user_id": "jxfNQdYFjPyR5pSR"}]}]}, {"matching_parties": [{"party_attributes": {"7xCc0dPNWmeekFYH": {}, "Hdh6GWocysr6VSOJ": {}, "0wccHQ9OqbIrvpnm": {}}, "party_id": "vm754zPP1yc4O38U", "party_members": [{"user_id": "MPcv9yh5k7l1HQFx"}, {"user_id": "dM7fhPaPg0pzxu6e"}, {"user_id": "mpMO8pVbChJCyCia"}]}, {"party_attributes": {"VbbXgsGVC8H0HTLs": {}, "oW0ndtdNq3NqWmG5": {}, "DhywPD7M4xRXRGwm": {}}, "party_id": "XK2Spgr5Ydrcw53n", "party_members": [{"user_id": "tr6NyB8Nc2812qkT"}, {"user_id": "DedyYl7kn4BSlUNm"}, {"user_id": "9oo4IoXPhgKZgFTi"}]}, {"party_attributes": {"EKa24EJzW91XgOnt": {}, "Ekgtt2vme2DZApk5": {}, "5D7CgLADgPkaWNAU": {}}, "party_id": "wvzdlgPjfsPOvNFW", "party_members": [{"user_id": "IEE9elA5zqyuQZ3L"}, {"user_id": "OnUuX3Dv2OWwMoUn"}, {"user_id": "4YZ61xbrlyyFiLRs"}]}]}], "namespace": "Pbjovse7757HjvC4", "notification_payload": {}, "pod_name": "bF2Mssg8WIrtK7p7", "region": "czEIl8wnc2Gdw0Fy", "session_id": "frNEsfhfWpqdS7nZ"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "DlvWUvfClxrZlAfh"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'rQH0qXa2y47VOh9m' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'x4m8oXdE0XiUq0Rt' \
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
    --region 'r4ka7LfPvsPg8hgA' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE