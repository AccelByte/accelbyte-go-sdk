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
    --body '{"artifactPath": "zkjUOg1QHZcvFR4B", "coreDumpEnabled": false, "image": "vXb4h7xjCRFoKH3U", "imageReplicationsMap": {"PQJ9eg7xfCbJlDW8": {"failure_code": "Uq5xuGlwTeb45aiC", "region": "B1U8QfOYek7pUYjI", "status": "eBGXQN1DDxzv38CM", "uri": "9jkrgmSiUKgzQsnj"}, "ra5AQinYqSHKZnyv": {"failure_code": "b5CKDOPUQP1JDiNz", "region": "jYjfhfEkIXLPK3nK", "status": "pkxz96d4sI4kLQZ0", "uri": "lULOrtjZXLFzIUCt"}, "R5FENNvoh6tlJV2x": {"failure_code": "5s1F8EbK2Pf3v4zv", "region": "mlA7p3Y6t8FF5wmE", "status": "O1VHhchZehZASHph", "uri": "tcX5wQ7MvPlNDVPZ"}}, "namespace": "reJjOlGOwBoNmy78", "patchVersion": "5BtCVj1nvuC5HNcI", "persistent": false, "version": "EYaJ3ZIACGrJlqDw"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "uOSFJPnSKUSNTqSc", "coreDumpEnabled": true, "dockerPath": "pSpJAvr5JRlKFrcD", "image": "9oSB90WdYsr5n5Rl", "imageSize": 8, "namespace": "H964jf2b4eywxdH3", "persistent": false, "ulimitFileSize": 95, "version": "m5OC4gLO5PfJISLT"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "roYNrU3R20uUCCr3", "coreDumpEnabled": true, "dockerPath": "NTWHs6GNEO0xGqrh", "image": "IHbgSeWjbfWP2K1q", "imageSize": 65, "namespace": "2uyXWAqVOdjwrDrw", "patchVersion": "pakjLWmfLVUGT7Kp", "persistent": true, "ulimitFileSize": 1, "uploaderFlag": "Tc0rs7p3q6K25Zxm", "version": "YRMcjleMKTKx9xEK"}' \
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
    --body '{"claim_timeout": 89, "creation_timeout": 76, "default_version": "3FNQMz16NzvH8TOf", "port": 69, "ports": {"8oVxnpb2yFit8Zuy": 28, "sJvip6RUDlHNZdnF": 39, "fMjuNDvPnFBlsNT0": 100}, "protocol": "leItoYOX0hrj0Da1", "providers": ["hp0jGe5tMOYGcVFx", "pYGJifylo8iZxMVA", "fLvwjcFyfKROx1uj"], "session_timeout": 51, "unreachable_timeout": 29}' \
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
    --body '{"claim_timeout": 63, "creation_timeout": 51, "default_version": "mMujVmbZiVDSlZB7", "port": 55, "protocol": "gRsndNRMPK7Hjn0y", "providers": ["XpSCbndh5L7jX8Lf", "cRrjOZDwAoCKZeuB", "yEZ9Tkz4aOQv8grG"], "session_timeout": 10, "unreachable_timeout": 22}' \
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
    --name 'G0JaOv75lXfnQMWQ' \
    --count '47' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'Uf98B2OV6bsxPgw9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'C1S3u7hftuu5Z5ku' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 22, "buffer_percent": 63, "configuration": "YEgbMSG7TyDkgLKW", "enable_region_overrides": false, "extendable_session": true, "game_version": "ISIGruUjiLWNaCgq", "max_count": 9, "min_count": 6, "overrides": {"qNv2xDm23qTZUbOB": {"buffer_count": 33, "buffer_percent": 84, "configuration": "AFaN3VnRBhz50zqA", "enable_region_overrides": true, "extendable_session": false, "game_version": "Dl1mvZCoYTbJHLw2", "max_count": 94, "min_count": 81, "name": "2DoizXS6zEgaMRGF", "region_overrides": {"ZQxdjLNGKClTnO04": {"buffer_count": 89, "buffer_percent": 60, "max_count": 7, "min_count": 0, "name": "CevujQoMGeOedKhC", "unlimited": true, "use_buffer_percent": false}, "xSfZIBbQTN0XEdXI": {"buffer_count": 69, "buffer_percent": 25, "max_count": 2, "min_count": 90, "name": "yl5sazY7ObudSrqR", "unlimited": true, "use_buffer_percent": true}, "ipyo21ZnVXPAngSc": {"buffer_count": 100, "buffer_percent": 13, "max_count": 57, "min_count": 25, "name": "yPex1K42enWxIeCk", "unlimited": true, "use_buffer_percent": false}}, "regions": ["5KobYpxvUiPxOrbf", "7bqINTlJ9mT8p4Ye", "mMgeX0caNRSg4N7Q"], "session_timeout": 71, "unlimited": false, "use_buffer_percent": false}, "LRNywqTQmpTIYk7w": {"buffer_count": 60, "buffer_percent": 12, "configuration": "87eB8R0DRl1Ikp23", "enable_region_overrides": false, "extendable_session": true, "game_version": "Czwh1dPEn8yqa2BH", "max_count": 5, "min_count": 10, "name": "zyfnldA3UU88Duiv", "region_overrides": {"wf9KL85Iw7A0wye0": {"buffer_count": 0, "buffer_percent": 83, "max_count": 81, "min_count": 54, "name": "eNJdBmhJJV0IpKqL", "unlimited": true, "use_buffer_percent": true}, "hJ33KI3QL86EAK4m": {"buffer_count": 5, "buffer_percent": 57, "max_count": 15, "min_count": 26, "name": "gHXcP6c7iTjZwpt2", "unlimited": true, "use_buffer_percent": false}, "j7gimJ471wcOpkXW": {"buffer_count": 99, "buffer_percent": 30, "max_count": 77, "min_count": 60, "name": "grqCKsC5GrdQ1YS0", "unlimited": false, "use_buffer_percent": false}}, "regions": ["yTcJWNzW0ptQP78n", "xRKEawcJ5CFM9dnP", "jiIGaJ3suMm6ps4Z"], "session_timeout": 41, "unlimited": true, "use_buffer_percent": true}, "FhZAb2UNMGahaF5l": {"buffer_count": 67, "buffer_percent": 6, "configuration": "QxCuUQ2TfADwbKzA", "enable_region_overrides": true, "extendable_session": false, "game_version": "7aNN1KPJc8RL0uLE", "max_count": 5, "min_count": 53, "name": "2Nz7oOqu7btNEVNk", "region_overrides": {"YuKu8FjGxYK1H286": {"buffer_count": 35, "buffer_percent": 18, "max_count": 21, "min_count": 36, "name": "dmcFbxCRrsjw5Qej", "unlimited": true, "use_buffer_percent": true}, "feVZMVDqLi2l4XML": {"buffer_count": 38, "buffer_percent": 19, "max_count": 78, "min_count": 52, "name": "td57w5R97QYr43DM", "unlimited": false, "use_buffer_percent": true}, "fGNMoVyqWqZBKtmG": {"buffer_count": 90, "buffer_percent": 47, "max_count": 68, "min_count": 27, "name": "VR9s5HNsURGzhQo9", "unlimited": false, "use_buffer_percent": true}}, "regions": ["mtt0acCQ8cqGOHJn", "3AsFpO1M0jivKrGM", "rPgtZo0DqdtIpT78"], "session_timeout": 18, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"S6AVEL0nDy2hNJLW": {"buffer_count": 56, "buffer_percent": 20, "max_count": 62, "min_count": 37, "name": "DB6ci4BNwtVVD0kl", "unlimited": true, "use_buffer_percent": false}, "rbXSQeQHbxNS54rU": {"buffer_count": 89, "buffer_percent": 35, "max_count": 88, "min_count": 80, "name": "ws62jgjRYraAHJlS", "unlimited": true, "use_buffer_percent": true}, "XppnA9T5GgZ8vmoL": {"buffer_count": 7, "buffer_percent": 2, "max_count": 70, "min_count": 40, "name": "8aYxsKxW8Fh3mAtc", "unlimited": true, "use_buffer_percent": true}}, "regions": ["6rT3IIS4hEhyOY7T", "cFUkYrSFGpHeW9Dc", "55TZhgtPg8G583Sm"], "session_timeout": 79, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'Pfm980XeJSrhWiqq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'dTYcgTIMxmwq7ExM' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 28, "buffer_percent": 18, "configuration": "ot6ex7AS6IctR5xP", "enable_region_overrides": true, "extendable_session": true, "game_version": "1S10ol5IcZxN6ix2", "max_count": 15, "min_count": 96, "regions": ["WdpbRGHMyKjDthHC", "Vvi9NI8iyBjLESCj", "F9JnpQ0GsNjSLx87"], "session_timeout": 59, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment '5ImCZMiGRe2VmIQh' \
    --namespace $AB_NAMESPACE \
    --region 'zy7XhbopbEXuG2Mb' \
    --body '{"buffer_count": 20, "buffer_percent": 85, "max_count": 93, "min_count": 44, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment '3EJFJhmCQaLk33G4' \
    --namespace $AB_NAMESPACE \
    --region 'zKNJsECmbDYiiBjt' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'J5q3pxYtKdSBTGx3' \
    --namespace $AB_NAMESPACE \
    --region 'Kcg53jwiA1YVVKrO' \
    --body '{"buffer_count": 84, "buffer_percent": 86, "max_count": 20, "min_count": 25, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'SmJ6iMpAaWPS6pvE' \
    --namespace $AB_NAMESPACE \
    --version 'yTkgImuZaCmphAVp' \
    --body '{"buffer_count": 20, "buffer_percent": 92, "configuration": "jW4U0Jybwpqp5PzC", "enable_region_overrides": true, "extendable_session": false, "game_version": "COgl8dRO1xJTNEoo", "max_count": 46, "min_count": 20, "region_overrides": {"iT0xcXaBUq8ETjmq": {"buffer_count": 53, "buffer_percent": 21, "max_count": 35, "min_count": 98, "name": "466Rxx3hI70s4MSq", "unlimited": true, "use_buffer_percent": false}, "99aZTkVgMNUqZ6Pv": {"buffer_count": 91, "buffer_percent": 33, "max_count": 21, "min_count": 15, "name": "qgE98WAGtB9YOlrw", "unlimited": true, "use_buffer_percent": true}, "3x2lXpNztOj64bCB": {"buffer_count": 41, "buffer_percent": 96, "max_count": 30, "min_count": 89, "name": "XAQI0drngJsiUQjp", "unlimited": true, "use_buffer_percent": true}}, "regions": ["9e6cHH2AgZJn6bg3", "fdxHpcFQLfzrwmKQ", "UN5dqvU8K2YcnsxY"], "session_timeout": 48, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment '6TA052Cq7p2zDT9k' \
    --namespace $AB_NAMESPACE \
    --version 'QafKttFqCEfAZXMG' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'qfI6R4D8ot9MjIWA' \
    --namespace $AB_NAMESPACE \
    --version 'E1n3uWuLYkPD8aIp' \
    --body '{"buffer_count": 5, "buffer_percent": 31, "configuration": "agtgDbiFcAitjALq", "enable_region_overrides": false, "game_version": "hqtbWF5Jjfqw1wIh", "max_count": 61, "min_count": 44, "regions": ["oRjvKWF1alYqrB35", "u3rWOazriUe3jlmb", "7DOmtK1YpR5KBjTm"], "session_timeout": 3, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'noEb5ADZvg1uI2DK' \
    --namespace $AB_NAMESPACE \
    --region 'yzbC2M8zMOE0kRW9' \
    --version '3tzmf4b8emlQxPVy' \
    --body '{"buffer_count": 36, "buffer_percent": 61, "max_count": 53, "min_count": 15, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'g48yYr108tzbTaFJ' \
    --namespace $AB_NAMESPACE \
    --region 'BjEwWw0YWDVPRSY0' \
    --version 'bOQbMmClobGpFiZX' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'egDnhwFpCdrkKiiC' \
    --namespace $AB_NAMESPACE \
    --region 'xHYZ0VkzyXtZxNCI' \
    --version 'JwL5HS5ND5Lrfio8' \
    --body '{"buffer_count": 40, "buffer_percent": 47, "max_count": 1, "min_count": 67, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '54' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'nhSf1n91Buu4fvwZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'KxY5lJOmJyJIohkT' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 44, "mem_limit": 5, "params": "Z5ocndmitao5wck0"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'mwEx1PGqZFBgnKxw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name '8oZjWMzk97ZPDH7B' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 21, "mem_limit": 95, "name": "DbNkGJZVEdtzWWGn", "params": "zCndH25KJqCjvQAo"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '7p19nEeuDWSuxvla' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 14}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '6OZ3OlNPhVLh9KCV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name '4zcZl4zJWzANfQBU' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "sTCb6KhfoglFaxiU", "port": 77}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'HJip2aru3QAIAhev' \
    --sortBy 'version' \
    --sortDirection 'asc' \
    --count '12' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'MMcp2UirdHKnPQQK' \
    --version 'ShoHtLMyxpsZPIQb' \
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
    --imageURI 'Cky4mXSfV6upgMM6' \
    --version 'WoeBbO811Vmncnn6' \
    --versionPatch 'HDmq9H09EpIlNgME' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'Q7KY0LCT3udOZS6X' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'oGV1i3gUZX8MvIse' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version '5hYhHaocAEzJPFtU' \
    --versionPatch 'D2ZDtOtwO3OQ4vaf' \
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
    --region 'zCXUXRSZi4c0VRxx' \
    --count '78' \
    --offset '48' \
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
    --region 'zPj8Bn6FhAmz8htu' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'wmOpORTIL0C2o5gQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'BruPGdmhtQUmhNfL' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'Gx5zPt5kLFjHYVyG' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'JlVyu1WcepNY1jmz' \
    --withServer 'false' \
    --count '13' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'KJSf2zI6pFOfD8oj' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'BuP0Y1GJ8N5EYBrB' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "S4pAijYAx5lO9P7F", "repository": "KVxHT38u57pF3EQg"}' \
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
    --name 'JVaSkhKYRcgluJbo' \
    --count '54' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'UY9j9hzq5dqWFp2e' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 81, "buffer_percent": 69, "configuration": "H7cWn1rwiWfBhCf2", "enable_region_overrides": true, "extendable_session": true, "game_version": "zkiBPTZId3qE4NND", "max_count": 11, "min_count": 75, "overrides": {"WdPUjT61JOLaWsfw": {"buffer_count": 61, "buffer_percent": 9, "configuration": "5fPcD2acyvYIj8TD", "enable_region_overrides": true, "extendable_session": false, "game_version": "lFcoMSBlknOgJks3", "max_count": 75, "min_count": 54, "name": "X65WiKbbGfviuYYP", "region_overrides": {"DOOL19f4RqUABc1D": {"buffer_count": 11, "buffer_percent": 42, "max_count": 50, "min_count": 67, "name": "g1h79OeURIHLbYwv", "unlimited": false, "use_buffer_percent": false}, "Xa8gbgQ5qXIafY15": {"buffer_count": 7, "buffer_percent": 50, "max_count": 78, "min_count": 62, "name": "JE5OuU0tT2iI9J92", "unlimited": true, "use_buffer_percent": false}, "IQiJUvdD2Az9iY8N": {"buffer_count": 23, "buffer_percent": 65, "max_count": 80, "min_count": 95, "name": "746uM7MeCU95mHIv", "unlimited": false, "use_buffer_percent": true}}, "regions": ["d4HMR951h6PfThdf", "NnMDtIyxinYK67NF", "r1dqwWBOTXe345rL"], "session_timeout": 13, "unlimited": false, "use_buffer_percent": true}, "S6RLdgNDPGFxspbd": {"buffer_count": 96, "buffer_percent": 80, "configuration": "etDiWSMVAT0f4dER", "enable_region_overrides": false, "extendable_session": true, "game_version": "UHZ0GhZzkPYvcn3F", "max_count": 68, "min_count": 4, "name": "mp1YaI5Ucp51dPMj", "region_overrides": {"TBRW0HEqeXSSNDG6": {"buffer_count": 44, "buffer_percent": 58, "max_count": 93, "min_count": 76, "name": "1ksGsaVsr9eF37Vf", "unlimited": true, "use_buffer_percent": false}, "G6R41JmIvjI7ewOC": {"buffer_count": 8, "buffer_percent": 4, "max_count": 19, "min_count": 45, "name": "VyPqrJNoo2eCwgHr", "unlimited": false, "use_buffer_percent": true}, "PM9W591HOXbU6Mk6": {"buffer_count": 67, "buffer_percent": 22, "max_count": 5, "min_count": 26, "name": "39Z5xmP1qpKpYrcE", "unlimited": false, "use_buffer_percent": true}}, "regions": ["X8tmISHkuFDbxqEv", "ZjgbCYw8AAoxYj2B", "kRhrlq2ospejLZit"], "session_timeout": 6, "unlimited": false, "use_buffer_percent": false}, "cyB3g2hBNpHzefSw": {"buffer_count": 94, "buffer_percent": 25, "configuration": "3zhTvkIVaDNxYPQ1", "enable_region_overrides": false, "extendable_session": true, "game_version": "EvjoP3LOiR0M0Ghw", "max_count": 67, "min_count": 9, "name": "KtA5hdSM0VZGmbRr", "region_overrides": {"0Di2CqwLS0N7drCF": {"buffer_count": 79, "buffer_percent": 24, "max_count": 8, "min_count": 52, "name": "4vtjVwJAfuS4jSxq", "unlimited": true, "use_buffer_percent": false}, "lIpOnJsajtJbzHYO": {"buffer_count": 0, "buffer_percent": 32, "max_count": 87, "min_count": 85, "name": "IF3Y3KGWmI4iJheI", "unlimited": false, "use_buffer_percent": true}, "QRbXq6Y1AhDLfEtl": {"buffer_count": 21, "buffer_percent": 88, "max_count": 5, "min_count": 70, "name": "S8pnwBj3Uqa8e3dD", "unlimited": true, "use_buffer_percent": true}}, "regions": ["zDw53Lcf6574MnXX", "9mqqKwaUevcP7r1H", "hTHOLQwg9EUNu40J"], "session_timeout": 0, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"6pT2T8IxStApFQ9d": {"buffer_count": 4, "buffer_percent": 1, "max_count": 16, "min_count": 45, "name": "woQuTNBzLf7HFCEE", "unlimited": true, "use_buffer_percent": true}, "QLJZmtYyjKzE5c6I": {"buffer_count": 4, "buffer_percent": 47, "max_count": 46, "min_count": 12, "name": "thPz4GSy3ghb2TN2", "unlimited": true, "use_buffer_percent": true}, "i6PM3dmngQqRaPhR": {"buffer_count": 56, "buffer_percent": 35, "max_count": 32, "min_count": 12, "name": "Bbwgnc9NPQ9J53bx", "unlimited": true, "use_buffer_percent": false}}, "regions": ["WDGChPTIjXm8mGaO", "iB4gVg1CmRXnq8f8", "OztMzBEyNUJBO4it"], "session_timeout": 36, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'WuLzIqqCKFPLvv27' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '25' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'shBm6z6K8jAu4b3j' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 72, "mem_limit": 99, "params": "EcPitH6NNpS9qCF8"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'hpr2uQhL42QtWmkZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '47' \
    --offset '45' \
    --q 's9ICzyiX2AXkURXl' \
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
    --version 'LmLIFcmXBK9uTskJ' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'B6Tqw5w1udcnWVeE' \
    --count '16' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "2Vv8iLMudGGdXxmB"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "frUVVgE5Ln1nI0sT"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "yd2KG7DUVDZhZevy", "ip": "jhsnXtmoCNdqas2v", "name": "q2TCkti9hmOLAZxi", "port": 88}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "G1bu6pMrbRkaBgE4", "pod_name": "dleYdr3cZ0YC1nnU"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "1Nb8xPpopizUyXga"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'Vz51TtADNsDfNt8G' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'VrsY094MvZwPjah1' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "pANdmpsA0PamlSPy", "configuration": "zQ2CKXni6uynHmnO", "deployment": "elUt4u4DDoSiVL5q", "game_mode": "eHRpZZYMsfAoE6uh", "matching_allies": [{"matching_parties": [{"party_attributes": {"M8EujLfEWyi2T2pA": {}, "CmVUYLOCwGv3Y1e7": {}, "bC0GoUfK1qkw85dc": {}}, "party_id": "vaCslk7aXuGwhZnE", "party_members": [{"user_id": "ngxcBmpwuFxYyYGe"}, {"user_id": "qHbcrmoncf5YK3hw"}, {"user_id": "esSFwwLUjOC07N0M"}]}, {"party_attributes": {"sYfGCFQzClY6YG4b": {}, "cI3GZuCH64Vu7tXQ": {}, "jSrlpJK6uwbxz7tU": {}}, "party_id": "LnhA7gCIuQYKBLjH", "party_members": [{"user_id": "n2UPfQ6eCdqwgDln"}, {"user_id": "KUjSS2Wf6USpgSU1"}, {"user_id": "gPnhUYohzNWwYztq"}]}, {"party_attributes": {"yfRRxl0VZVTj6v5a": {}, "z4Uw5xPNqF77SoS6": {}, "HhaOfupnkZgAxqZo": {}}, "party_id": "9l6a8rgabL511fqf", "party_members": [{"user_id": "xO0acekDf4EaoKU1"}, {"user_id": "sCmwAj6O9bVwvKZk"}, {"user_id": "ACiA5Nt2k0rHcK75"}]}]}, {"matching_parties": [{"party_attributes": {"d4NWURPgbVpMSGxq": {}, "G7aDIueICmKABSjd": {}, "83CLTIWf4RWujY5I": {}}, "party_id": "ChOrpMN7nGITfpN4", "party_members": [{"user_id": "AcVngO1RVewyu1Bf"}, {"user_id": "jz1awFMmijUwJdvy"}, {"user_id": "cfiZ1JlHMzKSBqxX"}]}, {"party_attributes": {"5yqBGsIw5LmGEabT": {}, "jvtID4lyM3CK475X": {}, "7ScVHiR3RyttAKEU": {}}, "party_id": "2nOJ5ywQFZJemIgg", "party_members": [{"user_id": "GjCsklhFUrrfTWr2"}, {"user_id": "QFwoyhFT0nno5jc2"}, {"user_id": "Vloo2ZXnCWroHfBK"}]}, {"party_attributes": {"M1LjU2zsbWxurnLH": {}, "TIFk51YLR9lsg9nn": {}, "UDUcgMl8uGq6StyC": {}}, "party_id": "VVPnyQ8wayPaaXt9", "party_members": [{"user_id": "zDs6DP1xob77jbuX"}, {"user_id": "jitX3cDxBfTVZaGb"}, {"user_id": "R2A0JKT7tK1dStfU"}]}]}, {"matching_parties": [{"party_attributes": {"IvaluTtpwp0UdiH4": {}, "fy3Cp3oGloFs9eXB": {}, "fOlQLiJ52eac75DM": {}}, "party_id": "4vwHSp77V1EaZgxn", "party_members": [{"user_id": "kRkKUOqmLc92pyKp"}, {"user_id": "Bf4LNZ9iVVtE5sjK"}, {"user_id": "CPmuERMFKyVjQmSK"}]}, {"party_attributes": {"km4x4m5afL0ghkAa": {}, "2yXY17plLp2x1aWK": {}, "G26FBhEoAZP45GRp": {}}, "party_id": "8iDzQJScp2e3tiyc", "party_members": [{"user_id": "fizyss8qFUtZxdT0"}, {"user_id": "XxcW12pKcTN8lhua"}, {"user_id": "blrrM8VK9BAXt6se"}]}, {"party_attributes": {"ePCqy2GsAlyC0KWR": {}, "Sh34hytpsPIkK4zx": {}, "8PJYaK63fppIKWYj": {}}, "party_id": "EgektjWCnd0PV65n", "party_members": [{"user_id": "9w6SSWZ5WqHMqDlb"}, {"user_id": "e1uzJGRTdBYDnv5q"}, {"user_id": "rCV1YZMRO5KwKm4a"}]}]}], "namespace": "5yQrOptixkvGOiFy", "notification_payload": {}, "pod_name": "gIYy75iPx9VZ7glm", "region": "VrDYQCfzwsw92tHA", "session_id": "hZUwuPoRSQ42ogts"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "0MXiRZkK2GphNXeL"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'q6WH1ZUIU6CkqeG8' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'WVFvd01gmYhPouiL' \
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
    --region 'n7NT8VAqPMMR4nmd' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE