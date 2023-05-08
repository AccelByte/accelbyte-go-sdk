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
echo "1..69"

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
    --body '{"artifactPath": "8aloJbKodlrRmL4I", "image": "bkRdxKkmuqRvzcGX", "namespace": "J9Oo9cp84oH0Z0YH", "persistent": false, "version": "QsCXy0sBrvNHpsA8"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "BDTbSecBue2IV73p", "dockerPath": "cbI9AT0vyGwA0hkq", "image": "sKTpTrPeFTjp1anW", "imageSize": 30, "namespace": "8JhY071mn3K41BtA", "persistent": true, "version": "hXvxMfMz1KKB3isX"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "ySZBXWNUG9r5d5sn", "dockerPath": "wBCyrInig1w8rzmV", "image": "IjhsY86YhkgVv1Qc", "imageSize": 84, "namespace": "Ab3ktmjxpEevn1u0", "patchVersion": "7FxJr9J7JbUS1AjA", "persistent": false, "version": "Io9vbsixIR93aafU"}' \
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
    --body '{"claim_timeout": 72, "creation_timeout": 49, "default_version": "vs8KfzKY7nRAm0I5", "port": 21, "ports": {"NmhXEmzGpgI4XAh1": 64, "mfpPPqNszttD7PiO": 5, "b0NtfO6ckmNWpAjI": 66}, "protocol": "ExnXNi8OX4OhdfLQ", "providers": ["tK0scNDiM30fqalL", "pjbo2HqAVCwQc6H9", "DjUiluLu3GgKJzTn"], "session_timeout": 2, "unreachable_timeout": 42}' \
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
    --body '{"claim_timeout": 50, "creation_timeout": 85, "default_version": "h40i1hLn1iJDPtL4", "port": 82, "protocol": "iUo6G08fRXrshRqH", "providers": ["afDynozSTDBq1Wbd", "gp0mntG2qIfLekk1", "7sOrT013VJndQz3l"], "session_timeout": 88, "unreachable_timeout": 44}' \
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
    --name 'JtxatKBPoJ5teCug' \
    --count '77' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'AUiuYi2Hb87JECRr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'PVWLHwPrOPK3Amqb' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 82, "buffer_percent": 30, "configuration": "q1NIrMC3haCAXzyI", "enable_region_overrides": true, "game_version": "VMEZkg43VijdE0DS", "max_count": 46, "min_count": 69, "overrides": {"7BkQKA7Okf5fI0LT": {"buffer_count": 70, "buffer_percent": 30, "configuration": "FB1uqmv7MITdP86g", "enable_region_overrides": true, "game_version": "bUGNWHXVd0JX2eMx", "max_count": 59, "min_count": 71, "name": "7lDRNoqmMy1zJk7K", "region_overrides": {"5RiexvzceTS5pxlu": {"buffer_count": 39, "buffer_percent": 42, "max_count": 36, "min_count": 6, "name": "SfDpkGHjABgCZJrI", "unlimited": false, "use_buffer_percent": false}, "0vLj6crLKONOF9g6": {"buffer_count": 30, "buffer_percent": 47, "max_count": 51, "min_count": 8, "name": "sb5u6v615zcrqRri", "unlimited": false, "use_buffer_percent": false}, "WssSIunJhB1Fx0aV": {"buffer_count": 27, "buffer_percent": 52, "max_count": 7, "min_count": 93, "name": "aDYpfFU5sV9j1s4r", "unlimited": true, "use_buffer_percent": false}}, "regions": ["3eQlieT8CgjzSutz", "jYianpe8J0y8hC6g", "nl8muwUuR5EaHJ8p"], "session_timeout": 63, "unlimited": true, "use_buffer_percent": false}, "PCfQI6JopvUdrwbg": {"buffer_count": 20, "buffer_percent": 16, "configuration": "xQ0hmAttDxFzCUZw", "enable_region_overrides": true, "game_version": "Pao6uYCCUxWdbyfs", "max_count": 1, "min_count": 94, "name": "0njNogAPpNfRS5xH", "region_overrides": {"EFlPun8ofHlqb3nM": {"buffer_count": 83, "buffer_percent": 16, "max_count": 74, "min_count": 33, "name": "vX0VpqmrVUlxlbfD", "unlimited": false, "use_buffer_percent": false}, "fQonJuPX4F1YWzUu": {"buffer_count": 28, "buffer_percent": 29, "max_count": 38, "min_count": 64, "name": "Ls5ZufgrxN0oFlYe", "unlimited": false, "use_buffer_percent": true}, "bUnrVfEdgwC3Ed6G": {"buffer_count": 43, "buffer_percent": 7, "max_count": 15, "min_count": 7, "name": "WhYo7wpeG8ekzEjl", "unlimited": true, "use_buffer_percent": false}}, "regions": ["Wq3f7yodl6HcMEK4", "pAEqeSRWZ63F0rkw", "8XMdZ82zTPTOuDro"], "session_timeout": 92, "unlimited": true, "use_buffer_percent": true}, "on7WzJrI803wUIG6": {"buffer_count": 25, "buffer_percent": 0, "configuration": "1gmA1KYKviLlqmk4", "enable_region_overrides": true, "game_version": "q1BfAXm0KMblA1YD", "max_count": 91, "min_count": 44, "name": "w2vPUGB3cVWQLbhZ", "region_overrides": {"WC2FwBVnK9rq8oIS": {"buffer_count": 99, "buffer_percent": 50, "max_count": 16, "min_count": 84, "name": "AtRvv4Fc28ft9kdc", "unlimited": true, "use_buffer_percent": false}, "0OB1MlyCKrJASx1C": {"buffer_count": 30, "buffer_percent": 27, "max_count": 0, "min_count": 33, "name": "tHxE38hv3d95pH80", "unlimited": true, "use_buffer_percent": true}, "f51XFKqzwUEmOQnh": {"buffer_count": 41, "buffer_percent": 87, "max_count": 39, "min_count": 30, "name": "hCWIWboGtpJbPjP4", "unlimited": true, "use_buffer_percent": false}}, "regions": ["DVYhAAbeptRQSCsD", "Pd8ybTMV7NhrykEC", "Kj8xc2aTznTBGXbk"], "session_timeout": 84, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"gok94PE01H9c3bvu": {"buffer_count": 31, "buffer_percent": 4, "max_count": 3, "min_count": 43, "name": "cnfUROEZVrTIJSS3", "unlimited": true, "use_buffer_percent": false}, "Jhq6DDRhpEAwu9Ww": {"buffer_count": 52, "buffer_percent": 13, "max_count": 74, "min_count": 77, "name": "cnZYW15mQ8Fz4gvQ", "unlimited": true, "use_buffer_percent": true}, "BmwQtE8HpKpGuWF8": {"buffer_count": 77, "buffer_percent": 46, "max_count": 12, "min_count": 10, "name": "3fLMLfaH0vlc4YJU", "unlimited": true, "use_buffer_percent": true}}, "regions": ["rKDyTb33ORs8C0dA", "1Mn39vZmQ9qCdsz1", "eMPLGiTIVDBWUrDM"], "session_timeout": 38, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'qo9mnVTPcPfPFE0z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'AFRK0smqvTVd2Ljf' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 32, "buffer_percent": 29, "configuration": "xqs5LiaFLxwGPdN2", "enable_region_overrides": false, "game_version": "4f7oBZE7GjYFJmrA", "max_count": 97, "min_count": 67, "regions": ["464CDiz4anJIhsYd", "VSdi7kGQPuiSVi6b", "2YKeD8GRgP8SgplU"], "session_timeout": 80, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment '80V5VYIAUmR77rKz' \
    --namespace $AB_NAMESPACE \
    --region 'CQqvgyWUqv5upMSS' \
    --body '{"buffer_count": 80, "buffer_percent": 26, "max_count": 46, "min_count": 45, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'xjhEULPGbmcT4smR' \
    --namespace $AB_NAMESPACE \
    --region '5DwPMLbiteDfyJRs' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment '8OIvf8LEE4ABZR7A' \
    --namespace $AB_NAMESPACE \
    --region 'pu4foXju9Nx9cq8D' \
    --body '{"buffer_count": 54, "buffer_percent": 33, "max_count": 8, "min_count": 54, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'q24XRmI9CsTkZltH' \
    --namespace $AB_NAMESPACE \
    --version 'abA6liVYfirJkQfj' \
    --body '{"buffer_count": 76, "buffer_percent": 74, "configuration": "76vIPUtQ5txN8XqC", "enable_region_overrides": true, "game_version": "7FJJV78qsUNbwa7H", "max_count": 5, "min_count": 61, "region_overrides": {"oB2MRw77gzuoU46O": {"buffer_count": 93, "buffer_percent": 52, "max_count": 74, "min_count": 26, "name": "rAk4qvKIKYQqNlZs", "unlimited": false, "use_buffer_percent": false}, "4wCA7DHzhx6HLS5z": {"buffer_count": 32, "buffer_percent": 80, "max_count": 23, "min_count": 18, "name": "3IOcZXJW0NlVlTG9", "unlimited": false, "use_buffer_percent": false}, "kVHZC5OGKQnNCZKe": {"buffer_count": 87, "buffer_percent": 32, "max_count": 35, "min_count": 48, "name": "rXIJdEW2LpSST4up", "unlimited": false, "use_buffer_percent": false}}, "regions": ["RymzuNZ0PfVq7W16", "TC2wSx5X5AZCdRx1", "h0X1LQ6HDOyCo8Nq"], "session_timeout": 9, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'WjTJR3DVH5L1jpsm' \
    --namespace $AB_NAMESPACE \
    --version 'Ca9Iyg4EmCo9iUQ4' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'ARUGJ784FxZcCt0k' \
    --namespace $AB_NAMESPACE \
    --version 'hOoB8i5vCLgYXR9d' \
    --body '{"buffer_count": 96, "buffer_percent": 53, "configuration": "Fv4ZAYbUKmByI8VA", "enable_region_overrides": false, "game_version": "OEAXZe7G243A78Kv", "max_count": 3, "min_count": 91, "regions": ["o5mWdVckV8sfGi8o", "GHHh3ASLAIgrZQRM", "9rYeJeLHVTAAqKlQ"], "session_timeout": 5, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'fmP4L8xdmBwkMfwa' \
    --namespace $AB_NAMESPACE \
    --region 'bOD6q3rtibbPSxGJ' \
    --version 'ahYtQ48Tbrkey2xL' \
    --body '{"buffer_count": 87, "buffer_percent": 95, "max_count": 20, "min_count": 71, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment '4JPw0KnHYRdrfosz' \
    --namespace $AB_NAMESPACE \
    --region 'lOTMLgzORLv58X59' \
    --version '9QTkhuIR8PUpnAXn' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'rnfUXO59yhGtgiFD' \
    --namespace $AB_NAMESPACE \
    --region '5YKrQPuYDQe5PTvb' \
    --version 'uJGL1fcpjQmAUmEu' \
    --body '{"buffer_count": 13, "buffer_percent": 23, "max_count": 70, "min_count": 6, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '68' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 't5SzDie8mexm5NDx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'DSKT1DrCB0ylgsLk' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 30, "mem_limit": 73, "params": "xOkjkWwhbIm3vKdY"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'CeObCl24xEuiuj6U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'a2hPJ941kQUhmkht' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 64, "mem_limit": 94, "name": "UMarKqSqkvBteC9G", "params": "Yc7GI4ExNqoj9qcO"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'whGXViOAv0RLlEUj' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 46}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'q3K95PUVSPhWBPCR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name '3IhampnvJiyxoYN0' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "pnPds5luXD0IHxUW", "port": 82}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q '98IcLEXjdhT32BJv' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    --count '76' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI '4VJSCtiiNMADMdiE' \
    --version 'jxyiSE3A8nxrKtcB' \
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
    --imageURI 'A9q4Pl9Z6sCNhKa8' \
    --version 'Dbqdo6qcKny97ekG' \
    --versionPatch 'Ht5tQhFm9fTuqZLZ' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'lE0WZ3OeMeScdJLX' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'EKV8FP4wyOu5ZHaD' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'Vnh9BPAYIpZvnZ1Z' \
    --versionPatch 'wT8mQ7xtY0S5XpOE' \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'G9diiAmtYL76JJXv' \
    --count '44' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 44 'ListServer' test.out

#- 45 CountServer
samples/cli/sample-apps Dsmc countServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'CountServer' test.out

#- 46 CountServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace $AB_NAMESPACE \
    --region '8BcpyAh8ec2qyKyR' \
    > test.out 2>&1
eval_tap $? 46 'CountServerDetailed' test.out

#- 47 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'ListLocalServer' test.out

#- 48 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'yFElQQIoylYhx1yB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName '9O5z7dvKlYowtMxL' \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'rT8ok3GiP8l2nJ7Q' \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'Ixlu5qjlVkKiudIT' \
    --withServer 'true' \
    --count '81' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'fpjJu65hvuey4Kb2' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'wpB1UPCwrDE5f2bF' \
    > test.out 2>&1
eval_tap $? 53 'DeleteSession' test.out

#- 54 ExportConfigV1
samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'ExportConfigV1' test.out

#- 55 ImportConfigV1
samples/cli/sample-apps Dsmc importConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 55 'ImportConfigV1' test.out

#- 56 ImageLimitClient
samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'ImageLimitClient' test.out

#- 57 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version 'tRGfa6ak0eQBedEi' \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "fabzhSm0S7eMb8fD"}' \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "j4SqDgwWLaq7eMAs", "ip": "pxy6thM6148jdTb6", "name": "MMpQbAkh0IblqBqA", "port": 88}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "QdqfmTSnNtCSTLGW", "pod_name": "jV1LvNJjFcYMbDE5"}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "ggoECSzXBpj5jhCq"}' \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'kdTwr59v53JNpaBj' \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "rOKI7xLwZY1M4xKw", "configuration": "qiqjeQqlFEjniQDQ", "deployment": "qxmU2Xo5AYlIfAzh", "game_mode": "zK9fCEjhZIWdJkEY", "matching_allies": [{"matching_parties": [{"party_attributes": {"EkdS0XuZGvHmNDY3": {}, "nimLm7TCLmfZqzbk": {}, "Dy8OgYlEoU4lbwsY": {}}, "party_id": "VRPxAL6pBqsKYZxN", "party_members": [{"user_id": "9uRoEKdvP5Hh0Bsu"}, {"user_id": "A7CdoQmkCzUvz4Ge"}, {"user_id": "wM5nr0lGl0EXo3Pq"}]}, {"party_attributes": {"MCG0jAw355yPj7fq": {}, "e8lMObiRmArMHOm4": {}, "bcOHL3wxxvn4e4hk": {}}, "party_id": "tCd9DisHFo1PU3Dy", "party_members": [{"user_id": "O0vvFv35kel6aZMg"}, {"user_id": "9PlkznOCbkIVT4RL"}, {"user_id": "68cM0kFUdqKGvX1T"}]}, {"party_attributes": {"jg2wRJI7nuYZsHiS": {}, "wuynL675aYJuXJqt": {}, "4DiEokhMfozLv5j0": {}}, "party_id": "pHtkxQ7gCoPvrDyg", "party_members": [{"user_id": "HC02J23aQ5qxepqS"}, {"user_id": "B5YXuK8pn5Y5AXlV"}, {"user_id": "fKjVCmHM0Z7G2WjE"}]}]}, {"matching_parties": [{"party_attributes": {"bBuoc6nbrmmfHUbb": {}, "IhDLvziEnXftxObX": {}, "QqiZg8otF9yiQ5fD": {}}, "party_id": "O3EzzsjWbVTlUzmJ", "party_members": [{"user_id": "Z1oshG9Spk1p6iDI"}, {"user_id": "1RKx3oW1pQIkZK0G"}, {"user_id": "8wTyuRjQvbN7qM2b"}]}, {"party_attributes": {"GSVh6WWduzR7nlv2": {}, "oQdqS2jegGOPH2pK": {}, "xxjl0WbByzU0k2ar": {}}, "party_id": "qXLIx8H9kRZQJhpR", "party_members": [{"user_id": "JdLqV0IIKHBIhDxB"}, {"user_id": "w8jkbU0pIVTDsClf"}, {"user_id": "yJetyElMhwtBpPd3"}]}, {"party_attributes": {"YGAwTKoTmp9h1xlM": {}, "urecZk3zqjCURRxE": {}, "EYnkgdnjE6vQMBqe": {}}, "party_id": "jk9vcPajp4vKqB8o", "party_members": [{"user_id": "LgzSaZk6Um7SBLf2"}, {"user_id": "PXjeDSkBzVT6vfbQ"}, {"user_id": "gYyZfLOqCC2kI61m"}]}]}, {"matching_parties": [{"party_attributes": {"yaSkvcuCO5mgiogH": {}, "NtxpJaVetHLaR9I4": {}, "5r5X2LBGfNfFY0zZ": {}}, "party_id": "DXDC1fgsXxlEShcC", "party_members": [{"user_id": "BxCfqigfOMAsZ76I"}, {"user_id": "mjABu3DHjQ9vJpBM"}, {"user_id": "Hx0EFlVRxcXLLr56"}]}, {"party_attributes": {"rbZY1s7D7ZqXP88O": {}, "82JdkC98MOOKEDUp": {}, "ZyZSuIQd9JYkQSQz": {}}, "party_id": "hdKFmhQWcvSyLveN", "party_members": [{"user_id": "7BYX94M0qdhXHkub"}, {"user_id": "p2oTuVvkXfLrVczw"}, {"user_id": "H0OMsjdEJCvpdd1F"}]}, {"party_attributes": {"8bAhpbV35uE9PZQm": {}, "c5BrTrDg4qozCTLl": {}, "qx6ou9Y1TqwyfbCb": {}}, "party_id": "cX5K6NVlLyFgwTJU", "party_members": [{"user_id": "FX3zzfUqcuul4Ve5"}, {"user_id": "r0s2ztOQigiWG4Mb"}, {"user_id": "LPXuHgbFUZWPy9id"}]}]}], "namespace": "OCiwC7kUSCT7MREo", "notification_payload": {}, "pod_name": "iZ8hTq0U5iemuPyM", "region": "JyBG3mYkmhbmPUUV", "session_id": "O9E1Tj8LtXJT7rF6"}' \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "roMIGTmHRceJHBKZ"}' \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '6938aTgaTFjPXxoQ' \
    > test.out 2>&1
eval_tap $? 65 'GetSession' test.out

#- 66 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 66 'GetDefaultProvider' test.out

#- 67 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 67 'ListProviders' test.out

#- 68 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region '0SQ0YEeMpJ75MAYV' \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE