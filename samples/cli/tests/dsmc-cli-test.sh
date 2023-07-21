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
    --body '{"artifactPath": "W2SqYPkyrDxhkiRp", "image": "1t4U8wnuKamtIZsa", "namespace": "ATnWIwp84kOUX8P6", "persistent": false, "version": "ywlnYzpsbwPTcQmF"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "O59yO6nnyDeU4oiQ", "dockerPath": "4qqLmlkDJAjHNqug", "image": "EJL9rsJdGqLO79nv", "imageSize": 71, "namespace": "oh6ngnn77JOHUG1H", "persistent": false, "version": "lO3yrDP9q7tDyVud"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "csMb0wqSMvvHU09K", "dockerPath": "OgzJ3IfrU3WLSue0", "image": "wZT6PEBkyaqnAKPR", "imageSize": 40, "namespace": "ah3oeBf3dNxekcus", "patchVersion": "51hMFG5JcGwRGcX1", "persistent": true, "uploaderFlags": [{"name": "rrAndjGVQC1poSJe", "shorthand": "eAW8GUTD1fLDFFgz", "value": "SbQoCSyQph2L2SEC"}, {"name": "7HHvHrUn85REu9u8", "shorthand": "YbWNHjjjH4hBgKFP", "value": "lcnzep5QxQGmc8Vw"}, {"name": "s9iPWNlp5HUp3izK", "shorthand": "b87BT3B0nJDIEtU2", "value": "8kXU7ldBjJaz7Xin"}], "version": "NRtfKLVei7nDyVmD"}' \
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
    --body '{"claim_timeout": 67, "creation_timeout": 8, "default_version": "zIcYZ9vO4Z4klK0n", "port": 47, "ports": {"J1VhTVpytHV4pLzt": 30, "iHzFfl4qfzk2GMaS": 22, "R4BsZ7OKSnrzdNqw": 33}, "protocol": "dCkDJizgcMeGAgo6", "providers": ["Udwv9qHpKKsaOUKC", "7gWU1D9e8zXbOtuj", "UO2N2hqPDOipj3Lh"], "session_timeout": 30, "unreachable_timeout": 58}' \
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
    --body '{"claim_timeout": 34, "creation_timeout": 35, "default_version": "YVPF93UWpDuvLEuk", "port": 47, "protocol": "7yYEBUo0d6qbe9Kx", "providers": ["Fv2elCOzJCfLRiy1", "RGwjPZYfQszKvnQk", "Yjs6kkTGw1XuVpv0"], "session_timeout": 10, "unreachable_timeout": 41}' \
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
    --name 'wuRlClFJMBIpmMUl' \
    --count '19' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'QmdCDgKEwMIHGbpu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'sX3trDVw00Ic6hgU' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 59, "buffer_percent": 29, "configuration": "4agDtpBxcqIhrOv9", "enable_region_overrides": false, "extendable_session": true, "game_version": "ZeJ9R8gOZkbkoqJc", "max_count": 47, "min_count": 42, "overrides": {"FqEPZGpQmdT6pKzf": {"buffer_count": 23, "buffer_percent": 100, "configuration": "QlsGFUAxYZvFKG1w", "enable_region_overrides": false, "extendable_session": true, "game_version": "nlPTfzuLOrC1O2xw", "max_count": 61, "min_count": 16, "name": "IApwse5M7UCPf3Ho", "region_overrides": {"evZKocmEkfdHHero": {"buffer_count": 81, "buffer_percent": 4, "max_count": 36, "min_count": 25, "name": "DvYOm5mHLAo432ni", "unlimited": true, "use_buffer_percent": true}, "WbUEtoJ8VZDt110T": {"buffer_count": 80, "buffer_percent": 17, "max_count": 32, "min_count": 28, "name": "jyL9fAV5H9uuSfef", "unlimited": true, "use_buffer_percent": true}, "uWGCAwHnJm5swDLT": {"buffer_count": 39, "buffer_percent": 66, "max_count": 13, "min_count": 93, "name": "0Owdg9OpqF3zDJXX", "unlimited": false, "use_buffer_percent": true}}, "regions": ["ZrLzCMSqCC0r9KGt", "P6QaBqOXhaiqYZXV", "TqfuTBcxdlbQ6pW8"], "session_timeout": 42, "unlimited": false, "use_buffer_percent": true}, "hj52wXV8TjcUZyUj": {"buffer_count": 51, "buffer_percent": 28, "configuration": "xyE4dNpMeUh1DbyZ", "enable_region_overrides": true, "extendable_session": true, "game_version": "dkL74rxkQd2kSPCF", "max_count": 69, "min_count": 36, "name": "prmmLytk2qbPBqr4", "region_overrides": {"jdHUnVCAOge9wqTD": {"buffer_count": 60, "buffer_percent": 11, "max_count": 60, "min_count": 72, "name": "5wGpuYDqUK00C3yZ", "unlimited": false, "use_buffer_percent": true}, "as04qEhPAZDzMtr4": {"buffer_count": 37, "buffer_percent": 4, "max_count": 68, "min_count": 2, "name": "uEHy4TCIRXeEX83k", "unlimited": true, "use_buffer_percent": true}, "qY1uHUBCuwu83WMM": {"buffer_count": 60, "buffer_percent": 35, "max_count": 89, "min_count": 48, "name": "0lXpIQDOfJCi5shB", "unlimited": true, "use_buffer_percent": false}}, "regions": ["A4w18wX4OZReO9jR", "zDkJkF9lvoa4tXUX", "BkLBbb2hcO05va1I"], "session_timeout": 8, "unlimited": true, "use_buffer_percent": true}, "iqFdafqamZeBjMvK": {"buffer_count": 89, "buffer_percent": 97, "configuration": "rMg31Mcdp50GyX9E", "enable_region_overrides": true, "extendable_session": false, "game_version": "STo9c37vUUu7Yvjd", "max_count": 25, "min_count": 69, "name": "H2Syy9Tkz8nSepU6", "region_overrides": {"LTQPvWjPGsGZ1uxZ": {"buffer_count": 99, "buffer_percent": 22, "max_count": 51, "min_count": 1, "name": "bXDmg951rqngdB3d", "unlimited": false, "use_buffer_percent": true}, "I6BRPfFEvZhUzA9K": {"buffer_count": 92, "buffer_percent": 42, "max_count": 96, "min_count": 11, "name": "Nob4bvQokNM92HR8", "unlimited": true, "use_buffer_percent": true}, "CIcaWAKyiClHhqsz": {"buffer_count": 90, "buffer_percent": 34, "max_count": 49, "min_count": 73, "name": "ZSvhT64sOhDHvSS7", "unlimited": false, "use_buffer_percent": true}}, "regions": ["352k8VGNjHU5St0e", "oeOVINrA881fuyND", "10eSwbIHJW0FR0Lk"], "session_timeout": 13, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"Pj6WPDDBBFwXZ5g5": {"buffer_count": 52, "buffer_percent": 94, "max_count": 73, "min_count": 26, "name": "KH1lsT6plgxKSihx", "unlimited": true, "use_buffer_percent": true}, "xV9ZhE3AMTH0EdeR": {"buffer_count": 5, "buffer_percent": 42, "max_count": 56, "min_count": 94, "name": "a8Fn6VzISCF0Vm1S", "unlimited": false, "use_buffer_percent": false}, "8OfQxU3wLshNF3Qo": {"buffer_count": 26, "buffer_percent": 78, "max_count": 55, "min_count": 60, "name": "oJFuD5rFuAkQhtM0", "unlimited": false, "use_buffer_percent": true}}, "regions": ["ON4RFlIgUDLA7NHk", "3ZCh6A0LikHZ6hXu", "Jc8yDzU3zyBRkwea"], "session_timeout": 46, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'R9HmYF2ifAwLqU7V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'aMP2WOdj5ex3OD6A' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 72, "buffer_percent": 45, "configuration": "XQjTV5pGV4AcBwrh", "enable_region_overrides": true, "extendable_session": true, "game_version": "gKaKOXX430cz5h30", "max_count": 21, "min_count": 96, "regions": ["9w2BYXcfyFY8Lbvw", "7Z65lSD9H93WzKyU", "jhEfp05hssFWGpwD"], "session_timeout": 24, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'vL8TL2AMnido3dnC' \
    --namespace $AB_NAMESPACE \
    --region 'VuLiEN6TAJCow21t' \
    --body '{"buffer_count": 31, "buffer_percent": 24, "max_count": 55, "min_count": 80, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment '1NuJP8QF7dU5NSwD' \
    --namespace $AB_NAMESPACE \
    --region '7SFTW6vrvm62mOb1' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'PSdI2vSsT9iPiINd' \
    --namespace $AB_NAMESPACE \
    --region 'xF59QBdVplN4PST8' \
    --body '{"buffer_count": 64, "buffer_percent": 89, "max_count": 38, "min_count": 72, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment '8zrKYErVqcNWefrp' \
    --namespace $AB_NAMESPACE \
    --version 'QbegnJ24RK3M9eoB' \
    --body '{"buffer_count": 20, "buffer_percent": 77, "configuration": "4PgGBsJ4Yph1TSsF", "enable_region_overrides": false, "extendable_session": false, "game_version": "K0Vrdhw9zQns5x7L", "max_count": 26, "min_count": 82, "region_overrides": {"OZql5YOkHt36e7aH": {"buffer_count": 22, "buffer_percent": 8, "max_count": 94, "min_count": 61, "name": "zGkYGGu85AR6q5QT", "unlimited": false, "use_buffer_percent": true}, "FOkPxN8ouxDLiECf": {"buffer_count": 16, "buffer_percent": 37, "max_count": 73, "min_count": 36, "name": "ghHIAAdEZ33FQVGn", "unlimited": false, "use_buffer_percent": false}, "BY5foPn4V1NMpCvy": {"buffer_count": 57, "buffer_percent": 84, "max_count": 6, "min_count": 66, "name": "FkwzRABvDJGl7bqX", "unlimited": true, "use_buffer_percent": true}}, "regions": ["DflGn3Li61Xy4kUT", "9Us1OrigPcDTu10Z", "CaNkHDWP0VaaQZFX"], "session_timeout": 69, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment '0ALjIz5BRtjvi6d1' \
    --namespace $AB_NAMESPACE \
    --version 'xT40bdeCG2EUc7JR' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'AgWHvRyLQYXlH0X5' \
    --namespace $AB_NAMESPACE \
    --version 'lSLymVmL3KGm7kTs' \
    --body '{"buffer_count": 83, "buffer_percent": 21, "configuration": "YrB0hZLX3JXp1VZB", "enable_region_overrides": false, "game_version": "yxuBlENnODPa1qSQ", "max_count": 6, "min_count": 76, "regions": ["B51pKdhqAU1PowGP", "6qf2u75kAjKFRNka", "q2Vd9oJCQ1JmKRAW"], "session_timeout": 50, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'iWIVXixEauOTWpVo' \
    --namespace $AB_NAMESPACE \
    --region 'Rs6uqwJcLVtqcTV1' \
    --version '2G8B74JH2iJFF143' \
    --body '{"buffer_count": 1, "buffer_percent": 33, "max_count": 79, "min_count": 96, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment '7pFBBkgAKoCBr8Eq' \
    --namespace $AB_NAMESPACE \
    --region 'dHUcyoeNIIBuWlgd' \
    --version 'xz42IeRqT9Axqsp2' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'N4bV0deipALNcYhE' \
    --namespace $AB_NAMESPACE \
    --region 'r88zxZO2yxvw0tQg' \
    --version 'wzxGaTFVEpjYbjw3' \
    --body '{"buffer_count": 18, "buffer_percent": 72, "max_count": 91, "min_count": 1, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '51' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name '3Ua5DsTi7HYt3a5a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '9RPjNk06bguhKCxt' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 34, "mem_limit": 18, "params": "yHY79XSF58elduwq"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name '8LLxWZcXPZbKPrYg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'NlzTySUX5W1H2nsL' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 49, "mem_limit": 70, "name": "Vt5CDdqQCwbdDKiU", "params": "fHlagtErPagkhkco"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'Wiv4dM7Nuujh8qgT' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 31}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '14XEprh4TisDtQNA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name '2rTwFQiOb7wVK94C' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "zpKUsuCQ7rVipaoO", "port": 18}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'Fp8SDs9TLj2ZuztS' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    --count '42' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'z50lSeStid7uLq5a' \
    --version 'YRSqJti8Hc6wqT2n' \
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
    --imageURI '6GJ6UtR3W7HpPKo8' \
    --version 'ew1C15WCz7R8Bcau' \
    --versionPatch '9DxBP4O0G7svamWO' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'fw37ZGewqmKRqqCr' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'm6FjXsRRUoWLD6xX' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'ji1jcL1mLrSN9Iyf' \
    --versionPatch 'gNsMEwoJ60mAa4W9' \
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
    --region '4VfGbAWOFhS8YYMu' \
    --count '77' \
    --offset '85' \
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
    --region 'jnLPZITERoFIJV6s' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'Bq36CiO8maYQhEiQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'C1nOqxtoKLQjNXUW' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'iU8LgKRzG9bQUVcD' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'ZDaLhioVFjT8Av8U' \
    --withServer 'false' \
    --count '93' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'e82C0lX8y2frCBU9' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'INoDrrQQxwVqmDX1' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "bwD7zOXARAeZ5aSH", "repository": "N0Q84Fb02NF5XInR"}' \
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
    --name 'xZMJFXmjsgMebPrB' \
    --count '48' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'H0tGIB4uF3lltzKq' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 61, "buffer_percent": 87, "configuration": "mB1uuWuWpV8uV26A", "enable_region_overrides": true, "extendable_session": true, "game_version": "jUSTDmKZn3Sq3W4v", "max_count": 19, "min_count": 65, "overrides": {"kWcEubz8XpAjX3sr": {"buffer_count": 11, "buffer_percent": 78, "configuration": "Q6P7ccA6hYEKfKVl", "enable_region_overrides": false, "extendable_session": false, "game_version": "cyyzlvXL2X4p2kzu", "max_count": 100, "min_count": 95, "name": "sR4MJ3CeYlqeqJ8U", "region_overrides": {"hLcXTKLbBjrxwLhj": {"buffer_count": 58, "buffer_percent": 92, "max_count": 81, "min_count": 36, "name": "cIAOaQqVdRZ3ut5s", "unlimited": false, "use_buffer_percent": false}, "pIZLtFPsu1mCCj0Y": {"buffer_count": 70, "buffer_percent": 47, "max_count": 55, "min_count": 37, "name": "3ZR27poOU2DRXpGr", "unlimited": true, "use_buffer_percent": true}, "rymTSbCoJhxnA0D0": {"buffer_count": 21, "buffer_percent": 43, "max_count": 78, "min_count": 45, "name": "opsWJaGy5lDsbX7C", "unlimited": false, "use_buffer_percent": true}}, "regions": ["uUp2EdCyLG1SD7fd", "vSZpcPQDaosvR0AB", "ahWTzATGs7m1MowP"], "session_timeout": 76, "unlimited": true, "use_buffer_percent": true}, "nLVUunzexLPEcpaV": {"buffer_count": 67, "buffer_percent": 15, "configuration": "9xaiCmchcwNDkJL6", "enable_region_overrides": true, "extendable_session": false, "game_version": "Lc1FMSSfK3AgyLVQ", "max_count": 54, "min_count": 58, "name": "yukvVYvG3Btx3var", "region_overrides": {"JJffALAr0chuRwL7": {"buffer_count": 71, "buffer_percent": 72, "max_count": 72, "min_count": 6, "name": "eKB0ETV57vCMhOri", "unlimited": true, "use_buffer_percent": true}, "TattlHXNLUUQDanL": {"buffer_count": 15, "buffer_percent": 14, "max_count": 58, "min_count": 83, "name": "Ld9ch0eHycNAGY7o", "unlimited": true, "use_buffer_percent": false}, "qTN2k4JzYiAvGdGQ": {"buffer_count": 31, "buffer_percent": 53, "max_count": 25, "min_count": 37, "name": "hu9Dt68UkgrfhiQI", "unlimited": true, "use_buffer_percent": false}}, "regions": ["0DxL4toXJLjgRNnP", "HvbrNTMfKpqEhKRv", "zympKbcbNIsk89qp"], "session_timeout": 26, "unlimited": false, "use_buffer_percent": true}, "50kplEtTKNGwZhRi": {"buffer_count": 36, "buffer_percent": 13, "configuration": "1mbSIxbs4InjqHAp", "enable_region_overrides": true, "extendable_session": false, "game_version": "HZjCbB0Qtl2IjaFS", "max_count": 78, "min_count": 61, "name": "pOahOnQHBKbzorn3", "region_overrides": {"Phl7g87rrXZvAWXd": {"buffer_count": 34, "buffer_percent": 22, "max_count": 45, "min_count": 94, "name": "VOfIoX4hAUWNEUQD", "unlimited": true, "use_buffer_percent": false}, "Mo2r4trvg3gKwZe5": {"buffer_count": 50, "buffer_percent": 7, "max_count": 94, "min_count": 63, "name": "cwzMTMLHAYsMaE1O", "unlimited": false, "use_buffer_percent": true}, "xGpi6MiziPOVP3Fv": {"buffer_count": 13, "buffer_percent": 71, "max_count": 73, "min_count": 37, "name": "OxJQRbjazyS0iFp4", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Y12QefCSYedqBEHt", "0l7ziZ6dPmVKeN24", "bIQEeHS4iHHtlgva"], "session_timeout": 92, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"OwBj5sVBcci5kttS": {"buffer_count": 23, "buffer_percent": 83, "max_count": 36, "min_count": 39, "name": "PsEEp2i6bxO3izCs", "unlimited": true, "use_buffer_percent": false}, "AcwxnslPz2HJ605T": {"buffer_count": 85, "buffer_percent": 49, "max_count": 85, "min_count": 76, "name": "5Rn69sUFQTxowqIP", "unlimited": false, "use_buffer_percent": false}, "dnuvfULfnb1bybUU": {"buffer_count": 27, "buffer_percent": 22, "max_count": 70, "min_count": 38, "name": "KnDbCEGmt62w7lbL", "unlimited": true, "use_buffer_percent": true}}, "regions": ["fgQ3kuTZktAJM8lk", "VftpSiyBon50jp60", "tNbFq9cig5cgi83f"], "session_timeout": 49, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'P4vk7Lj6XrBGaqj8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '69' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'H89rh0S1H22W2wKS' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 87, "mem_limit": 3, "params": "oWHpEjqP4s7ZycBk"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'dmEpL1yl2nVKobod' \
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
    --version '4Cd231ZlfqEqxJZO' \
    > test.out 2>&1
eval_tap $? 65 'ImageDetailClient' test.out

#- 66 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'IJqttYnj9q1ScbRL' \
    --count '26' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 66 'ListServerClient' test.out

#- 67 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "PuNVxl4WOP19oWOT"}' \
    > test.out 2>&1
eval_tap $? 67 'ServerHeartbeat' test.out

#- 68 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "kzlGgZG5Rtcxk4Ci"}' \
    > test.out 2>&1
eval_tap $? 68 'DeregisterLocalServer' test.out

#- 69 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "kGy1feTZMeCbSPgl", "ip": "dcFkFAvWwsq1bq7f", "name": "P7nbhoLry4a5WTLf", "port": 90}' \
    > test.out 2>&1
eval_tap $? 69 'RegisterLocalServer' test.out

#- 70 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "ne6la7ZnEHHJb4Dr", "pod_name": "o9POb65ouZiFrEP3"}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterServer' test.out

#- 71 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "OdHx1WXE8bJzI6br"}' \
    > test.out 2>&1
eval_tap $? 71 'ShutdownServer' test.out

#- 72 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'jvpBYpIMC3Drjd4N' \
    > test.out 2>&1
eval_tap $? 72 'GetServerSessionTimeout' test.out

#- 73 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName '5cWzdQ8WVYJDLDGp' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSession' test.out

#- 74 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "4lfCjAkHYuO77Ruy", "configuration": "UFoTKwXfABzBWOJa", "deployment": "Kdin9KCPrGSH4CdO", "game_mode": "STgc4wDmHN6fYiXd", "matching_allies": [{"matching_parties": [{"party_attributes": {"drUwLi09XUdK32NN": {}, "qerxY6s6oTMVedVZ": {}, "9jjZJCHArtC3v8VJ": {}}, "party_id": "oMRTzO1McmBjR22v", "party_members": [{"user_id": "63ieFnGbHrLDBWKc"}, {"user_id": "pV8a6Bnpmf1FNQqX"}, {"user_id": "OcB339Y2mbzPq9Gw"}]}, {"party_attributes": {"nFstamajZJIhfMt7": {}, "oabYk9oOrSyV7ddv": {}, "C2P541dGGM8SPA9M": {}}, "party_id": "aqLDimG3TSgwO5wG", "party_members": [{"user_id": "wEkaqUxvXB8BFXZk"}, {"user_id": "OiNDL4wP546zpJ7s"}, {"user_id": "Y3MSLk1c0chfoGLk"}]}, {"party_attributes": {"BVC4DMgl789okrcH": {}, "DFfu6Tjkjcan3sZs": {}, "wDINj0PYoXYLxoyu": {}}, "party_id": "hI0qAoPnlbXXzVRo", "party_members": [{"user_id": "xRZ2uDKH6nafpmkb"}, {"user_id": "8qWzL776oBwhwL2a"}, {"user_id": "GPeoOTihiTt7xiO1"}]}]}, {"matching_parties": [{"party_attributes": {"Pz63L58hWOeO2maN": {}, "Eza0lite4jBKw88a": {}, "Smws5BQEu6K1dwhO": {}}, "party_id": "2fZg2kzoG7qb3JLE", "party_members": [{"user_id": "8Z2ssEWzFaoMpd5u"}, {"user_id": "rxJDUMtvfQ5uwgi9"}, {"user_id": "0FvhfZzGm0Jlza0k"}]}, {"party_attributes": {"YTsETABbGa4UeoqH": {}, "BB68UWMtuqzBlOOc": {}, "wn1cNnR0lVHjCt0u": {}}, "party_id": "5wpdwLCuvTy7OYHE", "party_members": [{"user_id": "myQ7fus5UHHwfRDY"}, {"user_id": "ixYozlO2f2wbQnuT"}, {"user_id": "6OBj2p6LlTUWHAIT"}]}, {"party_attributes": {"6IaeK10hS1XL0wh3": {}, "CfzdJxF6QJZUWBLQ": {}, "XiZKc7fdRTPdoQgH": {}}, "party_id": "8VIGOnKG2QcjNIPk", "party_members": [{"user_id": "AKgiNJmpbDuIT04N"}, {"user_id": "e9WaGdHsbQDsz2z3"}, {"user_id": "nZpbML26Dd9ivWvT"}]}]}, {"matching_parties": [{"party_attributes": {"C6j1vuNCMhcc43In": {}, "oCNDEO9drM4DXlbi": {}, "7e0RiyASCNM9P4BR": {}}, "party_id": "siO7t01CEDZihkds", "party_members": [{"user_id": "0VFLop3bYxGSm8Jo"}, {"user_id": "mYy7wJCivInqmBqv"}, {"user_id": "W5IHFjgUdmy3ufSd"}]}, {"party_attributes": {"BsceUohT4nxT7np6": {}, "fguCW1DibZhnxPuL": {}, "5aknszE2FSt098E4": {}}, "party_id": "JQSuMMLKv5CyMQqS", "party_members": [{"user_id": "YeEDTdMKnE5QSLDP"}, {"user_id": "JYBEYZH7kVrzuDvj"}, {"user_id": "2n2Y6JAodNqvnOok"}]}, {"party_attributes": {"85lZRPqPcKNSqbB3": {}, "M3DLm8xSGGLwX3Pe": {}, "ux4H1WeTvrpHqWAD": {}}, "party_id": "sFzelSlCyC2ShGN6", "party_members": [{"user_id": "htKKtGKwqAIDsnsc"}, {"user_id": "lPMypLRFzWN1kzC6"}, {"user_id": "g2J6PgzlYljXz8so"}]}]}], "namespace": "mQowO5bTPB2L02ie", "notification_payload": {}, "pod_name": "3zee2qAKZrhaiqYG", "region": "7NdrtFug0HZAv2Oy", "session_id": "ZHnRpwCnhnUWYvmx"}' \
    > test.out 2>&1
eval_tap $? 74 'CreateSession' test.out

#- 75 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "veSLRikbirQqgsPF"}' \
    > test.out 2>&1
eval_tap $? 75 'ClaimServer' test.out

#- 76 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '3WEGtTwDpTn0RJJD' \
    > test.out 2>&1
eval_tap $? 76 'GetSession' test.out

#- 77 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID '7IWPbjw6D7TKqNer' \
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
    --region 'Ma9nJUB1G7zFxJMk' \
    > test.out 2>&1
eval_tap $? 80 'ListProvidersByRegion' test.out

#- 81 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 81 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE