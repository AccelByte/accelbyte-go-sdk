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
    --body '{"artifactPath": "Q7eayfCWmIRosRhz", "coreDumpEnabled": true, "image": "6CIPdxuhCIgU35ST", "imageReplicationsMap": {"SAxNQCVLV8PyeUpT": {"failure_code": "wvhvWCf6Xkh45e0u", "region": "BoJS9dWfXbV6uf97", "status": "gtGjyfXzW1ROsl4l", "uri": "TfkALhf8DSzELoqL"}, "65bt2nPO7KsjFn0x": {"failure_code": "ksAMu5MTVbNBg1h8", "region": "wW3zAyMvSf8yAcv9", "status": "t1e4Fc9v94xZ6fhs", "uri": "2YtgNmx3prQtJJA9"}, "vk3D8VzyYylwMNbw": {"failure_code": "ckI0ZNNSRZR1tWZY", "region": "eQg6hMeGL48CqFs9", "status": "hdltzuzNjHzKJ3mA", "uri": "3FzmrZCJY76qFvvP"}}, "namespace": "NLQgoFf8NKBQ6wAe", "patchVersion": "f6QcCjrGAyXBI4Yl", "persistent": true, "version": "Odv5XUFNyMEO4oCx"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "fRE8k8GJn3Cf7idC", "coreDumpEnabled": true, "dockerPath": "8Y3RcRYL35qPZrEy", "image": "gcCXiIIytiVDQvcS", "imageSize": 38, "namespace": "rapQQFhS7y7EyNPQ", "persistent": false, "ulimitFileSize": 25, "version": "iScmI841DwO6bdwW"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "yHRcMfs1WVZoTj1P", "coreDumpEnabled": false, "dockerPath": "v4pjERMJwl6sNyGd", "image": "36bzTWYEQgRgNkJe", "imageSize": 50, "namespace": "Ig1nqAILf2RSQJbB", "patchVersion": "yLIR078IdsbZnhKd", "persistent": false, "ulimitFileSize": 37, "uploaderFlag": "9j5dYTTbXdsJF8Zr", "version": "70qM5RDzS6AQwHkg"}' \
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
    --body '{"claim_timeout": 100, "creation_timeout": 3, "default_version": "6m7vvo3iBWzrAhBL", "port": 38, "ports": {"WiQFc9ifvU8oJngP": 50, "1LQ7lmWCr9kZnmFk": 56, "XslQyTWH14Cln68o": 65}, "protocol": "JMvQNsxA7Y2KJ7zL", "providers": ["LADJ3FxUPLQXbqQV", "DC77c5bfelaM8xbQ", "OoUO9NDRkdzJMr6D"], "session_timeout": 70, "unreachable_timeout": 88}' \
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
    --body '{"claim_timeout": 60, "creation_timeout": 46, "default_version": "bEtgl2m7h0oH8HNC", "port": 79, "protocol": "JJ0V4PyhcQhzlZZ7", "providers": ["pO35BuG6V7ZFpIf5", "Se2xZOqpJVAjkETd", "k9hNeLhL8JVgy6YO"], "session_timeout": 49, "unreachable_timeout": 71}' \
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
    --name 'yWHDDbXyqtKzXdpQ' \
    --count '72' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'aGMuuW4CWFsmcj0l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'VyS5Z23P8MADokpy' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 55, "buffer_percent": 21, "configuration": "ZAYnKojgJgldpBmB", "enable_region_overrides": true, "extendable_session": false, "game_version": "KJwrpcpmtD4wZxhI", "max_count": 17, "min_count": 56, "overrides": {"gQ75miQCLzsogI02": {"buffer_count": 76, "buffer_percent": 51, "configuration": "CXjZUDVuauXOJpmi", "enable_region_overrides": false, "extendable_session": true, "game_version": "saXBhjXRaplzgXJD", "max_count": 92, "min_count": 47, "name": "V12YQirDziiu5A9F", "region_overrides": {"Xq17HvUGsjbT3DNH": {"buffer_count": 55, "buffer_percent": 39, "max_count": 25, "min_count": 95, "name": "cwPXn7RijSORf9da", "unlimited": true, "use_buffer_percent": false}, "s27Y91sIURMAz2aj": {"buffer_count": 16, "buffer_percent": 78, "max_count": 47, "min_count": 7, "name": "rWaRJhjVcmhA8hzX", "unlimited": true, "use_buffer_percent": false}, "xGcr9Frj1okaZO7H": {"buffer_count": 94, "buffer_percent": 86, "max_count": 87, "min_count": 15, "name": "WTJflnqsbVf1gNrj", "unlimited": true, "use_buffer_percent": true}}, "regions": ["twtUwVGRYpPuGUf8", "axv8PAiiwvHa4rp2", "68dOqTyBJSwKH9Fw"], "session_timeout": 54, "unlimited": true, "use_buffer_percent": true}, "aRjyb0jVdittGDas": {"buffer_count": 61, "buffer_percent": 62, "configuration": "13eNQE6wu7eC5IW6", "enable_region_overrides": false, "extendable_session": false, "game_version": "hlQxG00oMLTptBz6", "max_count": 70, "min_count": 1, "name": "iBAXOxvM7fEKvs6E", "region_overrides": {"VO4Xe4zLtRJZxjKZ": {"buffer_count": 24, "buffer_percent": 56, "max_count": 24, "min_count": 29, "name": "51Zfb3h7WjYdcZsZ", "unlimited": true, "use_buffer_percent": true}, "btLnYNMmhmvRH0AT": {"buffer_count": 83, "buffer_percent": 12, "max_count": 44, "min_count": 68, "name": "Zdyu3oY03ljfOiBe", "unlimited": false, "use_buffer_percent": false}, "ILBzmCiKMGJiLl0t": {"buffer_count": 23, "buffer_percent": 61, "max_count": 78, "min_count": 13, "name": "Jk5jjdcfhTGqiw6H", "unlimited": true, "use_buffer_percent": false}}, "regions": ["sfhI7pVEci69jBnL", "kmFqr4C09utbMG2p", "bZOJVjL9OBYN6giy"], "session_timeout": 80, "unlimited": false, "use_buffer_percent": true}, "15SLd6ycbWi2J3JW": {"buffer_count": 19, "buffer_percent": 56, "configuration": "MXr5Kv4Bj5tYiWKj", "enable_region_overrides": false, "extendable_session": true, "game_version": "e5dH1vjNTg4Avvd1", "max_count": 93, "min_count": 92, "name": "idPK30VoWid0lIWI", "region_overrides": {"Y7Z7Voq3mTnNYBN6": {"buffer_count": 83, "buffer_percent": 87, "max_count": 93, "min_count": 85, "name": "JSYDmCFo00U9vNsb", "unlimited": true, "use_buffer_percent": true}, "y8Ej1ZQaUNDNM8Ib": {"buffer_count": 91, "buffer_percent": 52, "max_count": 20, "min_count": 61, "name": "g5fGavGMZWaSMFyd", "unlimited": true, "use_buffer_percent": true}, "SRgv1GWkuVGz0MNh": {"buffer_count": 55, "buffer_percent": 16, "max_count": 39, "min_count": 60, "name": "loO6lUznBemONinD", "unlimited": false, "use_buffer_percent": false}}, "regions": ["JYoKY3nyvLC8Z5qp", "NYucimMLYk3Sz0uo", "6n8EuzSkpbKcs7Sl"], "session_timeout": 19, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"zDW4yFntCCLCWxaz": {"buffer_count": 53, "buffer_percent": 54, "max_count": 49, "min_count": 64, "name": "oX1EzyN8uFOGRZYq", "unlimited": true, "use_buffer_percent": false}, "DSrP1XPrqpaZpu6R": {"buffer_count": 9, "buffer_percent": 7, "max_count": 82, "min_count": 62, "name": "wrSTFLC0xthrWIst", "unlimited": true, "use_buffer_percent": true}, "CkEzXZD5Da0xHNzI": {"buffer_count": 94, "buffer_percent": 32, "max_count": 10, "min_count": 40, "name": "2HwPutrgjSozfvOs", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Kn138WacJ2pfiPds", "4VO6XsfNstZTcmwP", "imMzqDiMJU0gMlNa"], "session_timeout": 69, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'cmRIc618xGyq8dnq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment '4CCakeUhVHeIaKxz' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 89, "buffer_percent": 35, "configuration": "QbadHrmBJLEo9RsB", "enable_region_overrides": true, "extendable_session": true, "game_version": "A5lsjFs4WGM3fuyF", "max_count": 88, "min_count": 35, "regions": ["4DMKI6962laQSMpL", "meijecFCWTsGrSpi", "Bo64GPY9wtsYrx0N"], "session_timeout": 86, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'TxbZFv9zIEEyvsKg' \
    --namespace $AB_NAMESPACE \
    --region 'vvZyezqVX2m4Jfr4' \
    --body '{"buffer_count": 9, "buffer_percent": 12, "max_count": 68, "min_count": 18, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'EPAj6eUmeOOPVOCj' \
    --namespace $AB_NAMESPACE \
    --region 'DbF9KdDXlekeR3mw' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment '91QZj3r3VAKBUTKy' \
    --namespace $AB_NAMESPACE \
    --region '26459Iy5LKIljgoo' \
    --body '{"buffer_count": 25, "buffer_percent": 36, "max_count": 50, "min_count": 21, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'gww4l7dJOTlSxVNU' \
    --namespace $AB_NAMESPACE \
    --version 'HmUyTPrUcGMzz78D' \
    --body '{"buffer_count": 26, "buffer_percent": 86, "configuration": "cBIg7za2efTedePn", "enable_region_overrides": false, "extendable_session": false, "game_version": "ZPdOQ0V241AXtEFy", "max_count": 41, "min_count": 37, "region_overrides": {"2A2OT1iFjbANq9JW": {"buffer_count": 100, "buffer_percent": 17, "max_count": 61, "min_count": 84, "name": "60cSDc7ak6Ej6Xun", "unlimited": true, "use_buffer_percent": true}, "OFtJUkBoLRi5sepU": {"buffer_count": 58, "buffer_percent": 100, "max_count": 47, "min_count": 96, "name": "IAjtubmRU6A6R48l", "unlimited": false, "use_buffer_percent": false}, "DwRUsmtyNJ3I20cm": {"buffer_count": 11, "buffer_percent": 15, "max_count": 82, "min_count": 85, "name": "bPG3zxhO8OGrR18t", "unlimited": false, "use_buffer_percent": false}}, "regions": ["yj0IBytUHwj847Rg", "BcMbsoBqXPgoiKs5", "h7J8C8lJDWErgdKW"], "session_timeout": 67, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'he83dDgC8Yk0aJFE' \
    --namespace $AB_NAMESPACE \
    --version 'BfR2ia1I4yTxQLTG' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'ZKYTwcn8FlgZTh18' \
    --namespace $AB_NAMESPACE \
    --version '3sGHaoJzsF9DtxY1' \
    --body '{"buffer_count": 23, "buffer_percent": 98, "configuration": "VVQV3bBVwE63Apif", "enable_region_overrides": true, "game_version": "ebEgDu4mdwT1sK1q", "max_count": 56, "min_count": 99, "regions": ["E7nJUvXMK32kYaMl", "T87ohk70A5H7RKKX", "5DPXk8JnUb6bozSY"], "session_timeout": 25, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'tFP2Ze4CT5OQ3mSW' \
    --namespace $AB_NAMESPACE \
    --region '8tn4wsJJSg6hnsey' \
    --version '0eYNW1swWEdZohba' \
    --body '{"buffer_count": 62, "buffer_percent": 18, "max_count": 47, "min_count": 81, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'e7duvaubEIC5vHDg' \
    --namespace $AB_NAMESPACE \
    --region 'OF8jTnkrikqLxUaJ' \
    --version 'VWcymmnHxml7ysaO' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'c6FX7aQnkMutgW0E' \
    --namespace $AB_NAMESPACE \
    --region '61wzpv0b54teJHro' \
    --version 'stbT6UXLKkquF7LG' \
    --body '{"buffer_count": 19, "buffer_percent": 72, "max_count": 41, "min_count": 51, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '29' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'CQdzH9u7f3rcViYD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'NzMo5SMBk7W86RSK' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 33, "mem_limit": 27, "params": "9ociB2CmnwmWrqBs"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'VUmIwwKnoPFUF9OW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'gMYpy0VAAf0vS110' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 99, "mem_limit": 56, "name": "A9cuDAwZXZjMhyQK", "params": "NGeOHBWsh0U4Stcz"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '69uGxxNBnAJysafw' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 92}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'GMtGIDaqX4xFob7M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'BKCMolrwcVSsL5oC' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "VM5ujtZ2lLkUEWpA", "port": 52}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'D4KpDmD8q6g3YFOl' \
    --sortBy 'version' \
    --sortDirection 'desc' \
    --count '40' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'O4Li0GuyAEJFiPTd' \
    --version '3fk6mTYJC8XOyXoI' \
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
    --imageURI 'qU5xnOk4qY4G45dM' \
    --version '7FIJCipZW6TqeBDT' \
    --versionPatch 'RUiBmqOYofZ1V1rM' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'VjgczZtGtb9GQ0eX' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'SNlBc7elaVdpbvQA' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version '0NIhI9fqQBzerpzY' \
    --versionPatch 'yPEvBgBWh62TFR0V' \
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
    --region 'QjSmhCRYhzotskQD' \
    --count '41' \
    --offset '17' \
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
    --region 'RcUUMbgRpIBzs7GO' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'P8owP6ycK8GxRqgq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'EHqTSBPuyxIAGRLo' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName '5J23P9KvP7ArZKH7' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'jWVmDWlTEVlahqvK' \
    --withServer 'false' \
    --count '5' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'DqPYW4mHZEF8IPeW' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Fa5E07q9FxmqwneN' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "vYqXdezP7GRevTer", "repository": "oIneSyK2DjwX3Ap6"}' \
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
    --name '1vs79XbaJBbZrpen' \
    --count '22' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'BfuNKiBKYKA06b6o' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 41, "buffer_percent": 79, "configuration": "L3SxPMjE1DEwreq0", "enable_region_overrides": false, "extendable_session": true, "game_version": "DJ1tjNNGT7GtQ5gE", "max_count": 13, "min_count": 72, "overrides": {"5L8atK1p2lvsrU3g": {"buffer_count": 84, "buffer_percent": 18, "configuration": "iIV5RKtumjQ23FBm", "enable_region_overrides": false, "extendable_session": true, "game_version": "Qvv0a2klvo8NoA1g", "max_count": 91, "min_count": 86, "name": "ABEaLSDpVC88jLju", "region_overrides": {"KPVz62GtWlCes4Gg": {"buffer_count": 76, "buffer_percent": 40, "max_count": 53, "min_count": 80, "name": "MYMAYSPKCjzaavNM", "unlimited": false, "use_buffer_percent": true}, "GEIPPqso82CieEjp": {"buffer_count": 15, "buffer_percent": 53, "max_count": 80, "min_count": 15, "name": "7v6Cg0IBsjdaId8c", "unlimited": false, "use_buffer_percent": true}, "s4DyAI8NUQqXookA": {"buffer_count": 22, "buffer_percent": 70, "max_count": 90, "min_count": 65, "name": "SlDCxn51kBVZ3OAK", "unlimited": false, "use_buffer_percent": false}}, "regions": ["ZDJ89BqxHNTqgUKl", "jPMv5VNROzfTiI8S", "VnrveDLQNGkxf3LH"], "session_timeout": 61, "unlimited": false, "use_buffer_percent": true}, "MdGH2wuVY1EVw9gx": {"buffer_count": 22, "buffer_percent": 8, "configuration": "PY20thSFfC12yc1l", "enable_region_overrides": false, "extendable_session": true, "game_version": "wtAoz5TiqKBaLJA2", "max_count": 11, "min_count": 46, "name": "CLt4f5q5pZ5Q6IGA", "region_overrides": {"UokVU5MBpXWFifHC": {"buffer_count": 47, "buffer_percent": 33, "max_count": 56, "min_count": 3, "name": "Ec3kPIPLrE21SuNk", "unlimited": false, "use_buffer_percent": false}, "uVVyRL01JDS3Mmdy": {"buffer_count": 31, "buffer_percent": 63, "max_count": 98, "min_count": 14, "name": "v13fvoPHhKxMJCOD", "unlimited": false, "use_buffer_percent": false}, "Pz2DpHZKOaQDR4S6": {"buffer_count": 67, "buffer_percent": 52, "max_count": 32, "min_count": 48, "name": "PQ2IeCp67y7LEdZT", "unlimited": true, "use_buffer_percent": true}}, "regions": ["JophZZYJwkjvj8G4", "HQAjt0FLkhUAYhbs", "RAi2lYElXbVVfGHw"], "session_timeout": 55, "unlimited": true, "use_buffer_percent": true}, "reCGrcTDk6mF4BQk": {"buffer_count": 34, "buffer_percent": 86, "configuration": "KiqmJSrlBT7CQTBe", "enable_region_overrides": true, "extendable_session": true, "game_version": "22dtoEYGIxJt9bUv", "max_count": 32, "min_count": 39, "name": "Ar8huisu5K8jwgbF", "region_overrides": {"YJdIFKWFPmaWbPIf": {"buffer_count": 65, "buffer_percent": 75, "max_count": 19, "min_count": 98, "name": "XE2GgfFidzlhQ6XF", "unlimited": true, "use_buffer_percent": true}, "2VUxWVYj5s6yh1ng": {"buffer_count": 77, "buffer_percent": 84, "max_count": 22, "min_count": 40, "name": "eKPG8MGVGwHaLyzj", "unlimited": true, "use_buffer_percent": true}, "DAfpjrdyC0COC4cC": {"buffer_count": 37, "buffer_percent": 42, "max_count": 37, "min_count": 40, "name": "1Vp7jEpI40BKi5xl", "unlimited": true, "use_buffer_percent": true}}, "regions": ["LeppHSriJOTOgPSb", "2XIClABccXGBgJcv", "2YfQRnVv2E4RTjdf"], "session_timeout": 82, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"797TTuY7YQgeMW9P": {"buffer_count": 42, "buffer_percent": 67, "max_count": 23, "min_count": 25, "name": "eJMBl8Pqe5RPAORn", "unlimited": true, "use_buffer_percent": false}, "DnuEazLaq3R1Ued3": {"buffer_count": 22, "buffer_percent": 98, "max_count": 2, "min_count": 15, "name": "xWWrCxQEo1DiuSGY", "unlimited": true, "use_buffer_percent": false}, "0cMkBGihHoNFZAC3": {"buffer_count": 76, "buffer_percent": 47, "max_count": 87, "min_count": 15, "name": "uvTM0Og11kJmGGcM", "unlimited": false, "use_buffer_percent": true}}, "regions": ["vC8CvW5KvAYiQMrI", "snbYad1Oep0imxs7", "Go9SsUWeJFV8b8QZ"], "session_timeout": 55, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'my4d6HzASyKJLtxd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '94' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'oGBDo6Yb4YDkW1LU' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 66, "mem_limit": 80, "params": "QOUR3TF03CUNaBXI"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'BR830thNxhspTpH4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '20' \
    --offset '87' \
    --q 'sOSKvkOgVhPvQUZp' \
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
    --version '8xkYhEYuhRGn2EuI' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'o9auUd5nvNelsPpD' \
    --count '24' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "hLfdPyQHS2m0fG5h"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "CraYdqz5OpjTXwgr"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "4MV9Jbz24PbwFW9v", "ip": "6OlEDEVoJPKN63u2", "name": "zXH5J9Ssw4W12aBL", "port": 95}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "vsX72HjSdmRR7Rlz", "pod_name": "qLEZd5DZT8msXWUc"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "E9GFAYvhI3VykvC4"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'wDsruWknbQxKsUEB' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'oAKA5PMaTitELRbU' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "Emuj9CGW9AiEb2b6", "configuration": "IK5UyBVtyciIdZ2X", "deployment": "oezgW6v38cckZAK6", "game_mode": "lmBB9QqICiTABagp", "matching_allies": [{"matching_parties": [{"party_attributes": {"Z2mSfjUHU9IZpWe6": {}, "JFqwdbUvj1iqA79E": {}, "b3IXaUXHZxGglHin": {}}, "party_id": "tCfFpeMw2B6zI5rG", "party_members": [{"user_id": "A3EOcdX2Eww1Nmtq"}, {"user_id": "kUb8nXiLNTh7cfrl"}, {"user_id": "TgvyS9gMIXYtChs5"}]}, {"party_attributes": {"gyn3R03EV9khgCpI": {}, "aEsx6CMdDs9NMwJq": {}, "uhsUHfWiujCV4W4b": {}}, "party_id": "vAj0hOc9FroylJLF", "party_members": [{"user_id": "9ZZkj189xJdzN3lc"}, {"user_id": "0jCkvGd8W1rjfHEl"}, {"user_id": "53ksOybeNjpBn70T"}]}, {"party_attributes": {"iczveI0NpfzIAtCX": {}, "lNRVQyYFjYbhrRf0": {}, "ceYe9RgQT6hUvKYg": {}}, "party_id": "rTQnr8nSjK4fMFtp", "party_members": [{"user_id": "t9jvHJf26bmrGA0r"}, {"user_id": "bayGQzyWCnpVGusS"}, {"user_id": "0MCAz5Ef0gZ0fxww"}]}]}, {"matching_parties": [{"party_attributes": {"8jUNCqhFwL97VXXQ": {}, "9nRrL2vCwS4nAmqc": {}, "khqn9RVb3m2DqcYu": {}}, "party_id": "6c7lkn4idp5QeEf2", "party_members": [{"user_id": "aaYs4djexzShZn8q"}, {"user_id": "OFa4AcxGwzWxL4ry"}, {"user_id": "264leaV4xzNJ5RUF"}]}, {"party_attributes": {"WUDUQALDYecxxKFa": {}, "NC18DkCq4DjhpVlM": {}, "ps4R0vbAsCSo9QHh": {}}, "party_id": "mDgdJjI22168KP00", "party_members": [{"user_id": "7j8CIGWMyQZ5HmSN"}, {"user_id": "uFVBTlNe6FhaP4k1"}, {"user_id": "kTDa5Ki0pwvAomhK"}]}, {"party_attributes": {"hCNCd4aBZT38YiIr": {}, "doNHKlJIz6oMG9v3": {}, "BLbnFJkKK2dZBX7f": {}}, "party_id": "HYiKDRVhEJHLIKqT", "party_members": [{"user_id": "R1q01szu2dlMXIzs"}, {"user_id": "GxzbQIpVu3jdgclE"}, {"user_id": "bTd6oJiPA4xkgIoV"}]}]}, {"matching_parties": [{"party_attributes": {"7q7vPeWSVXakKTMb": {}, "J3C9M4zUZr3VNDP2": {}, "zHn8NFIF2ImLYTcV": {}}, "party_id": "HpsF5fxsLiV1C0oV", "party_members": [{"user_id": "udtcO9rgC5aWqNas"}, {"user_id": "f17SydNIC3sBbdvs"}, {"user_id": "oUbbL8LdG2SLHaGd"}]}, {"party_attributes": {"yVtcCUB6HJCkaIA6": {}, "AHcYg9lDExgA9BVG": {}, "tI6yOU6qByDskntl": {}}, "party_id": "mWN9bSePHKM4wBbe", "party_members": [{"user_id": "VYLJGz9Quhi4Jyku"}, {"user_id": "T4syLsQ2aKRBnMSg"}, {"user_id": "h8ordIyRqFApfPG4"}]}, {"party_attributes": {"nKFtV9STHUJ3Xyjr": {}, "Ov9z1PL2UgSdipwf": {}, "7wLyT42sw730Sw8D": {}}, "party_id": "4rmtaHRq0TQ7MGvs", "party_members": [{"user_id": "DlwS3ZQburFCNxyj"}, {"user_id": "QIMEnsXdn4eTzwjP"}, {"user_id": "LAKvYcTIzIZ1Vxsf"}]}]}], "namespace": "8JbGXyRPfVlUEL5v", "notification_payload": {}, "pod_name": "OwdXMCHFofW6F9oQ", "region": "5ZeExqSoiIL9m3ld", "session_id": "obuRhy4Ijb6Tk7JW"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "6ICjtd4QejSp6VRi"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Mc01UgCHEJSmT2Cc' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'P0CmCNjhsaSN3QFS' \
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
    --region 'F5DlM5DMAG3HNQUz' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE