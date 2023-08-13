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
    --body '{"artifactPath": "tn6oMtkF8if3742f", "image": "UKqDuWbe4eddeFkA", "namespace": "7SrhpdQlHRvbKm6r", "persistent": true, "version": "QyzaAriTUdURUu9V"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "B0QxQewwRK3y2z4e", "dockerPath": "Awub8CQGkv0L4Sz6", "image": "AAvrLCEqRUaZzEzS", "imageSize": 60, "namespace": "AXlar2m190AoBEuL", "persistent": true, "version": "JtCTJTDPq4TP7Xjy"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "r0URckqJ26gYfJxJ", "dockerPath": "9BorfHJzd9FIUE87", "image": "FZzY9zAUXrkOvSFW", "imageSize": 82, "namespace": "GTmQMj8217ffOIXA", "patchVersion": "vCmMiluKUX7TzUIa", "persistent": true, "uploaderFlags": [{"name": "qvDniRYXjNz6k9WD", "shorthand": "MZQEsPSNb5iZ543g", "value": "YdkzPTqrSv6PtH2W"}, {"name": "XEWKMYYa9nDxdnVr", "shorthand": "G4OLZFiZPTKjVD4k", "value": "SNja78KkgFc57dcR"}, {"name": "5IZQJ6lXVVzTepyP", "shorthand": "Wpo60WNoGhRC7LGZ", "value": "aAibtYkDKXVtL6I9"}], "version": "Rq40YrbkAO83Q9u1"}' \
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
    --body '{"claim_timeout": 28, "creation_timeout": 69, "default_version": "ZmogH6hdAbmMB3zV", "port": 92, "ports": {"FXmJz40QIPuwEaqo": 80, "piGNlAcGhwI6ZlBR": 89, "uQRZ46O5ZNhK2bSC": 63}, "protocol": "ZNYzl6wV6ynbRBYN", "providers": ["fFgwOx5UI4NvAl8F", "GHqDIuCh0Ntlmz9S", "ldHRV4DBQ0fteqFz"], "session_timeout": 100, "unreachable_timeout": 92}' \
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
    --body '{"claim_timeout": 15, "creation_timeout": 2, "default_version": "GAa7jHIgjee1Rzgx", "port": 38, "protocol": "AA1QnIFPl4ala8Uw", "providers": ["d0YB2uM5puQPAnkp", "HpKBSXvye5QD4Q8P", "xNZp6VlEQVXt5SER"], "session_timeout": 74, "unreachable_timeout": 10}' \
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
    --name '2UbMtPoF24yIplPE' \
    --count '37' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'HmC1Sx7P0aAVK3wU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'ptgWWRcfMEM6sLqi' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 72, "buffer_percent": 23, "configuration": "qYNEq006rzAxNMUZ", "enable_region_overrides": false, "extendable_session": true, "game_version": "QrqFJ33vHiGWwsU3", "max_count": 13, "min_count": 43, "overrides": {"eBZU2KFdFaodyLXT": {"buffer_count": 14, "buffer_percent": 89, "configuration": "iXANagpW9lYOvuuw", "enable_region_overrides": true, "extendable_session": false, "game_version": "lolWAJ3vYNIlqO1v", "max_count": 1, "min_count": 97, "name": "FnnsivDggb1qz7GR", "region_overrides": {"jPOu0dmSg1Z0V5hm": {"buffer_count": 84, "buffer_percent": 52, "max_count": 25, "min_count": 26, "name": "KLjXEbggXeLSSfd9", "unlimited": false, "use_buffer_percent": false}, "Zp2QDsf9l59H7nkE": {"buffer_count": 38, "buffer_percent": 64, "max_count": 70, "min_count": 30, "name": "d1PUO75470kvZWyo", "unlimited": false, "use_buffer_percent": false}, "JHFkvNa4RJofvnOE": {"buffer_count": 84, "buffer_percent": 27, "max_count": 45, "min_count": 76, "name": "GJbbdSRUfSzhkpkZ", "unlimited": true, "use_buffer_percent": false}}, "regions": ["02c1QIERjpctdxdL", "FiqxkjjHS3SIg9Nr", "3Lh9uYovxzOZ2jtx"], "session_timeout": 29, "unlimited": true, "use_buffer_percent": false}, "sSNV5j1kp2HAoPXp": {"buffer_count": 79, "buffer_percent": 97, "configuration": "7eWnmD2ym2JyVDAi", "enable_region_overrides": true, "extendable_session": false, "game_version": "4E6vErRACRpFYWZo", "max_count": 33, "min_count": 68, "name": "ByzKfMsoDmxVGdge", "region_overrides": {"U1ox69wGhJt68aWP": {"buffer_count": 86, "buffer_percent": 37, "max_count": 76, "min_count": 52, "name": "MWtOWTa2CPZGHY9k", "unlimited": false, "use_buffer_percent": false}, "G6LGeLiUL19j4woB": {"buffer_count": 57, "buffer_percent": 32, "max_count": 28, "min_count": 26, "name": "Yl6FyrUzAwK8CUTJ", "unlimited": true, "use_buffer_percent": false}, "9x66ZsfSU0vUwMht": {"buffer_count": 25, "buffer_percent": 18, "max_count": 39, "min_count": 86, "name": "4Vsmk8Ybke4HQXA7", "unlimited": true, "use_buffer_percent": true}}, "regions": ["oKeARumZzRt8Z6n3", "YI1Qu4Z6uIOLuCKg", "4aNBSG8qk5VsjSSm"], "session_timeout": 52, "unlimited": false, "use_buffer_percent": false}, "qGBXJ9sae9P8mKJ1": {"buffer_count": 27, "buffer_percent": 9, "configuration": "leGTflEY8NJKWnRs", "enable_region_overrides": false, "extendable_session": false, "game_version": "lOzORCfx3ydWPHfQ", "max_count": 73, "min_count": 82, "name": "TvR8GHbMI9QNopth", "region_overrides": {"5wlfpKshuPjEp6rg": {"buffer_count": 49, "buffer_percent": 48, "max_count": 94, "min_count": 35, "name": "FF3mESygAlcuKnaz", "unlimited": false, "use_buffer_percent": true}, "ReWZQp6qjig0FQlH": {"buffer_count": 72, "buffer_percent": 39, "max_count": 90, "min_count": 94, "name": "O3AajAOm43tBGF5x", "unlimited": true, "use_buffer_percent": true}, "JhWYVOq6AQxsllqh": {"buffer_count": 66, "buffer_percent": 11, "max_count": 37, "min_count": 99, "name": "RRvCPdVzR8swRwJB", "unlimited": true, "use_buffer_percent": false}}, "regions": ["B8xqAlY92EdRySaO", "rBUVo53BOp02jiWV", "RefqpXDBxSiJ4gFa"], "session_timeout": 46, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"dYxNZDmzVgpHd84L": {"buffer_count": 19, "buffer_percent": 95, "max_count": 67, "min_count": 9, "name": "8NIYtoAfAEr6Ps8E", "unlimited": false, "use_buffer_percent": false}, "sqw5B13asLhx14xk": {"buffer_count": 86, "buffer_percent": 43, "max_count": 8, "min_count": 71, "name": "JxWMYo6CV3JoXevz", "unlimited": false, "use_buffer_percent": true}, "YNQX8ubg6IuSpwC4": {"buffer_count": 58, "buffer_percent": 50, "max_count": 65, "min_count": 22, "name": "6GkFcaeatCHC5J2M", "unlimited": true, "use_buffer_percent": true}}, "regions": ["RfGJ14WEIkVsPefA", "Z0Mt9Idu8iA0q3CC", "zJmV7SzyYNbqsI18"], "session_timeout": 41, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment '5mZvfRauhejEgsz0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'rlFwzHT9qMeMMivJ' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 99, "buffer_percent": 8, "configuration": "p4FtItmfYEIYbrOI", "enable_region_overrides": true, "extendable_session": true, "game_version": "AD6ZclrOuRAHVTy9", "max_count": 74, "min_count": 65, "regions": ["bWoPgfSugUISTiVH", "P1GVQiDk1pva8Asb", "8KGZIaqoihIUxhJ6"], "session_timeout": 61, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'MC1OCYPNwgQ869nt' \
    --namespace $AB_NAMESPACE \
    --region 'mzMC3n3aQ2RepXgd' \
    --body '{"buffer_count": 5, "buffer_percent": 28, "max_count": 61, "min_count": 20, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'KV9mZHCVSoaJIAWO' \
    --namespace $AB_NAMESPACE \
    --region 'O8KSjmq1E1zmNMII' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'elBQmRPlwC3gVila' \
    --namespace $AB_NAMESPACE \
    --region 'l1Zk2dsfeCRX16J0' \
    --body '{"buffer_count": 35, "buffer_percent": 45, "max_count": 63, "min_count": 94, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'triY4jvy3amZnPTg' \
    --namespace $AB_NAMESPACE \
    --version 'AHS73VjuIR8woz5B' \
    --body '{"buffer_count": 7, "buffer_percent": 31, "configuration": "vvI3Iuo9MLZ5Q2uY", "enable_region_overrides": true, "extendable_session": true, "game_version": "mhBs4UAg3DPgxOjm", "max_count": 12, "min_count": 71, "region_overrides": {"HpIW7rx76y8wB8aW": {"buffer_count": 47, "buffer_percent": 98, "max_count": 75, "min_count": 67, "name": "sx6vhQAem1oBwOZl", "unlimited": true, "use_buffer_percent": true}, "aYOTmLa32jWgUKwZ": {"buffer_count": 42, "buffer_percent": 64, "max_count": 66, "min_count": 11, "name": "gBZYjnddkgDSteXb", "unlimited": true, "use_buffer_percent": true}, "ohN6B8gobASpbjFd": {"buffer_count": 47, "buffer_percent": 44, "max_count": 10, "min_count": 84, "name": "ed30j5MP4PT8Kytz", "unlimited": false, "use_buffer_percent": true}}, "regions": ["gEDphHjRnyAvSauw", "3DyfnCnK0gddrOR6", "J9WmqQNIDW5huuWo"], "session_timeout": 91, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'UXpx7UVhfdfhNMow' \
    --namespace $AB_NAMESPACE \
    --version 'Jk3hrwLcYbAMTHy2' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'CXo7QNatN7aip89E' \
    --namespace $AB_NAMESPACE \
    --version '4iAUGBcK5h5oAPK3' \
    --body '{"buffer_count": 23, "buffer_percent": 14, "configuration": "3jAf7yCwQTGdfXQc", "enable_region_overrides": true, "game_version": "yg2xl003QQvkj8un", "max_count": 47, "min_count": 95, "regions": ["OJqwOQ1BLITXrR6O", "dXojKds7q1WLKCQC", "xElBAPPzhWn1VHMD"], "session_timeout": 37, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'JobeGwH9EsvdygV9' \
    --namespace $AB_NAMESPACE \
    --region 'J7uANWa4KVnJ4L7n' \
    --version 'g0m7yeZhDZ5imbVh' \
    --body '{"buffer_count": 42, "buffer_percent": 80, "max_count": 19, "min_count": 69, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'nvcckRjIVLiKNtl4' \
    --namespace $AB_NAMESPACE \
    --region 'VcK26jOt6DV5Hr6n' \
    --version '7VBJTwPd1B09Nc1Q' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '0h9zbWTRoQtmwfbk' \
    --namespace $AB_NAMESPACE \
    --region 'XJnxF5v8qG2P4i90' \
    --version 'WAMJXMxBwmxcAQlc' \
    --body '{"buffer_count": 97, "buffer_percent": 18, "max_count": 98, "min_count": 82, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '31' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'AeSSOX5ZpWIZHbD1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '3MsK2UWTxSzVT4aS' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 10, "mem_limit": 83, "params": "ryLCwZ1TbldlkmdC"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'IDMV9evjmHe12ITE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'VaR0atsyj5fM7sli' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 68, "mem_limit": 86, "name": "a3kxfdMyA6fWKlwK", "params": "sCYhQbcsUBVDmfma"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'Lr2BDbutQIDuvYNM' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 63}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'DUv7a6XF4w6r8lnG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'SaKjGBYBczoerKa2' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "11gYP64TpLDZwZmf", "port": 96}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q '3VvmqUepgxbKAMwz' \
    --sortBy 'version' \
    --sortDirection 'desc' \
    --count '16' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI '83cFo1vHBIC77pA8' \
    --version 'hceWJ7xjNK0pTnso' \
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
    --imageURI 'ywizfwQFmUsEGW6U' \
    --version 'Ma4mSIbxLouvXwsN' \
    --versionPatch 'k9qdQJpugsBFH6kq' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'yoP0yQ3cRKiwReJu' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'J5GYTrEZZwsiTuN1' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'LaEs8DYKQMqeNkrY' \
    --versionPatch '0nbdR5otgiwjQMLz' \
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
    --region 'NhiaifvaJvj74AGa' \
    --count '29' \
    --offset '41' \
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
    --region 'bgRXYaRuEfcWMaCa' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'M7qtWOynjPfMSyAO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'olOJGL5teW1cmiGb' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 's5lv2nwbQ1aI5bpH' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'jsEVfW9s3BTqMHUB' \
    --withServer 'true' \
    --count '10' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'cNJhXqC3qle07ZXc' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'gedcGKY4yT7D5YTu' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "bhTukQAvGahpuWPv", "repository": "fOZK8B8PIpe7fzFD"}' \
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
    --name '96ZS3bDFDsCzFhkz' \
    --count '94' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment '2XKadJC8JwcYhmMp' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 36, "buffer_percent": 32, "configuration": "0XnpUQwZrUGjCISb", "enable_region_overrides": true, "extendable_session": true, "game_version": "LmWzN6iPCY5PGlgH", "max_count": 43, "min_count": 1, "overrides": {"irsWZcJCjh1nvngm": {"buffer_count": 21, "buffer_percent": 95, "configuration": "BqyaoUi0iBvqhqxS", "enable_region_overrides": false, "extendable_session": false, "game_version": "c99h6wMq2BAsztsn", "max_count": 17, "min_count": 13, "name": "mwToQEA1sSWscjgc", "region_overrides": {"vN3zBwhzU3Wa6xa9": {"buffer_count": 28, "buffer_percent": 73, "max_count": 44, "min_count": 12, "name": "5gVMix2fmLyl1mTk", "unlimited": true, "use_buffer_percent": true}, "Fe82UqQAa1pH7nQT": {"buffer_count": 99, "buffer_percent": 50, "max_count": 97, "min_count": 41, "name": "5vVLxm2FE9PEqVba", "unlimited": false, "use_buffer_percent": true}, "ucbiZuUetkTAxxFr": {"buffer_count": 61, "buffer_percent": 47, "max_count": 70, "min_count": 22, "name": "KJpYu47AYc23BEDL", "unlimited": true, "use_buffer_percent": false}}, "regions": ["g2XDoc73CTOzIpIm", "1pWy91VXJ25ua7Mu", "Q7uHncGySS9K6iBu"], "session_timeout": 6, "unlimited": true, "use_buffer_percent": false}, "MWSNrgXhOApqcBd7": {"buffer_count": 3, "buffer_percent": 54, "configuration": "YHk64MQkyC8ia04m", "enable_region_overrides": false, "extendable_session": true, "game_version": "k37b9j2aopq4h8nR", "max_count": 85, "min_count": 48, "name": "cukxHez8EIRR2Se2", "region_overrides": {"R3mbgde2iKbuR8jX": {"buffer_count": 6, "buffer_percent": 21, "max_count": 52, "min_count": 17, "name": "Mkk8xDpXIa7CuHSO", "unlimited": false, "use_buffer_percent": false}, "V218UN7GNhGK4342": {"buffer_count": 58, "buffer_percent": 31, "max_count": 3, "min_count": 74, "name": "HaLAZOHbd5H33Wyy", "unlimited": true, "use_buffer_percent": true}, "uskC50073H88M5Ks": {"buffer_count": 94, "buffer_percent": 97, "max_count": 88, "min_count": 66, "name": "vA8rMM7CI36SezUV", "unlimited": false, "use_buffer_percent": true}}, "regions": ["igXflyfBsbAPoS3F", "ku6gZLfsqgLwPi23", "FwY5OUzqmS2FGZWU"], "session_timeout": 63, "unlimited": false, "use_buffer_percent": false}, "j5ZPR5SDfAypNRHz": {"buffer_count": 96, "buffer_percent": 12, "configuration": "NlNRRuFyb5wu3lW2", "enable_region_overrides": false, "extendable_session": false, "game_version": "bFbLu9QnhqUND8f7", "max_count": 5, "min_count": 56, "name": "PiIZxtjirD9G4G5Z", "region_overrides": {"kkOEoRU6fGkvqp0W": {"buffer_count": 2, "buffer_percent": 41, "max_count": 15, "min_count": 44, "name": "loZK1069RFpdkhRc", "unlimited": true, "use_buffer_percent": true}, "FQkur4cibGnZUuSW": {"buffer_count": 60, "buffer_percent": 29, "max_count": 18, "min_count": 95, "name": "H2xtew6HqMwJ2rQ7", "unlimited": true, "use_buffer_percent": false}, "hW8E2c0b4kKWwKlg": {"buffer_count": 100, "buffer_percent": 20, "max_count": 5, "min_count": 65, "name": "bf9MlAhBtZ6VcZb0", "unlimited": true, "use_buffer_percent": true}}, "regions": ["BdaJeFaC4X3Gax6C", "9zWTAFn1OhYP5rJV", "W4WaC1QyYSSxfvCp"], "session_timeout": 15, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"5MGrlbhKpJIeMiKX": {"buffer_count": 32, "buffer_percent": 94, "max_count": 1, "min_count": 16, "name": "idkhaS7RWEigKyKa", "unlimited": false, "use_buffer_percent": true}, "s0Iuxt8dK2zUfIPE": {"buffer_count": 90, "buffer_percent": 14, "max_count": 62, "min_count": 22, "name": "wfVkveBYQuWbgjN9", "unlimited": false, "use_buffer_percent": false}, "qUzvUchCplTX74Eu": {"buffer_count": 44, "buffer_percent": 46, "max_count": 69, "min_count": 25, "name": "2esSSqrq3ntgj34a", "unlimited": false, "use_buffer_percent": true}}, "regions": ["I4j6yPYQ3Jo69OZx", "WVzjkmwSQdtdlAbB", "s26KiLK0oeutAbOY"], "session_timeout": 12, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'lVJ5b6IlJ5Lp86jG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '91' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'ecDHZXFvzmjHyc6P' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 63, "mem_limit": 30, "params": "s59KmSwgE76aqKoR"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name '75ITSjyjWIcDUiK9' \
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
    --version 'x93Iwl3DdJ2HNY12' \
    > test.out 2>&1
eval_tap $? 65 'ImageDetailClient' test.out

#- 66 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'WlOKixynbwxUqzvw' \
    --count '79' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 66 'ListServerClient' test.out

#- 67 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "tJID0dGAwMGIGDmV"}' \
    > test.out 2>&1
eval_tap $? 67 'ServerHeartbeat' test.out

#- 68 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "tkJOJOhX5Nugzs4t"}' \
    > test.out 2>&1
eval_tap $? 68 'DeregisterLocalServer' test.out

#- 69 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "uUSAgEZHPz9RXTMI", "ip": "gQzdt2nBGTiumdbt", "name": "995bwBw9kr2MiHTQ", "port": 46}' \
    > test.out 2>&1
eval_tap $? 69 'RegisterLocalServer' test.out

#- 70 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "ffsE0zJGoWgTVkAm", "pod_name": "CLxHE7QauXXPXCA9"}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterServer' test.out

#- 71 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "cCGVDDryv7Ft13tS"}' \
    > test.out 2>&1
eval_tap $? 71 'ShutdownServer' test.out

#- 72 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName '4ELzZz8mSTE8TufA' \
    > test.out 2>&1
eval_tap $? 72 'GetServerSessionTimeout' test.out

#- 73 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'oWXyNP8SvPq5ZP2F' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSession' test.out

#- 74 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "zb3bYFHDxmVwfA56", "configuration": "UfrLLDSg4m7bQ4II", "deployment": "DCfOUk6EyIFCoVog", "game_mode": "qTzasph5rOHSmE1O", "matching_allies": [{"matching_parties": [{"party_attributes": {"9LTUjflPUB04q6p5": {}, "ForrxTE2yJT4uUg2": {}, "GM2OeICZlkNJlc6K": {}}, "party_id": "I3ILU93AsML6FrsX", "party_members": [{"user_id": "jpICrLE0VuU8Eyqo"}, {"user_id": "vr4r83DEQMnRFEB3"}, {"user_id": "TBr1PLnSG7VyX12X"}]}, {"party_attributes": {"Q1arCxsNAQIKFO54": {}, "hP89S9hLDw3RmqOZ": {}, "aamKjmS9ssudtm36": {}}, "party_id": "1NvVWsvgIL5iwh70", "party_members": [{"user_id": "fEFxOzG24TIe5LYG"}, {"user_id": "juukNeJAKqEFrpAD"}, {"user_id": "bH6CdDoUXkTGV1iZ"}]}, {"party_attributes": {"c9mdctxdAnBTLJCX": {}, "q39Jo5Hx1pfxRCgQ": {}, "WvL0AfKmLD9L342m": {}}, "party_id": "OIiEx7PO511HrVdk", "party_members": [{"user_id": "b3Qegqq7t3hBoHpn"}, {"user_id": "nXz1Z5HtHc9dl9eP"}, {"user_id": "6qrp11RgjgCTRU17"}]}]}, {"matching_parties": [{"party_attributes": {"MVvvSOeXX3ml7D3w": {}, "bMdgA6PqxgmdqYbk": {}, "r6P9kgMZse08FYr3": {}}, "party_id": "jL6mnM976ioLkIIE", "party_members": [{"user_id": "YPQi58Ss5mGQF8tC"}, {"user_id": "0NztEKVuGqGfBxFt"}, {"user_id": "Y9RRSzDC7GvBR0fW"}]}, {"party_attributes": {"A12U1yxqB5OgboLx": {}, "Pu1M8kJ3e0YEr0LI": {}, "KfUwgUI4ui1MmkUJ": {}}, "party_id": "Nvyx4VMFJkM2gOam", "party_members": [{"user_id": "VsTGRMyLFG41KLOe"}, {"user_id": "GKCuvEVf5dwOKicR"}, {"user_id": "4XbQxbgflLs8tHFC"}]}, {"party_attributes": {"BYHLEes5QF4htFvt": {}, "77yDBhh1fJNrY5jb": {}, "bzSfk3y1dfJDLdQ0": {}}, "party_id": "dQ6QuMyQiBuc6mVq", "party_members": [{"user_id": "argnmI8LOSa0lOO7"}, {"user_id": "q2gTXhYF3bzOkTJ2"}, {"user_id": "veARIs5uzk6ljSpp"}]}]}, {"matching_parties": [{"party_attributes": {"vD1Z7pVnUzZSSUGP": {}, "F0nGa96uOnJP3cvK": {}, "r0EWjeD1xFwU3vYb": {}}, "party_id": "UDwjFdBwmP5phmMb", "party_members": [{"user_id": "jfhrXtebkHklbVrV"}, {"user_id": "AGduwenYlrO3ru4M"}, {"user_id": "p0erLsYbTUodubUF"}]}, {"party_attributes": {"8fPHJoyZ0Bm1Hn2A": {}, "q9qSv2ATj8p6ez6L": {}, "9v2fFtDd7DXuyyPf": {}}, "party_id": "254Mwvb1lzrKjbn6", "party_members": [{"user_id": "au6hbzURwkwwjlns"}, {"user_id": "FOyGAkD872IhlRwJ"}, {"user_id": "R9MIcqScii83NcTP"}]}, {"party_attributes": {"LWObJSAONwzidtK2": {}, "nyAYUcduaCOeah5O": {}, "Lj6YfWUovsSziLob": {}}, "party_id": "469bR7qVTmFgV80F", "party_members": [{"user_id": "al5j93eYMhKXi4W7"}, {"user_id": "jTNVPQAzbLQa87G9"}, {"user_id": "jbO6dn5wxoFCRHb7"}]}]}], "namespace": "bDkBFGwl0d2tSd04", "notification_payload": {}, "pod_name": "9asYNWtG22hoqg4i", "region": "eUzwRy4lhJwqLREn", "session_id": "twPKwgRpvHRlrXcN"}' \
    > test.out 2>&1
eval_tap $? 74 'CreateSession' test.out

#- 75 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "Wr9Jb4NxqyWZHkH8"}' \
    > test.out 2>&1
eval_tap $? 75 'ClaimServer' test.out

#- 76 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'SZ3AdVncG9g60OX1' \
    > test.out 2>&1
eval_tap $? 76 'GetSession' test.out

#- 77 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'cCRu1uuXp8fEURRM' \
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
    --region '1jHx77GYNPPwpaMB' \
    > test.out 2>&1
eval_tap $? 80 'ListProvidersByRegion' test.out

#- 81 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 81 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE