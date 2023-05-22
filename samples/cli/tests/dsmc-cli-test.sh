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
    --body '{"artifactPath": "yUBqoBY14szLfJWm", "image": "OorT7cgCLU0fRkuA", "namespace": "BXBPtg7nt0Lk2WkN", "persistent": false, "version": "EqI76u2vHLemwpag"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "CM5YMl72URmFQZ0H", "dockerPath": "SBiZhKQT0EJj0Wzx", "image": "WnLYlqnEs2lKo4vO", "imageSize": 19, "namespace": "V8lFM6m62sB80Wl3", "persistent": false, "version": "UjXcRBODSG92qihV"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "GMkMSRzQsgDDi89p", "dockerPath": "s4xW0IHIhb9CwVss", "image": "BwkxkS5lSDHTxrh4", "imageSize": 87, "namespace": "cp91aojWBkML6Ry5", "patchVersion": "D8TRQ2SiX7YfjjT2", "persistent": false, "uploaderFlags": [{"name": "fmXRwGVhOpqHswVT", "shorthand": "Wqcl3YjNXC3Zj5sE", "value": "UxRQB4lpetSDj8DN"}, {"name": "8AEWXQF2uzfrFmZ9", "shorthand": "JD2WAfXMTECDsTa6", "value": "pzsgCXMOZByadSSP"}, {"name": "JiNZKaRBCA2WCigz", "shorthand": "q9yf0ow9YAMBwa3m", "value": "eQUi9cx68SGkzZWi"}], "version": "gfQe8YU42pUr7vIi"}' \
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
    --body '{"claim_timeout": 44, "creation_timeout": 72, "default_version": "RQ90qjV3jb6eRQaJ", "port": 8, "ports": {"DymMZHdYRECDwbYS": 94, "hHxKiMmapPOrIJpc": 86, "bClcnK5gyYgNOPPw": 87}, "protocol": "xqz7hb6PjNkmpvPn", "providers": ["jI0fYYjfUSxE3BEz", "neFo6jq41TvPOmTu", "fuE1xMtZ2zGo9FMV"], "session_timeout": 16, "unreachable_timeout": 61}' \
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
    --body '{"claim_timeout": 4, "creation_timeout": 97, "default_version": "4RsVfMLdCylQXW8W", "port": 31, "protocol": "LPfN28ZZblt87Lst", "providers": ["wO7pQFREfBmfx9Ew", "cd5eBpF4YvnoQoIK", "sZzxFHy1Yh5EwOdH"], "session_timeout": 52, "unreachable_timeout": 22}' \
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
    --name 'qNeQdWn2N0sYQLXi' \
    --count '22' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment '3wnSH4yHd8lODjXW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'PF4nv4M6Axl7luS2' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 11, "buffer_percent": 82, "configuration": "7o9QnUB5YqVuu90j", "enable_region_overrides": true, "extendable_session": true, "game_version": "a1bvOr0xLzT7bakT", "max_count": 13, "min_count": 48, "overrides": {"SES2UfroOnhH2tuc": {"buffer_count": 1, "buffer_percent": 61, "configuration": "yJP7nQpbSr858ERo", "enable_region_overrides": true, "extendable_session": true, "game_version": "r2VzigNXtLnBbqQX", "max_count": 92, "min_count": 81, "name": "wCGezx9oBG1oQrbr", "region_overrides": {"zDq3ObdbfO9eNLZa": {"buffer_count": 70, "buffer_percent": 53, "max_count": 28, "min_count": 41, "name": "05DIsskAIBq8cW0O", "unlimited": true, "use_buffer_percent": true}, "DM32T6GJTRcTuxSl": {"buffer_count": 19, "buffer_percent": 76, "max_count": 1, "min_count": 60, "name": "UlL80cC1r7QFI01C", "unlimited": false, "use_buffer_percent": true}, "Howo5LEgxOJUaQwj": {"buffer_count": 0, "buffer_percent": 41, "max_count": 59, "min_count": 65, "name": "BFZYrb3AuRXz5q6x", "unlimited": true, "use_buffer_percent": false}}, "regions": ["Qdqo2JRLqNckQ2eJ", "xCouZ8BvOTDn53qI", "JU8uGZRzE2gZe1u5"], "session_timeout": 12, "unlimited": false, "use_buffer_percent": true}, "VkcQd7JfsPoTknll": {"buffer_count": 71, "buffer_percent": 61, "configuration": "5loQKGyvn5qmhLYP", "enable_region_overrides": false, "extendable_session": false, "game_version": "JBHbLNJAqBP8xlkh", "max_count": 60, "min_count": 9, "name": "VOgwcJLz9rHfTuSF", "region_overrides": {"MpUNP9PtSZmXrVrx": {"buffer_count": 72, "buffer_percent": 16, "max_count": 69, "min_count": 49, "name": "cIppsrJ9ZSpliCQD", "unlimited": true, "use_buffer_percent": false}, "XnK8lzCCsE2T7vr3": {"buffer_count": 3, "buffer_percent": 98, "max_count": 8, "min_count": 21, "name": "lz5ycMniW9qcKDBf", "unlimited": false, "use_buffer_percent": false}, "V0gcilG5WZ9ebFND": {"buffer_count": 13, "buffer_percent": 78, "max_count": 47, "min_count": 64, "name": "amh1hlpVydUuWNJg", "unlimited": true, "use_buffer_percent": true}}, "regions": ["T1QG7E4SfvFuFChX", "w35czNlOlmzkdVTT", "f65CPx9lGKOXPAwp"], "session_timeout": 12, "unlimited": true, "use_buffer_percent": false}, "dHtnvHhNFNvtR3Pz": {"buffer_count": 22, "buffer_percent": 87, "configuration": "bRvH1nUo4KMeuIru", "enable_region_overrides": false, "extendable_session": false, "game_version": "lGfXfazw21ZraS7D", "max_count": 49, "min_count": 16, "name": "ynSu79Sadc0Tl1F3", "region_overrides": {"EMsB6AYrOOcwGAE3": {"buffer_count": 3, "buffer_percent": 51, "max_count": 28, "min_count": 41, "name": "yvejVtor5VxBrva8", "unlimited": false, "use_buffer_percent": true}, "jWV5x2sYUwaa7J8p": {"buffer_count": 78, "buffer_percent": 5, "max_count": 8, "min_count": 1, "name": "vNrg3JQcuSQgxwVv", "unlimited": true, "use_buffer_percent": true}, "g1gyndKaiLxYxUoo": {"buffer_count": 21, "buffer_percent": 28, "max_count": 79, "min_count": 68, "name": "qo6q9cdbTKybk5ax", "unlimited": false, "use_buffer_percent": false}}, "regions": ["wjRKvgyo2WxuY624", "8TToredFVSw0e17J", "JTjDQ7EYSVCBY1Wf"], "session_timeout": 29, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"DzOrq6ut3rvHeNFN": {"buffer_count": 54, "buffer_percent": 56, "max_count": 94, "min_count": 75, "name": "sbb2M5lkXTfZtFbJ", "unlimited": true, "use_buffer_percent": true}, "l9685O8a3UfmMe1s": {"buffer_count": 1, "buffer_percent": 35, "max_count": 14, "min_count": 41, "name": "XNhcDRDHRz6yCpCR", "unlimited": true, "use_buffer_percent": false}, "inIr3hZt2A0OboC9": {"buffer_count": 99, "buffer_percent": 32, "max_count": 10, "min_count": 0, "name": "bsx8C8jcoS1tWdTF", "unlimited": true, "use_buffer_percent": false}}, "regions": ["1QBpWoQMn4IJW18F", "haltIDnrJtKStLSr", "OfNXcmlPpOPafLJi"], "session_timeout": 74, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'hV6q3xfiZDR4BZmJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'vGBogkNw8vZfzhda' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 35, "buffer_percent": 81, "configuration": "YVQzhv0a3hpDw5gH", "enable_region_overrides": true, "extendable_session": true, "game_version": "c1TZiO1fYhR0Qx5q", "max_count": 3, "min_count": 53, "regions": ["Adb4Bv8OgDfLyQ76", "voUP6eGdoZePOJrI", "qmgqmRaH2oHlN4zB"], "session_timeout": 64, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'jC0JCk4KFDZm2ZRy' \
    --namespace $AB_NAMESPACE \
    --region 'dYttDdLpC9DMKXgb' \
    --body '{"buffer_count": 92, "buffer_percent": 43, "max_count": 96, "min_count": 15, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'UL2TzAlhkd4hmxKu' \
    --namespace $AB_NAMESPACE \
    --region 'zCnp9oqbf8CBRU5b' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment '1Ti9mFL2OOlO5hjh' \
    --namespace $AB_NAMESPACE \
    --region 'iXKFfbTepBwI3uKC' \
    --body '{"buffer_count": 60, "buffer_percent": 48, "max_count": 53, "min_count": 6, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment '05KWADpLfbUqjO9Y' \
    --namespace $AB_NAMESPACE \
    --version 'Q9oi8DdjCEmVz1lB' \
    --body '{"buffer_count": 49, "buffer_percent": 54, "configuration": "Nz1SUHlBs4z8GyxC", "enable_region_overrides": true, "extendable_session": true, "game_version": "nKl97nXMQzPo32Sj", "max_count": 92, "min_count": 3, "region_overrides": {"CNFfbMWOllFNljQK": {"buffer_count": 42, "buffer_percent": 81, "max_count": 25, "min_count": 2, "name": "dLMLzcmoLL7fdakM", "unlimited": false, "use_buffer_percent": false}, "C77iUeUhZMJcDxXM": {"buffer_count": 2, "buffer_percent": 99, "max_count": 69, "min_count": 97, "name": "iOR6e0E3eaE7tA7D", "unlimited": true, "use_buffer_percent": true}, "msTM7LEIsHhm5LmM": {"buffer_count": 11, "buffer_percent": 24, "max_count": 52, "min_count": 82, "name": "CipBY4FWs14BRWTv", "unlimited": false, "use_buffer_percent": true}}, "regions": ["t5H32xtN9Zgx5WBl", "1eg9JS9OeJONoi89", "PERFSFYnIfiROeLn"], "session_timeout": 58, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment '4BJ8Z3ViQ41G7kAl' \
    --namespace $AB_NAMESPACE \
    --version 'Yuy5Rx6EShaVlHOA' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'JxRkyQRf7dmjz92t' \
    --namespace $AB_NAMESPACE \
    --version 'Pvm4ciRZt2sq07SP' \
    --body '{"buffer_count": 80, "buffer_percent": 97, "configuration": "L40tomfrabXU1ayO", "enable_region_overrides": false, "game_version": "CoRFRQp19mmhpjYM", "max_count": 14, "min_count": 70, "regions": ["thv6sbDOmwrwpILh", "4pqiuRPmhOuveihR", "42jm9upotiZjF2wM"], "session_timeout": 93, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment '35P4vhpOiWTVtRex' \
    --namespace $AB_NAMESPACE \
    --region 'hZZuZY0elw5vZS3D' \
    --version '77T3e3QXol5IOZdG' \
    --body '{"buffer_count": 21, "buffer_percent": 72, "max_count": 46, "min_count": 93, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'D9icBKxaeWWygLYF' \
    --namespace $AB_NAMESPACE \
    --region 'N9ZP5BdQQxizXTka' \
    --version 'rMSlveuA70zG5iFS' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'lvcQRHkL7x9f8zfR' \
    --namespace $AB_NAMESPACE \
    --region 'XnGAO0XHMNkcrDQw' \
    --version 'pevNzFZVCMuo20bL' \
    --body '{"buffer_count": 63, "buffer_percent": 53, "max_count": 3, "min_count": 28, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '15' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'cONOE8VXv2g6GLP1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'RYCsGpwpF8IPbc7f' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 70, "mem_limit": 23, "params": "HFlGvUT9ndlWjrNZ"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'WzG9kUHnRuw7KCqn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'cfCRuLQEiAspgwtI' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 75, "mem_limit": 100, "name": "1alKSWAPhvvk7WSA", "params": "doTJErWXaPkQ0pt0"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '7kBdk3f1HEPohxuT' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 60}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '7P2Gk7dlDB8O5cpI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'cXgmnanlklOEghb1' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "GcBsfcSzNDah5bvr", "port": 66}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 't2koW54KN5uLyZxG' \
    --sortBy 'createdAt' \
    --sortDirection 'desc' \
    --count '24' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'eiHBJVYizGzyVxKR' \
    --version 'Kr2S9ALSHKV51UGj' \
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
    --imageURI '5AoCrEl88C8C8i4S' \
    --version '18eHovRP8WpXpjKa' \
    --versionPatch 'PGll2Azlfq2On12o' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'ExJ0SqBUAodAssFL' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'lPMAHW9FA3IOHcUY' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'NwDgxxwRcTTvcalA' \
    --versionPatch 'pkksUP5UfU128EFT' \
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
    --region 'qlpEqW4Coumvqh7g' \
    --count '2' \
    --offset '28' \
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
    --region 'OkGawn5wcUTwf6H4' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'D2y7NYh9JSRxodaU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName '4fEHf2qy83xdd6Ra' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName '77HRXzsn6ZfDGVXY' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'k23MFhk2NFYPWYPC' \
    --withServer 'false' \
    --count '24' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'xGv8gKmcCyxcogxd' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'mbgCVT4lvsLlzFs3' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "JbM2OytsN2uGaSBm", "repository": "sZPyhQckfxiq6tTu"}' \
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
    --name 'leR60MUBhDpsicRZ' \
    --count '33' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'jgHY3TzWUFbhSNTM' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 57, "buffer_percent": 67, "configuration": "aG0a5MUknWZsNtNb", "enable_region_overrides": false, "extendable_session": true, "game_version": "Jp7FANzhzv4f1zRG", "max_count": 88, "min_count": 27, "overrides": {"XoawLRJ9oEGuS9jK": {"buffer_count": 76, "buffer_percent": 29, "configuration": "2YWah7hn9YwZVuE5", "enable_region_overrides": false, "extendable_session": false, "game_version": "7hjE89fU3SrAKWqi", "max_count": 43, "min_count": 92, "name": "QgFUKmDI0NBnAD2E", "region_overrides": {"RX0B8U8NT912taWZ": {"buffer_count": 40, "buffer_percent": 86, "max_count": 94, "min_count": 70, "name": "BNHXWsJADk2djFM4", "unlimited": true, "use_buffer_percent": false}, "G9VQ0rSWIGZwEv6j": {"buffer_count": 47, "buffer_percent": 85, "max_count": 43, "min_count": 1, "name": "OAHrSs1x7WJGyfBr", "unlimited": true, "use_buffer_percent": false}, "ZFrZpNP0VtsFAJZm": {"buffer_count": 65, "buffer_percent": 17, "max_count": 84, "min_count": 85, "name": "aYqzlJfnX3zTdZUh", "unlimited": false, "use_buffer_percent": false}}, "regions": ["EfnMJNgENI3Ly3bI", "FUpJRbwbmurgNo3m", "w3KyK16pOFw2ESnd"], "session_timeout": 6, "unlimited": false, "use_buffer_percent": false}, "yksUhSNoSRnW7lZk": {"buffer_count": 72, "buffer_percent": 19, "configuration": "MQxy4aPc61w9a6sJ", "enable_region_overrides": false, "extendable_session": true, "game_version": "W9c8aKJ0pBiVQoQy", "max_count": 15, "min_count": 72, "name": "qH4WhRQMFHktVSnV", "region_overrides": {"ABx5RNHxENlOQFmW": {"buffer_count": 80, "buffer_percent": 74, "max_count": 47, "min_count": 43, "name": "lxIcE1dD6xhGCe0d", "unlimited": false, "use_buffer_percent": true}, "fUZmZRjPkxw38Nif": {"buffer_count": 5, "buffer_percent": 21, "max_count": 28, "min_count": 79, "name": "ZL1xkkFNWGPOov1t", "unlimited": true, "use_buffer_percent": true}, "9PYNWnqUWatofQJW": {"buffer_count": 79, "buffer_percent": 58, "max_count": 91, "min_count": 88, "name": "bC1hlhuqw4zAexrZ", "unlimited": false, "use_buffer_percent": true}}, "regions": ["kCRfv8vOQsWhrLtN", "ezYVUiqAu1BSS7to", "6N7fHDmeRc4ulYZT"], "session_timeout": 60, "unlimited": true, "use_buffer_percent": false}, "TbR5HbgMSNZ0i7ar": {"buffer_count": 95, "buffer_percent": 50, "configuration": "PcvG8HnS0MlwEcjE", "enable_region_overrides": true, "extendable_session": false, "game_version": "jWUYZdhqWHTjrEEW", "max_count": 10, "min_count": 56, "name": "0GzktAmbtv5IxEfX", "region_overrides": {"TzBFau86EY3yr7Vt": {"buffer_count": 30, "buffer_percent": 20, "max_count": 81, "min_count": 28, "name": "eIN26CHhyKdr27Hn", "unlimited": false, "use_buffer_percent": true}, "nWXlyDoUvqxBr88x": {"buffer_count": 89, "buffer_percent": 43, "max_count": 67, "min_count": 20, "name": "SPVTr2fLqNkul4GN", "unlimited": false, "use_buffer_percent": false}, "HP9eq4ucIl1PMzSI": {"buffer_count": 22, "buffer_percent": 64, "max_count": 9, "min_count": 20, "name": "QxUSt8jaQ07vUr8k", "unlimited": false, "use_buffer_percent": true}}, "regions": ["YTxQXpx451JmgA5u", "bhycrTJGP84wZV4T", "BMmiac5LkElvBIw2"], "session_timeout": 92, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"A6kd5yxF9m2i70l8": {"buffer_count": 43, "buffer_percent": 75, "max_count": 100, "min_count": 5, "name": "jduPduMzdkiDIptb", "unlimited": false, "use_buffer_percent": false}, "buw6iyhtsohEv9Kx": {"buffer_count": 98, "buffer_percent": 34, "max_count": 96, "min_count": 99, "name": "vzpFOMvGdMtHwMfW", "unlimited": true, "use_buffer_percent": false}, "mgaL7ifxA507ppSq": {"buffer_count": 59, "buffer_percent": 25, "max_count": 69, "min_count": 90, "name": "c8GG8fFrjaPzYk15", "unlimited": false, "use_buffer_percent": true}}, "regions": ["G97lPq4WsbTwtgQz", "TIc7Hi291qToi5rc", "OLUhbj8vlabLl3n2"], "session_timeout": 43, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'WIt4tLFI00u6eOEz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '26' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'drVvYrWGFxdNVsK4' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 38, "mem_limit": 79, "params": "hXgch3MM87vRipsR"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'nF1bhoFKEqhbAED8' \
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
    --version 'aDKwUiGDywlzwoAL' \
    > test.out 2>&1
eval_tap $? 65 'ImageDetailClient' test.out

#- 66 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'bcUKrlO2pZ5LmWe3' \
    --count '7' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 66 'ListServerClient' test.out

#- 67 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "TciCYdxIsarQRMYV"}' \
    > test.out 2>&1
eval_tap $? 67 'ServerHeartbeat' test.out

#- 68 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "At1YD5p5vYnx9E5M"}' \
    > test.out 2>&1
eval_tap $? 68 'DeregisterLocalServer' test.out

#- 69 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "ViJRrSl0OzGxxzYz", "ip": "mOWko0cTZ4rZ6Vlh", "name": "7sHQlqH0UWIg824H", "port": 5}' \
    > test.out 2>&1
eval_tap $? 69 'RegisterLocalServer' test.out

#- 70 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "xmPDM4xGeyULAAw8", "pod_name": "oDq8i8tFZ6oaJG6u"}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterServer' test.out

#- 71 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "zDpco14cDoRgebWG"}' \
    > test.out 2>&1
eval_tap $? 71 'ShutdownServer' test.out

#- 72 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName '98fSdct1gNtiTJsI' \
    > test.out 2>&1
eval_tap $? 72 'GetServerSessionTimeout' test.out

#- 73 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'TevyPVRbTj4nGK8y' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSession' test.out

#- 74 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "MOEtDlSQKdKNB2N2", "configuration": "HOu0CJx5h6vNrzgE", "deployment": "apPUiMETeq31ncgL", "game_mode": "l1iFGDguE0KudgA9", "matching_allies": [{"matching_parties": [{"party_attributes": {"Y1mWDMaQFNvB0XJr": {}, "9GzCNFvQU8TlB4GJ": {}, "d63pRInDoySv8uyT": {}}, "party_id": "jyXn9Ps0Pvlex0aK", "party_members": [{"user_id": "HIxXshDaKE2e1oGo"}, {"user_id": "KBYSHiLERcCwBhWH"}, {"user_id": "qpjvQzbd3iyzkyNB"}]}, {"party_attributes": {"qxHJ8bRogbnkdBla": {}, "xaqQOZ12LElDwJ4s": {}, "B9UQs3ncCPjHiwa5": {}}, "party_id": "ozFxTiFibXRxFHd9", "party_members": [{"user_id": "EcZO4IljeckZxexn"}, {"user_id": "Yfo1acxw7sXlf501"}, {"user_id": "G3LkSxFQbC0G6uED"}]}, {"party_attributes": {"VLjLbZoTKD6lSrB3": {}, "eGwjsq8DRc5NRcN5": {}, "UtD9nE705gTH2e2a": {}}, "party_id": "RhjHlZH8fUgMQrYq", "party_members": [{"user_id": "PAnN9CLM5ARZtJ75"}, {"user_id": "gQy1FpPtjuJ2QGSP"}, {"user_id": "kR7svh0YW7PwMcO1"}]}]}, {"matching_parties": [{"party_attributes": {"5oLmnMkpRQCysv5T": {}, "Urwn5SJcmRSSwzDt": {}, "IUrPCj0fCgcvawMf": {}}, "party_id": "zE6o8IpqRScCP4Nu", "party_members": [{"user_id": "S7V8lsBWRbZDNLri"}, {"user_id": "tchOqkVsjHu3qT4M"}, {"user_id": "Ql7DCifohFjXuUnU"}]}, {"party_attributes": {"dI1gjBEdMOhL7niw": {}, "1cS9TtyazVHoN5iD": {}, "MOthnOoll3OySwTa": {}}, "party_id": "G59PumREVCKej0nw", "party_members": [{"user_id": "dTdvoQwiQ7prAi4r"}, {"user_id": "PDO0g9MGNt8IVwXt"}, {"user_id": "xbWbtl219ZUPy3nc"}]}, {"party_attributes": {"lkVMiWGKkuugAHdP": {}, "RAkWYxA4py7rPa7w": {}, "zkhpovXCw2pOGNWH": {}}, "party_id": "5rQkP5ss685q7K8w", "party_members": [{"user_id": "VMPB9H9rnDFRlVSu"}, {"user_id": "UU1lBZWYmssZwdoO"}, {"user_id": "30VihauoRTUDEKm7"}]}]}, {"matching_parties": [{"party_attributes": {"jlKVZ8L18xDUKsdS": {}, "qIY3usK7wuAMSJ2D": {}, "ceAxZVbJzvr0lBj8": {}}, "party_id": "dmeD4tyaACcOfiNF", "party_members": [{"user_id": "x21ySwtlt5QJUdM4"}, {"user_id": "7GMCISL7hOu3fLEa"}, {"user_id": "FL20nMS8sFRqwT5N"}]}, {"party_attributes": {"0iJVHEYCim1IKDTI": {}, "ogF4cQk510i4XUr9": {}, "UsWTgTFUGRj7Bpqx": {}}, "party_id": "vrPRuFZ3CwqEQXoG", "party_members": [{"user_id": "WD101awczUYsWedF"}, {"user_id": "0YX8V0oNsvtLZ9In"}, {"user_id": "23Jbjm37n2gtncRB"}]}, {"party_attributes": {"yEddkqYR8LMdX9Wy": {}, "E24mawWFI2gLd0Zv": {}, "kERLzgS91vQvHAsU": {}}, "party_id": "OwfZieOB5YKrEDTm", "party_members": [{"user_id": "4Uvf5R6sTwQNc47i"}, {"user_id": "UuF521IzzL3xSk0J"}, {"user_id": "g1166OVb71u4eOHE"}]}]}], "namespace": "YnU4LgRbGTfrEtlW", "notification_payload": {}, "pod_name": "GWOY8w2uq7nH8ECR", "region": "jDEjgbPAJjjBoDuR", "session_id": "D4MJcRAR7oD2pibL"}' \
    > test.out 2>&1
eval_tap $? 74 'CreateSession' test.out

#- 75 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "ENYFT7UI1oPQk0T8"}' \
    > test.out 2>&1
eval_tap $? 75 'ClaimServer' test.out

#- 76 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'sgtNhgpBCFxF7FAe' \
    > test.out 2>&1
eval_tap $? 76 'GetSession' test.out

#- 77 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'fRq7jXi82hT4qJEl' \
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
    --region 'dE81njMDFki9Sfjb' \
    > test.out 2>&1
eval_tap $? 80 'ListProvidersByRegion' test.out

#- 81 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 81 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE