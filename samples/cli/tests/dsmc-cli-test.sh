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
    --body '{"artifactPath": "Fn2HeME8XCuOd3J8", "coreDumpEnabled": true, "image": "v8aE9d0xi2VMV7A6", "imageReplicationsMap": {"3liqZ6tW8qGE17Q0": {"failure_code": "PXjdHQ6vAZtsPSsV", "region": "o1TdCA7zCgWbtBan", "status": "1pr2JVzDJp35wkJC", "uri": "r5rkz8bxRCTTEn1d"}, "6K3Csy3B0lVZ8yPy": {"failure_code": "5q2TLxe757Hz6pON", "region": "sWtCOzMLy0Ekrynz", "status": "dzrluOk0byRSKSy6", "uri": "9QyMsotlvGR1VEGS"}, "p3Jc26fLqcUrgvCF": {"failure_code": "gk8wi7xIkAB1jZMd", "region": "PmrON4nB0cUCnDDM", "status": "vbwdoYIu3McsPCk9", "uri": "EIP5Zm52tzXDq6ID"}}, "namespace": "9k96ydcHKVidlGHC", "patchVersion": "5CSbKj8ew1XdTzIH", "persistent": true, "version": "0GaViIEomZ0OgNZH"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "rcOF13tiZo3e2p7l", "coreDumpEnabled": true, "dockerPath": "brpjZnVyKyzIZrWy", "image": "DCn20chYsjsplK4R", "imageSize": 69, "namespace": "5IH2XbBBmYjEevZt", "persistent": true, "ulimitFileSize": 80, "version": "spl9OBktuBGmSDJG"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "REcspQ5fHfRDFh9c", "coreDumpEnabled": true, "dockerPath": "JMkoPRhEHejF2Q9R", "image": "ju3udHfEVOln7dJW", "imageSize": 78, "namespace": "QJuigP2eYejskDym", "patchVersion": "laEarZ3GFhjVz9lE", "persistent": false, "ulimitFileSize": 84, "uploaderFlag": "WwhZ9gEJyWctvI8h", "version": "aCpJSidcX8CC59yS"}' \
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
    --body '{"claim_timeout": 6, "creation_timeout": 45, "default_version": "ox7fVeeteFkOZSAX", "port": 68, "ports": {"eCED0QsU3ghEJqJU": 62, "GGf7I5YjrBf4HosK": 58, "YPPhIdUnOWpwBmSA": 76}, "protocol": "bJVMDuqLs8Dhoy6t", "providers": ["1E0eR7VtXmd3Huw1", "XImuUn5p7PTqGt11", "Mm86TzgquwxBndpw"], "session_timeout": 73, "unreachable_timeout": 52}' \
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
    --body '{"claim_timeout": 77, "creation_timeout": 82, "default_version": "NPKlQr7nlrHXfHfG", "port": 41, "protocol": "Xeo1GUK5pNoFBmVr", "providers": ["jzF9453MElw9FAnU", "PbxreUxwsGAye5eq", "jSMtY225Mzh7Ze0R"], "session_timeout": 39, "unreachable_timeout": 40}' \
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
    --name 'BJ7NdTjtY0OTSnTN' \
    --count '6' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'GjnUYr8zk9HSDb3y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'whaPlBfj0MGTP3xL' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 80, "buffer_percent": 0, "configuration": "ehlk9fzD2aeUR3iz", "enable_region_overrides": false, "extendable_session": false, "game_version": "GUpZWEuPefmC0mwN", "max_count": 31, "min_count": 50, "overrides": {"rJpt5sZq8rYTB6xj": {"buffer_count": 53, "buffer_percent": 55, "configuration": "8KfbWnF9y7t00XGU", "enable_region_overrides": false, "extendable_session": true, "game_version": "laKE8xQwWZ19obIb", "max_count": 34, "min_count": 36, "name": "7zKDr9jDLQmzBVtq", "region_overrides": {"o9sjV6ZUu2tXe465": {"buffer_count": 1, "buffer_percent": 33, "max_count": 81, "min_count": 56, "name": "sIyueRmVUActgZzU", "unlimited": false, "use_buffer_percent": false}, "e5YtDxn23YzKpXja": {"buffer_count": 43, "buffer_percent": 89, "max_count": 86, "min_count": 81, "name": "0UcyzbCIId3pQNLu", "unlimited": false, "use_buffer_percent": false}, "ji6lwdeEGaAOXdom": {"buffer_count": 18, "buffer_percent": 22, "max_count": 49, "min_count": 85, "name": "L5CKqWICgKCqAjb7", "unlimited": false, "use_buffer_percent": false}}, "regions": ["1luKe36Fs5AZZzra", "2iub6fJhXQqgJmL6", "n0IonfbXa1RKXZuD"], "session_timeout": 26, "unlimited": true, "use_buffer_percent": true}, "LiLiy6DHaKZwjvm8": {"buffer_count": 45, "buffer_percent": 42, "configuration": "VbjGFQsPuPPJZH9d", "enable_region_overrides": true, "extendable_session": true, "game_version": "tff3UF6pjw70jfbL", "max_count": 19, "min_count": 58, "name": "9hPH9UjnHNnZpHhi", "region_overrides": {"BLZXoxZsZYW97clk": {"buffer_count": 5, "buffer_percent": 73, "max_count": 76, "min_count": 55, "name": "OD93XkuqyFcrzQvv", "unlimited": false, "use_buffer_percent": true}, "YYSHwwE7WOfgZy4n": {"buffer_count": 60, "buffer_percent": 77, "max_count": 79, "min_count": 54, "name": "8gHYRUu8tJqkSFL7", "unlimited": false, "use_buffer_percent": true}, "pbcdsUudxdrNYm9M": {"buffer_count": 79, "buffer_percent": 49, "max_count": 77, "min_count": 56, "name": "XLKm0PNPdiwkZGEq", "unlimited": false, "use_buffer_percent": false}}, "regions": ["1mpAExolZAAOKR57", "gwiiPqcShCUbIjBg", "wBbv2WLiZSHQy4IX"], "session_timeout": 12, "unlimited": true, "use_buffer_percent": false}, "EuJr1JVOsgkwlbyk": {"buffer_count": 77, "buffer_percent": 32, "configuration": "qCaHvHgAkfUSsKBP", "enable_region_overrides": true, "extendable_session": false, "game_version": "XpTecYgsznt1fRj3", "max_count": 44, "min_count": 34, "name": "QzsolRHld308daXF", "region_overrides": {"EH7BfibQ4VqQMnqK": {"buffer_count": 58, "buffer_percent": 66, "max_count": 64, "min_count": 100, "name": "oIAI7KrixpdQlmg2", "unlimited": true, "use_buffer_percent": true}, "xZqM2KdqRfCWiS12": {"buffer_count": 70, "buffer_percent": 35, "max_count": 42, "min_count": 77, "name": "6YkAAGXCaYULoq5h", "unlimited": true, "use_buffer_percent": true}, "rydCkjFJy8nLOMey": {"buffer_count": 25, "buffer_percent": 16, "max_count": 69, "min_count": 60, "name": "dGXOrtkJwD0lxUSO", "unlimited": true, "use_buffer_percent": true}}, "regions": ["ZKJEAlcbrq05WHE0", "CPrCZrvi6o5wQp93", "c4qiSQhw93a9Nu73"], "session_timeout": 25, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"nl6OCyMQfkI7fKjV": {"buffer_count": 80, "buffer_percent": 32, "max_count": 13, "min_count": 39, "name": "3OLqY44mU7oihied", "unlimited": false, "use_buffer_percent": false}, "fUeuvP06B9jZMhCx": {"buffer_count": 84, "buffer_percent": 93, "max_count": 99, "min_count": 98, "name": "Tc8EhyixCuPgcBdv", "unlimited": true, "use_buffer_percent": true}, "1I6RP44XbwEMyRmT": {"buffer_count": 94, "buffer_percent": 55, "max_count": 34, "min_count": 1, "name": "tkFFmSfAq3TDYMB6", "unlimited": false, "use_buffer_percent": false}}, "regions": ["4C4g2pFmeSDcAm4b", "oFh6qCoU6kN9BlzS", "CUeTt7yV1js02C4F"], "session_timeout": 13, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'pqqe2tpt2Pww9oxP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment '3nu5rie0zuXtrsNE' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 21, "buffer_percent": 26, "configuration": "ciHaht6rIDlRzQDl", "enable_region_overrides": true, "extendable_session": false, "game_version": "UfuYCbLK3Yvbr53q", "max_count": 26, "min_count": 47, "regions": ["VONEqardc1FlLFBi", "6xsaJ7nv0uC6hIna", "0SJss2EOd4b22mCA"], "session_timeout": 65, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment '6PIKiLviGZBvY620' \
    --namespace $AB_NAMESPACE \
    --region 'lyMBMxZzsmDOHNGR' \
    --body '{"buffer_count": 38, "buffer_percent": 12, "max_count": 87, "min_count": 5, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'KkABJPBQqQr2uyfa' \
    --namespace $AB_NAMESPACE \
    --region 'yUyGnlbMt5BV9N6r' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'GlxV1LjuJQgh5q8d' \
    --namespace $AB_NAMESPACE \
    --region '2riKGGJQ18nzdDoz' \
    --body '{"buffer_count": 28, "buffer_percent": 89, "max_count": 67, "min_count": 52, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'i6zwGgz9UFVl9cmr' \
    --namespace $AB_NAMESPACE \
    --version 'PoxoTDmf9CIgm0b6' \
    --body '{"buffer_count": 8, "buffer_percent": 30, "configuration": "1VnXtOyC1f4uiC9h", "enable_region_overrides": true, "extendable_session": true, "game_version": "Z6rajXotKExD40hm", "max_count": 22, "min_count": 57, "region_overrides": {"sVoJ3GIao52FiJzH": {"buffer_count": 33, "buffer_percent": 93, "max_count": 14, "min_count": 43, "name": "N7CGjWtV6Qg2OSGZ", "unlimited": true, "use_buffer_percent": false}, "rdUXZdSPmYBTScL2": {"buffer_count": 63, "buffer_percent": 35, "max_count": 60, "min_count": 39, "name": "lErbVDbVgu7agMNg", "unlimited": true, "use_buffer_percent": false}, "nNcjfQXxnYahdiHQ": {"buffer_count": 65, "buffer_percent": 4, "max_count": 30, "min_count": 26, "name": "5nwUM8EQvFFHHu4s", "unlimited": false, "use_buffer_percent": true}}, "regions": ["acoW242SQhO4g8r8", "YUs7NoD4gjTK9Rkp", "Q73QYxVVr5q10L9X"], "session_timeout": 48, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'nEiKHp3Dir6MNg2M' \
    --namespace $AB_NAMESPACE \
    --version 'ZUhrHBhLpBNBUDgM' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment '5xYA9iwngdMfGDED' \
    --namespace $AB_NAMESPACE \
    --version 'AlnazM9wcUBUORBw' \
    --body '{"buffer_count": 37, "buffer_percent": 58, "configuration": "KqSqKvdaOsqoLyOT", "enable_region_overrides": false, "game_version": "iB5tOuRl63ktJcRw", "max_count": 76, "min_count": 72, "regions": ["VzQ2gwvBKN6ksC8E", "0LwfBmTnLN2HT31N", "qQL60h2LhuEgjcHs"], "session_timeout": 57, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'Cu1uQ4SbLhtKwDqp' \
    --namespace $AB_NAMESPACE \
    --region 'tLZkZsWpzmEKjVmb' \
    --version 'I5vhiGMtfrHIjIKe' \
    --body '{"buffer_count": 74, "buffer_percent": 37, "max_count": 64, "min_count": 96, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'Tz4SzZJDy3KYhy7o' \
    --namespace $AB_NAMESPACE \
    --region 'J1av5KHN1DMRXmTQ' \
    --version '47r17oRpuw94heUc' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'sARSFZFL26eqxxWq' \
    --namespace $AB_NAMESPACE \
    --region 'GuNPOyaCivk8aint' \
    --version 'qDTezUIXAjFdp2jZ' \
    --body '{"buffer_count": 5, "buffer_percent": 28, "max_count": 18, "min_count": 87, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '8' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'gq04mNEIUj8zdx7y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '4vlQUFXPbjEQRczB' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 94, "mem_limit": 60, "params": "HIO4exznsEsox3jq"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'YcEYk1VvSljAlE1t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'aKobsebhTHJGrNb0' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 29, "mem_limit": 48, "name": "ukeZ0W5DnkZGuxkb", "params": "9XBG3T1LPJrbQd9k"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'EvybEn5pxweh6ZA7' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 35}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'w9EIdjkAdxoKQXsD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'S0z8XjcKH7QhqeaP' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "My8EQT7D9kCNfwPK", "port": 60}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'jtnVHgebtwzT6UXz' \
    --sortBy 'createdAt' \
    --sortDirection 'asc' \
    --count '17' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'Msaa4oi0Q4MxAfUL' \
    --version 'glMBHvmxDRBiSMyr' \
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
    --imageURI '9WixL0RwP0uImVHo' \
    --version 'ZnwMtyMDWHdXuE5s' \
    --versionPatch 'OIIjQbEukViG6mZn' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'MnYMlbAejOnVCNyI' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'stEWPfP4E34DLjyE' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'WZotQX2JcBOcpCTK' \
    --versionPatch '7Ir7NWXfXG9u3rEe' \
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
    --region 'ZaFn5u8JVwn6H3J2' \
    --count '34' \
    --offset '62' \
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
    --region 'HiuZLLRHJmjsO916' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'z4gHNckp7LQgl7sQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'EEXb5KS4wRj3pEFA' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'FnffVfwHu3xH0dj7' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region '0KWDDXRK8GEhmBEL' \
    --withServer 'false' \
    --count '57' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'HVAGlfNqlokzoeUN' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'YGZGePJBhV5A4eAZ' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "wZQwvP3kgsVaWT8i", "repository": "lDltxysOzLwmj1gp"}' \
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
    --name 'YmKrl9ZRY9qZXIpX' \
    --count '20' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment '7CtgwLoZUqhIG07l' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 83, "buffer_percent": 41, "configuration": "1z5F5b7xzFYPbaee", "enable_region_overrides": true, "extendable_session": true, "game_version": "z6cKii7KQe6LHvu2", "max_count": 86, "min_count": 71, "overrides": {"oqeavFgHgUWUKgvB": {"buffer_count": 13, "buffer_percent": 16, "configuration": "DkBXMEfZ7rsBQgDI", "enable_region_overrides": true, "extendable_session": false, "game_version": "uSApGrlLBGsuR2n5", "max_count": 85, "min_count": 44, "name": "W32cOkmaSY6CEc5i", "region_overrides": {"7it7NudtXv7DLLEn": {"buffer_count": 79, "buffer_percent": 13, "max_count": 63, "min_count": 100, "name": "Z1UIZfg2fgmEs9xX", "unlimited": false, "use_buffer_percent": false}, "30MZU2JkeXRco6lB": {"buffer_count": 60, "buffer_percent": 83, "max_count": 55, "min_count": 68, "name": "VK7yHOCCdFhVgXQH", "unlimited": false, "use_buffer_percent": true}, "kSK6YwQO3P4sa2mV": {"buffer_count": 6, "buffer_percent": 88, "max_count": 55, "min_count": 76, "name": "jaLFX90DrFNYlXcN", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Se7olObwlMFOAWcW", "ARR8CqIRVNOkouqh", "QrkVzDm918Q91eOC"], "session_timeout": 36, "unlimited": true, "use_buffer_percent": false}, "T8HjUebiSu1U2AKX": {"buffer_count": 37, "buffer_percent": 56, "configuration": "eJ7ijbNvOyZx3OYp", "enable_region_overrides": true, "extendable_session": false, "game_version": "MyuGs87fFITB745f", "max_count": 16, "min_count": 2, "name": "MVOaNElfNk0mGNIP", "region_overrides": {"jYYQDURllphAiy9P": {"buffer_count": 33, "buffer_percent": 56, "max_count": 72, "min_count": 66, "name": "9XQb9YDr3r8Dcuop", "unlimited": true, "use_buffer_percent": true}, "rrLf1IgwtO7ELlwq": {"buffer_count": 51, "buffer_percent": 38, "max_count": 55, "min_count": 32, "name": "7yy423H2FdyiEiYC", "unlimited": false, "use_buffer_percent": true}, "9al68FYMVek9lRNd": {"buffer_count": 31, "buffer_percent": 26, "max_count": 27, "min_count": 0, "name": "dEN9hT2CcVMWuR4z", "unlimited": true, "use_buffer_percent": false}}, "regions": ["SBfPEQP97li3iy6c", "rU9urU23fAiBWjHr", "2TFHQPIzaH9LIjSQ"], "session_timeout": 21, "unlimited": true, "use_buffer_percent": false}, "EbtIxH6iMyorlebh": {"buffer_count": 48, "buffer_percent": 84, "configuration": "9CULH1Yj9tzmEEqQ", "enable_region_overrides": false, "extendable_session": true, "game_version": "qQ3IIWjxKDSIjF1a", "max_count": 52, "min_count": 51, "name": "AJ5lJl3884SM2Eak", "region_overrides": {"Yg4SBvlhPEYiLGEW": {"buffer_count": 39, "buffer_percent": 77, "max_count": 94, "min_count": 39, "name": "041IiCnMdlncURJg", "unlimited": true, "use_buffer_percent": true}, "JhGQloV0MXZcsHSL": {"buffer_count": 68, "buffer_percent": 82, "max_count": 68, "min_count": 65, "name": "FECk3qjB2suBaC13", "unlimited": true, "use_buffer_percent": true}, "FUP0ZeZjDc8JlvA0": {"buffer_count": 10, "buffer_percent": 59, "max_count": 33, "min_count": 75, "name": "xy9CmgbNZ1JfkMqu", "unlimited": true, "use_buffer_percent": false}}, "regions": ["ZTNgH6dwUzOp69Av", "DkCi5zvt74Pfj7v9", "txiCn4fM6769S90P"], "session_timeout": 70, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"DXKNJlRDc6Nk82yu": {"buffer_count": 52, "buffer_percent": 21, "max_count": 86, "min_count": 21, "name": "skhAwHQCQ81St28J", "unlimited": true, "use_buffer_percent": false}, "UcNe7psHdTFn4iyk": {"buffer_count": 26, "buffer_percent": 41, "max_count": 84, "min_count": 20, "name": "uSAxchnd1XNEuenm", "unlimited": false, "use_buffer_percent": false}, "CKNISMwRrHcBYf9F": {"buffer_count": 35, "buffer_percent": 57, "max_count": 72, "min_count": 73, "name": "eDO2bTHoQXwI5V6a", "unlimited": false, "use_buffer_percent": false}}, "regions": ["srtEJkxyI0YJxyJy", "Ib6l7h323SEbEMar", "XOYGJimVQSORgt6O"], "session_timeout": 71, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'wIGWreAtGjYWjnDE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '77' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'YeX83y9mV4HJLLt8' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 71, "mem_limit": 25, "params": "dcH9ZOOqjjNdYRG6"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'IjTrSilYUdbh1a83' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '50' \
    --offset '64' \
    --q 'UMB7aHuiO0Rst4oI' \
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
    --version 'xEmspzrZF4TEvnnd' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'z8xnSgKBXoaAabQd' \
    --count '81' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "gheDytJvsFVKYKP1"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "jMYQv3BHdiwO80gs"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "r9AP86xeUX06Wz2r", "ip": "79xBnKINSbTrs3U1", "name": "6NNFKh2Wtw5N9qn0", "port": 23}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "dIAPPH8WLszVQ81C", "pod_name": "hx8zsJHu77axdXHN"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "4SYnbIfFIKpXngJM"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'J6xZcL6nhxubiyHT' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'YgBMI3bEmMMtnMSu' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "SlqCVVZqMJkRZDw1", "configuration": "OoMsFU5HN7MnY3RE", "deployment": "TNIjgn8T7QQM5bo8", "game_mode": "o20xJz6mNqlllQ7J", "matching_allies": [{"matching_parties": [{"party_attributes": {"t1avngslvI1sjPJ0": {}, "sm4kxX8bOkMzh7b9": {}, "wUNxnErpWBYiQRFQ": {}}, "party_id": "HtX1RfvVVI4wsLaf", "party_members": [{"user_id": "fVTgv9D0OBeMKeqf"}, {"user_id": "MNI8LAjn1Oom7bla"}, {"user_id": "gdfG4gC5ErjerEP3"}]}, {"party_attributes": {"B7Q4LiO4GHmabiji": {}, "OY7J6tV9QOtpAhP2": {}, "rR8QeKH0kY50YxjX": {}}, "party_id": "dHggwLrB68IemC9E", "party_members": [{"user_id": "g7oTIqqDFulZrOSb"}, {"user_id": "Ns00kgwVTMAQ3xcx"}, {"user_id": "leL35xYmHw5SFAi8"}]}, {"party_attributes": {"aUqA7J7hGTWIQSQa": {}, "gc7ugL6AUfm1R9s0": {}, "HGN0APUdpPk1zNKh": {}}, "party_id": "FQdi5Ov7lLAASuAb", "party_members": [{"user_id": "fCQVMmdTjpdTsMJR"}, {"user_id": "nffAw5ilCeuhFdK7"}, {"user_id": "owk1vWKc0rH29LR5"}]}]}, {"matching_parties": [{"party_attributes": {"XjMUn2l2f5xmdCVa": {}, "pCiUVd4RvR8FTEzx": {}, "j8gq5Wsq7L0pbLrE": {}}, "party_id": "2zS2NI581If1pkyw", "party_members": [{"user_id": "9YpgPKBJQmIKJhEd"}, {"user_id": "XOlDDqdNTC9RvTwb"}, {"user_id": "OcjvY4nORXyuO5rI"}]}, {"party_attributes": {"fYVrgMvrLG5DiqLW": {}, "DTcou7UJBINDLtCs": {}, "xrQlpTf7atZFoJ1j": {}}, "party_id": "XHFAJaSpOvu4EiMe", "party_members": [{"user_id": "m57Eekc9qkkXvZwr"}, {"user_id": "ZYEFcxQEfhVTZ5yq"}, {"user_id": "3RfvsxfER0veLLpM"}]}, {"party_attributes": {"oOJG3AkvvtvzvW17": {}, "TrMAYRbsZN0a9o5C": {}, "H3nmwBWEo5J6catq": {}}, "party_id": "nj6Q13tKR4vzZrsz", "party_members": [{"user_id": "y9AOkVju5bMzIfBt"}, {"user_id": "pnLOK9hiX67nZqE9"}, {"user_id": "XUn6xXVgLqu50nRz"}]}]}, {"matching_parties": [{"party_attributes": {"snsabXhaMNeotKNq": {}, "pICFbaKugef7PzF4": {}, "WxXVaEVyGUeH669R": {}}, "party_id": "BSz0uIAUGX4iVgzt", "party_members": [{"user_id": "9rlQQsJ4kNzKeM2O"}, {"user_id": "jtcbKCezquvf08r5"}, {"user_id": "QE2zSB9l4H5LShPC"}]}, {"party_attributes": {"2SA2noFa4JJfSJPZ": {}, "ukooQdtMUEF3YgOv": {}, "0btMKszdGnY9I8eB": {}}, "party_id": "Sxkh9HDI4uKe1yQt", "party_members": [{"user_id": "MMYWtJTUIimgXaRS"}, {"user_id": "sSuPqX7VOWeF2RPu"}, {"user_id": "mQZMusUBzaFc7eFb"}]}, {"party_attributes": {"X7AmoeggCX9WZkUB": {}, "PZkHBmteoWkmWYEG": {}, "VfVmLcsGCZnFB4ga": {}}, "party_id": "kjMhnuoi5bfkT2Wb", "party_members": [{"user_id": "x98JqsCMkRVoADX1"}, {"user_id": "gnyzzAlkS7TxxnoO"}, {"user_id": "cq4AIX9NKoihmPhy"}]}]}], "namespace": "nwKsctfM2iWav1Ac", "notification_payload": {}, "pod_name": "zaVtKdb1fnc17cM7", "region": "tIXRQQ2Gscj4LG93", "session_id": "7uaZst7hTPWHaMx2"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "eOC3FSDvzSxuvCT3"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'NcrSXnADTjr2hY0n' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'qu3MWPoy58QvqQtS' \
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
    --region 'lTxQeEE0Gb0Cm0W8' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE