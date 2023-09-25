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
    --body '{"artifactPath": "E0K3p6EDthUhy22l", "coreDumpEnabled": false, "image": "pMB0l6mOIIa0MwHO", "imageReplicationsMap": {"Etd1jGs7TOpm6Gu8": {"failure_code": "bLdtufCkQBxRFRBU", "region": "PFznDRauPueydQ7R", "status": "PI9I80ZqQfU9Aiif", "uri": "QRRIiCilLJC1t2rW"}, "dlHqKzEYISFwKJEq": {"failure_code": "UWqdzk5vj8Hz0nz5", "region": "RtLgw1HPagUwAnXi", "status": "xMurKnAx04Y8QxTD", "uri": "po7Mj9EsabELXTb2"}, "NDUQVl7XF5c331xd": {"failure_code": "ErRIJe1KiLrOQ3tr", "region": "ktztYEmWKRDsMiCR", "status": "SNhGEPniaST9W3jU", "uri": "LUOLAdS8t3FY7v1g"}}, "namespace": "hC0SMamiYVSOo2qf", "patchVersion": "e1rB5jIOCBDXZKhm", "persistent": true, "version": "zFw6C4UmHZUNDCAp"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "aaLAoa2YNHjwUNH3", "coreDumpEnabled": false, "dockerPath": "DmLMMop1OkBvAw0t", "image": "jSJDUrezGp73dGPq", "imageSize": 59, "namespace": "0chbpW9Zi3KpXFJf", "persistent": true, "ulimitFileSize": 85, "version": "NHwPhV2WlTVIDTKR"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "trVtPZeI6gZtdbN4", "coreDumpEnabled": false, "dockerPath": "ioNo6ahURyYnPiUU", "image": "lHvvLnw1nqgbP6Lj", "imageSize": 26, "namespace": "SP7s18HMQesAXfFJ", "patchVersion": "mmukXMquR19XFQw8", "persistent": false, "ulimitFileSize": 37, "uploaderFlag": "bSS9sC8FzKAgrZm4", "version": "Sf4IvSX4S8v7LuIW"}' \
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
    --body '{"claim_timeout": 45, "creation_timeout": 97, "default_version": "hyhycx7ggZAKG4r5", "port": 83, "ports": {"9NDGzbS6XzzS0ERD": 11, "nWL8TjB17B0j5CeF": 88, "GPRhI65eaqrFj8pT": 85}, "protocol": "QLjS9Dr8e1g6iKtL", "providers": ["tkTns2t0updP8ZcT", "MjyI7PGp625dvaYg", "EN8iEugV4MaJ5JyG"], "session_timeout": 48, "unreachable_timeout": 40}' \
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
    --body '{"claim_timeout": 57, "creation_timeout": 15, "default_version": "RG6Pu7y31pQ9sUKz", "port": 5, "protocol": "mLZGfG4BJOr0uX3j", "providers": ["d7NC2V15mR0pI2MV", "RP4ZzupOR7azqMRp", "v4Isz0KnQJiOCyCD"], "session_timeout": 89, "unreachable_timeout": 17}' \
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
    --name 'D2s2ULiXqfYvX6RG' \
    --count '50' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'BTbFcr5JGxfjEJNy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment '8OSC5qr9w3xlvZSf' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 52, "buffer_percent": 2, "configuration": "3wlQtMbRWtnSGQM5", "enable_region_overrides": true, "extendable_session": true, "game_version": "gCbhr7oZV08cybLM", "max_count": 42, "min_count": 74, "overrides": {"beB59uw5AI4KzdD1": {"buffer_count": 67, "buffer_percent": 68, "configuration": "hWk6z7iEpbJGBIq9", "enable_region_overrides": true, "extendable_session": false, "game_version": "Qz2vG1xIydM6AVPt", "max_count": 28, "min_count": 29, "name": "yX9L8lhYboZ0Ohnc", "region_overrides": {"t5NdUOS8G0kf8WvC": {"buffer_count": 13, "buffer_percent": 22, "max_count": 65, "min_count": 97, "name": "TrvOsiz3TJRkJDu2", "unlimited": false, "use_buffer_percent": false}, "vBAQjhh0KiX2WL3H": {"buffer_count": 28, "buffer_percent": 36, "max_count": 78, "min_count": 6, "name": "Zc7SCGItjNJNXeaB", "unlimited": false, "use_buffer_percent": false}, "35UI9asSe3cPuoER": {"buffer_count": 91, "buffer_percent": 68, "max_count": 100, "min_count": 29, "name": "EWGqr3XKveR5ngmN", "unlimited": false, "use_buffer_percent": true}}, "regions": ["ISBN7juSKv6LbGDN", "qbdlor4uRb6gh6F0", "vuTbvqBm7Z65UNbS"], "session_timeout": 13, "unlimited": true, "use_buffer_percent": false}, "2ea6xT3hg9yAHil1": {"buffer_count": 15, "buffer_percent": 1, "configuration": "0BaxoYnlgbnhNWPX", "enable_region_overrides": false, "extendable_session": true, "game_version": "rX3yZgeuzciXLJKE", "max_count": 91, "min_count": 63, "name": "T9o5EHiE8hIjTrCp", "region_overrides": {"vkZkFUH8dcr5T4UZ": {"buffer_count": 72, "buffer_percent": 76, "max_count": 88, "min_count": 64, "name": "Wpu5FNjdusWw51Pl", "unlimited": false, "use_buffer_percent": true}, "1KJbmoAbbFBUEli0": {"buffer_count": 50, "buffer_percent": 81, "max_count": 39, "min_count": 78, "name": "y1HtG74RktUG0S70", "unlimited": false, "use_buffer_percent": false}, "u35w7qO5mPpTRwS6": {"buffer_count": 70, "buffer_percent": 25, "max_count": 21, "min_count": 75, "name": "oIFhTFJLcju9CZYY", "unlimited": true, "use_buffer_percent": true}}, "regions": ["0ZV3Miqt6woO8pRe", "ERyYGOJcgGwHwimG", "f81RmDDIJ3c4vRV8"], "session_timeout": 19, "unlimited": true, "use_buffer_percent": true}, "30OfLpLLh8GngFja": {"buffer_count": 38, "buffer_percent": 73, "configuration": "kQEtu7hjT0FXYnbs", "enable_region_overrides": false, "extendable_session": false, "game_version": "8o8bPb3Va11tC5nn", "max_count": 99, "min_count": 64, "name": "Topobdi1LnBV1tkX", "region_overrides": {"Hu9eut6BrvzBI9pb": {"buffer_count": 45, "buffer_percent": 99, "max_count": 45, "min_count": 10, "name": "79z8BEzd6OKyYpsk", "unlimited": true, "use_buffer_percent": false}, "OW7DaaqHAHyE6ecB": {"buffer_count": 74, "buffer_percent": 85, "max_count": 14, "min_count": 33, "name": "CG9WbHDPhisMyTKM", "unlimited": false, "use_buffer_percent": false}, "PHjrHifEiQnn2Wx9": {"buffer_count": 90, "buffer_percent": 61, "max_count": 27, "min_count": 22, "name": "U5p60yc1RHNY2qJv", "unlimited": true, "use_buffer_percent": false}}, "regions": ["7F5RPxGJBNBRLdD7", "CsXmR5ypy0aGbXvg", "IEKMjyZpCDO9pb0w"], "session_timeout": 6, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"uFYpKRKhGBXiMrpF": {"buffer_count": 98, "buffer_percent": 35, "max_count": 26, "min_count": 50, "name": "8ZU7Dm9CCnKcEARJ", "unlimited": true, "use_buffer_percent": false}, "IHHJ996yTcJGI2dB": {"buffer_count": 25, "buffer_percent": 28, "max_count": 87, "min_count": 100, "name": "StWi10N7bNppwOr9", "unlimited": true, "use_buffer_percent": false}, "r5j6ojpKz6Mgts3N": {"buffer_count": 4, "buffer_percent": 84, "max_count": 34, "min_count": 99, "name": "kt0bT2toVko2RyMU", "unlimited": false, "use_buffer_percent": false}}, "regions": ["4JaFOYLux7B6xjFM", "O9eMlRQSiZevRXKm", "1t7K6KlLuvj9p9m2"], "session_timeout": 57, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'hg398aTczNoC0QGb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'EYCHsTeoRNgmeNoQ' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 97, "buffer_percent": 94, "configuration": "cn0i4VyRrTCiew3Y", "enable_region_overrides": true, "extendable_session": true, "game_version": "5lzWDe3rRWXWsw70", "max_count": 79, "min_count": 22, "regions": ["yKlYW9BWFGAJMbYH", "wxw8J3GrSSwDLHfu", "ejMUoHTIvzSlmjPs"], "session_timeout": 14, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment '4NphtCpTCbnOMhBw' \
    --namespace $AB_NAMESPACE \
    --region 'ZQtWzrjMPEBVGKEy' \
    --body '{"buffer_count": 62, "buffer_percent": 54, "max_count": 88, "min_count": 68, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'mSrMrpwJWeIsZepP' \
    --namespace $AB_NAMESPACE \
    --region 'iCWIRLa3OEV9tE6q' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'heiaU5PrgXZX9lcy' \
    --namespace $AB_NAMESPACE \
    --region 'QsMt7dEeObbohhlU' \
    --body '{"buffer_count": 89, "buffer_percent": 51, "max_count": 21, "min_count": 6, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'YKiY0878ZiE3nvEM' \
    --namespace $AB_NAMESPACE \
    --version 'YRCe5sFUKZTIT0fA' \
    --body '{"buffer_count": 12, "buffer_percent": 58, "configuration": "pK3XExihNOS3nbvk", "enable_region_overrides": false, "extendable_session": false, "game_version": "9syWWAHkOHH8oksS", "max_count": 64, "min_count": 20, "region_overrides": {"QVcX27cFgO9S9OE2": {"buffer_count": 52, "buffer_percent": 17, "max_count": 35, "min_count": 39, "name": "Rk9bXvIDYMPm6eW0", "unlimited": false, "use_buffer_percent": false}, "W6PfMnVcjZZk3qAJ": {"buffer_count": 79, "buffer_percent": 56, "max_count": 96, "min_count": 44, "name": "pcqk3YblKFrR5wzk", "unlimited": false, "use_buffer_percent": true}, "i0tPjJHzTEfpZjEk": {"buffer_count": 33, "buffer_percent": 80, "max_count": 38, "min_count": 33, "name": "fnHqdKQxwq2p3DNP", "unlimited": false, "use_buffer_percent": true}}, "regions": ["w0BeCqiNryPIFgEg", "W3vGAy19fN0xqy8r", "LG6IRzcTk3VW8omt"], "session_timeout": 44, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'lMN5GWva198bAMUb' \
    --namespace $AB_NAMESPACE \
    --version '7shAXQzFmgI3ajTq' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'DLAo41OrwoRwSaLt' \
    --namespace $AB_NAMESPACE \
    --version 'STtiUf099ZIjCpOn' \
    --body '{"buffer_count": 98, "buffer_percent": 67, "configuration": "RalXtdi5cYmCUViW", "enable_region_overrides": false, "game_version": "22XSDgYHMDp1zNbd", "max_count": 58, "min_count": 86, "regions": ["rhopuVIPjlUlJCIZ", "cGP1lg1CVzN03jok", "Go29AqNLwXn3FMdP"], "session_timeout": 22, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'KdFeVIQ5XvlDxvRn' \
    --namespace $AB_NAMESPACE \
    --region 'FoDRE9geFUyI0aTI' \
    --version '3dGDAohfurR4Zw6u' \
    --body '{"buffer_count": 12, "buffer_percent": 27, "max_count": 56, "min_count": 82, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'SY9hrvBdPkXZmiTb' \
    --namespace $AB_NAMESPACE \
    --region '1JW4qqcsHvP8kZpg' \
    --version 'XJfRWPMhYxLVH7pC' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'eSFKaM4RqLSPuBZj' \
    --namespace $AB_NAMESPACE \
    --region 'tzwHPxUuGzIcyUSC' \
    --version 'yH2ATEsdR0cMLS5R' \
    --body '{"buffer_count": 98, "buffer_percent": 53, "max_count": 89, "min_count": 27, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '49' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'bSNmfV4QpqcldONe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'nIPsBEeLi0Nxnj0r' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 21, "mem_limit": 7, "params": "ZRSGC9gLCRdzzhSM"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'KKAhnGWViDlcNYek' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'Fj0ymS26UXJhBtik' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 62, "mem_limit": 62, "name": "LhE1kPcgkt8dlpGR", "params": "IeF58MXOHU9ICN6s"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'OMRnrJrCavnHPH00' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 58}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'R248BMZQaavyzRcm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'dakZVgiPt2cdGAXO' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "eQ5tCTBPmMqZdALx", "port": 14}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'kqAGy9xnmu8G27ci' \
    --sortBy 'version' \
    --sortDirection 'desc' \
    --count '66' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'PrwVpENDJJhLPcTt' \
    --version 'X4pqiuYpwENPJIbV' \
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
    --imageURI 'N1bt5vBnADA7zmDH' \
    --version 'raga4OL1XCEiKkPW' \
    --versionPatch '5ZbR2rMfmcXgK9uI' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version '0BMn1yflWzyl1HzY' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version '1hmeaAsvGI9qzlvP' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'f4LA65hq7x20Qitq' \
    --versionPatch 'hREZnIFoCtP4S8J2' \
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
    --region 'LgvTbixlUcZakDIP' \
    --count '74' \
    --offset '54' \
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
    --region 'v5W88kpW5HN45jvW' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'VYDj9K4b21LXIm12' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'ra6JMZvC459EqrPY' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'mCsQaSOpQ8k6QPv3' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region '2A8K8oBHmFCVYh3e' \
    --withServer 'false' \
    --count '55' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'wSLxQbolbT4QPlk1' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '7Ov0CBrMOGNdY0WV' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "NRKSdx0mFyH7uAT0", "repository": "HWNf4JFR3rO9jUZ4"}' \
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
    --name 'p2jLxwh1ztQxnR30' \
    --count '94' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment '5cWRveG5aLdJyObG' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 40, "buffer_percent": 28, "configuration": "HHkiCbGZiqOusj2V", "enable_region_overrides": false, "extendable_session": true, "game_version": "CQpIWjGWzcw2aKZd", "max_count": 70, "min_count": 83, "overrides": {"PnDElLs0QU9MDZ9m": {"buffer_count": 41, "buffer_percent": 57, "configuration": "T4tK8gOqwhu0lvbx", "enable_region_overrides": true, "extendable_session": false, "game_version": "ytHgHM1bYRUMlWpw", "max_count": 40, "min_count": 59, "name": "NHBCQHAiS7OP1g3Y", "region_overrides": {"sDdNZMeT5j80sYIq": {"buffer_count": 40, "buffer_percent": 85, "max_count": 79, "min_count": 15, "name": "wGLe4mdvXOeOHOg4", "unlimited": true, "use_buffer_percent": true}, "KABH0oujrZ2kLTao": {"buffer_count": 39, "buffer_percent": 1, "max_count": 84, "min_count": 94, "name": "6ztU2xo5mDi3MCff", "unlimited": false, "use_buffer_percent": true}, "9A7yOTfDtYGsTRXl": {"buffer_count": 6, "buffer_percent": 36, "max_count": 95, "min_count": 100, "name": "qxa7xcbZcYwxuxY2", "unlimited": false, "use_buffer_percent": false}}, "regions": ["xZpzPJH2XmYjczSt", "P4Eq8YFpd5PGR8qZ", "bmUf7pMAhA33dOPI"], "session_timeout": 83, "unlimited": true, "use_buffer_percent": false}, "3zQ6VGwDOHwfx8MG": {"buffer_count": 41, "buffer_percent": 100, "configuration": "hjZbdH3x5jVfjsDh", "enable_region_overrides": true, "extendable_session": false, "game_version": "6qOhu2R3TgZeno76", "max_count": 29, "min_count": 94, "name": "Pw5tvnqUlrGhX0V5", "region_overrides": {"efEdY2g1s7bwFig5": {"buffer_count": 3, "buffer_percent": 98, "max_count": 34, "min_count": 65, "name": "SfKfnk9DKzARgqRh", "unlimited": false, "use_buffer_percent": true}, "3XQRu6byaLReEioa": {"buffer_count": 86, "buffer_percent": 88, "max_count": 86, "min_count": 94, "name": "TKZyBYrFMBizzQji", "unlimited": true, "use_buffer_percent": true}, "bR1XViovKLDPal7J": {"buffer_count": 77, "buffer_percent": 26, "max_count": 28, "min_count": 40, "name": "vQeV5Fj65QHSWHm5", "unlimited": true, "use_buffer_percent": true}}, "regions": ["o9PPOPAQTF8mXP4I", "qPSJJ9diWEHAxlfH", "atD4TQqKt9Uh1yqJ"], "session_timeout": 89, "unlimited": true, "use_buffer_percent": true}, "GOMhx5GnOriJINgD": {"buffer_count": 60, "buffer_percent": 74, "configuration": "ms71aXUsy3T2TbTN", "enable_region_overrides": true, "extendable_session": true, "game_version": "aKz3qNvcdhrBpoiU", "max_count": 97, "min_count": 17, "name": "RdeYoGRA4TAhy8Xq", "region_overrides": {"H7bWqH62PF5mG6it": {"buffer_count": 49, "buffer_percent": 52, "max_count": 53, "min_count": 48, "name": "H3r5VsmrV3mTLdlC", "unlimited": false, "use_buffer_percent": true}, "5A9e2ejE5MQBsZyw": {"buffer_count": 60, "buffer_percent": 45, "max_count": 22, "min_count": 99, "name": "zZXiCTOog8wjqcd6", "unlimited": false, "use_buffer_percent": true}, "WsFyRF66gAAq0ldg": {"buffer_count": 87, "buffer_percent": 35, "max_count": 66, "min_count": 93, "name": "eDazlGwc9QjYyVrS", "unlimited": true, "use_buffer_percent": true}}, "regions": ["EM0gdPaboELOQr7b", "zQGyquuoYuseNMl5", "bsCziWq8GzpvqKU3"], "session_timeout": 29, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"avfcJkK34TTMMCgL": {"buffer_count": 96, "buffer_percent": 91, "max_count": 68, "min_count": 17, "name": "n4TTL3ECgZzc0u0Z", "unlimited": true, "use_buffer_percent": true}, "O1Mwq5XNSAnSerb3": {"buffer_count": 43, "buffer_percent": 55, "max_count": 33, "min_count": 93, "name": "qPdQdVBuo6tvqrDy", "unlimited": true, "use_buffer_percent": true}, "cMzGYQ0y4sJPbb2B": {"buffer_count": 89, "buffer_percent": 96, "max_count": 59, "min_count": 78, "name": "D5baJ7ogxcNAY2bm", "unlimited": false, "use_buffer_percent": true}}, "regions": ["jUGyhh3TNdhQazyi", "NffXCUg6dA9m6J41", "GNiZ6jviYpt1yfMv"], "session_timeout": 90, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'PYcasEkyJsYXHRVE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '45' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'u6sIsfnajbWu2Vbi' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 82, "mem_limit": 28, "params": "rtyYp8653N4P7qJB"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'hBFLockPA6ikHP8i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '13' \
    --offset '85' \
    --q 'AJCEH3LyUqgdbt8y' \
    --sortBy 'version' \
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
    --version 'HH2WeCGrs2uK6Z1z' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'ezQs8uGu2FnBSnmn' \
    --count '1' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "2EyP2NRUHLEQPxy9"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "puhEvp2t5pz809Ee"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "G9b2njjsPasglCLf", "ip": "6lYYDEtR2avrWYUI", "name": "PBg3RW4wZJOuv3mR", "port": 2}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "BEa18DEVZq40zRwg", "pod_name": "NWLxJML50N23Sbug"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "zIrJs13Du2L4YZKK"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'rtYq9jMlDqNairGC' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'EfrF8I4vIV5XgQqz' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "CTetAnhNqjtTRrxr", "configuration": "OixvGDcATkqYZrZX", "deployment": "Y6dE2iwVb7Zje9MO", "game_mode": "UP5YfPFW4kgDQRuF", "matching_allies": [{"matching_parties": [{"party_attributes": {"co5ZEHd7C0BYDTPm": {}, "x6inoB31yw2AM0PK": {}, "O3SuDpGieeeVa6LE": {}}, "party_id": "pZq18OoYe5GxMwoa", "party_members": [{"user_id": "RnFvGqZcsrIQ4sLK"}, {"user_id": "ZfUNcUSAItWjFr3Y"}, {"user_id": "CfPt7xzbN7ZVmoil"}]}, {"party_attributes": {"KHF3vwJNNwj6ra5A": {}, "Le8P7wxEkmpJHeDM": {}, "OlJZAsiinXkWYHim": {}}, "party_id": "YCZiFmnPp3oBqNJQ", "party_members": [{"user_id": "nNu01dF4ItXhW3Nm"}, {"user_id": "XyTKVLtrCvgymxvV"}, {"user_id": "dWbNwgikMGzO32z8"}]}, {"party_attributes": {"2MWTNbTnwctXLZBz": {}, "xcKUxNcyIrdFgPAQ": {}, "dvInuy7vDD5pofvI": {}}, "party_id": "Iul2PgWrIxRIha4I", "party_members": [{"user_id": "cuGb8IhFeixyP752"}, {"user_id": "MlDd1YX7BqvWJrlf"}, {"user_id": "uKf9iNQrR1Feb1AX"}]}]}, {"matching_parties": [{"party_attributes": {"9B3MCzztbKfZDpVn": {}, "YtWEZJUZwkKFFf14": {}, "OIMTVmEKiCVMOLCM": {}}, "party_id": "iR8zy7fJGBn6fCXj", "party_members": [{"user_id": "4KUxgLnwwq9IZo2j"}, {"user_id": "okfQ5QPq6madTCKH"}, {"user_id": "DcWovzeHyoGGw3iR"}]}, {"party_attributes": {"SHoY9HTYXBK8Dv5d": {}, "oJazwuZpBnm5NFTG": {}, "lzW4zub7QkfxtNAr": {}}, "party_id": "6umLPZQTV2WBEH9a", "party_members": [{"user_id": "yp8e7RGST9vUsIcB"}, {"user_id": "RjXHuPuoHnEPi8tv"}, {"user_id": "jS7cXeYcULIJ2acU"}]}, {"party_attributes": {"SbhlYzOu0e3lIDBu": {}, "ktuukn5MoF9Ef7qY": {}, "k10DlfUVCdPZuLXQ": {}}, "party_id": "g1aVycfT4CEA5Wwg", "party_members": [{"user_id": "ciYyV8lgpc8b4YBv"}, {"user_id": "qbYAM2DqTqzRXUy9"}, {"user_id": "gypaWKGL1VmbrsBx"}]}]}, {"matching_parties": [{"party_attributes": {"QUvL6BB0QksNvXuL": {}, "epTmetIGBWPKzQnh": {}, "s2BLBSg8VF2frkF6": {}}, "party_id": "2eZKOHpdtjiTsgN1", "party_members": [{"user_id": "J1PdxNCqd1U5LgzI"}, {"user_id": "zA7ixVKGDZUFEbtD"}, {"user_id": "dFdHRXvTz5gkWHJc"}]}, {"party_attributes": {"z7sh85EVzTzuD573": {}, "LmtmbI1oeoTuIh4S": {}, "aOEUZINXGcrjS5T4": {}}, "party_id": "T14B4GnhOlMCVJB3", "party_members": [{"user_id": "KhNqVxg5KEn67esC"}, {"user_id": "eXZvPrpFI3si8bbi"}, {"user_id": "NnrozPXsjlLO7fZy"}]}, {"party_attributes": {"Cb2c0BJUO4ZeS8NZ": {}, "1PucA5TdWBKH0cf1": {}, "mKrd8IS6QPTW2J9r": {}}, "party_id": "5mQdmgTihm8IOlRv", "party_members": [{"user_id": "uGLSpNgIGZNRPFSE"}, {"user_id": "q7gsqHWgnCBYSYpF"}, {"user_id": "y2UmBSIeaFaMXIwT"}]}]}], "namespace": "wSvqh9TWwQulcpvn", "notification_payload": {}, "pod_name": "ajQGjy5ZMKGwHa1u", "region": "81BFAsyvUGCzPrJX", "session_id": "2KRC1pFRNvtKYAeh"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "g3wVCewCgfKCd7eE"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'gdhMoMzGqvr506ye' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'lEN6q46Mbc0dVoJd' \
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
    --region 'NmLd6W1Llvmze7dK' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE