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
    --body '{"artifactPath": "wuNxyjxUazDrC5jY", "coreDumpEnabled": false, "image": "StWFT6NsGKx8f0du", "imageReplicationsMap": {"IYG0UxRSn9GdPCdX": {"failure_code": "1kqivlfxqGfufvMH", "region": "fFJ6wQsNQRcAvsG6", "status": "M613DVUTGi4oOst2", "uri": "bs3mE9Hg9hULPAf3"}, "inHn8vV194Pwzgx2": {"failure_code": "KiqGxCcQKa5XvGRh", "region": "kLIHD0NdDZIY1NVD", "status": "vV4Sv9nriFMWWyO1", "uri": "1CjHFKoUx5aPXjOg"}, "cR7ijUOYDT7yQuw0": {"failure_code": "xjyN7juvXX6lyESK", "region": "gCQRzZe6pDKLyfcW", "status": "5QfmXMYPLwgvHHR7", "uri": "RkKYcyhBOdjfoAG4"}}, "namespace": "6ARxakRHIw7m95oM", "patchVersion": "Z5tzUKwk4acTUmO1", "persistent": true, "version": "wwSvi1Dm50khIWvI"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "g3hvse8gQbih20fZ", "coreDumpEnabled": false, "dockerPath": "tWci7vCI58m6NJ7O", "image": "ZDf3tH7LrkEeGDNM", "imageSize": 46, "namespace": "docUNBEf0WfaPtjA", "persistent": true, "ulimitFileSize": 95, "version": "c8NCgWUEsWSpB571"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "Y7ju6hzqIGuHZfQ3", "coreDumpEnabled": true, "dockerPath": "BgpeHN0IZPcZoEGR", "image": "Uu9FhhGUZk6MiYFD", "imageSize": 84, "namespace": "F3bCQOxT13pKFYiC", "patchVersion": "jD9y1JBTx1syuB7k", "persistent": false, "ulimitFileSize": 36, "uploaderFlag": "PKwIHLTOiswg5PKw", "version": "BriDzk5Vlx4m3tpi"}' \
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
    --body '{"claim_timeout": 4, "creation_timeout": 66, "default_version": "OKuhP1P5Zh1zRwcs", "port": 6, "ports": {"KrsMj66kZoIgM67Y": 43, "q2YI81JS734N41u6": 60, "hqUZ986feqA9mCa0": 65}, "protocol": "VTy8BgYdHKn0dvXI", "providers": ["8QatGRZ0HByikqsU", "3qgcoO9Z6IeKkrGY", "b5ETBdzPEnIq9h3X"], "session_timeout": 14, "unreachable_timeout": 63}' \
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
    --body '{"claim_timeout": 45, "creation_timeout": 80, "default_version": "IlFbKgjdet7UHYwd", "port": 86, "protocol": "hahMVGS2haYCpmw3", "providers": ["Kq8Gr2cbEo2yoXm1", "xzMryKfNxww862bD", "re1tDHox6hRC4Kcd"], "session_timeout": 91, "unreachable_timeout": 89}' \
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
    --name '9cb1ER93IqtTm4F1' \
    --count '82' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'eLzxI6lEDh3mCHIY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment '8zqWyoGMJDNP2wjp' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 54, "buffer_percent": 69, "configuration": "u26u4F2GCn0x0FPG", "enable_region_overrides": false, "extendable_session": false, "game_version": "WUNK0Ye7677omHCC", "max_count": 88, "min_count": 77, "overrides": {"KShg5A2j5PSaRYVm": {"buffer_count": 91, "buffer_percent": 35, "configuration": "htEn7dRP8IuVQpOg", "enable_region_overrides": false, "extendable_session": false, "game_version": "EfBTYS8vJgKV5Mzp", "max_count": 50, "min_count": 56, "name": "UFBRwWHJpxYwAgR4", "region_overrides": {"jrR8QbHoxLXLUDYH": {"buffer_count": 83, "buffer_percent": 25, "max_count": 7, "min_count": 36, "name": "ICfYWGGJOthU7Dps", "unlimited": true, "use_buffer_percent": true}, "kwsxensnDT2Cv9ln": {"buffer_count": 38, "buffer_percent": 26, "max_count": 5, "min_count": 71, "name": "jT7yB1kPRcrMbomb", "unlimited": true, "use_buffer_percent": false}, "rFrDYu6ddmNucx79": {"buffer_count": 63, "buffer_percent": 69, "max_count": 12, "min_count": 65, "name": "KppRuf8f0oFodiXH", "unlimited": false, "use_buffer_percent": true}}, "regions": ["b4ju9QXlUMaRhYOA", "ezCyp5gyIQ4igs8C", "BFpt0j02ZHAnDXPq"], "session_timeout": 64, "unlimited": false, "use_buffer_percent": false}, "nqfw6GbHJnnMmt7s": {"buffer_count": 17, "buffer_percent": 8, "configuration": "l5C03RAF8llpICD3", "enable_region_overrides": false, "extendable_session": true, "game_version": "3LWtZfOaiFdxsmNt", "max_count": 60, "min_count": 81, "name": "60O04qinxhFeh0ko", "region_overrides": {"zFtnfwXzQSXZV3GR": {"buffer_count": 10, "buffer_percent": 94, "max_count": 50, "min_count": 13, "name": "Ctq8OgciUWKQCDun", "unlimited": true, "use_buffer_percent": false}, "ySnHMaOTRKXxc9VZ": {"buffer_count": 56, "buffer_percent": 95, "max_count": 14, "min_count": 89, "name": "58Kq37gKWEXu9Gsa", "unlimited": true, "use_buffer_percent": true}, "dXf7qLRcSdSiJ1b0": {"buffer_count": 64, "buffer_percent": 13, "max_count": 46, "min_count": 92, "name": "arWVUKvTpjZ2vg25", "unlimited": true, "use_buffer_percent": true}}, "regions": ["pv8tRQxJXlRIX33I", "vqpa9AqMBjU4a79B", "rohI5O9ygJ8fTLdm"], "session_timeout": 97, "unlimited": true, "use_buffer_percent": true}, "pWMvSvDwipxcdOF3": {"buffer_count": 97, "buffer_percent": 42, "configuration": "k0BtWVUMMZdyP1p4", "enable_region_overrides": false, "extendable_session": true, "game_version": "5j1y1aNGzw1MFfcd", "max_count": 79, "min_count": 6, "name": "P62KtyFtJkRY7Qsl", "region_overrides": {"xwib1Wl4WKw0qp6Q": {"buffer_count": 93, "buffer_percent": 85, "max_count": 5, "min_count": 87, "name": "zZG8c0CeXlI2Yb8G", "unlimited": true, "use_buffer_percent": true}, "lmAlhevKsCWzvzqY": {"buffer_count": 39, "buffer_percent": 29, "max_count": 10, "min_count": 42, "name": "BFyemT8AjsGq0DeH", "unlimited": false, "use_buffer_percent": true}, "Royclog8WRs4ADkC": {"buffer_count": 97, "buffer_percent": 39, "max_count": 62, "min_count": 98, "name": "XJVGdqvgMISuQKF4", "unlimited": false, "use_buffer_percent": true}}, "regions": ["rjc0no9YGfkURWzP", "1ArTh5vtNBXkwvcN", "yfo9M8y5qjY1quI4"], "session_timeout": 92, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"8P2MYVWG7bOFNSlB": {"buffer_count": 3, "buffer_percent": 34, "max_count": 39, "min_count": 30, "name": "t5g0BjP9YCHEwFsL", "unlimited": false, "use_buffer_percent": false}, "H15r9yNDPmHjq0qj": {"buffer_count": 15, "buffer_percent": 47, "max_count": 4, "min_count": 39, "name": "q4ZBP2Amd3HcdyQE", "unlimited": false, "use_buffer_percent": false}, "QwAeEugXA1y1vPJS": {"buffer_count": 42, "buffer_percent": 28, "max_count": 51, "min_count": 68, "name": "tKyiN2DXQm1DWtuI", "unlimited": true, "use_buffer_percent": false}}, "regions": ["GmbsJKOKOrGFVbfU", "qNgBEcGokHtEFp5C", "tSoLV9trnQMa09Zk"], "session_timeout": 95, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment '1rPD1t1xYtUgjdIV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'Y8gPAbVe5t7XQEVD' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 94, "buffer_percent": 60, "configuration": "x1dbN3mnxVxwXsBQ", "enable_region_overrides": true, "extendable_session": true, "game_version": "hnTpcY9NwP2GYksn", "max_count": 29, "min_count": 70, "regions": ["WblXmFpDPl5rkdUE", "kBjlQcnNVycDoXtW", "zNEMXUaPrSYDok3Q"], "session_timeout": 7, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'dXGWRAvuBEro6JsZ' \
    --namespace $AB_NAMESPACE \
    --region 'UNysuOtTVWVpCREr' \
    --body '{"buffer_count": 3, "buffer_percent": 60, "max_count": 88, "min_count": 1, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'FEBefkGXvasXRng8' \
    --namespace $AB_NAMESPACE \
    --region 'Q1kOM5ilvMDnafFy' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment '9AEgYPn3a9oh3Q8c' \
    --namespace $AB_NAMESPACE \
    --region '7fdiUYXeBZCAcVN8' \
    --body '{"buffer_count": 93, "buffer_percent": 52, "max_count": 83, "min_count": 46, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'WLf1gvBYDmCtnlBr' \
    --namespace $AB_NAMESPACE \
    --version 'Mm5oQlyFZrDURumD' \
    --body '{"buffer_count": 28, "buffer_percent": 99, "configuration": "B9oRZ8uBUVtnOxr8", "enable_region_overrides": true, "extendable_session": true, "game_version": "1pCwbTAazsOxHrRR", "max_count": 62, "min_count": 47, "region_overrides": {"YOaMSUdWPTx1Gj01": {"buffer_count": 71, "buffer_percent": 72, "max_count": 4, "min_count": 5, "name": "XkhnYlxMFAzr6EdD", "unlimited": false, "use_buffer_percent": false}, "j7f7Is8b55Z8xjwN": {"buffer_count": 44, "buffer_percent": 14, "max_count": 19, "min_count": 80, "name": "oFUn9IUlqZRR5QOA", "unlimited": false, "use_buffer_percent": false}, "sHe2e8CIW9iqEsSc": {"buffer_count": 90, "buffer_percent": 25, "max_count": 46, "min_count": 23, "name": "RyQ6nBU8GMWrBFZJ", "unlimited": false, "use_buffer_percent": false}}, "regions": ["lkmUbKD9kyPseuTD", "6ZUt9jBudbPga1EW", "FFt0TJKEc6J1A8xS"], "session_timeout": 37, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'eM45Y3K4Fd8DAEKo' \
    --namespace $AB_NAMESPACE \
    --version 'pR4dOqrfkOtt4UYk' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'aVdkhPxr9e7qC1FS' \
    --namespace $AB_NAMESPACE \
    --version 'l7muN40nJBE9E8DO' \
    --body '{"buffer_count": 6, "buffer_percent": 75, "configuration": "WmG2rSfUfnQEJImg", "enable_region_overrides": false, "game_version": "1tFlIV6tnVq4WZDX", "max_count": 91, "min_count": 30, "regions": ["zkQYFOQZNAwtE9VV", "irXyI6DOv6vBJMjL", "hcfu9BEweMTDZP3i"], "session_timeout": 65, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'ye1C8mMIIiNk56zC' \
    --namespace $AB_NAMESPACE \
    --region 'C9Qkop4VY1rR2FIv' \
    --version 'TE6c91h4NMp4HtUm' \
    --body '{"buffer_count": 5, "buffer_percent": 53, "max_count": 26, "min_count": 67, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'TnvQD5YpDGxwcBG8' \
    --namespace $AB_NAMESPACE \
    --region 'kFiW2YozIOFNYmLG' \
    --version 'CLaFoUIE7xBX4PQi' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'jBndFb3l08ZG3vT2' \
    --namespace $AB_NAMESPACE \
    --region 'JQfFUXFzYz4QxpO4' \
    --version 'CwTK1xnufVi83jNn' \
    --body '{"buffer_count": 89, "buffer_percent": 35, "max_count": 48, "min_count": 77, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '47' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'YaPw1EBB6KgEkccs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'dLXX60LBiteydexw' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 65, "mem_limit": 68, "params": "J4fiZFYi0MAltz2X"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'AHZcZcrJebQtPWmD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'Qhh9OwIo90dV8MYu' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 44, "mem_limit": 99, "name": "XTN7QZ4JD7gcWtG3", "params": "hYoYUmdafWOxkOjN"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '8K0QVP972hZO3yKb' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 33}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '21emJrNNwXQVS5ur' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'rh8SDDUJeXJ8kq6f' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "M7zlfADYKz4QHlw1", "port": 45}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'NfN1VwBBOkIRKQu8' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    --count '42' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'Dy5zGYj6rNUmy3Wp' \
    --version 'ebnhlOkDsaCYaCJa' \
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
    --imageURI 'DoDH7MUe3JxnE50Q' \
    --version 'kp0DBnxmv9YRGFva' \
    --versionPatch 'e5edxJZ4jbTTWGBa' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'q41OZYx3uQYb0Gan' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'y5SnDJGmEClvhyOt' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'iOkV7SkzGowOUAIe' \
    --versionPatch '8X9q82Lsr5wUfp2K' \
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
    --region 'z9yCg5VS5Xxx9w7C' \
    --count '23' \
    --offset '22' \
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
    --region '5fQsRB8U2ZhHr0pE' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'Wn1z4hopJ491ukiq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'ySdpKN0rP0wynEhn' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'VjIsc9jvh1mQ2avY' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region '0HD01nmXuA8lT4XG' \
    --withServer 'true' \
    --count '44' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'zxKhRRj1S07zW6AY' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ks3DICZakASj92Dr' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "o6izMP8FR72jZ8wJ", "repository": "iKk51LjcHb882rnl"}' \
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
    --name 'VjYZXEUxCJet2s4Q' \
    --count '99' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'kQAAK8MYwg11iovl' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 78, "buffer_percent": 81, "configuration": "iddbvgXtyr3BgZTS", "enable_region_overrides": true, "extendable_session": false, "game_version": "A042qqazylvILxcb", "max_count": 32, "min_count": 23, "overrides": {"ayZJIr9dRikAXDYB": {"buffer_count": 38, "buffer_percent": 0, "configuration": "vhQVhESUBGAaz9mk", "enable_region_overrides": false, "extendable_session": false, "game_version": "Mu6gICpTqm3VVGOi", "max_count": 1, "min_count": 40, "name": "FdaocP05DA2VLxPW", "region_overrides": {"GfjKrgeU0xMlhRSU": {"buffer_count": 15, "buffer_percent": 83, "max_count": 75, "min_count": 23, "name": "tLVDubSSgdI255fC", "unlimited": false, "use_buffer_percent": false}, "f5puNVAdPeloDuY0": {"buffer_count": 46, "buffer_percent": 43, "max_count": 24, "min_count": 50, "name": "cCd4edSBKCuA6b4J", "unlimited": false, "use_buffer_percent": false}, "XIUWdtFcMWENUzWS": {"buffer_count": 45, "buffer_percent": 45, "max_count": 75, "min_count": 35, "name": "pMrxWuX1txd6en51", "unlimited": true, "use_buffer_percent": true}}, "regions": ["hmng3B6tSZoc63QD", "IP1LT1u1gxqJn0Ds", "70aeYp1xpLj9Rqtu"], "session_timeout": 10, "unlimited": true, "use_buffer_percent": false}, "UGWrrHe7w7QXbNoD": {"buffer_count": 65, "buffer_percent": 14, "configuration": "1fKlQhVIcI9asHiB", "enable_region_overrides": true, "extendable_session": true, "game_version": "F3anRHmmR5XOK00Y", "max_count": 74, "min_count": 66, "name": "qIs9jXTGg8E7ghIC", "region_overrides": {"evtZgRXHQk9AslSE": {"buffer_count": 27, "buffer_percent": 76, "max_count": 58, "min_count": 87, "name": "stCrw5eOVPI8Vo0B", "unlimited": false, "use_buffer_percent": true}, "S5N2PmYMAaH42ki3": {"buffer_count": 93, "buffer_percent": 83, "max_count": 34, "min_count": 13, "name": "k4WMRRgxu50rdkxZ", "unlimited": false, "use_buffer_percent": true}, "61Q6sS4kej2Clynm": {"buffer_count": 75, "buffer_percent": 10, "max_count": 30, "min_count": 27, "name": "xAPUiUXvlIsrtpke", "unlimited": false, "use_buffer_percent": true}}, "regions": ["UJ5oyGv7qqCQTYXW", "DjXr7aeAzYBOqsff", "T6fjADXPkZtiQfHu"], "session_timeout": 95, "unlimited": true, "use_buffer_percent": true}, "f2Gtuz9SFEjVzvF6": {"buffer_count": 0, "buffer_percent": 48, "configuration": "nSoXXsFpuosuiAaE", "enable_region_overrides": false, "extendable_session": false, "game_version": "Lxbo1yHwsUvLz8Wv", "max_count": 12, "min_count": 0, "name": "er1kt10famKhkI2N", "region_overrides": {"b2XDvzWGH2a0JuNZ": {"buffer_count": 39, "buffer_percent": 66, "max_count": 24, "min_count": 53, "name": "ngEdReVpekGqT4L4", "unlimited": false, "use_buffer_percent": true}, "WJH6YMjka0USRCm1": {"buffer_count": 46, "buffer_percent": 12, "max_count": 97, "min_count": 30, "name": "EmMI0htsu10MLnEA", "unlimited": true, "use_buffer_percent": true}, "bQfs9PbHvf5treGg": {"buffer_count": 71, "buffer_percent": 71, "max_count": 60, "min_count": 74, "name": "oepIziWBB7PCbLqV", "unlimited": true, "use_buffer_percent": false}}, "regions": ["yhW0iWBE9julOshJ", "bYlTIViT3VRSp7nQ", "A0tjxnZEgr0NFdig"], "session_timeout": 27, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"t44XFvXB4ZoUzVD5": {"buffer_count": 9, "buffer_percent": 26, "max_count": 66, "min_count": 98, "name": "fBFE2IAW9GUlFb7T", "unlimited": false, "use_buffer_percent": true}, "Xi69tD4bcZ9P1RbD": {"buffer_count": 87, "buffer_percent": 62, "max_count": 69, "min_count": 37, "name": "jpHZa2cyaqde2XPf", "unlimited": true, "use_buffer_percent": true}, "GySQuo7ALx2NrIDa": {"buffer_count": 42, "buffer_percent": 67, "max_count": 49, "min_count": 51, "name": "jK5yj14TWEeaWCl5", "unlimited": false, "use_buffer_percent": false}}, "regions": ["qinyoV7krCHOsuxb", "k1eyedIGHwtjvVtY", "CP2QwWAR5dHEVSNb"], "session_timeout": 49, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'TlZynLhoT0zdopsl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '2' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'UGNUH4WbEP60Blk4' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 92, "mem_limit": 69, "params": "VYE88IT6pMIa26cb"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'tJyUGo5zNJiE7WS5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '10' \
    --offset '26' \
    --q 'qKUeUk6DqLHwuGTc' \
    --sortBy 'updatedAt' \
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
    --version '9kbtgZbL0isQ48FB' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'gZI7izazBunkeDES' \
    --count '20' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "6VFu2SPukhkbarQW"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "RCxyMOWr7GUFy6Io"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "g3gCxvnNP5byI2ar", "ip": "cbhfcpzYmqfxQTz8", "name": "Pd78GB9oL3SjvzkW", "port": 52}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "5wV1lEsrf12WYgu0", "pod_name": "eoRRnvtUbwcyfMu7"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "fAFbnVkgiWwpzJqE"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'c41RWeJf4kN0iB7n' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName '6f3FcD6UOD9z41wd' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "GJsBRoBUqZzumzE7", "configuration": "m0p9q7IGMM48Gtnl", "deployment": "LWD5L1oxtJyxeAAW", "game_mode": "40duyEDJlzvUYudF", "matching_allies": [{"matching_parties": [{"party_attributes": {"yi7KFaFs0z1Qyutm": {}, "KImKGuB1WnAelSSt": {}, "itsrjg2ClKTROecW": {}}, "party_id": "JVp49RxyyXJZZ2QK", "party_members": [{"user_id": "1NXkZJEVLC3RG10I"}, {"user_id": "hZXicaxlZGmh09sT"}, {"user_id": "ZM3TiTAyK5vNlfLJ"}]}, {"party_attributes": {"eJLBN8qMTh6yP6G5": {}, "a4r4Ka32UoyW8RXL": {}, "XPKZD32ZHI3qU2FG": {}}, "party_id": "zU6SYq04eXyRhu6V", "party_members": [{"user_id": "Ndy14zL9iRkmBy4L"}, {"user_id": "v0xiVUy64AsgHSCB"}, {"user_id": "ZdqG2Ra9bIc6XUXb"}]}, {"party_attributes": {"gBVQBUrscnj1SEol": {}, "bzb14csji7svFViY": {}, "TdW7d2xyPTThTJRo": {}}, "party_id": "bTvUFQ1Vx8fwyiSf", "party_members": [{"user_id": "HuJxRXXPGTXzthkg"}, {"user_id": "lGtQU0qeDxX2ACIv"}, {"user_id": "9TXUvHaHPUOhJZTh"}]}]}, {"matching_parties": [{"party_attributes": {"Z5PuenUBmjwp2ems": {}, "jIYpRNGjrYp18Rbk": {}, "nM9TPRBrnDe6p9jD": {}}, "party_id": "mnXk8tb5iKpwTMmm", "party_members": [{"user_id": "wFmm4im3P01cTBRR"}, {"user_id": "Sqkokd3wwOIxu0XS"}, {"user_id": "KF0KcHanjZBk6JRV"}]}, {"party_attributes": {"ZBgEiKuVz8aFdo6u": {}, "sWJoXBLzYgCaWSVh": {}, "AgGTu969sA5jvwW8": {}}, "party_id": "AmqzJxbML4ApqHhr", "party_members": [{"user_id": "PV7ViDXiEZ21WPnu"}, {"user_id": "n4bX4B1wmWI7yxmd"}, {"user_id": "ZPasCTtDTQ01Ns4R"}]}, {"party_attributes": {"I1nlX3HD5VpcBBCN": {}, "BfFByHVJhvlMqNCu": {}, "jeXfRpICe6d6XDB6": {}}, "party_id": "vwxKdoreQbFvAV3V", "party_members": [{"user_id": "GPY8SZxazbCIdEQ4"}, {"user_id": "PxLsKdzKiRKhfzaJ"}, {"user_id": "3TgzEsi7rsVHgl0B"}]}]}, {"matching_parties": [{"party_attributes": {"5PDu80zifiGAQi0v": {}, "Y2q1MfG2TpXLU44I": {}, "Vv3yVKT9OrJhxphu": {}}, "party_id": "aNgSzinWrvo8s6HS", "party_members": [{"user_id": "u0gyggEqTAAicBtD"}, {"user_id": "pcuxRxjbjjy9VMjp"}, {"user_id": "Z0szP1WCt9lnKcVj"}]}, {"party_attributes": {"EZqUCivCElmfWb9i": {}, "JerMpeUovl1oudRs": {}, "7akLoU1jZQWfP1VC": {}}, "party_id": "3j0a077CzCdbmwRK", "party_members": [{"user_id": "opWRdOX6Mdo4uXoE"}, {"user_id": "7ww2lFHjV9QfMLW5"}, {"user_id": "SOKIGKGCcKqukAMy"}]}, {"party_attributes": {"WsfswI6d6jiJujou": {}, "Mut5btrscDu1VoYN": {}, "K3ysx7eIL4NL9TTj": {}}, "party_id": "obFQtzirpDwN7Jo6", "party_members": [{"user_id": "zWwZnyVdL4m9LhUe"}, {"user_id": "MESmgVfIoEh5KuTY"}, {"user_id": "1SGkfeobaxzyFI9T"}]}]}], "namespace": "24YQkxJ0gZnh8smW", "notification_payload": {}, "pod_name": "bggTAmcwrMYi70LW", "region": "CPC8m3SpZv6WgfdD", "session_id": "DCK9DvbGEMJUO45q"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "g2ewiRLduQKAipky"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Kh3U2Bds7uxSkf0F' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID '50g69DPw8u9qYVvF' \
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
    --region '6SsEaAUMHHS6Ndhf' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE