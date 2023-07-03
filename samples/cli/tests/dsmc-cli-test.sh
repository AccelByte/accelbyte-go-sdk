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
echo "1..81"

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
    --body '{"artifactPath": "uioTzpSmIZkWsaVE", "image": "FIUKcNg3r4uOiG6K", "namespace": "zs5b5q4XHupCzTt7", "persistent": false, "version": "3tPwyhZ6pwOTCVZB"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "4odOzIs1ruQ8AjRb", "dockerPath": "yY1ilSXJVGjgF2jV", "image": "TjWq3kxayuoBUz84", "imageSize": 24, "namespace": "IHXP1xkw4nsum4Y5", "persistent": false, "version": "nwaRgTj2ZXJzv9ZQ"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "R9ooGw8KCwaSyvh9", "dockerPath": "xX9VqJHJMphFFNNz", "image": "pa6BQl3dd1qwhMaM", "imageSize": 56, "namespace": "g0qhuoQQkizqnNeX", "patchVersion": "3EaeNnSWh1iovtzW", "persistent": true, "uploaderFlags": [{"name": "SHk9Vq5SKKtJSFQi", "shorthand": "VquRJf8T24Bd4K6X", "value": "Ioe65COwc2mnHu9v"}, {"name": "GGLwvKFo7Olg7hDf", "shorthand": "HjMg6c8g5ZXuAaF9", "value": "hDl2UWaYhzXSTXDI"}, {"name": "DAn9xH3yxrbawyqd", "shorthand": "SaVAAmXple1tTrkJ", "value": "YiSiBNgcGLJfXfWH"}], "version": "XixOG1X23eOI4YJQ"}' \
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
    --body '{"claim_timeout": 56, "creation_timeout": 5, "default_version": "FTDPHfDBKo92LuT3", "port": 73, "ports": {"6ggJyw86D9CXkJqe": 16, "OFCSi0BWvD8xpULd": 14, "81iF1nHdHDe3GNsj": 56}, "protocol": "BYC9DZXH1fmlfsZy", "providers": ["DAgCsjB3xbFDGyfv", "ZvV333bLIPsurOif", "jb0U6sv0AisXLSBn"], "session_timeout": 2, "unreachable_timeout": 90}' \
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
    --body '{"claim_timeout": 48, "creation_timeout": 39, "default_version": "yftIpghQGBUPR6WD", "port": 59, "protocol": "sc8pJcD47lWqa8sQ", "providers": ["vxzLHzK5FtGy4lgs", "vGXNGiCOMtujy79H", "KrBnePhgJBZZwJXR"], "session_timeout": 15, "unreachable_timeout": 75}' \
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
    --name 'UWVklxoN2JHEpYe0' \
    --count '16' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'jqoLCLKQxJw2GepG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'nZ9XX1w2Qw4h4jy5' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 68, "buffer_percent": 3, "configuration": "30yX4Ucm2fTGyaE5", "enable_region_overrides": true, "extendable_session": false, "game_version": "SnvhsyCzj79WqK36", "max_count": 83, "min_count": 34, "overrides": {"QZ1CiG8ZejzWtWuK": {"buffer_count": 67, "buffer_percent": 80, "configuration": "uwzVPC3uRpwj4rMy", "enable_region_overrides": true, "extendable_session": false, "game_version": "r4PxHpqopI9FAFIb", "max_count": 27, "min_count": 91, "name": "34yRsuZ1JPIHBQVt", "region_overrides": {"t9fij9JpqT5z7s1p": {"buffer_count": 82, "buffer_percent": 43, "max_count": 45, "min_count": 56, "name": "7ckdxhnBUOiy0kwc", "unlimited": false, "use_buffer_percent": true}, "ZH254Spi7p0cgEy2": {"buffer_count": 1, "buffer_percent": 77, "max_count": 9, "min_count": 49, "name": "g8UnJv4sME76pIwU", "unlimited": true, "use_buffer_percent": true}, "AZdYx1aJMEzKSN92": {"buffer_count": 81, "buffer_percent": 47, "max_count": 12, "min_count": 53, "name": "VjieFNJOhfhN0hlo", "unlimited": false, "use_buffer_percent": false}}, "regions": ["38OalmULnUrIVsiB", "t6upsqCZpAgq1g5q", "Nf2gy5eJoQByTcl8"], "session_timeout": 25, "unlimited": false, "use_buffer_percent": true}, "bnR5TFUZKuwNW445": {"buffer_count": 74, "buffer_percent": 52, "configuration": "lKPnVGKstazH58WI", "enable_region_overrides": true, "extendable_session": true, "game_version": "ZIi3LuOONqiATU4I", "max_count": 86, "min_count": 67, "name": "uG1q5MiQsVzVzY67", "region_overrides": {"LNCzih2Ry3SiwPWl": {"buffer_count": 32, "buffer_percent": 42, "max_count": 27, "min_count": 100, "name": "VFgvj0afVllVlu8b", "unlimited": false, "use_buffer_percent": false}, "1T0lZfr1YJ3LbcZs": {"buffer_count": 26, "buffer_percent": 64, "max_count": 2, "min_count": 41, "name": "dY8JjOijW8ZejFW2", "unlimited": false, "use_buffer_percent": false}, "EbhMiaoLwjbr0cUj": {"buffer_count": 43, "buffer_percent": 73, "max_count": 85, "min_count": 16, "name": "uqCvXautN0qk8SFk", "unlimited": true, "use_buffer_percent": true}}, "regions": ["nP6u5XXzIqKwuV2b", "8ouvzrkruo0ItcXD", "WumRnpGeU7MpgFKh"], "session_timeout": 84, "unlimited": false, "use_buffer_percent": true}, "pYwNyo5sjxkmSmVu": {"buffer_count": 92, "buffer_percent": 36, "configuration": "7Hk32zh91hinBSq1", "enable_region_overrides": false, "extendable_session": false, "game_version": "utCdB1jkj9wcynxm", "max_count": 89, "min_count": 97, "name": "J97k6GqVAw1EgURI", "region_overrides": {"QQGII5T6oboKy2nK": {"buffer_count": 9, "buffer_percent": 36, "max_count": 7, "min_count": 50, "name": "QuDzkb2QNIth1sFn", "unlimited": true, "use_buffer_percent": true}, "JYHBb0ESSd26U3TC": {"buffer_count": 24, "buffer_percent": 76, "max_count": 76, "min_count": 12, "name": "kZMmzvxy7lJcsCge", "unlimited": true, "use_buffer_percent": false}, "dLgGw41wEow5J6QI": {"buffer_count": 90, "buffer_percent": 95, "max_count": 60, "min_count": 66, "name": "bMuPYx3e71DzmajX", "unlimited": true, "use_buffer_percent": false}}, "regions": ["P8bZeVVgF0xZj9fX", "F5qRqxvjMQ6TnB7x", "axQQU7gnw4ftM8hf"], "session_timeout": 66, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"aqWBSucXwfclgLHC": {"buffer_count": 18, "buffer_percent": 10, "max_count": 69, "min_count": 51, "name": "jIjmjFYm9PvpK9DC", "unlimited": false, "use_buffer_percent": false}, "gio3QYVwl01t9l1G": {"buffer_count": 36, "buffer_percent": 46, "max_count": 20, "min_count": 65, "name": "ut57cgrSvBeIgjr4", "unlimited": true, "use_buffer_percent": false}, "psW8AqxiG6GgQUwY": {"buffer_count": 24, "buffer_percent": 54, "max_count": 97, "min_count": 75, "name": "wOt4SFhoDqMzRnpI", "unlimited": true, "use_buffer_percent": false}}, "regions": ["w13cNnJpU9AdAeHV", "FZymfHoRbBzQKBAE", "rlmFtwKIc6gsSHgf"], "session_timeout": 42, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'HJ1aFpKumz36W0Ak' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'Mvh7xxK8gGJXfcfb' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 65, "buffer_percent": 11, "configuration": "x8dZ3tTKiQBXUpAC", "enable_region_overrides": true, "extendable_session": true, "game_version": "kyhMqZeJIXTXp0tt", "max_count": 79, "min_count": 17, "regions": ["8vBC3hIFhdiZ4KZd", "lJzyF7b1lqJWqVXC", "iGEKOoUZCpTUShwU"], "session_timeout": 50, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment '4ds6P4J8XudnJqTt' \
    --namespace $AB_NAMESPACE \
    --region 'xyxE7RU0OV0c4elY' \
    --body '{"buffer_count": 30, "buffer_percent": 20, "max_count": 91, "min_count": 49, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'fpfwmbJl1wrsl3hW' \
    --namespace $AB_NAMESPACE \
    --region 'TCTEp6z3hAYOELLE' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'JJQowogNPklkmE9b' \
    --namespace $AB_NAMESPACE \
    --region 'E8aQ0arxnj7Jpsfm' \
    --body '{"buffer_count": 19, "buffer_percent": 15, "max_count": 65, "min_count": 70, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'T96XnWXUntUInx7U' \
    --namespace $AB_NAMESPACE \
    --version '0GSeuFvzIgTVFZCI' \
    --body '{"buffer_count": 85, "buffer_percent": 1, "configuration": "28gWqXjLDHWrL1cg", "enable_region_overrides": true, "extendable_session": false, "game_version": "6PJ86lq79nUnJsFW", "max_count": 64, "min_count": 38, "region_overrides": {"b9zeZWAZ1x0X6Kip": {"buffer_count": 52, "buffer_percent": 53, "max_count": 49, "min_count": 6, "name": "wJkhs3nmhOAnXtnw", "unlimited": false, "use_buffer_percent": false}, "fZfPeSyWmqbj2BZ5": {"buffer_count": 98, "buffer_percent": 20, "max_count": 2, "min_count": 41, "name": "mpDkjiy95YEzptKo", "unlimited": true, "use_buffer_percent": false}, "xrRYC9OkQm11EEED": {"buffer_count": 83, "buffer_percent": 90, "max_count": 41, "min_count": 14, "name": "DgCapeyThP9yEYLV", "unlimited": false, "use_buffer_percent": true}}, "regions": ["2bkjMCud09URUUV9", "prozeJu8r0RcQeRu", "OHE2DNE16zD99NtM"], "session_timeout": 78, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'ZmWi2om7YYGgDDru' \
    --namespace $AB_NAMESPACE \
    --version 'mIeGKYAQjJA0dnsR' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'p9W1iCkkFwfyA27g' \
    --namespace $AB_NAMESPACE \
    --version 'Crdn2XDaZKEVt3NV' \
    --body '{"buffer_count": 48, "buffer_percent": 71, "configuration": "bD16SWmdFFEKJOSx", "enable_region_overrides": true, "game_version": "i8wjeUMux64gJ12w", "max_count": 74, "min_count": 2, "regions": ["KD92aFcQUVVc6gUr", "OLs9zgjzR1SuWeOo", "QDbQuHGkbMcwOXkY"], "session_timeout": 75, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'TKCzhtfPhovHoNmr' \
    --namespace $AB_NAMESPACE \
    --region '14xKqPIo34x7Ma5d' \
    --version '4jZ1rX3Fy6H1qApG' \
    --body '{"buffer_count": 54, "buffer_percent": 67, "max_count": 22, "min_count": 63, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'mxngsap4LP5IeRuT' \
    --namespace $AB_NAMESPACE \
    --region 'hbp9PFFjTULkkVSy' \
    --version '1d1h0PAvReFe7zRO' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'yJJEhjVAWDTnPNki' \
    --namespace $AB_NAMESPACE \
    --region 'EIUxJz9wJt77i6WA' \
    --version 'IeFMfFJuoWFpq4pr' \
    --body '{"buffer_count": 4, "buffer_percent": 16, "max_count": 63, "min_count": 80, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '63' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'vNBVzCuURirShsvN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'qCCWHjTHkcWJA4Al' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 100, "mem_limit": 68, "params": "NjRgOltzVDaJcT4I"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name '6JN5tOBuHfIg2GYE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'SA4SdLvdDjAzFBiY' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 41, "mem_limit": 44, "name": "Mj1tiFgOwR8qaoWu", "params": "K46kDfwNdPiTfZYM"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'L4hhD7inyqNrMSTh' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 39}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'FOa9PIwAmJU5n9c4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'QFJVDPw8bKXdQQqW' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "nMHFNdrpTSIODR0A", "port": 12}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'Z4CDpK4Z5ocnVmtj' \
    --sortBy 'version' \
    --sortDirection 'asc' \
    --count '96' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'uDswB7q733dwS9IU' \
    --version 'WFpGDFMag9eqJA2H' \
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
    --imageURI 'lJ8DdF3yNEVquPVp' \
    --version 'RifB5kmcMTmuuRTY' \
    --versionPatch 'q1ZAVxWKuQBVPXYo' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'GjHucwGSwlINYwc3' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'AsHEmBqkpNtPKTpI' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'nPrYhfYiao99TYJX' \
    --versionPatch 'nMcncjCpgTBMEaXd' \
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
    --region 'fbSIAGAf5h4ItaGZ' \
    --count '59' \
    --offset '43' \
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
    --region 'Cy4Qq68Zy19s3wIC' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name '11x8TTgDkFHzz8y0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName '9ZotCI5MXCays2ZT' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'kay2EwB19EmGEyM9' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'gVEvK7Dnitm3EOyS' \
    --withServer 'false' \
    --count '42' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'rJAOh81CMyDyFRbp' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'RBuxUY0AwLUNE38z' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "EHG96bPEuCMW0C4n", "repository": "WEO5jM1ijHuKkMDx"}' \
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
    --name '5BA9RQV8YVKuoPGO' \
    --count '77' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'V2bxgHSTkrX0CI2Z' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 99, "buffer_percent": 32, "configuration": "U5Ll6Hug0HRGjTl0", "enable_region_overrides": false, "extendable_session": true, "game_version": "mylPwE99zrJ8Bpnf", "max_count": 38, "min_count": 89, "overrides": {"rnh5TLot7t5g6O0L": {"buffer_count": 62, "buffer_percent": 10, "configuration": "iP8lsWQ0P1de1OTm", "enable_region_overrides": true, "extendable_session": false, "game_version": "lSh4sWzekL58vECC", "max_count": 15, "min_count": 55, "name": "U1O93dVZ2USoUn5X", "region_overrides": {"nG9opuM9NaOuWWnn": {"buffer_count": 88, "buffer_percent": 44, "max_count": 1, "min_count": 63, "name": "lJE2wqwh53dldqRx", "unlimited": false, "use_buffer_percent": false}, "bfGWFss4BhJG2iZF": {"buffer_count": 63, "buffer_percent": 14, "max_count": 50, "min_count": 97, "name": "DUWZHfeZIm1ISTs0", "unlimited": true, "use_buffer_percent": true}, "G1YvKh7dKpwxJ7SX": {"buffer_count": 19, "buffer_percent": 9, "max_count": 38, "min_count": 12, "name": "gbDVXsIKES3607CN", "unlimited": false, "use_buffer_percent": false}}, "regions": ["r1whWF1hLefPKmah", "6YjE6lgZRlMSueHD", "PSOQCkUNiZ7S5UXj"], "session_timeout": 91, "unlimited": true, "use_buffer_percent": false}, "fWz6Rbg0OFVXLnXO": {"buffer_count": 17, "buffer_percent": 60, "configuration": "z6HovkbjW6R60VEJ", "enable_region_overrides": true, "extendable_session": false, "game_version": "IKqukB3KlIkYL4sM", "max_count": 23, "min_count": 42, "name": "gLJdeIUJ4ZPEWQle", "region_overrides": {"4V3jspRNufXUfcvW": {"buffer_count": 14, "buffer_percent": 14, "max_count": 92, "min_count": 94, "name": "UENMjOZuTUUJBe6M", "unlimited": false, "use_buffer_percent": true}, "QKhYA3c8QyAm5qb1": {"buffer_count": 57, "buffer_percent": 26, "max_count": 39, "min_count": 33, "name": "UNUQFjEIrrzxr2kH", "unlimited": true, "use_buffer_percent": true}, "T6AHntVyqjConXvl": {"buffer_count": 49, "buffer_percent": 95, "max_count": 7, "min_count": 68, "name": "sBrGi1Zk2O6eAAsn", "unlimited": false, "use_buffer_percent": false}}, "regions": ["jLm4sgYKx5FPwLmI", "oMxMej3EqUEYaVkr", "8GddTurYRafmEcWk"], "session_timeout": 94, "unlimited": true, "use_buffer_percent": true}, "wPvEz6Aig2IcHmbT": {"buffer_count": 38, "buffer_percent": 43, "configuration": "klgfT0l6OyPKw9P7", "enable_region_overrides": false, "extendable_session": true, "game_version": "6gllRcIMD10sYeRU", "max_count": 55, "min_count": 54, "name": "LOud2SHPZGrJmXij", "region_overrides": {"jjPT78KqT3My8REK": {"buffer_count": 19, "buffer_percent": 79, "max_count": 31, "min_count": 28, "name": "p9neBEIJ7OmldAdd", "unlimited": true, "use_buffer_percent": false}, "xkkw1ra2xCQTRXAu": {"buffer_count": 80, "buffer_percent": 3, "max_count": 88, "min_count": 63, "name": "0k75vvLhHuc4bxRk", "unlimited": true, "use_buffer_percent": true}, "8MLUGl1nEYjG5WiO": {"buffer_count": 2, "buffer_percent": 16, "max_count": 19, "min_count": 80, "name": "S0Uvxue3gNm3Eayz", "unlimited": true, "use_buffer_percent": false}}, "regions": ["VWbx6RVMMuU0ZHkY", "iNMeMIVEU84uUViZ", "GWHzGlpS5ywAUZhA"], "session_timeout": 85, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"rV24Gxpwi5npINdz": {"buffer_count": 6, "buffer_percent": 56, "max_count": 76, "min_count": 27, "name": "pMG8QY9AamqtHZ2P", "unlimited": true, "use_buffer_percent": true}, "hqgmJAlW9eplYlvm": {"buffer_count": 52, "buffer_percent": 51, "max_count": 9, "min_count": 1, "name": "bKeMWyxDrYBbhGMA", "unlimited": false, "use_buffer_percent": true}, "bGftRTccLAdNzPiu": {"buffer_count": 57, "buffer_percent": 51, "max_count": 85, "min_count": 83, "name": "jj8aQ6WBk1gCZLmO", "unlimited": true, "use_buffer_percent": true}}, "regions": ["NkPKptJWBhflpBWg", "Gug1rMumcldqCsXF", "knRf0mVaEMXg84NY"], "session_timeout": 72, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'v3W9hfpcG2kvrfcG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '75' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'eB24zNSL19LESrgi' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 17, "mem_limit": 16, "params": "FZ9OTVmRQvHZSTOT"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'J6zd0VvNSL9XyUeh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ImageLimitClient
samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'ImageLimitClient' test.out

#- 65 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version '3BYaZEnPvR7Gb1M2' \
    > test.out 2>&1
eval_tap $? 65 'ImageDetailClient' test.out

#- 66 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'BLjE0zoT1Q7Vs4T4' \
    --count '3' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 66 'ListServerClient' test.out

#- 67 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "R781wGqvQb8GwxBf"}' \
    > test.out 2>&1
eval_tap $? 67 'ServerHeartbeat' test.out

#- 68 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "j1SPxzbBfDF8GNJh"}' \
    > test.out 2>&1
eval_tap $? 68 'DeregisterLocalServer' test.out

#- 69 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "YNwTXrkwnjsGhY9r", "ip": "TLXGzmyToUegPEpA", "name": "DK7yL3SzhZYEfmMp", "port": 18}' \
    > test.out 2>&1
eval_tap $? 69 'RegisterLocalServer' test.out

#- 70 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "kihPlnNcSwUGU2NQ", "pod_name": "zOumWZgbfdwYTvt0"}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterServer' test.out

#- 71 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "31HpmUBPxRVLbN8i"}' \
    > test.out 2>&1
eval_tap $? 71 'ShutdownServer' test.out

#- 72 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'EQd0xNOXuL2ALJBv' \
    > test.out 2>&1
eval_tap $? 72 'GetServerSessionTimeout' test.out

#- 73 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName '3PludCQpuYaY04rW' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSession' test.out

#- 74 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "fH6AXzB4sUCp7dmC", "configuration": "jHmRtGVS8kyAC3Ne", "deployment": "Aklilz7WHamdhLGQ", "game_mode": "l6JPOUF3lEmjTEur", "matching_allies": [{"matching_parties": [{"party_attributes": {"vLqlL0RKrWgDQzKB": {}, "Vohy4wN32I1X5j7Q": {}, "yEJWxcTUySaa62fo": {}}, "party_id": "w9XAeX1Hf6W2LfpN", "party_members": [{"user_id": "GAlWHk29Re6E5i6F"}, {"user_id": "DXXzQZS00N1oDVMn"}, {"user_id": "Go4nR48Udu1nYkbx"}]}, {"party_attributes": {"zx0xTpDwdM5gS6W9": {}, "PgZcOM2fJUBWYWqI": {}, "koJrshQWUsNVpRtb": {}}, "party_id": "enK9QApZKoMxxBId", "party_members": [{"user_id": "7I6vso96YvUaUvir"}, {"user_id": "Xr5jECPzysIKmHS0"}, {"user_id": "OwFt74HJyqA78h63"}]}, {"party_attributes": {"AhtI3HjsdQ6Scaaa": {}, "NaW5gCNHDegjvox3": {}, "EYeuYqz3wZQD5Qao": {}}, "party_id": "v2KzmxXjrGXnvZ0n", "party_members": [{"user_id": "UiSRXamtHXw9Wykv"}, {"user_id": "1qN9B6HQqPWKUgjS"}, {"user_id": "B8jjgYZr2UCrTjET"}]}]}, {"matching_parties": [{"party_attributes": {"maOB2a0DxUhbB7Du": {}, "7SvCCxoI8PPnnJpY": {}, "1LVN2fQgPljgl9CK": {}}, "party_id": "rye6D63GYBwP99Dk", "party_members": [{"user_id": "K8PzEf4dwtyHPZvn"}, {"user_id": "YlFYgAOkLbQZyGWo"}, {"user_id": "c16jLlKeZHMI7ScV"}]}, {"party_attributes": {"pnudiL2fcFCl6Grf": {}, "aesA7vJcO9jZYlps": {}, "21zpmCfBKP3rkGUy": {}}, "party_id": "AbgDORtujxaaOzif", "party_members": [{"user_id": "QlKlTZ6WX8UwyAfW"}, {"user_id": "FIowbH2WDRiy1xA3"}, {"user_id": "HVpN6mrGyLjVHa63"}]}, {"party_attributes": {"1afefIJnUl62yH1o": {}, "Pfex7YsUsmNqLRIV": {}, "JJ6IurpUSpxjQb4Q": {}}, "party_id": "Di4OWMbtTAGpkJ8X", "party_members": [{"user_id": "6gCcjCsNazVI5UcF"}, {"user_id": "Eim2tRKEktz9lrlx"}, {"user_id": "DqGaZQg8iXoVsYSx"}]}]}, {"matching_parties": [{"party_attributes": {"iLneNfMWzH5CCGTv": {}, "OpFre6QIoDEl1TLR": {}, "v5yy0ki8zQfBPEFu": {}}, "party_id": "6g0g219E0nMyc3DD", "party_members": [{"user_id": "dQHlIjR2X8uWI7r8"}, {"user_id": "dEqvmHqgAlo99DpG"}, {"user_id": "StTTpnDjsE65E4tT"}]}, {"party_attributes": {"iK9nswCDOz3Auw3b": {}, "dnuKPinb03znA8bR": {}, "ScrNerM8M9eyfdUL": {}}, "party_id": "4TE09pgtpkjGPu4P", "party_members": [{"user_id": "4JZ49JFi1YHfWc2c"}, {"user_id": "XDtoXejsyOsasuoX"}, {"user_id": "YX2lEwgCs7KlL91z"}]}, {"party_attributes": {"HRtlmqXiFLJXKX9u": {}, "Q9mQZfgyfL2iWqOi": {}, "MV7cKhCkTlSVg59f": {}}, "party_id": "7IF7WkcDiXcrZ72Z", "party_members": [{"user_id": "xeHlyy6p409XDxEF"}, {"user_id": "YAlz2ZXal40sIFcM"}, {"user_id": "2Pgdoem79UuQ4WHk"}]}]}], "namespace": "tq9Qr5F1R0MEL8Ut", "notification_payload": {}, "pod_name": "Mw9Y3a66ELfjPC8g", "region": "0FQATQ0qAKFjhARM", "session_id": "ERWqIX9OekOxM6Jc"}' \
    > test.out 2>&1
eval_tap $? 74 'CreateSession' test.out

#- 75 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "YZBn3vF5OjK8VVKE"}' \
    > test.out 2>&1
eval_tap $? 75 'ClaimServer' test.out

#- 76 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'cC0lGVGkGDxmhwTy' \
    > test.out 2>&1
eval_tap $? 76 'GetSession' test.out

#- 77 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID '8TdD6oyA1rULi9Jg' \
    > test.out 2>&1
eval_tap $? 77 'CancelSession' test.out

#- 78 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 78 'GetDefaultProvider' test.out

#- 79 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 79 'ListProviders' test.out

#- 80 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region '1MsJqQb5RfdfVrT4' \
    > test.out 2>&1
eval_tap $? 80 'ListProvidersByRegion' test.out

#- 81 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 81 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE