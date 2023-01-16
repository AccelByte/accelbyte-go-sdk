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
    --body '{"artifactPath": "0VFnOMYr", "image": "1OYoj8nt", "namespace": "CS8FDpwy", "persistent": false, "version": "1kCeEKHL"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "Fse3Ixkx", "dockerPath": "O0GXGeew", "image": "YdARXfiE", "imageSize": 82, "namespace": "h9vpxGZO", "persistent": true, "version": "4lsCjWGJ"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "nNWEaSm0", "dockerPath": "6TviJ9Tp", "image": "KiOzuwpF", "imageSize": 93, "namespace": "o63uqIyX", "patchVersion": "wFJEimAJ", "persistent": false, "version": "04VeHSBE"}' \
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
    --body '{"claim_timeout": 38, "creation_timeout": 75, "default_version": "swLaq8zM", "port": 18, "ports": {"SSCw1BnU": 17, "QiOyyeV6": 53, "vkFKWQMO": 81}, "protocol": "LovgjWke", "providers": ["ddrZeOTZ", "JwpIi4KE", "Okz5II2H"], "session_timeout": 72, "unreachable_timeout": 7}' \
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
    --body '{"claim_timeout": 74, "creation_timeout": 18, "default_version": "Qzr6FiFs", "port": 29, "protocol": "FPBZ2v3b", "providers": ["HCjKDk87", "VyiJ0X4J", "Ohx0Rg9w"], "session_timeout": 33, "unreachable_timeout": 40}' \
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
    --name 'DCSH7w94' \
    --count '13' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'KYiAzZgb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'Vr2D3H7G' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 4, "buffer_percent": 15, "configuration": "du8jfYVv", "enable_region_overrides": false, "game_version": "f5ZvM9Uo", "max_count": 84, "min_count": 46, "overrides": {"jKV3uMf0": {"buffer_count": 97, "buffer_percent": 3, "configuration": "OcDByIjC", "enable_region_overrides": true, "game_version": "0r3ck1XS", "max_count": 76, "min_count": 21, "name": "ikmqmNJC", "region_overrides": {"AJlloJlb": {"buffer_count": 24, "buffer_percent": 91, "max_count": 62, "min_count": 50, "name": "cveWxSOW", "unlimited": true, "use_buffer_percent": true}, "VnTbBIHD": {"buffer_count": 72, "buffer_percent": 37, "max_count": 88, "min_count": 5, "name": "IHCQw8Bu", "unlimited": true, "use_buffer_percent": true}, "HOCx6IDs": {"buffer_count": 50, "buffer_percent": 14, "max_count": 49, "min_count": 23, "name": "aaeqhCBJ", "unlimited": false, "use_buffer_percent": true}}, "regions": ["q4HxUYth", "Law0VJXj", "wQCXN3bX"], "session_timeout": 54, "unlimited": true, "use_buffer_percent": false}, "n5VMG6lQ": {"buffer_count": 22, "buffer_percent": 75, "configuration": "APHW2mCQ", "enable_region_overrides": true, "game_version": "nkvWf99O", "max_count": 85, "min_count": 12, "name": "9WGCwrqi", "region_overrides": {"x72fZoSQ": {"buffer_count": 83, "buffer_percent": 25, "max_count": 99, "min_count": 44, "name": "VNTFBwlq", "unlimited": true, "use_buffer_percent": true}, "rJkqgBsy": {"buffer_count": 87, "buffer_percent": 24, "max_count": 93, "min_count": 12, "name": "xUJmhgFQ", "unlimited": false, "use_buffer_percent": false}, "h98Olcs5": {"buffer_count": 1, "buffer_percent": 51, "max_count": 78, "min_count": 75, "name": "didgGfVW", "unlimited": true, "use_buffer_percent": false}}, "regions": ["DU8J0jcY", "Whz9kMpi", "ZgKmxpDV"], "session_timeout": 27, "unlimited": false, "use_buffer_percent": false}, "gUePOuxh": {"buffer_count": 19, "buffer_percent": 28, "configuration": "ca3rGeOm", "enable_region_overrides": true, "game_version": "2apZaxg3", "max_count": 55, "min_count": 1, "name": "ISGhGISs", "region_overrides": {"aeffC1S0": {"buffer_count": 63, "buffer_percent": 17, "max_count": 73, "min_count": 48, "name": "eD63Oepe", "unlimited": true, "use_buffer_percent": false}, "pxsfvte3": {"buffer_count": 20, "buffer_percent": 91, "max_count": 76, "min_count": 66, "name": "4OOP4UWq", "unlimited": true, "use_buffer_percent": false}, "zlQOZFL3": {"buffer_count": 88, "buffer_percent": 93, "max_count": 73, "min_count": 63, "name": "lgxcKijT", "unlimited": true, "use_buffer_percent": false}}, "regions": ["7VsuUayn", "2phf6iQY", "clRxsIKW"], "session_timeout": 85, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"PVwWhfyK": {"buffer_count": 11, "buffer_percent": 52, "max_count": 81, "min_count": 93, "name": "JdFHWOhl", "unlimited": true, "use_buffer_percent": false}, "IEYSDRPn": {"buffer_count": 54, "buffer_percent": 16, "max_count": 16, "min_count": 60, "name": "PQMjPWwy", "unlimited": false, "use_buffer_percent": true}, "320iaTDt": {"buffer_count": 70, "buffer_percent": 32, "max_count": 40, "min_count": 64, "name": "OJonuUGZ", "unlimited": false, "use_buffer_percent": false}}, "regions": ["j7918jkw", "oIoHsbRr", "qICDVzT0"], "session_timeout": 58, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'aL1TylKS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'kOMzUFKm' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 46, "buffer_percent": 15, "configuration": "iaX5PJC5", "enable_region_overrides": true, "game_version": "T6rFtCGv", "max_count": 84, "min_count": 7, "regions": ["jtUKUs5s", "sAM5WYWB", "HBBU3BVm"], "session_timeout": 28, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'DIOQkbFy' \
    --namespace $AB_NAMESPACE \
    --region 'kRkqXSDn' \
    --body '{"buffer_count": 70, "buffer_percent": 95, "max_count": 48, "min_count": 29, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'BuIMAOpw' \
    --namespace $AB_NAMESPACE \
    --region 'eIfIR9V1' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'onTqqEA0' \
    --namespace $AB_NAMESPACE \
    --region 'Z3AxX9V1' \
    --body '{"buffer_count": 72, "buffer_percent": 91, "max_count": 73, "min_count": 54, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment '6lrajnI9' \
    --namespace $AB_NAMESPACE \
    --version 'gkioFQG4' \
    --body '{"buffer_count": 64, "buffer_percent": 22, "configuration": "iBSuZNI7", "enable_region_overrides": true, "game_version": "2Rv5Thdq", "max_count": 41, "min_count": 48, "region_overrides": {"NQq23UK8": {"buffer_count": 25, "buffer_percent": 42, "max_count": 37, "min_count": 23, "name": "GNqAkZCr", "unlimited": false, "use_buffer_percent": false}, "WDQYmzCI": {"buffer_count": 46, "buffer_percent": 49, "max_count": 84, "min_count": 63, "name": "RlO68n50", "unlimited": true, "use_buffer_percent": false}, "IIKG3iMj": {"buffer_count": 10, "buffer_percent": 60, "max_count": 45, "min_count": 39, "name": "lPafagA4", "unlimited": false, "use_buffer_percent": true}}, "regions": ["p6tFtRTm", "5uBfTt2u", "qgY624Ry"], "session_timeout": 4, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'rUIl3YAn' \
    --namespace $AB_NAMESPACE \
    --version 'ZiKUt0NV' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'CNPaNhB1' \
    --namespace $AB_NAMESPACE \
    --version 'NHwtENho' \
    --body '{"buffer_count": 58, "buffer_percent": 3, "configuration": "1eQ2nY0c", "enable_region_overrides": true, "game_version": "Lkd992L0", "max_count": 97, "min_count": 88, "regions": ["amwvcF4U", "Jl9ZRw5c", "xfvoVyOf"], "session_timeout": 63, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'ZLV488dB' \
    --namespace $AB_NAMESPACE \
    --region 'JYhgs5wS' \
    --version 'c7snNwkq' \
    --body '{"buffer_count": 84, "buffer_percent": 99, "max_count": 80, "min_count": 76, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'ZeUNjw3v' \
    --namespace $AB_NAMESPACE \
    --region 'mzyod4zF' \
    --version 'RFV54wnC' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'Dgh314qH' \
    --namespace $AB_NAMESPACE \
    --region 'ta36pDfp' \
    --version 'jhOezWUP' \
    --body '{"buffer_count": 88, "buffer_percent": 100, "max_count": 22, "min_count": 1, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '23' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name '5laa1TPh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'OsQGuZ2L' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 2, "mem_limit": 7, "params": "5sDwSw3G"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name '0rSGh4uk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'dL8f95UK' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 55, "mem_limit": 57, "name": "RCBRucqt", "params": "3QhqgEoc"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'y3nxrqBz' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 43}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'UbwPTZ37' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name '1U2MJ5fK' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "BySgYgMN", "port": 81}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'xXJjacaI' \
    --sortBy 'version' \
    --sortDirection 'asc' \
    --count '66' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'hkd5GzHr' \
    --version 'sdBfElfV' \
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
    --imageURI 'YqY9uXRV' \
    --version 'pRqwVMhd' \
    --versionPatch 'ee5BtYI9' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'gERS56bp' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'OIHxnpR5' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'NQcxEu2z' \
    --versionPatch 'w06aKxIp' \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'yKUEbl7m' \
    --count '71' \
    --offset '26' \
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
    --region '6tf1s3WJ' \
    > test.out 2>&1
eval_tap $? 46 'CountServerDetailed' test.out

#- 47 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'ListLocalServer' test.out

#- 48 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'INkJQghM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'KwzpaHi7' \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'hQ6Mh7Xz' \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'c0v8dV0d' \
    --withServer 'true' \
    --count '17' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'C2dkxbog' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'PUi6XFbY' \
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
    --version 'l3gWZlSv' \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "vxLZo2tp"}' \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "kQWae918", "ip": "Kp7OxzkM", "name": "OW4sNXRk", "port": 27}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "rfd0FYFF", "pod_name": "FtTxQ54k"}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "aVSrn9r2"}' \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'H04ws9b0' \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "T8lLqxTn", "configuration": "7uPMtieP", "deployment": "N75fCtlu", "game_mode": "ILKp4csx", "matching_allies": [{"matching_parties": [{"party_attributes": {"fEh77qn3": {}, "odkGUr7L": {}, "vQ19UseQ": {}}, "party_id": "W6Wwswgn", "party_members": [{"user_id": "nP564qcS"}, {"user_id": "CWubOvyU"}, {"user_id": "x3UhM875"}]}, {"party_attributes": {"EkANORhV": {}, "fQUWqPWR": {}, "SwoIBu9n": {}}, "party_id": "4McpENLk", "party_members": [{"user_id": "CttWojbE"}, {"user_id": "OO6Xxg6F"}, {"user_id": "OyFvYASB"}]}, {"party_attributes": {"KHgbNZu8": {}, "WKW4tQQ7": {}, "nPxjeHZ4": {}}, "party_id": "1tLPTUJp", "party_members": [{"user_id": "KpeJEfUu"}, {"user_id": "g8WL1nuh"}, {"user_id": "7pnSnh7P"}]}]}, {"matching_parties": [{"party_attributes": {"63aHDRH3": {}, "b3VHuMvE": {}, "e5qtf4XR": {}}, "party_id": "AP9sBL95", "party_members": [{"user_id": "COEXRzy5"}, {"user_id": "JkzbTmAJ"}, {"user_id": "sLfdwvK3"}]}, {"party_attributes": {"CASjNtTj": {}, "rI21BqJ3": {}, "nGS8QgUF": {}}, "party_id": "Z6HTSW0V", "party_members": [{"user_id": "KoHBsm2D"}, {"user_id": "BNzszExV"}, {"user_id": "xy0iZ56m"}]}, {"party_attributes": {"gYw42PTC": {}, "mXCH3iSl": {}, "RrtRMI3o": {}}, "party_id": "wvHdDneg", "party_members": [{"user_id": "ocJCrbwN"}, {"user_id": "jUb2etA2"}, {"user_id": "mQNgXVKr"}]}]}, {"matching_parties": [{"party_attributes": {"u9rWt0cW": {}, "Cd6GrFIC": {}, "XnPeryRZ": {}}, "party_id": "j1UPJX58", "party_members": [{"user_id": "g1e2U9fx"}, {"user_id": "zvPZYfn4"}, {"user_id": "WN259EqJ"}]}, {"party_attributes": {"WcxBGQr3": {}, "7XKyd2wf": {}, "Mn8UREqY": {}}, "party_id": "enchDOTm", "party_members": [{"user_id": "tCVy2vXb"}, {"user_id": "TB92ktj4"}, {"user_id": "1x3zjfCw"}]}, {"party_attributes": {"vQJahGK3": {}, "rIvEIPFp": {}, "XTCxUo64": {}}, "party_id": "OgjZgvIL", "party_members": [{"user_id": "XPEvBu5H"}, {"user_id": "uqNOkft4"}, {"user_id": "Oz9bT7ju"}]}]}], "namespace": "egmN3Fh0", "notification_payload": {}, "pod_name": "E6gf9Nax", "region": "HpkC0Oip", "session_id": "woDhiXQz"}' \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "ROMxwHTB"}' \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'iweNxcuX' \
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
    --region 'FLGea7f9' \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE