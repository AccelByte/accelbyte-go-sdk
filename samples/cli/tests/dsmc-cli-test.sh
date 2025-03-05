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
    --body '{"artifactPath": "nGVuBG00QcHBDsit", "coreDumpEnabled": true, "image": "qaozVV8CpLZgi0Gy", "imageReplicationsMap": {"oqJFa3u25djkYg39": {"failure_code": "GyQ1demgUYR7zyZN", "region": "nqWfsRiCPesSOuqg", "status": "lzrk0jWVxPgffHOb", "uri": "eQ1cZ9fLEV3IduZu"}, "FMMq9zj2z9qOOVv3": {"failure_code": "gzyMoVYUsbX4uVlM", "region": "JnyBS6Ce1yEB2B8n", "status": "qO0RzZLSc6fiUydx", "uri": "kM5naeZgUsdRMUaj"}, "NFoXGgiI4pNZJMbb": {"failure_code": "xM31BdAZykqNwm7e", "region": "uhxmX3LWtwHcHz94", "status": "LddmdyzF97dIi3Ei", "uri": "OIde0qMrCIdIAltu"}}, "namespace": "4MWZN5wCow9765fH", "patchVersion": "FKhoKQfqjqG0o76P", "persistent": false, "ulimitFileSize": 89, "version": "2NfqxFKQB3xTJpDR"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "d02grdTD48QVKD14", "coreDumpEnabled": false, "dockerPath": "0zX4MFSh4HTcSew3", "image": "Q2IXd34KSB5kM4yT", "imageSize": 0, "namespace": "an0L9yqiqWqzWscB", "persistent": false, "ulimitFileSize": 91, "version": "LLBTPu9GoKTmVrZ1"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "6pUYrxD3ISxCYFZD", "coreDumpEnabled": false, "dockerPath": "SPPMNznJsuH5NO4N", "image": "r5Bu9KS6m1tOUvr9", "imageSize": 89, "namespace": "bMlKIobhR3BxkOB9", "patchVersion": "Yv4pa5qyr9S9BYnQ", "persistent": true, "ulimitFileSize": 14, "uploaderFlag": "MElXSz5SqMohROyQ", "version": "O6WizXslrWiVjMua"}' \
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
    --body '{"auto_deletion": true, "ghost_worker": true, "manual_buffer_override": true, "zombie_worker": false}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateWorkerConfig' test.out

#- 10 CreateWorkerConfig
samples/cli/sample-apps Dsmc createWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": false, "ghost_worker": false, "manual_buffer_override": true, "zombie_worker": true}' \
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
    --body '{"claim_timeout": 96, "creation_timeout": 85, "default_version": "IhgyIPqe8yl6oOhD", "port": 94, "ports": {"Uz8N8lUa2APkxyt6": 19, "7U2IYI7R0puaRcOz": 67, "aNXF357AQPCXmnFy": 13}, "protocol": "QAgRiD9uPkjF4cca", "providers": ["hQZ9BHRnVLbmiUUD", "XBalQ3lVZ0kWatCG", "jz67nKJvOo3rnQu7"], "session_timeout": 100, "unreachable_timeout": 17}' \
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
    --body '{"claim_timeout": 15, "creation_timeout": 99, "default_version": "ZTMdN4PJsrSCaCmG", "port": 27, "protocol": "uGE3OmNtQ3ae4sEM", "providers": ["Wi4bfqKbf5zXpXp3", "pIwiKBpSIJkK9X0W", "m5eyLsawFtH8nRQT"], "session_timeout": 38, "unreachable_timeout": 44}' \
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
    --name 'uAIvYJ8BW9Rxz7jf' \
    --count '63' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 16 'GetAllDeployment' test.out

#- 17 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'nlzqRA4q67a9o1BO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetDeployment' test.out

#- 18 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'ildcqpcfutRSCiJK' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 53, "buffer_percent": 54, "configuration": "uyS2biyns7MurHsc", "enable_region_overrides": true, "extendable_session": false, "game_version": "iExMUZFYogTmMh4N", "max_count": 95, "min_count": 97, "overrides": {"W1qShWExYBptv3KO": {"buffer_count": 35, "buffer_percent": 15, "configuration": "oApBS7pbgT1GKCcA", "enable_region_overrides": true, "extendable_session": true, "game_version": "7gdOh75wY73S6OAq", "max_count": 86, "min_count": 69, "name": "E3R5F6QIhFAMlHwm", "region_overrides": {"DIDXDGShex3fA20S": {"buffer_count": 91, "buffer_percent": 45, "max_count": 46, "min_count": 32, "name": "q7FC7md7lmlNGR0C", "unlimited": false, "use_buffer_percent": false}, "OUOuZshDa6mZoPWu": {"buffer_count": 96, "buffer_percent": 28, "max_count": 51, "min_count": 84, "name": "H60ywJo0sdD4uOcr", "unlimited": true, "use_buffer_percent": false}, "KEP1QSHr0JMggnV6": {"buffer_count": 88, "buffer_percent": 37, "max_count": 67, "min_count": 65, "name": "jTGj3W3N41spjVuv", "unlimited": true, "use_buffer_percent": false}}, "regions": ["0xD0WCUTDeCo2WVX", "IXhgpEFk2u4aTW7D", "Ymu0joFbz9mtbzay"], "session_timeout": 49, "unlimited": false, "use_buffer_percent": false}, "Uh0xSfvJrOVA9b00": {"buffer_count": 77, "buffer_percent": 23, "configuration": "39a6Sl3qGAODk6Fa", "enable_region_overrides": false, "extendable_session": false, "game_version": "HiYYvGdVgLoyta2W", "max_count": 32, "min_count": 70, "name": "OLbap3O209Ze5J1N", "region_overrides": {"bVWj4E9crpNSfnaX": {"buffer_count": 56, "buffer_percent": 66, "max_count": 15, "min_count": 23, "name": "w1eoZBtR6NNwJejE", "unlimited": true, "use_buffer_percent": false}, "HUhdWi9THcstKQyy": {"buffer_count": 56, "buffer_percent": 95, "max_count": 9, "min_count": 9, "name": "U0REjfC1PZdGrxB6", "unlimited": false, "use_buffer_percent": true}, "jI0SklGSExMQJCR9": {"buffer_count": 100, "buffer_percent": 37, "max_count": 65, "min_count": 89, "name": "rTPpVArKKZaavKZu", "unlimited": false, "use_buffer_percent": false}}, "regions": ["xY6Ga9aD2zE1UuCl", "ZkJLZkrfKZNR1PDc", "YB84AAqvDPWjRg5J"], "session_timeout": 89, "unlimited": false, "use_buffer_percent": true}, "lNjOUkGNAC5IOwtu": {"buffer_count": 87, "buffer_percent": 12, "configuration": "LZE7ixaTeXxbxFAU", "enable_region_overrides": false, "extendable_session": false, "game_version": "eoRIQs7YlngFeFz3", "max_count": 24, "min_count": 49, "name": "WZJhy8mJ61I8s3yC", "region_overrides": {"4bsfrt0nRMSYOBQz": {"buffer_count": 53, "buffer_percent": 81, "max_count": 40, "min_count": 64, "name": "2wSBlyUqRrFdCyx9", "unlimited": true, "use_buffer_percent": false}, "u0lEmk8O7jUK27yB": {"buffer_count": 24, "buffer_percent": 95, "max_count": 60, "min_count": 100, "name": "CM9RmJ20HoHMEN5u", "unlimited": true, "use_buffer_percent": true}, "r3LqNOUZPUiiREkm": {"buffer_count": 40, "buffer_percent": 36, "max_count": 93, "min_count": 8, "name": "sbSPilV0y2NtyvEy", "unlimited": true, "use_buffer_percent": true}}, "regions": ["5EGNvZNU1Vwrna6d", "2GBvhB0J0jLZ4UeK", "aANy3yU2sqZlmqMG"], "session_timeout": 86, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"MzBvMYX0TCtZFTpH": {"buffer_count": 84, "buffer_percent": 39, "max_count": 67, "min_count": 98, "name": "Q9wdmgMnjMAWSVO7", "unlimited": true, "use_buffer_percent": false}, "Dm2c1voa0rCSMf26": {"buffer_count": 91, "buffer_percent": 25, "max_count": 86, "min_count": 14, "name": "GViHACXag4OMMTZT", "unlimited": true, "use_buffer_percent": true}, "j2FjMMe7xlAnRWVL": {"buffer_count": 77, "buffer_percent": 50, "max_count": 93, "min_count": 90, "name": "zjt9uGOLCaKQluyA", "unlimited": true, "use_buffer_percent": false}}, "regions": ["W7R2HLGZdaEpnODr", "stWb6ipKfoVaZN4N", "rwIjOhPeqcjeYaPD"], "session_timeout": 56, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'CreateDeployment' test.out

#- 19 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'lKFa2hjXU7RLfuYV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteDeployment' test.out

#- 20 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'Eg15s04Ph1Bu2PnF' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 52, "buffer_percent": 78, "configuration": "tAuo63nkBHiTX9pO", "enable_region_overrides": false, "extendable_session": false, "game_version": "0il3t7CzmYSssEVm", "max_count": 24, "min_count": 80, "regions": ["FHbhVhAWCZff1Zcd", "bDwcuD4z8PfRweEt", "vJWwAzW5k6RluQMj"], "session_timeout": 13, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateDeployment' test.out

#- 21 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'gTPGQzaInLs3Sdbu' \
    --namespace $AB_NAMESPACE \
    --region 'WufcbTF96eW8urfp' \
    --body '{"buffer_count": 12, "buffer_percent": 66, "max_count": 97, "min_count": 31, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'CreateRootRegionOverride' test.out

#- 22 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'LXoZP82q13AJuYlP' \
    --namespace $AB_NAMESPACE \
    --region 'akEsYz3kSSaURzkF' \
    > test.out 2>&1
eval_tap $? 22 'DeleteRootRegionOverride' test.out

#- 23 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'DOCpPXDkxruzCS9j' \
    --namespace $AB_NAMESPACE \
    --region 'XSIgWWlSyPxt351e' \
    --body '{"buffer_count": 68, "buffer_percent": 58, "max_count": 88, "min_count": 8, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateRootRegionOverride' test.out

#- 24 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment '0uqBMcG3WY3OJ0RL' \
    --namespace $AB_NAMESPACE \
    --version '3fpsiLuGYo11qu5j' \
    --body '{"buffer_count": 97, "buffer_percent": 79, "configuration": "A7Vo0C7TOuVSStkE", "enable_region_overrides": false, "extendable_session": false, "game_version": "K0X9DJEJWmiMnyuk", "max_count": 84, "min_count": 26, "region_overrides": {"UOaSEdUdnZqc6XnK": {"buffer_count": 20, "buffer_percent": 3, "max_count": 55, "min_count": 0, "name": "pBdwkHsFzBLdMhzZ", "unlimited": false, "use_buffer_percent": true}, "Y2BqGloYIsUSCVgl": {"buffer_count": 14, "buffer_percent": 1, "max_count": 6, "min_count": 76, "name": "GjvbdkHEy5Uci3gZ", "unlimited": false, "use_buffer_percent": false}, "nvjFadj5UmBeJjfo": {"buffer_count": 4, "buffer_percent": 64, "max_count": 72, "min_count": 49, "name": "jYvDc72HsQd9RAeM", "unlimited": false, "use_buffer_percent": false}}, "regions": ["pWCBJtHUIaIOtIBM", "X7xhUeWqzNXutuzI", "LJvsrdQUaGnonGDv"], "session_timeout": 75, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'CreateDeploymentOverride' test.out

#- 25 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'wwiZfDACaoeykLkD' \
    --namespace $AB_NAMESPACE \
    --version 'H9o4j502hIGOBJXf' \
    > test.out 2>&1
eval_tap $? 25 'DeleteDeploymentOverride' test.out

#- 26 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'dE2QtaKOOBwcim8S' \
    --namespace $AB_NAMESPACE \
    --version 'r3tcLccgo1VJRN6T' \
    --body '{"buffer_count": 78, "buffer_percent": 73, "configuration": "HbT4NbCSUnfawzCa", "enable_region_overrides": false, "game_version": "oJqPtPcDF9pX3vFK", "max_count": 73, "min_count": 97, "regions": ["SfcTmmMZEzULL6mu", "WwMc1dHh4z8YHcUe", "R74nE6ituZDnLB3w"], "session_timeout": 80, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateDeploymentOverride' test.out

#- 27 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'hheF1Tffb4sm1lmC' \
    --namespace $AB_NAMESPACE \
    --region 'ZHZL677JgrkoYi2F' \
    --version '1dNAcjLJTADKeZ1E' \
    --body '{"buffer_count": 4, "buffer_percent": 51, "max_count": 4, "min_count": 81, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'CreateOverrideRegionOverride' test.out

#- 28 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'I1SRmqv7pNGpjg8l' \
    --namespace $AB_NAMESPACE \
    --region '304Yv9vUlLeKFxkj' \
    --version 'kj4fw9Q0bKkzsTw2' \
    > test.out 2>&1
eval_tap $? 28 'DeleteOverrideRegionOverride' test.out

#- 29 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'pxDYWWVY97CNWo0Q' \
    --namespace $AB_NAMESPACE \
    --region 'Yuo62D5ii4n7CcY7' \
    --version 'kwiKULCoX4faAsTf' \
    --body '{"buffer_count": 63, "buffer_percent": 22, "max_count": 90, "min_count": 58, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateOverrideRegionOverride' test.out

#- 30 DeleteCreatingServerCountQueue
samples/cli/sample-apps Dsmc deleteCreatingServerCountQueue \
    --deployment 'g6g4Gk1MgVPuQ6Ix' \
    --namespace $AB_NAMESPACE \
    --version 'CYFoE0mEjxxDirXm' \
    > test.out 2>&1
eval_tap $? 30 'DeleteCreatingServerCountQueue' test.out

#- 31 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '24' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 31 'GetAllPodConfig' test.out

#- 32 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'KR7P0kLgQyYuZ2IH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPodConfig' test.out

#- 33 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'lLYAgJFs1tZ1HOUy' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 69, "mem_limit": 83, "params": "q2Se5Y8KXEL8HrmQ"}' \
    > test.out 2>&1
eval_tap $? 33 'CreatePodConfig' test.out

#- 34 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'x1wPBYhOmgVn4GwK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePodConfig' test.out

#- 35 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'flx6nOD8ge4fMqvo' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 47, "mem_limit": 85, "name": "5QlCXAewkOtgACB8", "params": "JceEzCqXXbJh4Zo7"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePodConfig' test.out

#- 36 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'PrmtxZC41typRDxd' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 50}' \
    > test.out 2>&1
eval_tap $? 36 'AddPort' test.out

#- 37 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'k9ayzKrTXUueWcIF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'DeletePort' test.out

#- 38 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'qaGksY7wgbUkR0v8' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "mYXalS5UXsynecbo", "port": 25}' \
    > test.out 2>&1
eval_tap $? 38 'UpdatePort' test.out

#- 39 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'ICyv34AFwDV7z0Q7' \
    --sortBy 'updatedAt' \
    --sortDirection 'desc' \
    --count '27' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 39 'ListImages' test.out

#- 40 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI '2138Sa2c8eAOi50j' \
    --version '07bVYw6DiZnJDmlS' \
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
    --imageURI 'wEEKaQ48fni1ZFN1' \
    --version 'AarnHzeyTjxmZjFp' \
    --versionPatch 'G4tFb970gCrpu81e' \
    > test.out 2>&1
eval_tap $? 42 'DeleteImagePatch' test.out

#- 43 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'tUfsyxUMs0aIe3xv' \
    > test.out 2>&1
eval_tap $? 43 'GetImageDetail' test.out

#- 44 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'KgpRFFmXXAV9tsT1' \
    > test.out 2>&1
eval_tap $? 44 'GetImagePatches' test.out

#- 45 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'E2imfwluVOJrTkOr' \
    --versionPatch '0LrBFAP5XQamIyrn' \
    > test.out 2>&1
eval_tap $? 45 'GetImagePatchDetail' test.out

#- 46 AddBuffer
samples/cli/sample-apps Dsmc addBuffer \
    --namespace $AB_NAMESPACE \
    --body '{"AllocCount": 46, "DeploymentName": "zqM5VYTNk3yCD5HH", "JobCount": 64, "JobPriority": 72, "OverrideVersion": "H36BaljOD8V4hAJi", "Region": "e56mjjJo3P0rjJHr"}' \
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
    --region 'qI11TyDDCIi9xtI6' \
    --count '72' \
    --offset '86' \
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
    --region 'Ue1oO7yGVrAJFjMF' \
    > test.out 2>&1
eval_tap $? 50 'CountServerDetailed' test.out

#- 51 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'ListLocalServer' test.out

#- 52 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'aNwfYkQjbisk0sJJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteLocalServer' test.out

#- 53 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'Ddkv7opPg2jUUWmM' \
    > test.out 2>&1
eval_tap $? 53 'GetServer' test.out

#- 54 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'st4tDcaJjXw5tJzu' \
    > test.out 2>&1
eval_tap $? 54 'DeleteServer' test.out

#- 55 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region '6SLtvvppxANly9yM' \
    --withServer 'false' \
    --count '62' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 55 'ListSession' test.out

#- 56 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region '677xUbX4vjfoaIDa' \
    > test.out 2>&1
eval_tap $? 56 'CountSession' test.out

#- 57 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'aqZZOMIb2MV1t4vs' \
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
    --body '{"JobCount": 78, "Region": "vY3oPGDekjj6s84z", "TimeoutSecond": 37, "ZombieCount": 39}' \
    > test.out 2>&1
eval_tap $? 59 'RunZombieCleanerRequestHandler' test.out

#- 60 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "D3IhRC67E7ZKY05H", "repository": "6M6Vm9hwCtrrAs1P"}' \
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
    --name 'fyYBa1QUk6pUVPgn' \
    --count '39' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 63 'GetAllDeploymentClient' test.out

#- 64 GetDeploymentClient
samples/cli/sample-apps Dsmc getDeploymentClient \
    --deployment 'dbqra8kY1SZq0Skg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetDeploymentClient' test.out

#- 65 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'T5JAR4C20EIAQrtc' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 95, "buffer_percent": 34, "configuration": "DJbHHvLF4GschGfL", "enable_region_overrides": false, "extendable_session": true, "game_version": "i03LcDbAfccTukoY", "max_count": 31, "min_count": 72, "overrides": {"Iqu2s41RP8FUBWTy": {"buffer_count": 96, "buffer_percent": 2, "configuration": "hkVhVt7QQ2gpLp8W", "enable_region_overrides": true, "extendable_session": true, "game_version": "xeNy3Py8JFquTemx", "max_count": 92, "min_count": 57, "name": "4kzQpJFJfu9VJW74", "region_overrides": {"bU3JRYzSR3XLVUr7": {"buffer_count": 18, "buffer_percent": 10, "max_count": 52, "min_count": 8, "name": "AoMzhXp7V4gB1twp", "unlimited": false, "use_buffer_percent": true}, "yOTpJkVZJZqY4exU": {"buffer_count": 5, "buffer_percent": 98, "max_count": 72, "min_count": 56, "name": "vGAOKejURSu216Dx", "unlimited": true, "use_buffer_percent": false}, "BDyO4mgQHMXlv4bj": {"buffer_count": 86, "buffer_percent": 96, "max_count": 88, "min_count": 28, "name": "gKe5gCI3njuyPCP3", "unlimited": false, "use_buffer_percent": true}}, "regions": ["kpt48TMAsdz5ERWa", "ztM6t7GZUzVq5Vau", "QdAC2LopaMAAmLSa"], "session_timeout": 0, "unlimited": true, "use_buffer_percent": true}, "yDorDIF4VG56gtnp": {"buffer_count": 11, "buffer_percent": 41, "configuration": "9OgsI6BevaBtogwq", "enable_region_overrides": true, "extendable_session": false, "game_version": "yVTUatmLiGjHKuUT", "max_count": 1, "min_count": 62, "name": "REEsbceymcebf2xq", "region_overrides": {"TXVfjiQQERx8xKnG": {"buffer_count": 1, "buffer_percent": 65, "max_count": 49, "min_count": 54, "name": "l8jDndwkWiT0wBj2", "unlimited": true, "use_buffer_percent": false}, "4TusqYSlRy669UOu": {"buffer_count": 12, "buffer_percent": 1, "max_count": 16, "min_count": 91, "name": "n5rCRCym67FQv3QK", "unlimited": false, "use_buffer_percent": false}, "zZG5KHoR56VGCUBc": {"buffer_count": 30, "buffer_percent": 74, "max_count": 29, "min_count": 32, "name": "bKkLmEZOFdXCQnIS", "unlimited": true, "use_buffer_percent": false}}, "regions": ["SsIA4vLd8GfEQjYf", "4qRcXxviZxUzlsTJ", "K2KPlfRp5o01TLoE"], "session_timeout": 60, "unlimited": false, "use_buffer_percent": false}, "2jKs8wLwBj5YfcAb": {"buffer_count": 30, "buffer_percent": 81, "configuration": "6rh2gy16PBKZVfFh", "enable_region_overrides": true, "extendable_session": false, "game_version": "TcTL7Bi12qo9YrQb", "max_count": 69, "min_count": 27, "name": "ZMdmQeJ6aggvC841", "region_overrides": {"rOqciFfHgkJ6hOFS": {"buffer_count": 71, "buffer_percent": 35, "max_count": 64, "min_count": 26, "name": "N8z1Jn0xb89hdNGo", "unlimited": false, "use_buffer_percent": true}, "rixfJ8KnKvdCn4LV": {"buffer_count": 41, "buffer_percent": 82, "max_count": 82, "min_count": 0, "name": "GKefYbAnDPwShmok", "unlimited": true, "use_buffer_percent": true}, "OBBAId6psMQDs53w": {"buffer_count": 30, "buffer_percent": 1, "max_count": 42, "min_count": 84, "name": "12EF9YZ0ZSqHv8dE", "unlimited": false, "use_buffer_percent": false}}, "regions": ["RjBNZGiiJAXQnG5S", "PfjdXArBLhlmFHVM", "HV0K4YuBYo7JrrYe"], "session_timeout": 38, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"D1yHvRufJ3ypTwxD": {"buffer_count": 53, "buffer_percent": 53, "max_count": 64, "min_count": 80, "name": "DPFnpvgjCKZuCcXL", "unlimited": true, "use_buffer_percent": false}, "yQN0jm1OlysvvF5J": {"buffer_count": 81, "buffer_percent": 78, "max_count": 92, "min_count": 39, "name": "Df9E2YKYHSRvHPfj", "unlimited": true, "use_buffer_percent": true}, "x145Jk8rObZHqcX7": {"buffer_count": 41, "buffer_percent": 88, "max_count": 50, "min_count": 89, "name": "tVwHCMg3lykFAo4v", "unlimited": true, "use_buffer_percent": true}}, "regions": ["kWJhHDzdFBl08XOS", "jTtPa2ejTcPkfndi", "2ir23rnqacxAdSem"], "session_timeout": 16, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 65 'CreateDeploymentClient' test.out

#- 66 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'DICAgkpbU3rGQfLD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteDeploymentClient' test.out

#- 67 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '27' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 67 'GetAllPodConfigClient' test.out

#- 68 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'vS92pUr4pPY4fuOJ' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 100, "mem_limit": 49, "params": "smFEjtYBGqWfUjKv"}' \
    > test.out 2>&1
eval_tap $? 68 'CreatePodConfigClient' test.out

#- 69 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'sRr6Mv4W4pFdNQDR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePodConfigClient' test.out

#- 70 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '61' \
    --offset '20' \
    --q 'RUYCaofFccY6ctFr' \
    --sortBy 'createdAt' \
    --sortDirection 'desc' \
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
    --version 'Z7uTMfp5kzKqk8JR' \
    > test.out 2>&1
eval_tap $? 72 'ImageDetailClient' test.out

#- 73 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'ZNfRfJHMOZJjYcVO' \
    --count '93' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 73 'ListServerClient' test.out

#- 74 CountServerDetailedClient
samples/cli/sample-apps Dsmc countServerDetailedClient \
    --namespace $AB_NAMESPACE \
    --region 'aM1baxHuuZd0Rk81' \
    > test.out 2>&1
eval_tap $? 74 'CountServerDetailedClient' test.out

#- 75 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "jlB5nqSRX38QV2a7"}' \
    > test.out 2>&1
eval_tap $? 75 'ServerHeartbeat' test.out

#- 76 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "XB6io0FGZJBf54ni"}' \
    > test.out 2>&1
eval_tap $? 76 'DeregisterLocalServer' test.out

#- 77 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "Sg2IWhIfl36xo6lw", "ip": "MYtPkghLluxXRwCz", "name": "GUNKQrvNzH24pi6O", "port": 70}' \
    > test.out 2>&1
eval_tap $? 77 'RegisterLocalServer' test.out

#- 78 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "cz2eamgaach08B8v", "pod_name": "ANW62vlf9k7CuJAY"}' \
    > test.out 2>&1
eval_tap $? 78 'RegisterServer' test.out

#- 79 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "0lhJx4Pf3lrpmWfg"}' \
    > test.out 2>&1
eval_tap $? 79 'ShutdownServer' test.out

#- 80 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName '4bMrIXdVr4XLWrE0' \
    > test.out 2>&1
eval_tap $? 80 'GetServerSessionTimeout' test.out

#- 81 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'uAKD6yCPVjT1b6n7' \
    > test.out 2>&1
eval_tap $? 81 'GetServerSession' test.out

#- 82 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "6rV4f4IM4GrUU7mW", "configuration": "mERA0E9j4atbexCB", "deployment": "JtWqMf2DXJAagQFm", "game_mode": "YrIznfRgf34MjJr9", "matching_allies": [{"matching_parties": [{"party_attributes": {"EfgKKQ0qv8jJq2VA": {}, "yBrRFAziQ1OxtApE": {}, "0LQAZ3Vs33OJPQKx": {}}, "party_id": "tLBBwKncetY7j1lC", "party_members": [{"user_id": "8p3rW2wsqt7ryVh8"}, {"user_id": "Vfa54Bqmtehofit4"}, {"user_id": "kXBatGCfGG2CFeAL"}]}, {"party_attributes": {"tNON8MDQo8Vo2Xax": {}, "Z8ld3LiIApBhFfwm": {}, "EdRfTYC3YIXsWXBH": {}}, "party_id": "XWb6xzDK0uJZHOUi", "party_members": [{"user_id": "S2PPX9fVmrqESOSP"}, {"user_id": "2m95eNlGQHzJ9ZRC"}, {"user_id": "fT9ebIiTXrOENPOK"}]}, {"party_attributes": {"RBfwpQZ8UaqPjUjG": {}, "zsBSH9EdItOqWZyo": {}, "JVgfdMRKjXSIsbP0": {}}, "party_id": "pUklSt3DVx6DcMGY", "party_members": [{"user_id": "cAvLjaqxGHrx9w6K"}, {"user_id": "ShWZRGgnEne6FZYP"}, {"user_id": "zhJ4HHe3VAGQTjpC"}]}]}, {"matching_parties": [{"party_attributes": {"gteWMMmhkcz33u1A": {}, "PnxG3p4JkKlXMEmh": {}, "lxxUhskW23vZC7D8": {}}, "party_id": "zzjAJWXeVRKW4ijQ", "party_members": [{"user_id": "2R0IBYXjGfQqdOn6"}, {"user_id": "rkLnssBq1gBmWhFX"}, {"user_id": "39uJTtH7hZO0IiS4"}]}, {"party_attributes": {"oKsUjqDDwOD92SDx": {}, "V6QiznW3qPV61tqh": {}, "aV5f3nhW5v7u75GX": {}}, "party_id": "pK08FI176iIscGmg", "party_members": [{"user_id": "Z3K6mHiYtmX9J35r"}, {"user_id": "NeP3syLccNV1W5BY"}, {"user_id": "o8Ih5GyH4zEm6frN"}]}, {"party_attributes": {"GO8VhMwcZRIKucHe": {}, "2YwrsRxFDYJrFMQ0": {}, "jZO8oze89fCkjgdB": {}}, "party_id": "sH3htDlWgayRefeg", "party_members": [{"user_id": "MmtQdXC3OJMw2FxN"}, {"user_id": "bsnp9MnNuIJcQPUv"}, {"user_id": "OZUbfN5chajRtKDF"}]}]}, {"matching_parties": [{"party_attributes": {"9TLB3T8YHKzyzSdI": {}, "O34xqDrw8sa2q2UX": {}, "LGTo3LNj14VJqn4C": {}}, "party_id": "uNRrmYOUJ0V1bZwF", "party_members": [{"user_id": "HiM39wIQ5zGCd8au"}, {"user_id": "keeGpXqqxEQbcoIY"}, {"user_id": "Z2YzEFF0nvDkKotU"}]}, {"party_attributes": {"fbKmCEFqRL5Al51t": {}, "y0orikSdwvdOD9VY": {}, "yoyB2gZrnu9ciOSb": {}}, "party_id": "Ps1zoTqkJR7jSvlV", "party_members": [{"user_id": "CrUvcIUkc35q1a1P"}, {"user_id": "ApRtSUB7nhoVuEbQ"}, {"user_id": "0Fo3VgQxW1ZbXkuX"}]}, {"party_attributes": {"ybOiilIEbyXbfAg8": {}, "o24bnzYsNBkqe5Q5": {}, "SLyvIyze0InlQvfk": {}}, "party_id": "EL1nWojdFqZwq1s2", "party_members": [{"user_id": "odYEvq4u3eqS1rMG"}, {"user_id": "ndZuWw0Cc6pJAWOq"}, {"user_id": "TYsSFmw0qXUsvk9R"}]}]}], "namespace": "XHAcwLNfa9o1FXF6", "notification_payload": {}, "pod_name": "ppvFzZ14U03M9F39", "region": "KHZG20ooXDWmhU5y", "session_id": "fXtClyIAi481J9VB"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateSession' test.out

#- 83 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"game_mode": "Jbz81gvSMZqvlqLK", "matching_allies": [{"matching_parties": [{"party_attributes": {"hFWzUDeHRfdZPInN": {}, "JrcbUrZ3JwFp0Zw1": {}, "4kT6lgIa71quGKmn": {}}, "party_id": "ZKI1SenKxPsWYaDu", "party_members": [{"user_id": "8us36fNHwM08Vtf1"}, {"user_id": "j7fva350bOQBSXp5"}, {"user_id": "ySx3GlJjt6oxFWsn"}]}, {"party_attributes": {"fh4EYYtDmBscyYcC": {}, "65kUCzSX47nou9MY": {}, "F8h7TBNVwQ1YFZnu": {}}, "party_id": "QRqosWlUnoT16h4J", "party_members": [{"user_id": "5VvTFjGjJVzTwrHC"}, {"user_id": "lvPVToK2ru9A7NES"}, {"user_id": "AccqNKYwngohbZ7b"}]}, {"party_attributes": {"PvsJHpVW6bug0Oy7": {}, "RsyaMmtjHfHTPV7X": {}, "xbcLQ5FIqhoumtXs": {}}, "party_id": "SdYJSDrzcJQIMJgr", "party_members": [{"user_id": "77SmizpGnufcFblN"}, {"user_id": "Mt186mzTbu0Cu6x1"}, {"user_id": "ER1FbgnxLxCHPPPC"}]}]}, {"matching_parties": [{"party_attributes": {"D8swgoauBLwzcQRz": {}, "mVBR8CIQ5eTkXQ6X": {}, "sAsSwou6rS2S18LE": {}}, "party_id": "GDZibaFCYpdlN8wx", "party_members": [{"user_id": "EVHJrlNvG1JPZVUV"}, {"user_id": "soNjuhHWwk0Udzcz"}, {"user_id": "g2NXBOj2sGm9Ftil"}]}, {"party_attributes": {"nGlb0DZtEd0mZdjI": {}, "bJPpyLzRMo3Im1qp": {}, "auuS6lbu8wIuHl7R": {}}, "party_id": "nBhqmDQgnS5sxFCt", "party_members": [{"user_id": "ACiTCU8iAOnY2cF8"}, {"user_id": "INonBqz8DnNDUVMj"}, {"user_id": "sycXKnCDPw4ze0SJ"}]}, {"party_attributes": {"zYHYj3UGkNn4QKXn": {}, "CfaGauhglqEYVFzn": {}, "dJhjXy9hrdwJ81Y7": {}}, "party_id": "v0znlINSBd2scscL", "party_members": [{"user_id": "iTe4pPhYzNmPbF9F"}, {"user_id": "sYtosuN8TO7PbaFc"}, {"user_id": "JW43OVHLvUsBgv8l"}]}]}, {"matching_parties": [{"party_attributes": {"t7nRUGGvsBrrKpMC": {}, "y34EDSsGY2aBf683": {}, "q277AGZBuImX5lid": {}}, "party_id": "LEbTfc7RUCvH40X0", "party_members": [{"user_id": "iU7e8ElzoX9seZUv"}, {"user_id": "FyrmmYTjOLg7g24Z"}, {"user_id": "4qmrsfEXTBLVCtwF"}]}, {"party_attributes": {"FkvclyXE2iXDutUq": {}, "A9CDNl40iNzF9kXD": {}, "EJTuMy1AlZxJ1UdU": {}}, "party_id": "QHilTcpc8xcRt6Gc", "party_members": [{"user_id": "3BaJ6RumJqEMI9EI"}, {"user_id": "V4VCaR2oTCq2eoC5"}, {"user_id": "oszjT8S3g2W3hSPs"}]}, {"party_attributes": {"6ueJ1FkL7VN0dcyK": {}, "lonzqCWY0M3cpTtN": {}, "4AihaA5spZOd58bx": {}}, "party_id": "Cca0hSFo9ET7mOdq", "party_members": [{"user_id": "2yZAEhmsCW2DKyHp"}, {"user_id": "mdSRQWsrU9MIbHL0"}, {"user_id": "GAZsnVKuuwbB1vRI"}]}]}], "namespace": "2Abk6zcp4lCok5Tf", "notification_payload": {}, "session_id": "lj3kP3xQaZ5Yk7Rk"}' \
    > test.out 2>&1
eval_tap $? 83 'ClaimServer' test.out

#- 84 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'rtKLjn0LQu7RoF8C' \
    > test.out 2>&1
eval_tap $? 84 'GetSession' test.out

#- 85 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'lxkfStud4c3Ryl77' \
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
    --region 'vK8AD1EcLZ0O7fQJ' \
    > test.out 2>&1
eval_tap $? 88 'ListProvidersByRegion' test.out

#- 89 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 89 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE