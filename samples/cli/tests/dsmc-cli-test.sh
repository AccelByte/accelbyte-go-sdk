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
    --body '{"artifactPath": "6n7TYYQqP2BhD89i", "image": "rqqMi1YUDNhi2Ol4", "namespace": "UHn71GhJCJKf8LQq", "persistent": true, "version": "P3ik7V4zG0QBAIgz"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "P3aSC9wnyyH7Ujpg", "dockerPath": "pRMUIutWOesLOEf2", "image": "Tg6i65B8XCIKqeIc", "imageSize": 4, "namespace": "H9t29qmS9aRnyhSY", "persistent": true, "version": "X4a9BJCYeKKelCZW"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "WajIDogFpXtmffYa", "dockerPath": "AAklHrFtDL9fRkda", "image": "WdXszHQz8ZPtfyiG", "imageSize": 60, "namespace": "VtTQyQts4KSi7zox", "patchVersion": "Yw0jSshrqmriO2lU", "persistent": true, "uploaderFlags": [{"name": "97ovOpgmVlk0KavN", "shorthand": "VAxSQw7XyTDML2Ss", "value": "vVCl88nmrHhjFf2s"}, {"name": "4hcnW8sdxBhLZiJL", "shorthand": "0mSzAC511Hbwt7t2", "value": "CMGu8jOJHD9vRKYB"}, {"name": "TUA9iD3XZ5oKawsx", "shorthand": "XUz28CgilDIJl8ZU", "value": "Echg9lR3FzwWyRne"}], "version": "t7VIyFlh9G16qwJQ"}' \
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
    --body '{"claim_timeout": 52, "creation_timeout": 43, "default_version": "leW8Ej0bZ6waVyJv", "port": 14, "ports": {"IdL1m7NufEg0W1Lq": 90, "XbvwupQz7xzg1sBd": 69, "Qd6uf0rPGTAGoPIO": 13}, "protocol": "9YnCFbpZhr57DKBE", "providers": ["E5VDIRjQjjTU6Ib3", "neQcqnRWfv2TAZbc", "Yyy5v85vGGSDu0q0"], "session_timeout": 9, "unreachable_timeout": 10}' \
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
    --body '{"claim_timeout": 77, "creation_timeout": 58, "default_version": "h0PTY0KE7P4SAWeG", "port": 56, "protocol": "g5WHvYwLdW3FENEn", "providers": ["Nq9kECeNRzbCAyRH", "k44fs8wYOU4t0899", "vbTulzXjlALrUWQI"], "session_timeout": 13, "unreachable_timeout": 46}' \
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
    --name 'BtLcabth0yFCLEJz' \
    --count '91' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'mVqZgvLcwvuDjqw4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'zDJMokXTZuBw5b3G' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 89, "buffer_percent": 3, "configuration": "P0PGn0Ua9sKLrVrR", "enable_region_overrides": true, "extendable_session": true, "game_version": "pEVexjpoPb8uThlc", "max_count": 81, "min_count": 0, "overrides": {"BdIlZNK47GPL9LF0": {"buffer_count": 12, "buffer_percent": 46, "configuration": "WSvrrKolenOT1mz4", "enable_region_overrides": false, "extendable_session": true, "game_version": "lkhQZIN4d3bF3y8n", "max_count": 50, "min_count": 7, "name": "HygppoYacc9tMCIr", "region_overrides": {"hmBkimk1QOR8980i": {"buffer_count": 28, "buffer_percent": 88, "max_count": 77, "min_count": 6, "name": "EW4aBFyAV2RzNlzN", "unlimited": false, "use_buffer_percent": false}, "RiIdMlGW54cB47ej": {"buffer_count": 23, "buffer_percent": 50, "max_count": 17, "min_count": 41, "name": "TWq7VHKgg2HampzI", "unlimited": true, "use_buffer_percent": true}, "gbqeOtV9ct4o19SR": {"buffer_count": 47, "buffer_percent": 11, "max_count": 93, "min_count": 84, "name": "HNncr2JElSZEpv3o", "unlimited": false, "use_buffer_percent": true}}, "regions": ["xBSVc37yimBCcBRO", "VjZ3NHvytGaMmtVI", "x0q7xQQYrxncwvCc"], "session_timeout": 59, "unlimited": false, "use_buffer_percent": true}, "TGMczDtLkRvmypzo": {"buffer_count": 43, "buffer_percent": 75, "configuration": "CdkeGvDWK2xeDxyR", "enable_region_overrides": true, "extendable_session": false, "game_version": "GQy3pLPb9V9v6bAr", "max_count": 72, "min_count": 83, "name": "5nzLtidKqA3ldyRm", "region_overrides": {"kyKvq6lHkcGi0SZc": {"buffer_count": 93, "buffer_percent": 70, "max_count": 26, "min_count": 49, "name": "9aHtYqyUFYEmtS3w", "unlimited": true, "use_buffer_percent": false}, "pAFeHwcUOO99cQVu": {"buffer_count": 84, "buffer_percent": 10, "max_count": 97, "min_count": 91, "name": "bVIiuKpNUfT7Hsnq", "unlimited": true, "use_buffer_percent": true}, "akdqvVURNwNBVYoV": {"buffer_count": 52, "buffer_percent": 98, "max_count": 45, "min_count": 7, "name": "ijhUtRQQfzFrln8x", "unlimited": true, "use_buffer_percent": true}}, "regions": ["uxfJxDowRP9VOckA", "pk0zakp5xDxob13z", "yeqDVHU4I9dQ2uYg"], "session_timeout": 87, "unlimited": false, "use_buffer_percent": true}, "ysgJER0zY1HJSCSc": {"buffer_count": 24, "buffer_percent": 73, "configuration": "EP3ZdlNiJMY6Heb7", "enable_region_overrides": false, "extendable_session": false, "game_version": "x3CeD5U3j8RZDXkN", "max_count": 61, "min_count": 100, "name": "WeztFxMrvWPpyF6L", "region_overrides": {"z4i5udg2zRiZYBij": {"buffer_count": 34, "buffer_percent": 89, "max_count": 58, "min_count": 49, "name": "d0BS50hY0oVsBX7E", "unlimited": false, "use_buffer_percent": false}, "6ifprW0QKqKlO8DN": {"buffer_count": 38, "buffer_percent": 81, "max_count": 48, "min_count": 90, "name": "795VB5uG2mD3Cc3q", "unlimited": true, "use_buffer_percent": false}, "ask4fQcjEAou8016": {"buffer_count": 53, "buffer_percent": 35, "max_count": 55, "min_count": 19, "name": "VKU5Vqx3sN4KVYqw", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Xh4sb08wABUgmi1w", "hKKF1mcOj45tXJVf", "fzFu5yZT41yH9ky4"], "session_timeout": 99, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"jXMtw446ulysJNRv": {"buffer_count": 35, "buffer_percent": 69, "max_count": 40, "min_count": 19, "name": "5hcsO3Fhh5eGbGWg", "unlimited": false, "use_buffer_percent": false}, "LFk7k2oNR9JsLAYz": {"buffer_count": 93, "buffer_percent": 78, "max_count": 75, "min_count": 11, "name": "4aNcgSkQOLAK7p3W", "unlimited": true, "use_buffer_percent": true}, "0FmhcehUL4CMEK9w": {"buffer_count": 9, "buffer_percent": 94, "max_count": 88, "min_count": 21, "name": "Tpo2v7ZwenYWCz6Q", "unlimited": true, "use_buffer_percent": true}}, "regions": ["tvAznnprmw85dmq8", "w6rU0m7pHqLZ95ls", "6OTMvLRaf5RP5CVd"], "session_timeout": 33, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'sKpgLKlQzgiNVdg1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'FWRQ6qsmm4JEAgW6' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 73, "buffer_percent": 44, "configuration": "Nj4HGtShjdGSbcj4", "enable_region_overrides": true, "extendable_session": false, "game_version": "OJaI4Fzu5XkEHB8k", "max_count": 21, "min_count": 13, "regions": ["orxxnqoUzWGZr2ml", "GFU3CVPhaDgUqJms", "awZt1nowpHNXebJh"], "session_timeout": 59, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment '2OjjU62k83L7g2i2' \
    --namespace $AB_NAMESPACE \
    --region 'UV8ZTjz1zG8lSw4z' \
    --body '{"buffer_count": 93, "buffer_percent": 37, "max_count": 57, "min_count": 44, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment '1G7EtGUGFjZ71XKm' \
    --namespace $AB_NAMESPACE \
    --region '7tZ9opl5NM90u2eO' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'a1ZwbhmdanclfVxb' \
    --namespace $AB_NAMESPACE \
    --region 'LEdd42gQgH9PT6H3' \
    --body '{"buffer_count": 6, "buffer_percent": 11, "max_count": 29, "min_count": 61, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'aG7zMNiu7dCe3Dfz' \
    --namespace $AB_NAMESPACE \
    --version 'ehx4fbn9XYMLIlXM' \
    --body '{"buffer_count": 3, "buffer_percent": 59, "configuration": "cM5UZFq0MGAR0UtG", "enable_region_overrides": false, "extendable_session": true, "game_version": "bFnXJelN3LlA46MG", "max_count": 27, "min_count": 100, "region_overrides": {"nyEYhUffCeiQObzJ": {"buffer_count": 67, "buffer_percent": 47, "max_count": 49, "min_count": 34, "name": "kZLXj3hRK3yuopLP", "unlimited": false, "use_buffer_percent": true}, "F0adNOAQmN88QqaG": {"buffer_count": 12, "buffer_percent": 30, "max_count": 67, "min_count": 30, "name": "TbVA0orO6z03bqmF", "unlimited": true, "use_buffer_percent": false}, "ZpZPpHWcOUpr2Fjj": {"buffer_count": 38, "buffer_percent": 91, "max_count": 21, "min_count": 38, "name": "fPgYo0cmHVH06Hgw", "unlimited": true, "use_buffer_percent": false}}, "regions": ["QmBMLmqvvx7EOK1H", "zpao6wtuSWkAPiXU", "WxxcwNDJ7skxrCD5"], "session_timeout": 20, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'CHe40mduPDgydfsZ' \
    --namespace $AB_NAMESPACE \
    --version '1aQcQCUBPxzkuOrI' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'dtaYL2ilNkQqF9fs' \
    --namespace $AB_NAMESPACE \
    --version 'Ye0LVwjjkE37UL8U' \
    --body '{"buffer_count": 88, "buffer_percent": 73, "configuration": "MoJmt06VrunBk9B2", "enable_region_overrides": true, "game_version": "1CjLHws4HKhMsOl6", "max_count": 18, "min_count": 14, "regions": ["DHzZwozwVGnaeX9C", "XxF2LdB4k4ruq1S0", "F83ljQ3xTbUzq2ly"], "session_timeout": 100, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment '4uDjuBpvS7fZhShK' \
    --namespace $AB_NAMESPACE \
    --region '7sBDZUgQPquVQ8DY' \
    --version 'ZKa7S6FKul76b897' \
    --body '{"buffer_count": 93, "buffer_percent": 49, "max_count": 74, "min_count": 30, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment '5kGrkLJJzRFXEOEv' \
    --namespace $AB_NAMESPACE \
    --region 'G9oazjGuVWnyCa8K' \
    --version '9Iy75aWYTnwJ92Ms' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'eSd7z21q6m6byylq' \
    --namespace $AB_NAMESPACE \
    --region 'ZqVnEEpcVp0vjmE4' \
    --version 'vj0vJS2DFn8hbEOf' \
    --body '{"buffer_count": 40, "buffer_percent": 50, "max_count": 28, "min_count": 14, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '19' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'IS0p34u4fBIKOHss' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'q2QsmWcu06qK0cnh' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 68, "mem_limit": 48, "params": "T2yQ9OaXAW5AA9nR"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'Ww72FVcXWGZfeWqH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'd5RpMkqJxzIFb3ii' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 69, "mem_limit": 71, "name": "UPhtWecB6mKBZSUs", "params": "IvzWHR720HXdAhfO"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'TW1SoiTlj1L3Y3oo' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 70}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'glkqcVrmfG52TApq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name '0wELoKQ0kIECbZwJ' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "PyCHCfLrZvY5Rk4V", "port": 6}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'IcJV1fwGejukyxDn' \
    --sortBy 'version' \
    --sortDirection 'asc' \
    --count '45' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI '5r8GPdNNa61hKuy7' \
    --version 'OfHTSQ29fVg1IDhT' \
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
    --imageURI 'b3n04eEGpQFln2p8' \
    --version 'RlZo4GT8t9XaCTml' \
    --versionPatch 'XBiwkAbXBBcqwy5K' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'r5Hj6VCQlVJ9GyIo' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'iKQLTdpjAxOWdTdM' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'NWheYBcrIHyQ4ii4' \
    --versionPatch 'sD2jpSdRDBVCzHTH' \
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
    --region 'VQqrt8lRllbnGXad' \
    --count '42' \
    --offset '78' \
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
    --region 'DGYQzotrwbEPkT8J' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'oI2WzylnxGnGVXZd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'e5NbLNOlBBM6qMZD' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'huECvYPBVi6HKM9I' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region '7i7a8pTqMhKRkxer' \
    --withServer 'false' \
    --count '60' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region '6m1SmFr7buGlMcuT' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'qkFJ2jJEQ8cPkgwk' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "nmHshyWD64FxIuCX", "repository": "NDufH54GeA5voh93"}' \
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
    --name 'DRmYs72kW7dxmENQ' \
    --count '8' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment '3qwC8sRA2vVrj213' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 77, "buffer_percent": 39, "configuration": "uoRY4g0dGvJigqSd", "enable_region_overrides": false, "extendable_session": true, "game_version": "jFA6g9nif8Ft0Xv5", "max_count": 25, "min_count": 42, "overrides": {"rBqFRcmykelfYTlP": {"buffer_count": 56, "buffer_percent": 89, "configuration": "JhCdMA80i5LgHwYt", "enable_region_overrides": true, "extendable_session": true, "game_version": "pLnMJPRp905x88og", "max_count": 69, "min_count": 76, "name": "LbXaFmTPWnFfIgrI", "region_overrides": {"ozG9NfNQ3pg59alu": {"buffer_count": 74, "buffer_percent": 43, "max_count": 90, "min_count": 22, "name": "JVUYNVnlaFiMWYOx", "unlimited": false, "use_buffer_percent": true}, "kvLhJ2tY6whVBXQD": {"buffer_count": 16, "buffer_percent": 14, "max_count": 99, "min_count": 53, "name": "eVyGJr5JJRaY9UDv", "unlimited": true, "use_buffer_percent": false}, "Tii9A3we1sWqyuXi": {"buffer_count": 49, "buffer_percent": 8, "max_count": 31, "min_count": 79, "name": "6OikjbvplFdkOk3Q", "unlimited": false, "use_buffer_percent": false}}, "regions": ["d6bEYQUXRdVXI00v", "Ak4DYUnD4XMB0HLQ", "L2TVTizls84TUXaK"], "session_timeout": 52, "unlimited": true, "use_buffer_percent": true}, "PyAsX1Y9Cg1qWGlQ": {"buffer_count": 4, "buffer_percent": 35, "configuration": "HIWYdzMztqn3w5Wp", "enable_region_overrides": false, "extendable_session": false, "game_version": "IcuYLY9BoiKglBNG", "max_count": 22, "min_count": 56, "name": "DwekZQTl75bAtliR", "region_overrides": {"GKEJ8UQcsKpXDPA7": {"buffer_count": 10, "buffer_percent": 57, "max_count": 3, "min_count": 1, "name": "axiA97iTPIu72odi", "unlimited": true, "use_buffer_percent": true}, "GtCQxFoBEnPwChAG": {"buffer_count": 23, "buffer_percent": 91, "max_count": 65, "min_count": 84, "name": "0K3W8JQ80prslfco", "unlimited": false, "use_buffer_percent": true}, "0Mb9vusQXiAQZZrM": {"buffer_count": 79, "buffer_percent": 44, "max_count": 88, "min_count": 42, "name": "jnr3o4TpFqh68wnA", "unlimited": true, "use_buffer_percent": false}}, "regions": ["cZfoajKioMPODVNz", "1aCiLIlMWSB9aZUN", "Mp61hSqq5dD2MCdA"], "session_timeout": 85, "unlimited": true, "use_buffer_percent": false}, "p2bpU5VKURddLiSG": {"buffer_count": 59, "buffer_percent": 96, "configuration": "hiZ5YyvL6Z67HzR6", "enable_region_overrides": false, "extendable_session": false, "game_version": "K3B9Qfb9Yq8TnhSu", "max_count": 96, "min_count": 55, "name": "RqbPhcJ5swRPZLn9", "region_overrides": {"pM6dGmE6OZpyq7cs": {"buffer_count": 22, "buffer_percent": 67, "max_count": 9, "min_count": 33, "name": "XshvnUFwxzymzZX3", "unlimited": true, "use_buffer_percent": true}, "2z50zmDAc68oF0JH": {"buffer_count": 55, "buffer_percent": 2, "max_count": 87, "min_count": 73, "name": "Ta9fLVQxMVMvfwTi", "unlimited": false, "use_buffer_percent": false}, "iE5YO9MS9S5cU0A3": {"buffer_count": 59, "buffer_percent": 75, "max_count": 51, "min_count": 55, "name": "bdlMERYVD7W0yvtL", "unlimited": false, "use_buffer_percent": true}}, "regions": ["QFBRiRMogut1UtZE", "t316ZpYsN4vTW7WY", "qdqbfruuufL0sWKi"], "session_timeout": 21, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"52LNcm9oA77YABY1": {"buffer_count": 26, "buffer_percent": 85, "max_count": 9, "min_count": 54, "name": "VG38PkIplXEIg00h", "unlimited": false, "use_buffer_percent": true}, "qP2SATZGmbl4Tvzq": {"buffer_count": 88, "buffer_percent": 51, "max_count": 82, "min_count": 56, "name": "p9A889n9INyoArpx", "unlimited": true, "use_buffer_percent": true}, "YD3HX70d0dukJNQv": {"buffer_count": 93, "buffer_percent": 78, "max_count": 36, "min_count": 3, "name": "LIFNHW0fAwlWbrhA", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Xzsbi0jbk8ygnMjY", "JsnFIlq6JyMs9YFZ", "Ferb7fQWeoO9ULnb"], "session_timeout": 1, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'Vvj2oGM3z5tCD88g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '26' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name '7ai0sdtFYRsCCHit' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 48, "mem_limit": 100, "params": "kYhcKXx4bsSM3GMh"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'Ad9WykJfYMvW4Oaw' \
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
    --version 'OmAIty1LPiVX5i1q' \
    > test.out 2>&1
eval_tap $? 65 'ImageDetailClient' test.out

#- 66 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'f0C0Sizq3uLavvtl' \
    --count '5' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 66 'ListServerClient' test.out

#- 67 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "uj7xbLq3YSxSK5lE"}' \
    > test.out 2>&1
eval_tap $? 67 'ServerHeartbeat' test.out

#- 68 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "RY6BVSX7adLawJ4v"}' \
    > test.out 2>&1
eval_tap $? 68 'DeregisterLocalServer' test.out

#- 69 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "9q2XXHJUYL5NeUgU", "ip": "WCH1uOyC9NztwsPc", "name": "HZbduSA9TjKAf9Ze", "port": 99}' \
    > test.out 2>&1
eval_tap $? 69 'RegisterLocalServer' test.out

#- 70 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "3tJowLLme5OnjK2l", "pod_name": "AVSP1AwyjVQdGjLQ"}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterServer' test.out

#- 71 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "ud0FFEq5YoTt6F91"}' \
    > test.out 2>&1
eval_tap $? 71 'ShutdownServer' test.out

#- 72 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'NOxaBC6P5n5WZANr' \
    > test.out 2>&1
eval_tap $? 72 'GetServerSessionTimeout' test.out

#- 73 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'iMMvWHkdtEkrEqKs' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSession' test.out

#- 74 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "GCyFHbjDUuB4QTKd", "configuration": "FKhsvXZzUwf44DUT", "deployment": "tOxwqlKuBEDh20nG", "game_mode": "bDaLA2TOaj497tAL", "matching_allies": [{"matching_parties": [{"party_attributes": {"9IqdzEaarXSBvJEk": {}, "pxlSa5f0Td1aHRxn": {}, "YGElQqfY1g2dNaKv": {}}, "party_id": "D9vOebh61puJQXVG", "party_members": [{"user_id": "XGhJPyj8ew21HF5k"}, {"user_id": "6KfNs4XjQ50fvhiP"}, {"user_id": "CNOkKyC5KnlkwpIZ"}]}, {"party_attributes": {"JxgG3zbcHthHXT1W": {}, "moIyoFlyhKCZ36L1": {}, "xfJ5jEWR36UX8UBn": {}}, "party_id": "dvChuiWJVsAVmsfp", "party_members": [{"user_id": "EUX5L2MDAjdNYCDY"}, {"user_id": "AyEBRwzIDdqqjRjo"}, {"user_id": "DsIuPoCMjR6sKbKA"}]}, {"party_attributes": {"gLTqge3JnVpfrDSp": {}, "1aqF4fHphLBc6dYn": {}, "QhYi2Qp8zcNtCSaI": {}}, "party_id": "0nxIpYuHDJFZ0H2n", "party_members": [{"user_id": "wf7tnbveb5fUSvG9"}, {"user_id": "wqyGNjZ09TxngwgX"}, {"user_id": "Sps7qDaLPzihOSNP"}]}]}, {"matching_parties": [{"party_attributes": {"9pzU4gG4PDWyg1B7": {}, "cpWzDfvZ5sJDEk9a": {}, "U60uHypjiJLrTQLz": {}}, "party_id": "ICRb0rN4RJ0dLQq4", "party_members": [{"user_id": "1DfzDyTYRENoSw7p"}, {"user_id": "npRf7HBD5nbRPXCS"}, {"user_id": "hkKiCJQzISNKzpDK"}]}, {"party_attributes": {"xJ9sxJaZxzObOYKC": {}, "D9c4eVk8woxLpJXw": {}, "JuIaCWwQmbkoESrq": {}}, "party_id": "KgMW2C8AUWHSV3qx", "party_members": [{"user_id": "JA8hsuTJ3oTM0XYS"}, {"user_id": "TvFlN3uc1EcOcSyP"}, {"user_id": "scqrpTYvmKIMwr9a"}]}, {"party_attributes": {"LeeC96cd735jSk1P": {}, "9GjpwxQpLC7LJ4M1": {}, "eN6rIBjY2IgPdkSl": {}}, "party_id": "cO4fkSSAqppCTS1A", "party_members": [{"user_id": "gpDSGLy2CnDHUiV2"}, {"user_id": "DllVxFZrMzyZdT1C"}, {"user_id": "fO3zIx4IRl7UYhlx"}]}]}, {"matching_parties": [{"party_attributes": {"ehbWtXtAtSIgsd0M": {}, "CmW7bGYzCla0RqyS": {}, "X57c6xhGVAtMfGJL": {}}, "party_id": "p2qfbE8IfGrrqzOm", "party_members": [{"user_id": "WVUR5mI7xDbtDXeJ"}, {"user_id": "kk9Jkl42Eqm85pmo"}, {"user_id": "Cr48DKBxKcQydcec"}]}, {"party_attributes": {"jHC3PYx3cUzaRI2g": {}, "RysKpvJXWPVnayUl": {}, "3qf3wmJjOclu9tO5": {}}, "party_id": "EEFMwPWsqeVVF0ie", "party_members": [{"user_id": "15aetlnKTtrS3kym"}, {"user_id": "4AfsCAO1KiH5kTUh"}, {"user_id": "IWU9zuBFErBwsiAG"}]}, {"party_attributes": {"3Cp3JUJmtNzColWx": {}, "AlNYEWBavOKJ2mdv": {}, "5zJnBpX2PwevaMEm": {}}, "party_id": "O2wA2g0XOLFHKZhH", "party_members": [{"user_id": "q1k6S9TtlABZCdgy"}, {"user_id": "NMzZWuESkK4U9i3g"}, {"user_id": "HJvZqEslOpzudjhr"}]}]}], "namespace": "5suyblzGP1zwDOH2", "notification_payload": {}, "pod_name": "g6wN8TpTuZjiJdsR", "region": "gNDw9SqtrbD25Gi1", "session_id": "PoSIAyFrJESzl9m4"}' \
    > test.out 2>&1
eval_tap $? 74 'CreateSession' test.out

#- 75 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "FXRng9fvqZPMiKiK"}' \
    > test.out 2>&1
eval_tap $? 75 'ClaimServer' test.out

#- 76 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'imNcoXGpbPDToTAh' \
    > test.out 2>&1
eval_tap $? 76 'GetSession' test.out

#- 77 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ntMjJGTFd0L8v69C' \
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
    --region 'jFh7rlBAJthILPuU' \
    > test.out 2>&1
eval_tap $? 80 'ListProvidersByRegion' test.out

#- 81 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 81 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE