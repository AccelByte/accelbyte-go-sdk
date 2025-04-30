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
echo "1..89"

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
    --body '{"artifactPath": "O4gqytCzmvi1wvhY", "coreDumpEnabled": false, "image": "OBhO6OdfNTg4tJf0", "imageReplicationsMap": {"KTt9KlL1DSnmtE5t": {"failure_code": "dDh8dQCxzL204IwO", "region": "FoOQ7cutD6oS23aN", "status": "6YDL8jFobh6QTrKS", "uri": "ZP4xXOjZ1alJXTJg"}, "qHNSjHWWhM1k4j38": {"failure_code": "pSqiHPAo96WJ5TeG", "region": "AMLuVjVYkKzdxebL", "status": "WCGoLdB8u6QyVzax", "uri": "UV6FSJrJW7edLLLX"}, "z4qBtWBhwug3JYii": {"failure_code": "V4HoZOy6DbFhYvgC", "region": "5uJqSduef24OXLEw", "status": "Jj1KiFXgejkF8TVv", "uri": "KMUbVK5vO4Ph9U3T"}}, "namespace": "4GiAWsBocbvKbzmY", "patchVersion": "5jEh1QE11vSj3i6a", "persistent": false, "ulimitFileSize": 9, "version": "fda6IBTa6eemjZNt"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "UsstulliFOpgVQgg", "coreDumpEnabled": true, "dockerPath": "GgsxzGXZes7neZdt", "image": "1HQ80Iip7UkNiMuY", "imageSize": 3, "namespace": "LtssxeTJBKo9rUfk", "persistent": true, "ulimitFileSize": 24, "version": "UuKkxCwbvIZxZ2YT"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "u5TNosWDKRYL15Bd", "coreDumpEnabled": true, "dockerPath": "J5RFyojmHyEyiQzD", "image": "F83pnoxP52NSPCvf", "imageSize": 83, "namespace": "FucMNMkcWNwUVXdu", "patchVersion": "SHW1ngthehF3BfTw", "persistent": true, "ulimitFileSize": 97, "uploaderFlag": "ceV5OQ64RtC15gKd", "version": "mOW29yWxQpBXSIDT"}' \
    > test.out 2>&1
eval_tap $? 6 'CreateImagePatch' test.out

#- 7 GetLowestInstanceSpec
samples/cli/sample-apps Dsmc getLowestInstanceSpec \
    > test.out 2>&1
eval_tap $? 7 'GetLowestInstanceSpec' test.out

#- 8 GetWorkerConfig
samples/cli/sample-apps Dsmc getWorkerConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'GetWorkerConfig' test.out

#- 9 UpdateWorkerConfig
samples/cli/sample-apps Dsmc updateWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": false, "ghost_worker": true, "manual_buffer_override": true, "zombie_worker": false}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateWorkerConfig' test.out

#- 10 CreateWorkerConfig
samples/cli/sample-apps Dsmc createWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": true, "ghost_worker": false, "manual_buffer_override": true, "zombie_worker": false}' \
    > test.out 2>&1
eval_tap $? 10 'CreateWorkerConfig' test.out

#- 11 GetConfig
samples/cli/sample-apps Dsmc getConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetConfig' test.out

#- 12 CreateConfig
samples/cli/sample-apps Dsmc createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"claim_timeout": 34, "creation_timeout": 3, "default_version": "X6KGvJsdca65H61J", "port": 89, "ports": {"MKCQvwwP7UcCVYEt": 76, "Cp1CsDexALFzmsnE": 14, "uvFUsnriLsoKxnif": 19}, "protocol": "hxiRcLEUk25uR8pz", "providers": ["lNZnjLz2Br5Fppen", "wsXl6QHnYLg1uWTa", "imay3NPYsCpfMSnD"], "session_timeout": 59, "unreachable_timeout": 59}' \
    > test.out 2>&1
eval_tap $? 12 'CreateConfig' test.out

#- 13 DeleteConfig
samples/cli/sample-apps Dsmc deleteConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteConfig' test.out

#- 14 UpdateConfig
samples/cli/sample-apps Dsmc updateConfig \
    --namespace $AB_NAMESPACE \
    --body '{"claim_timeout": 36, "creation_timeout": 92, "default_version": "OXUo1WjMyVMW9bAB", "port": 32, "protocol": "TIVVCZ8vUdSJpmLd", "providers": ["cJXuomyMA8fzTZ8T", "7a8O2fI2wsId1Jkg", "JzANIHdbhRsLViyG"], "session_timeout": 90, "unreachable_timeout": 80}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateConfig' test.out

#- 15 ClearCache
samples/cli/sample-apps Dsmc clearCache \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'ClearCache' test.out

#- 16 GetAllDeployment
samples/cli/sample-apps Dsmc getAllDeployment \
    --namespace $AB_NAMESPACE \
    --name '7kW5jTZlEuCDs4Ut' \
    --count '96' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 16 'GetAllDeployment' test.out

#- 17 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment '9r20aXkA5GIduImv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetDeployment' test.out

#- 18 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment '65RYSrzbsRpsBjci' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 48, "buffer_percent": 66, "configuration": "lzTPpDVaoVvfPMWh", "enable_region_overrides": true, "extendable_session": true, "game_version": "nnkf2SZxCA3wHc7J", "max_count": 22, "min_count": 85, "overrides": {"Ogh6VNWkJCTqkkCa": {"buffer_count": 28, "buffer_percent": 84, "configuration": "iGhfLgKLL4dQkaW9", "enable_region_overrides": false, "extendable_session": true, "game_version": "XXuEhwA8yEghVzh5", "max_count": 48, "min_count": 46, "name": "yQ15iczwBD9U5jMu", "region_overrides": {"mQ63d9FPxPp5QPSM": {"buffer_count": 57, "buffer_percent": 86, "max_count": 58, "min_count": 94, "name": "4RXADqIz0VqwoIjf", "unlimited": false, "use_buffer_percent": false}, "8gQeb3rLO2VC3yHE": {"buffer_count": 90, "buffer_percent": 10, "max_count": 7, "min_count": 34, "name": "Df9ZoyY7NUZxXvMM", "unlimited": true, "use_buffer_percent": true}, "iZLG7UTRe3litI32": {"buffer_count": 21, "buffer_percent": 75, "max_count": 99, "min_count": 95, "name": "GclHsjutcwidwzsv", "unlimited": true, "use_buffer_percent": true}}, "regions": ["4wg82UXQ5gXOJJYf", "TghqhkB7N0RGnSh6", "EKL15xcjKqnO9PDX"], "session_timeout": 30, "unlimited": false, "use_buffer_percent": true}, "LPd9ShWouczmUI7x": {"buffer_count": 61, "buffer_percent": 55, "configuration": "XyNtZqlQnnTlFa9x", "enable_region_overrides": true, "extendable_session": true, "game_version": "hfY6uhPVgDgr7E5T", "max_count": 26, "min_count": 64, "name": "0CrdByzKjDZztzCT", "region_overrides": {"aqf18T3REH6Mk6VX": {"buffer_count": 17, "buffer_percent": 42, "max_count": 49, "min_count": 0, "name": "mMT38FVApSuDyzhJ", "unlimited": true, "use_buffer_percent": true}, "ZLU4ETRAZ4RdEEG5": {"buffer_count": 70, "buffer_percent": 56, "max_count": 77, "min_count": 76, "name": "Gr3yzPDgga0LuUmx", "unlimited": false, "use_buffer_percent": false}, "QqGZK6qJjq29Qvhl": {"buffer_count": 31, "buffer_percent": 8, "max_count": 42, "min_count": 93, "name": "o35qUFr0F50Wfs8p", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Mca1yBXF15Wkv7ET", "HYtHDeEcG6qua4wO", "Y4gC2hKIZ0bqKkWU"], "session_timeout": 67, "unlimited": false, "use_buffer_percent": true}, "bc4OLWD02r7WmqZU": {"buffer_count": 9, "buffer_percent": 85, "configuration": "Fc17j02t5xzW26Mu", "enable_region_overrides": false, "extendable_session": false, "game_version": "720aZOw2iLElHudv", "max_count": 58, "min_count": 62, "name": "v6TR5DiAWR8ga2oD", "region_overrides": {"SD7g3eljfWMDD0Os": {"buffer_count": 78, "buffer_percent": 100, "max_count": 60, "min_count": 5, "name": "Ys754jhcIorBin5E", "unlimited": false, "use_buffer_percent": false}, "ttn45YWS5KSgdaw0": {"buffer_count": 41, "buffer_percent": 11, "max_count": 48, "min_count": 98, "name": "e6GYQIfOuw1BM6J6", "unlimited": true, "use_buffer_percent": false}, "E5gXYYm0eTYziTfU": {"buffer_count": 48, "buffer_percent": 90, "max_count": 36, "min_count": 19, "name": "OZAlSO0DRgiNkmZW", "unlimited": false, "use_buffer_percent": false}}, "regions": ["XOnlj2JvAkclpFLs", "bg7wMPGVkokpoIoV", "tggC5U5FHoi6Mzob"], "session_timeout": 99, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"1KcugVZjBcqqIXTb": {"buffer_count": 89, "buffer_percent": 54, "max_count": 33, "min_count": 7, "name": "z1I0sxdvVAqLxKu6", "unlimited": false, "use_buffer_percent": false}, "TgPF8hde2OYMWQwU": {"buffer_count": 3, "buffer_percent": 55, "max_count": 66, "min_count": 79, "name": "XSGI5BzrFaxc8sOL", "unlimited": true, "use_buffer_percent": true}, "4jw3cFUL7gylgbXp": {"buffer_count": 36, "buffer_percent": 79, "max_count": 2, "min_count": 70, "name": "Z2CeqkyVy9sCyt4E", "unlimited": true, "use_buffer_percent": false}}, "regions": ["kDWBbwJ9QhinhBZX", "d0Bn2fuUhS6jXA1Z", "BAADiAmMi4qIf566"], "session_timeout": 80, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'CreateDeployment' test.out

#- 19 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'z3kAzyB2NmvzJA4I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteDeployment' test.out

#- 20 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'HOWfTUy4ROHoCd7l' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 69, "buffer_percent": 62, "configuration": "AY0xm2T8VT8M6wnj", "enable_region_overrides": false, "extendable_session": false, "game_version": "5bwrYmMYU3fxH29K", "max_count": 74, "min_count": 35, "regions": ["5MoroJzVPFhAB7tn", "3997vdpSz9wbsWOb", "VB8yDfsOIG42VpEV"], "session_timeout": 54, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateDeployment' test.out

#- 21 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'nN7SJTy1E0Tp73SZ' \
    --namespace $AB_NAMESPACE \
    --region 'w3cgYPbPBS6llEPL' \
    --body '{"buffer_count": 90, "buffer_percent": 39, "max_count": 29, "min_count": 47, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'CreateRootRegionOverride' test.out

#- 22 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'DGXZvNdmfgYBTllE' \
    --namespace $AB_NAMESPACE \
    --region 'wnC0U6vgcDIC3iMx' \
    > test.out 2>&1
eval_tap $? 22 'DeleteRootRegionOverride' test.out

#- 23 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'tVx0fWOr25B4eEUG' \
    --namespace $AB_NAMESPACE \
    --region 'z0fcZQ37Eft86iin' \
    --body '{"buffer_count": 4, "buffer_percent": 86, "max_count": 97, "min_count": 89, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateRootRegionOverride' test.out

#- 24 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'gczp5CioLtYtBAAW' \
    --namespace $AB_NAMESPACE \
    --version 'OZA9qy783HEm5qJp' \
    --body '{"buffer_count": 98, "buffer_percent": 32, "configuration": "mQLI0SnspeAlDzRh", "enable_region_overrides": true, "extendable_session": false, "game_version": "0m2Khnl4OqDwDgjH", "max_count": 28, "min_count": 91, "region_overrides": {"6ooKWotR6UZEfPmd": {"buffer_count": 42, "buffer_percent": 40, "max_count": 40, "min_count": 81, "name": "QwRulIENOeJhBjL7", "unlimited": true, "use_buffer_percent": false}, "k8ruF7jqz7HVoV60": {"buffer_count": 70, "buffer_percent": 96, "max_count": 0, "min_count": 67, "name": "5FQfPlMIhqoRUmfJ", "unlimited": false, "use_buffer_percent": true}, "SFMc3w3QTrOaYyGf": {"buffer_count": 76, "buffer_percent": 85, "max_count": 19, "min_count": 97, "name": "lae4mTLG0VkG2g8v", "unlimited": false, "use_buffer_percent": false}}, "regions": ["ABTYBel0d8cH7dJX", "QG7N8nGoyDFgkQ2w", "3hgdD0p3b69Cjja6"], "session_timeout": 43, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'CreateDeploymentOverride' test.out

#- 25 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment '2AprM1zwC52dnbS3' \
    --namespace $AB_NAMESPACE \
    --version '93j7nJ2UmyzK0tPG' \
    > test.out 2>&1
eval_tap $? 25 'DeleteDeploymentOverride' test.out

#- 26 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'gfcoF41YlCxRLqZ8' \
    --namespace $AB_NAMESPACE \
    --version '8wRAEX600rERwW8r' \
    --body '{"buffer_count": 90, "buffer_percent": 64, "configuration": "BPgsoiYm6GRno8jy", "enable_region_overrides": false, "game_version": "EVNSwyeYogZbdK1m", "max_count": 88, "min_count": 46, "regions": ["hs2pFZVgqMRxnUyB", "0j47HGtt1JOOKIqb", "KXCZLMIRjlQ05ESa"], "session_timeout": 42, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateDeploymentOverride' test.out

#- 27 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'spPAmhgVQYDucOad' \
    --namespace $AB_NAMESPACE \
    --region 'UcVj2XyqgEbuebRu' \
    --version 'rf4TJWI7JNfS2RKx' \
    --body '{"buffer_count": 10, "buffer_percent": 61, "max_count": 2, "min_count": 44, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'CreateOverrideRegionOverride' test.out

#- 28 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'JbqSQ3ycCJlXwvnx' \
    --namespace $AB_NAMESPACE \
    --region 'lnwkHgZ6SkvWrKMv' \
    --version 'RzbZLkdnhLCf9t32' \
    > test.out 2>&1
eval_tap $? 28 'DeleteOverrideRegionOverride' test.out

#- 29 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'XbXnleWEzOgnhx4N' \
    --namespace $AB_NAMESPACE \
    --region 'v1Awn3Pb5shd4qyn' \
    --version 'g3GObWRURgg4zg8n' \
    --body '{"buffer_count": 78, "buffer_percent": 97, "max_count": 0, "min_count": 14, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateOverrideRegionOverride' test.out

#- 30 DeleteCreatingServerCountQueue
samples/cli/sample-apps Dsmc deleteCreatingServerCountQueue \
    --deployment '0GrEwomCsj1cA65z' \
    --namespace $AB_NAMESPACE \
    --version 'KMNxam444k58ffX0' \
    > test.out 2>&1
eval_tap $? 30 'DeleteCreatingServerCountQueue' test.out

#- 31 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '22' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 31 'GetAllPodConfig' test.out

#- 32 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'nr4bPQ0EKTp2svEF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPodConfig' test.out

#- 33 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'XI0ykgQWN5lSAw1D' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 9, "mem_limit": 68, "params": "xn385VqJwdMV8Rdc"}' \
    > test.out 2>&1
eval_tap $? 33 'CreatePodConfig' test.out

#- 34 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'ioFgFvycsdp1GA3w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePodConfig' test.out

#- 35 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'L6Zw2a4ttL8Wg7WE' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 11, "mem_limit": 76, "name": "CLAnfhBmQbq2puJq", "params": "eF9iIvPKFDw49ur3"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePodConfig' test.out

#- 36 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'KYPmzn7L3y5BwV0x' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 70}' \
    > test.out 2>&1
eval_tap $? 36 'AddPort' test.out

#- 37 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'VfKNIgnayGCt3y28' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'DeletePort' test.out

#- 38 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'mCpBXOmVKHwlP1ZF' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "vWqHZGz09oCzeDzg", "port": 90}' \
    > test.out 2>&1
eval_tap $? 38 'UpdatePort' test.out

#- 39 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'RJb2xzbbgWsCpuhw' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    --count '58' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 39 'ListImages' test.out

#- 40 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'OMAy1N07lh6vu0kk' \
    --version 'KrhBoFlpiPRxvlWe' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImage' test.out

#- 41 GetImageLimit
samples/cli/sample-apps Dsmc getImageLimit \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'GetImageLimit' test.out

#- 42 DeleteImagePatch
samples/cli/sample-apps Dsmc deleteImagePatch \
    --namespace $AB_NAMESPACE \
    --imageURI 'bEylAXyi8eLb3jVf' \
    --version 'YtT1j6eYFaP9s5Ui' \
    --versionPatch 'lSiTXkZkU8fCaFy9' \
    > test.out 2>&1
eval_tap $? 42 'DeleteImagePatch' test.out

#- 43 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'KZj7JDsHLOkwJwBm' \
    > test.out 2>&1
eval_tap $? 43 'GetImageDetail' test.out

#- 44 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version '8owMqcEy5gWLYgjS' \
    > test.out 2>&1
eval_tap $? 44 'GetImagePatches' test.out

#- 45 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'TDU3XxL5QMdaVJDa' \
    --versionPatch 'Vp7V8e9ccMHjMIRU' \
    > test.out 2>&1
eval_tap $? 45 'GetImagePatchDetail' test.out

#- 46 AddBuffer
samples/cli/sample-apps Dsmc addBuffer \
    --namespace $AB_NAMESPACE \
    --body '{"AllocCount": 10, "DeploymentName": "qgS9f1d0W132uvSx", "JobCount": 8, "JobPriority": 62, "OverrideVersion": "N8lbOopayY47nLsx", "Region": "zql70aylJsWRQbvM"}' \
    > test.out 2>&1
eval_tap $? 46 'AddBuffer' test.out

#- 47 GetRepository
samples/cli/sample-apps Dsmc getRepository \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'GetRepository' test.out

#- 48 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'ztP2x7yENDbceCF3' \
    --count '53' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 48 'ListServer' test.out

#- 49 CountServer
samples/cli/sample-apps Dsmc countServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'CountServer' test.out

#- 50 CountServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace $AB_NAMESPACE \
    --region 'TbJefyTsa7bZahEF' \
    > test.out 2>&1
eval_tap $? 50 'CountServerDetailed' test.out

#- 51 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'ListLocalServer' test.out

#- 52 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'Pjyf0Q4Y2G4xV69A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteLocalServer' test.out

#- 53 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName '2Oo8vVYvumOl7VeP' \
    > test.out 2>&1
eval_tap $? 53 'GetServer' test.out

#- 54 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'e4J9AaOVuX7GHXXP' \
    > test.out 2>&1
eval_tap $? 54 'DeleteServer' test.out

#- 55 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'sWbflEzPYtJaimdn' \
    --withServer 'true' \
    --count '82' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 55 'ListSession' test.out

#- 56 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'S0KtEhn9lR13LovA' \
    > test.out 2>&1
eval_tap $? 56 'CountSession' test.out

#- 57 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '4wECDG0W93B01npJ' \
    > test.out 2>&1
eval_tap $? 57 'DeleteSession' test.out

#- 58 RunGhostCleanerRequestHandler
samples/cli/sample-apps Dsmc runGhostCleanerRequestHandler \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'RunGhostCleanerRequestHandler' test.out

#- 59 RunZombieCleanerRequestHandler
samples/cli/sample-apps Dsmc runZombieCleanerRequestHandler \
    --namespace $AB_NAMESPACE \
    --body '{"JobCount": 74, "Region": "BdHNYDTp1jtfW9NN", "TimeoutSecond": 68, "ZombieCount": 17}' \
    > test.out 2>&1
eval_tap $? 59 'RunZombieCleanerRequestHandler' test.out

#- 60 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "VyqJAYsw9wZundcE", "repository": "gASccSHrd6alhsi6"}' \
    > test.out 2>&1
eval_tap $? 60 'CreateRepository' test.out

#- 61 ExportConfigV1
samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'ExportConfigV1' test.out

#- 62 ImportConfigV1
samples/cli/sample-apps Dsmc importConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 62 'ImportConfigV1' test.out

#- 63 GetAllDeploymentClient
samples/cli/sample-apps Dsmc getAllDeploymentClient \
    --namespace $AB_NAMESPACE \
    --name 'SNtSw22Eg24kAwQQ' \
    --count '66' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 63 'GetAllDeploymentClient' test.out

#- 64 GetDeploymentClient
samples/cli/sample-apps Dsmc getDeploymentClient \
    --deployment '6MgaVCDb6nUfEut9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetDeploymentClient' test.out

#- 65 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment '0vpdgWW7lUL2X9gp' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 52, "buffer_percent": 30, "configuration": "0XofZcXal2QOMvkP", "enable_region_overrides": false, "extendable_session": false, "game_version": "ElGtq7eG5rrMjIel", "max_count": 23, "min_count": 89, "overrides": {"urGMKJAqKAc5drpd": {"buffer_count": 30, "buffer_percent": 96, "configuration": "twMTPAtJn8rejDhI", "enable_region_overrides": true, "extendable_session": false, "game_version": "3fnJOrAxlWfX2Bc0", "max_count": 11, "min_count": 46, "name": "eXcJ43Ao7WL6PU3j", "region_overrides": {"RDC2alDZCJfKV0P7": {"buffer_count": 90, "buffer_percent": 40, "max_count": 8, "min_count": 12, "name": "uIMAOrIlYyjw3pLd", "unlimited": false, "use_buffer_percent": false}, "k1l2I0VJhvfUTIsM": {"buffer_count": 6, "buffer_percent": 62, "max_count": 62, "min_count": 50, "name": "24axZ8g8MAnvSP0L", "unlimited": true, "use_buffer_percent": false}, "oedvoHrYQZ2C7avb": {"buffer_count": 72, "buffer_percent": 63, "max_count": 7, "min_count": 69, "name": "AnagAhkflXDvLsBT", "unlimited": true, "use_buffer_percent": false}}, "regions": ["ExiSrssTXtpoAOnA", "3WEm4No45fPveNVv", "DNGt3vDxW6BHsFdx"], "session_timeout": 69, "unlimited": true, "use_buffer_percent": true}, "bYI2qTokdYkxcuzE": {"buffer_count": 32, "buffer_percent": 0, "configuration": "IlBGTKUs9C40WSvK", "enable_region_overrides": true, "extendable_session": false, "game_version": "5A5tm8QPka6hNe0U", "max_count": 78, "min_count": 55, "name": "zMY8GTHne2vI0pwa", "region_overrides": {"daIFG677zFzul5Mx": {"buffer_count": 39, "buffer_percent": 42, "max_count": 26, "min_count": 13, "name": "aNkaVkkCq0gL6Bw0", "unlimited": true, "use_buffer_percent": true}, "IsTd6UFwpu2Zt2Ga": {"buffer_count": 33, "buffer_percent": 40, "max_count": 13, "min_count": 15, "name": "PEKvCMLkxdZFVz6S", "unlimited": false, "use_buffer_percent": true}, "lPugVea7bRoqmytD": {"buffer_count": 76, "buffer_percent": 75, "max_count": 61, "min_count": 89, "name": "9t7KSbhofyjeb11i", "unlimited": true, "use_buffer_percent": true}}, "regions": ["ILEOMD7F07BYL1Mk", "oTvcOdnmkw9Piqup", "M24DTMbBShJybSkP"], "session_timeout": 72, "unlimited": false, "use_buffer_percent": true}, "JrDlnkNCk7mJtkTV": {"buffer_count": 47, "buffer_percent": 16, "configuration": "sjrZF6dt53kH9an9", "enable_region_overrides": false, "extendable_session": false, "game_version": "LAYUVkxdikvmHQ4S", "max_count": 45, "min_count": 99, "name": "WoMwed6cuBB6m0Ex", "region_overrides": {"4ar2uYoZeoEuFED0": {"buffer_count": 70, "buffer_percent": 76, "max_count": 6, "min_count": 19, "name": "PrNFRqWFZejuEMPg", "unlimited": true, "use_buffer_percent": false}, "aca7r6pUU3ygnvcX": {"buffer_count": 63, "buffer_percent": 88, "max_count": 62, "min_count": 73, "name": "arBv9HRJoDQBnksz", "unlimited": true, "use_buffer_percent": true}, "IQKWX67tp0TKnDq8": {"buffer_count": 85, "buffer_percent": 28, "max_count": 43, "min_count": 88, "name": "qP1piLUeIesePwnu", "unlimited": true, "use_buffer_percent": false}}, "regions": ["sbGXCMmpSkHxkg24", "x9MoTL1ZAZTgnMVc", "P9CfK3WRMAeoH9BP"], "session_timeout": 55, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"KHvuZXVkoN9uMBpF": {"buffer_count": 35, "buffer_percent": 50, "max_count": 90, "min_count": 59, "name": "H59jMWHNB5uOry94", "unlimited": true, "use_buffer_percent": false}, "Ng6RGEuo8OAFRkjP": {"buffer_count": 12, "buffer_percent": 14, "max_count": 61, "min_count": 100, "name": "RJF6ivMrf13hcmJM", "unlimited": true, "use_buffer_percent": false}, "dlpc8cDVdrpHOeMq": {"buffer_count": 28, "buffer_percent": 8, "max_count": 84, "min_count": 88, "name": "wUqcSgYL6Ryj7WvO", "unlimited": false, "use_buffer_percent": true}}, "regions": ["wDL5RjIuhCNMcyMP", "4zcCPFdvYMubBeKr", "vgtndB58EyfUj0aV"], "session_timeout": 30, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 65 'CreateDeploymentClient' test.out

#- 66 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'TuCYywqLb0cwvBDY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteDeploymentClient' test.out

#- 67 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '57' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 67 'GetAllPodConfigClient' test.out

#- 68 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'ngxRdAsMaFur12c2' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 84, "mem_limit": 44, "params": "PFMBov01cx4kdGhU"}' \
    > test.out 2>&1
eval_tap $? 68 'CreatePodConfigClient' test.out

#- 69 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'bgGwa3TKbECYZf7f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePodConfigClient' test.out

#- 70 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '11' \
    --offset '88' \
    --q 'OmgwYb81Rx45rkcM' \
    --sortBy 'version' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 70 'ListImagesClient' test.out

#- 71 ImageLimitClient
samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'ImageLimitClient' test.out

#- 72 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version 'tivQ0SfHtH5tikB3' \
    > test.out 2>&1
eval_tap $? 72 'ImageDetailClient' test.out

#- 73 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'NFI6mrg16dDdQVbD' \
    --count '60' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 73 'ListServerClient' test.out

#- 74 CountServerDetailedClient
samples/cli/sample-apps Dsmc countServerDetailedClient \
    --namespace $AB_NAMESPACE \
    --region 'KNDMPnwEbK2j84j7' \
    > test.out 2>&1
eval_tap $? 74 'CountServerDetailedClient' test.out

#- 75 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "0W8JXMXyBZiBa7ca"}' \
    > test.out 2>&1
eval_tap $? 75 'ServerHeartbeat' test.out

#- 76 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "iAejF0yVoF4HRJWS"}' \
    > test.out 2>&1
eval_tap $? 76 'DeregisterLocalServer' test.out

#- 77 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "Sqq4ArQYiU9fz2T9", "ip": "dx1KDiWtVo07aGgu", "name": "cqw1pAqE1wIYlQ1U", "port": 62}' \
    > test.out 2>&1
eval_tap $? 77 'RegisterLocalServer' test.out

#- 78 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "uhp0MWMwkpAokZBl", "pod_name": "QGhbIUr1fF2pMcpS"}' \
    > test.out 2>&1
eval_tap $? 78 'RegisterServer' test.out

#- 79 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "eTe0yYHkOXhCyNOE"}' \
    > test.out 2>&1
eval_tap $? 79 'ShutdownServer' test.out

#- 80 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'ozf3qmSrvEdQZw6E' \
    > test.out 2>&1
eval_tap $? 80 'GetServerSessionTimeout' test.out

#- 81 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName '4tuyga65CajY1ED3' \
    > test.out 2>&1
eval_tap $? 81 'GetServerSession' test.out

#- 82 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "P6XkPuHXlfHy19dy", "configuration": "gvTSN7NXftz0IAYF", "deployment": "XqhZp5c8C1kE5YAh", "game_mode": "ZvASQAw1Zg7mTWKv", "matching_allies": [{"matching_parties": [{"party_attributes": {"LwLiANnYmeLRykgS": {}, "pfzNiewyuRaPbd5k": {}, "ceqZd4NAma6HJ8Uc": {}}, "party_id": "x69dryvQfG1HbyJV", "party_members": [{"user_id": "SY9vLb7XAatryFGt"}, {"user_id": "tVCGQgS2lPQcuF2X"}, {"user_id": "PDbfO4OWKmbi1AA4"}]}, {"party_attributes": {"JYCE7AxzHtETLjpu": {}, "5oZjylSd7O7zmQH2": {}, "2ceJrIsPwEGuGlny": {}}, "party_id": "67WJZHD0KkwF98JS", "party_members": [{"user_id": "5WpIAWniia4LJn00"}, {"user_id": "Tyeqk8A0YO49kODF"}, {"user_id": "UvfmWaPVvMxMXAdY"}]}, {"party_attributes": {"BXW4VvMNps5Y3dwM": {}, "5c5zU5Vvzb77IpVB": {}, "mnJPqAYUFD6FiUud": {}}, "party_id": "KnW9KgJloWtIauxm", "party_members": [{"user_id": "n2tGdVBEii0GhGwg"}, {"user_id": "cjwZF3UCz5S1rU9I"}, {"user_id": "aB1XlKVhcz3hZj7F"}]}]}, {"matching_parties": [{"party_attributes": {"I8RsMqGZcZKFVVXI": {}, "80oIuttqIFfTXBOs": {}, "STkGjPTKgFrHGwd3": {}}, "party_id": "h6swPr083KR8Q7Xv", "party_members": [{"user_id": "mqKwfIsPlQnXmmxg"}, {"user_id": "qDPIYZZUAHmeL4ro"}, {"user_id": "Y8mvefgvLBiVbBpm"}]}, {"party_attributes": {"FPr5AhIZwJSuKnof": {}, "AkkRoWcaiDvpLDmd": {}, "JhnlPWV3NhfLRNhY": {}}, "party_id": "wHADfqLTnVpcGQ45", "party_members": [{"user_id": "Zq3OXhVZTq7JkCKs"}, {"user_id": "kUE4bzpkavtBKcB7"}, {"user_id": "Gi6IufJW4BzByWes"}]}, {"party_attributes": {"vSI7kocKx9fmWZET": {}, "JhPsEtD7ezPnzD65": {}, "GAZgK5jchwkiZ5fl": {}}, "party_id": "05hxIBUjI3K5sZnV", "party_members": [{"user_id": "CGb0JZGFRECqMmw9"}, {"user_id": "l9m0TuUiPnB3GSTx"}, {"user_id": "npeNiNmc57VpfubQ"}]}]}, {"matching_parties": [{"party_attributes": {"HjjI4F5YzJNvOYwp": {}, "iabNrpweNF4AsQ3p": {}, "q32EwlqH6nujy9m6": {}}, "party_id": "DnV4UNncjqvnuxko", "party_members": [{"user_id": "Ei20dJQjLfjxN3U4"}, {"user_id": "4Jy3lnccFH1pNBD8"}, {"user_id": "N30YuelYjX5vpX8j"}]}, {"party_attributes": {"IsW6Ro75dufcvw4h": {}, "KIbX066zwkL9PCou": {}, "jiYPmjrwZfeMFq5O": {}}, "party_id": "CSl1bYv0vF5gnrvX", "party_members": [{"user_id": "wVLpdh2QLqW6NxLC"}, {"user_id": "oIX60E4okMCPAdfA"}, {"user_id": "S18oxbHLHYlpNCCh"}]}, {"party_attributes": {"KyJdUOJdm049RBlc": {}, "zB7YDJOJep93OlcV": {}, "cSnHTmu4xPk0Srxj": {}}, "party_id": "NaaHnvZfpp5gp0qW", "party_members": [{"user_id": "ZGY3jNtW40glN3sD"}, {"user_id": "aCEhlIwvohJ6F3tj"}, {"user_id": "V8rVdRNngbQ0mmSH"}]}]}], "namespace": "kCUMlvBkMxWeEJYm", "notification_payload": {}, "pod_name": "9Fdxy257Kk7HNR86", "region": "ZHDZIFmMo5lk2RAc", "session_id": "oJBjmmmmOVv0unIl"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateSession' test.out

#- 83 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"game_mode": "wLUdIQaSUkRH85ol", "matching_allies": [{"matching_parties": [{"party_attributes": {"kRMTv6CArSpzzjQf": {}, "vkpT39zvIazDUEcG": {}, "3TiwmJaNrr0zbEI2": {}}, "party_id": "9g7jPmPhCqqisKKq", "party_members": [{"user_id": "oYzzTxmUh11eJObQ"}, {"user_id": "TRln05mdOPJf1K3e"}, {"user_id": "FuwpYS4fSmj6aBNw"}]}, {"party_attributes": {"uqt9RQauOPinpRke": {}, "r4g8EmsdXTtoamHI": {}, "IRM3heRaPWBeMnwy": {}}, "party_id": "JgfREO51PMXNYn2h", "party_members": [{"user_id": "j09SFymb5Ra4KMrY"}, {"user_id": "hL0hOgb0CHuiYFxm"}, {"user_id": "UVe2k2SLm2fy585n"}]}, {"party_attributes": {"g9hiyHBsbvANHhk2": {}, "9NUhM0x42BOAmcly": {}, "2k1bSlLIzAFFHaJu": {}}, "party_id": "J1cpG6bxrHoWXYth", "party_members": [{"user_id": "Nka1KQv43S00bAt8"}, {"user_id": "ub4KO3PpTYJY7YVP"}, {"user_id": "aFEAJ8Ic133wWMNb"}]}]}, {"matching_parties": [{"party_attributes": {"ldJou4RhDz1mkeEv": {}, "XS7YBOXN1RgoVnrN": {}, "nHyjsrfQNYdkr7k7": {}}, "party_id": "B716tU1EpKM4L7l5", "party_members": [{"user_id": "RBUxWfm0cNBG0SBr"}, {"user_id": "JHJr3Mye8NdhDAGv"}, {"user_id": "6Ap2k2fI5ipGmBKj"}]}, {"party_attributes": {"MoxN4CVBfcIIXdzh": {}, "LTu4PcrhGbpESFtF": {}, "vHUFCzNtiJ4wISsD": {}}, "party_id": "v6oKtP03CkE45AoD", "party_members": [{"user_id": "TvdWIjIIwh9r1HzJ"}, {"user_id": "5V5o2hWXPYNvGUMM"}, {"user_id": "TYdWMEpB0sp6uBwO"}]}, {"party_attributes": {"7CeSQLF8m3RyNw0y": {}, "2wksgjC1WA3h3As2": {}, "eyeKXcmEWpEeUZuh": {}}, "party_id": "ibNfYjKwGqS1aKI8", "party_members": [{"user_id": "buh19Il2ddhKakNX"}, {"user_id": "d551ZLO7BbOxRGxR"}, {"user_id": "EIwCH7ncVaybSrxx"}]}]}, {"matching_parties": [{"party_attributes": {"0MsZCkiti4AWCanS": {}, "8g44hdzV844XRfOy": {}, "G2chmwE6yTn43Mdv": {}}, "party_id": "5q9xZfrCaXF9wLyc", "party_members": [{"user_id": "8j3yvep2LzEyosGc"}, {"user_id": "cVphJXT7wNrylbGp"}, {"user_id": "syhB1emRs3WBXrCq"}]}, {"party_attributes": {"VtwnOljCjmY0qGXX": {}, "Se9PahemQuVKwyxo": {}, "MzEigUcYYgNcWoKt": {}}, "party_id": "5Akg9xsD8Pg4YlLm", "party_members": [{"user_id": "FyaZy2vWAOgnhvFW"}, {"user_id": "nd7saxklm7Ei7uE7"}, {"user_id": "XJtY7ko8b8KbEcUX"}]}, {"party_attributes": {"vQPbeXszY5iGaCRS": {}, "XFqI44Cp91oZwOJi": {}, "YkdFkAy55VIqOB89": {}}, "party_id": "atbLkeMbr126xmrG", "party_members": [{"user_id": "mg5mNiPEMMADX0Cn"}, {"user_id": "jWdyAvQAdKol0M3f"}, {"user_id": "13c2dpRKzp2hUnW9"}]}]}], "namespace": "HGCvhXzsYewygCZD", "notification_payload": {}, "session_id": "jkJ1VxTrEfVf3Lem"}' \
    > test.out 2>&1
eval_tap $? 83 'ClaimServer' test.out

#- 84 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'i2IWFxxjDMXruQDf' \
    > test.out 2>&1
eval_tap $? 84 'GetSession' test.out

#- 85 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'uldSadx9yH1WnHc3' \
    > test.out 2>&1
eval_tap $? 85 'CancelSession' test.out

#- 86 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 86 'GetDefaultProvider' test.out

#- 87 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 87 'ListProviders' test.out

#- 88 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region '6pV5ofgGHG19BUIU' \
    > test.out 2>&1
eval_tap $? 88 'ListProvidersByRegion' test.out

#- 89 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 89 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE