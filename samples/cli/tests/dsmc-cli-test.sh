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
    --body '{"artifactPath": "RMKcf6dqeibu7Xrq", "coreDumpEnabled": true, "image": "T1WJQNfQIc9NWLsE", "imageReplicationsMap": {"LCsU6WCF9vy3gE9h": {"failure_code": "Q7RiTfz9iDrGSsds", "region": "BOuDqxPNCzop6auQ", "status": "QxFXtMqxfK8aL25f", "uri": "LUeHEtfzLznQ3mFe"}, "UoatuptztQU2smuO": {"failure_code": "Kte5wb6DrxjlC9pj", "region": "GEW09UBMNWUc3bkb", "status": "ZZRhhX5Nx5i60EhO", "uri": "hBYf8c9sHm9qv2VV"}, "pkeRh7rVJORovQW3": {"failure_code": "CtKIuEf4fJP007zG", "region": "zN03qrlWBqh8o6Am", "status": "qHGZzfkeA0UVveVr", "uri": "B6U0MMq6458ZO4aO"}}, "namespace": "GV0ZgXp28OenkPVr", "patchVersion": "vlXzqWDkLnNjKYgD", "persistent": true, "version": "NZATyLcBr6BY6BGY"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "9qF3RxNcBInrVMb8", "coreDumpEnabled": true, "dockerPath": "htmfE2TmXXmCZSE4", "image": "CbKBpkqVMltRTwiO", "imageSize": 90, "namespace": "2Q615ARIu4QucrfP", "persistent": true, "ulimitFileSize": 56, "version": "LjkoTdbH2lwi5Emf"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "hEDCFeIJifpW1VRr", "coreDumpEnabled": false, "dockerPath": "EsXxs0hMbEhpAc89", "image": "fJPXQtWYYal1vN2L", "imageSize": 93, "namespace": "8N2tNt56lOxEPu9S", "patchVersion": "WiqWamtnCbaksulU", "persistent": false, "ulimitFileSize": 89, "uploaderFlag": "q2itKw5KR2l1ax0S", "version": "GhlJ8Ttmh2MFJq8a"}' \
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
    --body '{"claim_timeout": 73, "creation_timeout": 94, "default_version": "p7nOajQY8Vig9VGT", "port": 67, "ports": {"VLMBYivyOVdS85Lo": 35, "DiZaXN0rrhbqOvtR": 46, "cM7zPj6nTVKl85Uu": 85}, "protocol": "lp5RidG7NrtE98Hr", "providers": ["icaBT6BaVObetIMs", "i3kQoZzlCKIeOB6a", "jQ7YFh3jRyDxqu3D"], "session_timeout": 2, "unreachable_timeout": 31}' \
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
    --body '{"claim_timeout": 37, "creation_timeout": 96, "default_version": "h9Rwh5GDgSRfJg6C", "port": 31, "protocol": "vnbJ1KpHgsHdOf0d", "providers": ["fekRrIlEgJI4XSl9", "B7eCFLVQtL40sBbM", "scifZcER0HA7xhPd"], "session_timeout": 92, "unreachable_timeout": 51}' \
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
    --name 'wB052q4MXXDOexAs' \
    --count '57' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'iarbnxbOSJqAmsB6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'RNHJthOu7ia0g8dS' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 100, "buffer_percent": 54, "configuration": "MR1AQN8Yty5qzYV4", "enable_region_overrides": true, "extendable_session": false, "game_version": "jK9ucXVSo1v8R1jk", "max_count": 62, "min_count": 84, "overrides": {"SoUa3vG7oz8Kc7bd": {"buffer_count": 15, "buffer_percent": 87, "configuration": "Qpc2dsg7vl8wvGYj", "enable_region_overrides": false, "extendable_session": false, "game_version": "6kyf9QeKus0k0meP", "max_count": 6, "min_count": 7, "name": "O4fZwhb8t57Ulrts", "region_overrides": {"BRPCGSSvoFAgBia4": {"buffer_count": 78, "buffer_percent": 73, "max_count": 47, "min_count": 18, "name": "tFOo41ijVRu789wF", "unlimited": true, "use_buffer_percent": false}, "pxlcUoJWbNdFohbN": {"buffer_count": 20, "buffer_percent": 32, "max_count": 94, "min_count": 39, "name": "J0lccOY9ytIT3PtQ", "unlimited": false, "use_buffer_percent": true}, "S2AjK2F6n9qHggBx": {"buffer_count": 80, "buffer_percent": 74, "max_count": 0, "min_count": 88, "name": "pONqzXSQaTZOz3h0", "unlimited": false, "use_buffer_percent": false}}, "regions": ["IPiVlB34QNF3W1gI", "CXPD0KRvcHUomneS", "UDWTFbZNzeaMYRF5"], "session_timeout": 60, "unlimited": true, "use_buffer_percent": false}, "pM31R08gldvR8Ft0": {"buffer_count": 5, "buffer_percent": 81, "configuration": "iSbfgY1t5mkigaWG", "enable_region_overrides": false, "extendable_session": false, "game_version": "P4YrZQ79AUQ1ua4c", "max_count": 26, "min_count": 30, "name": "WMj6TKjDnnnhkBa1", "region_overrides": {"BRA5irGqBpBPGkH1": {"buffer_count": 96, "buffer_percent": 3, "max_count": 45, "min_count": 79, "name": "dmm5cxTpMUR0nYaP", "unlimited": false, "use_buffer_percent": false}, "9eYg9rjccdQKi2hl": {"buffer_count": 60, "buffer_percent": 62, "max_count": 78, "min_count": 100, "name": "8Mylnf9Vzrtzqtb0", "unlimited": false, "use_buffer_percent": true}, "5Ip2Gz9Kumxjc41q": {"buffer_count": 27, "buffer_percent": 100, "max_count": 91, "min_count": 19, "name": "VWX41n9OhZYtxxnd", "unlimited": false, "use_buffer_percent": true}}, "regions": ["Q4dJUoDpdsy32cNp", "aj2hY2BIbVxytgy4", "sFFxm7zUpLEMYtEj"], "session_timeout": 64, "unlimited": true, "use_buffer_percent": true}, "wKJQhmtSD9xwNqqn": {"buffer_count": 57, "buffer_percent": 76, "configuration": "YUeZzPxS0oKzd1ev", "enable_region_overrides": false, "extendable_session": false, "game_version": "PS70T6cjlm3kSQF9", "max_count": 53, "min_count": 6, "name": "j93EGpp8EhdMMuSt", "region_overrides": {"eqek1nAlRt2kP3mj": {"buffer_count": 64, "buffer_percent": 43, "max_count": 70, "min_count": 45, "name": "v5kELAwqWfwKhvBv", "unlimited": false, "use_buffer_percent": true}, "IXMXn5wgkCMR1a2w": {"buffer_count": 25, "buffer_percent": 96, "max_count": 87, "min_count": 81, "name": "zhu5BujiDiIIXXGq", "unlimited": true, "use_buffer_percent": true}, "EEK8APyWL0de4oL2": {"buffer_count": 0, "buffer_percent": 5, "max_count": 39, "min_count": 9, "name": "NgXGZw1dDXOWffpf", "unlimited": false, "use_buffer_percent": true}}, "regions": ["bdGrq6XMNjCOT5cF", "mThadhdeY37130QT", "2ZheYEI18cq3IitO"], "session_timeout": 97, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"0ONptSugYgce36pG": {"buffer_count": 14, "buffer_percent": 7, "max_count": 85, "min_count": 2, "name": "DvhpuJPhKG3QmEqy", "unlimited": false, "use_buffer_percent": true}, "lGkrn8Xm0XpU7RBb": {"buffer_count": 7, "buffer_percent": 60, "max_count": 2, "min_count": 68, "name": "MiQBvfnZ9fuI6grj", "unlimited": false, "use_buffer_percent": true}, "lFFnz5C5oFlsF4vC": {"buffer_count": 21, "buffer_percent": 79, "max_count": 60, "min_count": 59, "name": "4RXqdO9g7A63kzWi", "unlimited": false, "use_buffer_percent": true}}, "regions": ["x31Yynj5BcuzIHmb", "KUIzTDN5RUIQFNZu", "dWF1xAPNh0vgFs1z"], "session_timeout": 95, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'Z90R34RcBzlDIcqi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'vHuRk0FAhKj343Po' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 61, "buffer_percent": 29, "configuration": "lmutvRe0DoJj2fWI", "enable_region_overrides": true, "extendable_session": false, "game_version": "WDnPkCee19oO28A2", "max_count": 69, "min_count": 88, "regions": ["92SKoGbQfHTeLRrY", "gRnovbiXqXm23lcI", "mPaaBr1kWboL9f7J"], "session_timeout": 27, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'SLhiNtj6iPA3KcGu' \
    --namespace $AB_NAMESPACE \
    --region 'qdcyiRqzZnYrsK8O' \
    --body '{"buffer_count": 73, "buffer_percent": 81, "max_count": 13, "min_count": 58, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'RBJ4NY5Avy9YFbyq' \
    --namespace $AB_NAMESPACE \
    --region 'YX65l2rafIpXRGTh' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'xXYSjv6kxH3xaD2C' \
    --namespace $AB_NAMESPACE \
    --region 'oUPGYpXbYVSGdAHG' \
    --body '{"buffer_count": 94, "buffer_percent": 4, "max_count": 46, "min_count": 9, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'ka1T1iTESafBucZD' \
    --namespace $AB_NAMESPACE \
    --version 'Xbicrc9uzqeYnRlo' \
    --body '{"buffer_count": 17, "buffer_percent": 57, "configuration": "NMZUIbs7CQofoCkd", "enable_region_overrides": true, "extendable_session": true, "game_version": "80YpNkBj06Isj5oI", "max_count": 93, "min_count": 20, "region_overrides": {"ZoQVPf7PCC2HpPkl": {"buffer_count": 9, "buffer_percent": 98, "max_count": 49, "min_count": 23, "name": "JrGyrSMvuQ4wGhHq", "unlimited": false, "use_buffer_percent": true}, "nxBTO7sdGRd1SjHg": {"buffer_count": 4, "buffer_percent": 40, "max_count": 38, "min_count": 15, "name": "qwzUzEWws0POFIqn", "unlimited": false, "use_buffer_percent": false}, "NnsVfdBFxptCxndG": {"buffer_count": 1, "buffer_percent": 37, "max_count": 43, "min_count": 6, "name": "Wy58ahBBiyeXYyP3", "unlimited": true, "use_buffer_percent": false}}, "regions": ["Ui4TZSSCZPRKD5rp", "KTRdeB5mHqCUctWQ", "81A0f1t0zm5wAWjX"], "session_timeout": 8, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'YCDbTyvULcHbhqaQ' \
    --namespace $AB_NAMESPACE \
    --version 'LdWVtHnQeKigSCHS' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'JBQ9YH3lfQ5x9dK5' \
    --namespace $AB_NAMESPACE \
    --version '7zUI1Fv9jmbTX2fk' \
    --body '{"buffer_count": 0, "buffer_percent": 1, "configuration": "teZIBeWPri5hKjNk", "enable_region_overrides": false, "game_version": "JfNEXoVZlznKYsxs", "max_count": 16, "min_count": 27, "regions": ["Qc4wuLbyAwFpJ0vL", "ELh4SQr20My0nTAm", "LyCnFFaV0UmevzF0"], "session_timeout": 25, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'lVmhYBIUUkYKipsi' \
    --namespace $AB_NAMESPACE \
    --region 'mL8awrxl9HgFiitA' \
    --version 'ifGAKD6s3rpCIueS' \
    --body '{"buffer_count": 54, "buffer_percent": 33, "max_count": 16, "min_count": 100, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'LNxfU0nymD7n1NmP' \
    --namespace $AB_NAMESPACE \
    --region 'Lw6z9OALcc6SGlp8' \
    --version 'L9UikKLxOnMynyxe' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'dh9wZbUvnZS0VOOj' \
    --namespace $AB_NAMESPACE \
    --region 'Bo4FnrcHjNXimT9O' \
    --version 'BRHovZSEb9IkHdtp' \
    --body '{"buffer_count": 1, "buffer_percent": 73, "max_count": 85, "min_count": 63, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '89' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'O48NJMi1gxXg3f6B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'w9aqMEabv7HEfxWi' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 30, "mem_limit": 95, "params": "v5uHGBzhfC1Y0ihq"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'p5wtfIBEvtNlDCTT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'up2WDvmvfhGxfPBS' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 68, "mem_limit": 56, "name": "ssR0YtL6BW2D1Dqh", "params": "YWraahr1NnDxhpZy"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'u7lhMKC6oU76iD4y' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 85}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'YAfT7G6mCA11gnVd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'ONNHIvnV1ZxW4BmC' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "3UJy98ap5dYc2Ift", "port": 91}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'DrbduZ7TigbVUGcL' \
    --sortBy 'createdAt' \
    --sortDirection 'asc' \
    --count '5' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'XVirnMNeqeNZV2tM' \
    --version 'fIJMziQjJUpOo7N9' \
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
    --imageURI 'vS0yNA2bEML7yF94' \
    --version 'KG6iJsbMxZbbu3ev' \
    --versionPatch 'gywGw5A9RlvCgI40' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'pJiGWhxKItmNa5g4' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'QPZvOr6zjnW9S8DT' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version '7DE1vsttJEzhGJST' \
    --versionPatch 'rFzV2soDf5tjMcLu' \
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
    --region 'Qa6Ltm4PWdHnhYZd' \
    --count '69' \
    --offset '69' \
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
    --region 'dNvFsEpkZqPRoekr' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'f82bHXncbCbANYWY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'Nycv6QjouXjNidj8' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'mO16fCcOkRJZiEnC' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region '50UU3vnuW8WtaMxq' \
    --withServer 'false' \
    --count '59' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'T4mOR8odrYLoY4mU' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'FAxQKk7uo2q7fjtp' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "piRTaihDyZC1g9fM", "repository": "ixIrlmKNPTYuAFf5"}' \
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
    --name 'zW0Du8tgDztfzTaz' \
    --count '2' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment '7P2Jis6aMvxPK1MH' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 41, "buffer_percent": 17, "configuration": "vynRFVae3snVLTfB", "enable_region_overrides": true, "extendable_session": false, "game_version": "x0quh6FzBu0UoucK", "max_count": 79, "min_count": 96, "overrides": {"6lwaumcNVDUNLjO1": {"buffer_count": 15, "buffer_percent": 73, "configuration": "ytYhk461SCm0ur8G", "enable_region_overrides": false, "extendable_session": false, "game_version": "TtzbZp3l3TKgy7XW", "max_count": 98, "min_count": 86, "name": "juSzzbfCymtCEySL", "region_overrides": {"fKV09PjkiSQYi56T": {"buffer_count": 61, "buffer_percent": 39, "max_count": 99, "min_count": 53, "name": "m2CBBx07Ws4qDkVK", "unlimited": true, "use_buffer_percent": false}, "yrFobSm8j7rwuzze": {"buffer_count": 61, "buffer_percent": 76, "max_count": 60, "min_count": 40, "name": "GK00oKi5gZOEufIg", "unlimited": false, "use_buffer_percent": false}, "XsG3Ts0sdEce32Sk": {"buffer_count": 2, "buffer_percent": 34, "max_count": 52, "min_count": 23, "name": "2NfSuXiOmbZAfkYn", "unlimited": false, "use_buffer_percent": true}}, "regions": ["kJCRuJEubHHAYrFe", "8emkl9XSoBelGal5", "KXUcHnE3x50iXNVQ"], "session_timeout": 12, "unlimited": true, "use_buffer_percent": true}, "dsIFNobmZVrWJdpJ": {"buffer_count": 85, "buffer_percent": 4, "configuration": "gkd1vvBoT6lwVadk", "enable_region_overrides": true, "extendable_session": true, "game_version": "oo4BSJ7VC1UdxJil", "max_count": 18, "min_count": 79, "name": "p8P9uyzFtGIXLZ8M", "region_overrides": {"a4HcWBOgucLAfIFA": {"buffer_count": 100, "buffer_percent": 20, "max_count": 77, "min_count": 93, "name": "s7gknm40jxJhO8UT", "unlimited": true, "use_buffer_percent": true}, "LnFIEvh7Fvcqjguq": {"buffer_count": 62, "buffer_percent": 7, "max_count": 60, "min_count": 0, "name": "7ZAy8bEb83oydk84", "unlimited": false, "use_buffer_percent": true}, "YlEUwhfADXHLI8Tr": {"buffer_count": 14, "buffer_percent": 32, "max_count": 34, "min_count": 68, "name": "UcB2thFDmLjIM6p4", "unlimited": true, "use_buffer_percent": false}}, "regions": ["0uIsrrMfzlfCvF5z", "7h0ikXEchkhM0Zyd", "UDLurEu0GkVlyKEl"], "session_timeout": 66, "unlimited": true, "use_buffer_percent": true}, "zHiwc0EmCINlJCsa": {"buffer_count": 35, "buffer_percent": 93, "configuration": "xGbVwlCPjfxOWj3h", "enable_region_overrides": false, "extendable_session": true, "game_version": "JU9PXxC4icb3pn9P", "max_count": 44, "min_count": 13, "name": "imVVdVAaZZL31O5i", "region_overrides": {"9ZgApK4bsB8h2TI1": {"buffer_count": 20, "buffer_percent": 83, "max_count": 13, "min_count": 18, "name": "UCMnu0uNtOjQ01my", "unlimited": false, "use_buffer_percent": true}, "hcAFTr9r6S5hlYmI": {"buffer_count": 21, "buffer_percent": 72, "max_count": 95, "min_count": 94, "name": "kGOyROAjPPXsF6Zc", "unlimited": false, "use_buffer_percent": false}, "fOtDiWhA4gqjV0JS": {"buffer_count": 60, "buffer_percent": 88, "max_count": 99, "min_count": 2, "name": "yhTBNiXiE6JNExe6", "unlimited": true, "use_buffer_percent": true}}, "regions": ["JNsbBlfyH5A7Sbqs", "cDbPD5dGoBnnn7Ar", "OvAY74nNmgsKtHPz"], "session_timeout": 35, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"OYzZRdr0YGjuW59n": {"buffer_count": 83, "buffer_percent": 59, "max_count": 48, "min_count": 41, "name": "vcHGwF86mJR7Sa5p", "unlimited": true, "use_buffer_percent": true}, "90pl8rOu5R2oRBNH": {"buffer_count": 78, "buffer_percent": 15, "max_count": 65, "min_count": 52, "name": "OnRs0QyrB4EOLHRO", "unlimited": true, "use_buffer_percent": false}, "2J8h1B4zbDl45Sca": {"buffer_count": 49, "buffer_percent": 48, "max_count": 73, "min_count": 65, "name": "yzVMtf2K3nb0i0xM", "unlimited": true, "use_buffer_percent": true}}, "regions": ["g7VDasbRpx4gjIsQ", "uZUzszyNeWq7cQe7", "aSE3LaVsuxz97Hnj"], "session_timeout": 15, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'yIelhhrsat0r0GrQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '79' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'u3PRHnI8HHPRFKoe' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 82, "mem_limit": 43, "params": "hhdNXR6d0EubAfDt"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name '5T99YGvsR85Yy9oL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '11' \
    --offset '43' \
    --q '0e1vlc6oNun6oNNo' \
    --sortBy 'updatedAt' \
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
    --version 'JRAy4YcqZk0wPAmU' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'U5P4nrrsSyHbqS5w' \
    --count '5' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "fuIjK6HqN8pxGrAU"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "1U5nxqPf1aNRq1bQ"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "Jdin5J2a5SLIckQG", "ip": "dJm1o8QXzyqw4NE0", "name": "MRuhpeRwO6WGQMCz", "port": 75}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "5yT2owk5TgnCUP1M", "pod_name": "wX7g8bOXsP5RvUJn"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "q5cf27NAfewjcUaj"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'dfK2kCDhWw2DZGqc' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'cZJZBIEsP5Wddin5' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "WarLGd9SsToHIX2U", "configuration": "MorCzXn64ZYOLMsB", "deployment": "CFtzWuFENGVuK1mY", "game_mode": "BV4qStZ6B683T5E0", "matching_allies": [{"matching_parties": [{"party_attributes": {"vOXzhSSH2DeBSaXq": {}, "cZ8gU8eUBqtwgQ8K": {}, "TbHPQMuRTGQatRDN": {}}, "party_id": "npYFqOCdPWkpWx3F", "party_members": [{"user_id": "OqW2kgq4CkoFET2j"}, {"user_id": "dsFGFxJeWpbjIZse"}, {"user_id": "DfVukVwDq55PZlS3"}]}, {"party_attributes": {"YOzkjf0m74tK7mBY": {}, "tQhCoOuVt2XoBJep": {}, "zVmfKPQnPpbLbtgp": {}}, "party_id": "0a71OGqb3jsOWd8V", "party_members": [{"user_id": "vkJswN6Y4OziKoCw"}, {"user_id": "lECDZETIE0IX8UnI"}, {"user_id": "qYBv0WLs6jouq6zK"}]}, {"party_attributes": {"ymx3sNsD6VGuBVUY": {}, "TheFCr2DJWJBlb1u": {}, "zML2FlF2xbA1wHrt": {}}, "party_id": "mQXCCeypWoW6FnDs", "party_members": [{"user_id": "LEkITwn9GZFWfI6M"}, {"user_id": "c8NA76MhZuwAWVaf"}, {"user_id": "1GgHzYp3Xlgg761a"}]}]}, {"matching_parties": [{"party_attributes": {"SjyqZTDLR8gHNFoX": {}, "bL2NT7jB0kyZnn2u": {}, "MDKy4F4leBOMiDCA": {}}, "party_id": "TjD4wSYiHuJBA1Dx", "party_members": [{"user_id": "iLxGnc5Wgbt5XRrz"}, {"user_id": "Rim0iptLTsVW9Eaz"}, {"user_id": "eQOaB97xGdR1TNjg"}]}, {"party_attributes": {"Ckvz7DWK1t8f5gge": {}, "po4gb1oMwMiEj7GU": {}, "LzFecp1z0MxWuLFO": {}}, "party_id": "1yOunz3buHP3lCUR", "party_members": [{"user_id": "M1icWeMrCUmL2ulF"}, {"user_id": "MF0wwOvvc6IZYYwF"}, {"user_id": "j4tUBlagFbf3j1Yi"}]}, {"party_attributes": {"tSUrhVptd0IrONay": {}, "BPYKQBmh6UemNtRK": {}, "dd8cAgp84pDRH5Bb": {}}, "party_id": "5fs8U5e383z2Zagl", "party_members": [{"user_id": "Pr1Mvw0adfPY7pka"}, {"user_id": "9YsfMqmiEUvuovU9"}, {"user_id": "r6GkjCIJHoKSjnql"}]}]}, {"matching_parties": [{"party_attributes": {"KbnX1wt2Cq3X86nF": {}, "tYmfIe5PuJ0rUPeS": {}, "6PmMJWzbTDykmbgF": {}}, "party_id": "cwAHmkgd2ibNJ2wv", "party_members": [{"user_id": "aGzL1DoFMo3LQuWT"}, {"user_id": "LnCDg5f1OpSOg9nk"}, {"user_id": "0HDIXuxGTOzPod6k"}]}, {"party_attributes": {"J6DiB9zS21xjIvs6": {}, "jY7h8IJqpaJMm4Nk": {}, "3FxUCfJbnHiDRHfg": {}}, "party_id": "johhC2v065xS7XsX", "party_members": [{"user_id": "cZWGg1BbmIFJcZ39"}, {"user_id": "HaVFrC9Yjz1UTRrC"}, {"user_id": "qG6QHQk8IYIw8pym"}]}, {"party_attributes": {"zvjSsLNZoUzt2DHM": {}, "xd1Arv6XQinHEOjt": {}, "B1gJ5rVnUhy5qwWX": {}}, "party_id": "swASTnX4XY5JnKmi", "party_members": [{"user_id": "SnODpqFDEz5pp8mN"}, {"user_id": "SLg4uxsVXMM3cBOy"}, {"user_id": "gYMjhxQ4C0M86RM8"}]}]}], "namespace": "ru6uJxTCUwTY6Nj6", "notification_payload": {}, "pod_name": "MMtsDeMxHPbIRwYl", "region": "rLLtJsj0JK3S596x", "session_id": "AunF6oOWGjBRkWcS"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "vvaFhag4COwLJyiV"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'SB6TfwngkqgOSQNN' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'CBi1ehvXg06c0YaV' \
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
    --region 'gIXVsqHVbz5e5Fri' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE