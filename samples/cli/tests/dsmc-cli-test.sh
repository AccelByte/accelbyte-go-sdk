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
    --body '{"artifactPath": "t0ftl9eJ5XytQbhr", "coreDumpEnabled": false, "image": "SapI8r5x4fy0m0tW", "imageReplicationsMap": {"ewurEc22V9gZLB3d": {"failure_code": "9IcnzChSYYny8jr6", "region": "AIHwTPCMr9pz2yRs", "status": "PitQ28y6VF8Ul32N", "uri": "wfbSwM1Sy8u3ZgD8"}, "eHENb1NXGNSoQZ9p": {"failure_code": "eDxBmULKGUc5u750", "region": "Pk1JYeiwGDx7nZ1E", "status": "qgid1D3OJUleWGGG", "uri": "3y9M9zDTov2i04xP"}, "Mu7K7LNLtfUgSzd6": {"failure_code": "FHDiFk9mCg6WAUbX", "region": "E0YO7iGl0BlJGCjW", "status": "w5gomhWyYiRmNg0F", "uri": "AxV1ZvcD5rwg0tJf"}}, "namespace": "jGA2pJpKmhEISz3f", "patchVersion": "vzRDNXqFE9SInjaQ", "persistent": true, "ulimitFileSize": 32, "version": "hrcRgdmBLLee9Etk"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "CgAMay4GXrvVvJjl", "coreDumpEnabled": false, "dockerPath": "fmV8g10kdRgCOQbV", "image": "DeUJJvy2GoTV2E2j", "imageSize": 94, "namespace": "tmkVm2dNUe5ogYro", "persistent": true, "ulimitFileSize": 70, "version": "4Z3WGXgtx0OkSnFi"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "xeDv2h5FBdCcqRWP", "coreDumpEnabled": true, "dockerPath": "f9C4UV3261Gvznkf", "image": "beBXmb9p5awjRfqL", "imageSize": 25, "namespace": "9AVpdHljrLAkXFqe", "patchVersion": "lo6hshWXPB5mTpHM", "persistent": false, "ulimitFileSize": 32, "uploaderFlag": "zip4vILWjFhkTeXV", "version": "F6ug38UYexzKECgs"}' \
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
    --body '{"auto_deletion": true, "ghost_worker": false, "manual_buffer_override": true, "zombie_worker": false}' \
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
    --body '{"claim_timeout": 95, "creation_timeout": 19, "default_version": "PhpAs8A5cw3vzVSr", "port": 92, "ports": {"7N3KtHhMDrdz2YDs": 50, "HNSfLZqXS2acYE05": 89, "7VcqCoeUPmqzqT6H": 62}, "protocol": "A4N1vEblImVERRVi", "providers": ["cXC7lKzFU8ZuJFUH", "6vBpmEOkiToVueG8", "8bxDqS2piZGPVKYh"], "session_timeout": 56, "unreachable_timeout": 94}' \
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
    --body '{"claim_timeout": 60, "creation_timeout": 49, "default_version": "aAuEAmNdQQ5VdZdd", "port": 70, "protocol": "BMR1QhbTo64p9Cu9", "providers": ["OmGXeeeBzPX6vs8h", "VS56pdjjOuGE4xJl", "6m4ZLgXTxwZldlnk"], "session_timeout": 61, "unreachable_timeout": 50}' \
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
    --name '3s3uCmXGEd5HcjpM' \
    --count '16' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 16 'GetAllDeployment' test.out

#- 17 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment '1lHR3u76QeAvPk0p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetDeployment' test.out

#- 18 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'HZhy1KQWgigvPHxr' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 64, "buffer_percent": 57, "configuration": "v4E997UyvSRg3Rua", "enable_region_overrides": false, "extendable_session": false, "game_version": "83SapVg2jfMtxcJS", "max_count": 49, "min_count": 98, "overrides": {"LQwBu1ub4Rc0x4Jc": {"buffer_count": 78, "buffer_percent": 20, "configuration": "Vj5sBFM08Slxz3Sc", "enable_region_overrides": false, "extendable_session": false, "game_version": "mGpdqLoDmIhnr5RL", "max_count": 65, "min_count": 8, "name": "cBhx1bBtg7NrXyBy", "region_overrides": {"ShCplFvYR1DhL6iR": {"buffer_count": 30, "buffer_percent": 44, "max_count": 29, "min_count": 79, "name": "SqeEh5EDXkvGH2Mn", "unlimited": true, "use_buffer_percent": false}, "wx4OiDF3U2Mt6rR5": {"buffer_count": 95, "buffer_percent": 88, "max_count": 59, "min_count": 54, "name": "HVcVQ9g2aWy1VBBU", "unlimited": true, "use_buffer_percent": false}, "x7rZyIy9B0l06RP5": {"buffer_count": 72, "buffer_percent": 27, "max_count": 4, "min_count": 99, "name": "Kta7IHdI4c1csbWu", "unlimited": false, "use_buffer_percent": true}}, "regions": ["DCJ9kk8PGcZ1qfTD", "5hi1bmxHnAmj8CJb", "4pSXcc1IENVDqMe2"], "session_timeout": 10, "unlimited": true, "use_buffer_percent": false}, "6ymK96KO3tYWOnAJ": {"buffer_count": 36, "buffer_percent": 45, "configuration": "YwLEF9SEP2NHBlhc", "enable_region_overrides": false, "extendable_session": true, "game_version": "2Wu0hO5mpDSYawne", "max_count": 61, "min_count": 69, "name": "Y7lFiumTAFYc1tR4", "region_overrides": {"lBDc870o0mPjov6F": {"buffer_count": 72, "buffer_percent": 54, "max_count": 55, "min_count": 70, "name": "DcFnNovxfmJFMTVU", "unlimited": false, "use_buffer_percent": true}, "8jcHje6aMSwLAste": {"buffer_count": 50, "buffer_percent": 8, "max_count": 45, "min_count": 66, "name": "F44G6HFsFHajbja0", "unlimited": true, "use_buffer_percent": true}, "3HEy2B3dm6Eh2GXY": {"buffer_count": 81, "buffer_percent": 15, "max_count": 1, "min_count": 87, "name": "9g0LpluzqGMJEJcZ", "unlimited": false, "use_buffer_percent": false}}, "regions": ["P3zoM44XVSzP17Sp", "qPUmkDDCzSQYtgg2", "6TXvMyxYe04M3E3T"], "session_timeout": 77, "unlimited": true, "use_buffer_percent": false}, "EKmEk3Mdwl0qpW3m": {"buffer_count": 24, "buffer_percent": 57, "configuration": "92JxfddEdSwdBL93", "enable_region_overrides": true, "extendable_session": false, "game_version": "xnqY74WR9AfEjRnb", "max_count": 2, "min_count": 98, "name": "csJHbxr2cWeAhNwx", "region_overrides": {"3tX4EeDQWDOIJwc2": {"buffer_count": 17, "buffer_percent": 99, "max_count": 11, "min_count": 87, "name": "Jc9sZgTp9PbmRuAi", "unlimited": true, "use_buffer_percent": false}, "oviPJdWDFMQ7Qo3e": {"buffer_count": 56, "buffer_percent": 39, "max_count": 4, "min_count": 16, "name": "Hu7E95qBomHDt9zl", "unlimited": true, "use_buffer_percent": false}, "E7VqEdAxsva8Zvwq": {"buffer_count": 61, "buffer_percent": 16, "max_count": 80, "min_count": 47, "name": "fHrDsRdgSh81t32F", "unlimited": false, "use_buffer_percent": true}}, "regions": ["Ea8bhJwGEWYEHGUl", "hjeCctxxhzm41Vkr", "PTgKvFGvFjmokEAt"], "session_timeout": 66, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"TSpJpzctUCKOGa6p": {"buffer_count": 38, "buffer_percent": 10, "max_count": 62, "min_count": 53, "name": "Y2YJpkUKifXt6pgH", "unlimited": true, "use_buffer_percent": false}, "hYBMhLQpL7MLA34C": {"buffer_count": 19, "buffer_percent": 19, "max_count": 12, "min_count": 70, "name": "q9BUAkc8tLyPeeMa", "unlimited": false, "use_buffer_percent": true}, "k1kiePJI3MerS5yp": {"buffer_count": 83, "buffer_percent": 97, "max_count": 38, "min_count": 89, "name": "qb6MU1KPRCSyMc2X", "unlimited": false, "use_buffer_percent": false}}, "regions": ["WCAPMwd9Qv7M9fdR", "A96T61IzNConEB4i", "0AV8T3tSaGnEZOYE"], "session_timeout": 9, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'CreateDeployment' test.out

#- 19 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'bkWTAhb4Qn4AHZ3h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteDeployment' test.out

#- 20 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'x9cd8joQKxiQ8ADf' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 18, "buffer_percent": 84, "configuration": "N2v7SnIpYp5iehJG", "enable_region_overrides": true, "extendable_session": false, "game_version": "I6FaUKcU8J6KUtjQ", "max_count": 49, "min_count": 23, "regions": ["LLGN0cjzblvz6w9R", "RlEpXZRiBWBnUFYu", "BhqO4xMBarA3fN4Q"], "session_timeout": 64, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateDeployment' test.out

#- 21 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment '2UcgwrGvMoGjrbeX' \
    --namespace $AB_NAMESPACE \
    --region 'hZXQMiVrIC3BC2qC' \
    --body '{"buffer_count": 87, "buffer_percent": 83, "max_count": 73, "min_count": 19, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'CreateRootRegionOverride' test.out

#- 22 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'N8ChX0tCQtIukRyq' \
    --namespace $AB_NAMESPACE \
    --region 'UdujxdrdBDFHJGZ5' \
    > test.out 2>&1
eval_tap $? 22 'DeleteRootRegionOverride' test.out

#- 23 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'ammKjYuPKU3iCYwQ' \
    --namespace $AB_NAMESPACE \
    --region '4vWiB7TAtmnQrZwx' \
    --body '{"buffer_count": 69, "buffer_percent": 24, "max_count": 80, "min_count": 68, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateRootRegionOverride' test.out

#- 24 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'xM6lxLphTtY07azf' \
    --namespace $AB_NAMESPACE \
    --version '7MHTi2itD9Aj65fv' \
    --body '{"buffer_count": 73, "buffer_percent": 44, "configuration": "6os21KCTcnitszCw", "enable_region_overrides": true, "extendable_session": false, "game_version": "gPZ3clnYNyIZmzXa", "max_count": 26, "min_count": 33, "region_overrides": {"ElmumSKZxIXXVPbp": {"buffer_count": 52, "buffer_percent": 53, "max_count": 56, "min_count": 71, "name": "jFHocVU2aykm5N6z", "unlimited": false, "use_buffer_percent": false}, "H3SyabTLEKehUM8x": {"buffer_count": 15, "buffer_percent": 57, "max_count": 32, "min_count": 17, "name": "td548lreu68YNRBm", "unlimited": true, "use_buffer_percent": true}, "4rb07k5Kn9mhwsO7": {"buffer_count": 79, "buffer_percent": 15, "max_count": 33, "min_count": 91, "name": "oSVlnU98DHiscezn", "unlimited": true, "use_buffer_percent": true}}, "regions": ["aflBaLpgUK1BwcA6", "NdvEIboHFq2YQE5u", "RipcOqdKqwDra9PJ"], "session_timeout": 96, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'CreateDeploymentOverride' test.out

#- 25 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment '3LzBdKorWhPn1rZY' \
    --namespace $AB_NAMESPACE \
    --version '2grTgWHcIKCY4q66' \
    > test.out 2>&1
eval_tap $? 25 'DeleteDeploymentOverride' test.out

#- 26 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'aWnCksz7hBmTxE31' \
    --namespace $AB_NAMESPACE \
    --version 'wpYWmcAhOzMP0mfa' \
    --body '{"buffer_count": 46, "buffer_percent": 67, "configuration": "bVxyNw2RGytcJ8VB", "enable_region_overrides": true, "game_version": "9WiKj307ivP2FRA5", "max_count": 29, "min_count": 3, "regions": ["alpLNHUnMR5evx4l", "K1GY30AltJGITi9h", "mpVO6dXTd6gLow45"], "session_timeout": 11, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateDeploymentOverride' test.out

#- 27 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'VekW0ZYpTS4CwePr' \
    --namespace $AB_NAMESPACE \
    --region 'XxAXLZtC150ULR5i' \
    --version 'DuXehxttLbu2Mlpm' \
    --body '{"buffer_count": 59, "buffer_percent": 80, "max_count": 1, "min_count": 51, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'CreateOverrideRegionOverride' test.out

#- 28 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'zACIKeOvNYjlWHZV' \
    --namespace $AB_NAMESPACE \
    --region '7j9TH6OMcAH78F1x' \
    --version 'NMaB7MJ1N6NcsG2R' \
    > test.out 2>&1
eval_tap $? 28 'DeleteOverrideRegionOverride' test.out

#- 29 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '7TpBMvAb3vQJbZgA' \
    --namespace $AB_NAMESPACE \
    --region 'yjqLfPmnQek6Fxfj' \
    --version 'Dote7yIXER0adg4S' \
    --body '{"buffer_count": 65, "buffer_percent": 86, "max_count": 94, "min_count": 25, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateOverrideRegionOverride' test.out

#- 30 DeleteCreatingServerCountQueue
samples/cli/sample-apps Dsmc deleteCreatingServerCountQueue \
    --deployment 'LY7MuqViEEAC5gqQ' \
    --namespace $AB_NAMESPACE \
    --version 'RBPrqJmPgO6DAJJl' \
    > test.out 2>&1
eval_tap $? 30 'DeleteCreatingServerCountQueue' test.out

#- 31 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '59' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 31 'GetAllPodConfig' test.out

#- 32 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'z68MaEtXf1AfYcGm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPodConfig' test.out

#- 33 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'oa7wc5AC2Hn8dN15' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 25, "mem_limit": 59, "params": "hrPFYA34tCeXTJEm"}' \
    > test.out 2>&1
eval_tap $? 33 'CreatePodConfig' test.out

#- 34 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'FJjUCGE9TX6jTVUU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePodConfig' test.out

#- 35 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'c9vp3lzloO8l9PLa' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 71, "mem_limit": 53, "name": "fbimj0IuRzsMEGz2", "params": "22nd9ya5LOk6XajM"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePodConfig' test.out

#- 36 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'dtroI6U8kmNlRJpo' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 27}' \
    > test.out 2>&1
eval_tap $? 36 'AddPort' test.out

#- 37 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'D3VqYooXI21fiSDx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'DeletePort' test.out

#- 38 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'dZAQmPaHsBJUeyDZ' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "uuHkFcnCEJ0vhkiS", "port": 63}' \
    > test.out 2>&1
eval_tap $? 38 'UpdatePort' test.out

#- 39 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 't4Q3EMT4WsW8OQZP' \
    --sortBy 'createdAt' \
    --sortDirection 'asc' \
    --count '97' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 39 'ListImages' test.out

#- 40 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'VYCE6fBxmCNadudb' \
    --version '3ONFHa2V7GFPhek6' \
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
    --imageURI 'OxOmHqcyA6UT1Umj' \
    --version 'ecmf1Zlav5W1eupx' \
    --versionPatch 'ojpBjRFu7yqivswQ' \
    > test.out 2>&1
eval_tap $? 42 'DeleteImagePatch' test.out

#- 43 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'CYWgr2rI3k8YRx5v' \
    > test.out 2>&1
eval_tap $? 43 'GetImageDetail' test.out

#- 44 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'WYkypQvgqHVQOfrZ' \
    > test.out 2>&1
eval_tap $? 44 'GetImagePatches' test.out

#- 45 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'OVlSDzVwJbTraVrH' \
    --versionPatch '4ofqyeSrNebI3Rf4' \
    > test.out 2>&1
eval_tap $? 45 'GetImagePatchDetail' test.out

#- 46 AddBuffer
samples/cli/sample-apps Dsmc addBuffer \
    --namespace $AB_NAMESPACE \
    --body '{"AllocCount": 36, "DeploymentName": "BPqNxJ2x5n18yX7j", "JobCount": 25, "JobPriority": 58, "OverrideVersion": "Zf4vvALXL5JWnMPp", "Region": "59GBBk5EIP87YCdC"}' \
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
    --region 'KJ6XsomTM5JVRROj' \
    --count '29' \
    --offset '20' \
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
    --region 'vbsz3rearc2U0Ugf' \
    > test.out 2>&1
eval_tap $? 50 'CountServerDetailed' test.out

#- 51 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'ListLocalServer' test.out

#- 52 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'BtnZCam0SX0cVAR0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteLocalServer' test.out

#- 53 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'VoHf61Jbpc4DK7TT' \
    > test.out 2>&1
eval_tap $? 53 'GetServer' test.out

#- 54 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'GGmtRf0JuwO80hCc' \
    > test.out 2>&1
eval_tap $? 54 'DeleteServer' test.out

#- 55 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region '6mYb8ZJdhIESfkOj' \
    --withServer 'true' \
    --count '42' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 55 'ListSession' test.out

#- 56 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'IRjBEe0WFZMEHeHs' \
    > test.out 2>&1
eval_tap $? 56 'CountSession' test.out

#- 57 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'qyolTMbRwiVpjvBp' \
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
    --body '{"JobCount": 91, "Region": "xXy2SKcmjjvULDey", "TimeoutSecond": 49, "ZombieCount": 7}' \
    > test.out 2>&1
eval_tap $? 59 'RunZombieCleanerRequestHandler' test.out

#- 60 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "QddVlv53gzkA3dNI", "repository": "0SYoqcCqfucIu6BE"}' \
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
    --name 'w47vanf3ZpdQpivJ' \
    --count '86' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 63 'GetAllDeploymentClient' test.out

#- 64 GetDeploymentClient
samples/cli/sample-apps Dsmc getDeploymentClient \
    --deployment 'dUq11AxVSVZB846e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetDeploymentClient' test.out

#- 65 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'tPcu5PyH7GtIbBPi' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 34, "buffer_percent": 71, "configuration": "3U2NlqB0FhA9PceM", "enable_region_overrides": false, "extendable_session": false, "game_version": "ddYd4457x651RMGn", "max_count": 47, "min_count": 42, "overrides": {"YflNjkYz92voBHVk": {"buffer_count": 28, "buffer_percent": 87, "configuration": "0rBDimzT5Mxu2buk", "enable_region_overrides": false, "extendable_session": true, "game_version": "xLXCjOg9Z94RWqSl", "max_count": 10, "min_count": 55, "name": "aK4s6vWVyrZg8bxX", "region_overrides": {"8j1hAx6QpSKHB75C": {"buffer_count": 76, "buffer_percent": 98, "max_count": 52, "min_count": 12, "name": "G32iOl4YSSNZG4nn", "unlimited": true, "use_buffer_percent": false}, "5Yn1iidokIkuVA75": {"buffer_count": 7, "buffer_percent": 69, "max_count": 57, "min_count": 97, "name": "klDdmkTF26zRdi2L", "unlimited": true, "use_buffer_percent": true}, "58RY8SMb3awr7huP": {"buffer_count": 72, "buffer_percent": 33, "max_count": 8, "min_count": 20, "name": "hDx02rEFHcC7ZZpO", "unlimited": false, "use_buffer_percent": true}}, "regions": ["w3U6avquFxeO1kFZ", "mBaJnXXY16kKsInC", "cfAOnM1De2Cly76Q"], "session_timeout": 36, "unlimited": true, "use_buffer_percent": true}, "U1a8xTWcpJozkRCI": {"buffer_count": 33, "buffer_percent": 5, "configuration": "oE1fbJxfmFkf4Ec9", "enable_region_overrides": true, "extendable_session": false, "game_version": "Iuoe9rUUKroYulkG", "max_count": 24, "min_count": 42, "name": "feZm6ylxgLrpdiDA", "region_overrides": {"KUxi6cdlMwpC7Rpk": {"buffer_count": 0, "buffer_percent": 22, "max_count": 43, "min_count": 69, "name": "ia0BVNMgYLuxyOtL", "unlimited": false, "use_buffer_percent": true}, "BNhROMAMPzsSGwov": {"buffer_count": 92, "buffer_percent": 85, "max_count": 75, "min_count": 88, "name": "sKD2jUZ9epiEadVk", "unlimited": false, "use_buffer_percent": true}, "x5A0DtD9W3FHNLZg": {"buffer_count": 85, "buffer_percent": 76, "max_count": 68, "min_count": 65, "name": "ugwIaNtxzZQtAKRj", "unlimited": false, "use_buffer_percent": true}}, "regions": ["nJDLE9O6TFIWmmJz", "beVY6kC2pRwUKhj4", "0KkZTqsR3DXVXKCJ"], "session_timeout": 7, "unlimited": false, "use_buffer_percent": false}, "13QKmYHlnpf7lF1L": {"buffer_count": 90, "buffer_percent": 79, "configuration": "uR0mz70Ukdx5tfHw", "enable_region_overrides": true, "extendable_session": true, "game_version": "p1LIXFLVsniACDkk", "max_count": 69, "min_count": 17, "name": "LA1PZygCSBPNXn94", "region_overrides": {"yl8hsI1xNLcFNowQ": {"buffer_count": 37, "buffer_percent": 90, "max_count": 29, "min_count": 17, "name": "TyWrPIHd76lXJThs", "unlimited": true, "use_buffer_percent": false}, "FkqbVb7Q0eXZI7V0": {"buffer_count": 46, "buffer_percent": 59, "max_count": 70, "min_count": 30, "name": "ZxHfluEJGpV6bYOs", "unlimited": true, "use_buffer_percent": true}, "by9oKIRFBs9uxKPD": {"buffer_count": 41, "buffer_percent": 26, "max_count": 17, "min_count": 85, "name": "uHGbtxJT9e0veD9V", "unlimited": true, "use_buffer_percent": true}}, "regions": ["dHJEy9njxsHzwCFQ", "IqDQLtZcgOqqXBA3", "U4UtcdRDyP9Ow8mW"], "session_timeout": 75, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"JbagoUm2M8jrOgae": {"buffer_count": 7, "buffer_percent": 29, "max_count": 89, "min_count": 97, "name": "BxtAX106wj18mlCD", "unlimited": false, "use_buffer_percent": false}, "HzcYuD58QwwPZ7tD": {"buffer_count": 79, "buffer_percent": 94, "max_count": 70, "min_count": 16, "name": "7y3ZvxOZNWLm1uXR", "unlimited": true, "use_buffer_percent": false}, "rDe7EsOGn8dW5Hx0": {"buffer_count": 87, "buffer_percent": 7, "max_count": 64, "min_count": 11, "name": "6wkhGme9xkqpr3nI", "unlimited": false, "use_buffer_percent": true}}, "regions": ["7tCiV6jpYWgCdc0B", "9PcalPXko2oCxVL0", "C0kspEffb9mehayg"], "session_timeout": 66, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 65 'CreateDeploymentClient' test.out

#- 66 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'cgaTPITJQqZLoDNa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteDeploymentClient' test.out

#- 67 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '96' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 67 'GetAllPodConfigClient' test.out

#- 68 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'B34U7OCvDSYJIz4J' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 59, "mem_limit": 81, "params": "FzHg77efsBc701ti"}' \
    > test.out 2>&1
eval_tap $? 68 'CreatePodConfigClient' test.out

#- 69 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'T7eamIDKLZMFUrva' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePodConfigClient' test.out

#- 70 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '37' \
    --offset '13' \
    --q '2Ls7f3K96l9SCDNC' \
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
    --version 'OoLakN8ge3m2nfZw' \
    > test.out 2>&1
eval_tap $? 72 'ImageDetailClient' test.out

#- 73 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'PMazUqcOjewMmYAn' \
    --count '99' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 73 'ListServerClient' test.out

#- 74 CountServerDetailedClient
samples/cli/sample-apps Dsmc countServerDetailedClient \
    --namespace $AB_NAMESPACE \
    --region 'Z6MH5AOV6h9wVulh' \
    > test.out 2>&1
eval_tap $? 74 'CountServerDetailedClient' test.out

#- 75 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "XRf3WcPHTIuf1EXi"}' \
    > test.out 2>&1
eval_tap $? 75 'ServerHeartbeat' test.out

#- 76 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "CjPO5Mf7w4uZJWMR"}' \
    > test.out 2>&1
eval_tap $? 76 'DeregisterLocalServer' test.out

#- 77 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "cl08ZJfEEgJTewl5", "ip": "Imn9GLoSVHkgOrvC", "name": "X5mnQESaSdZucCkM", "port": 48}' \
    > test.out 2>&1
eval_tap $? 77 'RegisterLocalServer' test.out

#- 78 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "NaWl7NlQYWPumTlU", "pod_name": "c47ZRLQ2Hb1LlIhZ"}' \
    > test.out 2>&1
eval_tap $? 78 'RegisterServer' test.out

#- 79 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "uYpeQEAIOw27RWNv"}' \
    > test.out 2>&1
eval_tap $? 79 'ShutdownServer' test.out

#- 80 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'tejXCpuYhCOPLTt3' \
    > test.out 2>&1
eval_tap $? 80 'GetServerSessionTimeout' test.out

#- 81 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'tBabsKhkXlh11ZGV' \
    > test.out 2>&1
eval_tap $? 81 'GetServerSession' test.out

#- 82 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "zBe9ItNieGeGbp6B", "configuration": "I3rk4pN17iHmPGIR", "deployment": "tn8bh8BYtpJshDpH", "game_mode": "xA4XzlJIjNKVgkgh", "matching_allies": [{"matching_parties": [{"party_attributes": {"czygKy58xqDqe7Uu": {}, "TtpZQlUKWZZ1pdri": {}, "CTLJi8mUJIHeg5R3": {}}, "party_id": "9i6pXfQ5bPle4ekJ", "party_members": [{"user_id": "vHmFuOF3sSMiWhPW"}, {"user_id": "bqMcrosrwT3rekHq"}, {"user_id": "I7NVKY0UAIJL5umX"}]}, {"party_attributes": {"7Hxb2ACXo8vwufZw": {}, "Mp5AAfLJB8ErL8fM": {}, "4rsK0TRdsDEoyJKQ": {}}, "party_id": "fY1k4SCnZkVviCf0", "party_members": [{"user_id": "Q7ZA895wEjM1Bs7Q"}, {"user_id": "Qr8x6lJ1Kp6hUTmA"}, {"user_id": "soBwDKTMHK4KCd0u"}]}, {"party_attributes": {"6KnuhlUzEKauWfvG": {}, "2wavocZbqsbEnniX": {}, "34CIWe5I2fISbwpb": {}}, "party_id": "sCNz80HFzkA5AqyR", "party_members": [{"user_id": "K9J6CCJeErxDKqfU"}, {"user_id": "U4FMth5GlwNgz2LS"}, {"user_id": "49E6zZPcEx59LyQS"}]}]}, {"matching_parties": [{"party_attributes": {"jXuqpD911Vumi39V": {}, "049qMVnMfZKvW9zI": {}, "6jO6ySnq0c6lI8f7": {}}, "party_id": "7lsaNZf2RYLDbmE6", "party_members": [{"user_id": "U2h89x6PBCkxg4UT"}, {"user_id": "hJyflwbyCap1ANlS"}, {"user_id": "9v7ahWkuuA1SfdNO"}]}, {"party_attributes": {"1W4gDBqTmqNmoFqj": {}, "dpIA6tkycIOYZToe": {}, "Dm6D6H99EfTTEBYD": {}}, "party_id": "W2x7dwnuhYu9JNKL", "party_members": [{"user_id": "smYYiXXRTC0dvch8"}, {"user_id": "V86WTZFQFsLjwzzX"}, {"user_id": "47J8YDZDu759qLQQ"}]}, {"party_attributes": {"XxghEsn3UQQSjuC3": {}, "hm2Tp5UttMHh9Ed8": {}, "vUchSjeMj0MttaFH": {}}, "party_id": "gbediiOXq15W2rhT", "party_members": [{"user_id": "czcyqmwDBx9b57me"}, {"user_id": "FmNPPK9A3UzeGS5O"}, {"user_id": "t6n8dLEKVRPnTu0x"}]}]}, {"matching_parties": [{"party_attributes": {"Op0lphKQGimdsmMP": {}, "hF1H1IDrQscbp0aG": {}, "BdPNPJ77ckKAWYTQ": {}}, "party_id": "upNkXOyehtaLaSdH", "party_members": [{"user_id": "kBKoOKhoOy0zRVWg"}, {"user_id": "7KkzzOv5Bqau47EM"}, {"user_id": "7XyYPnj6yEVm8lVc"}]}, {"party_attributes": {"h3GwCyQRkLxhMsZO": {}, "hel0xvvCTgX1vMkL": {}, "n8669XIcEDmJQOX1": {}}, "party_id": "aiBAE1s7bPXOuDXj", "party_members": [{"user_id": "ALRCcWoY8dGkgfBw"}, {"user_id": "nvyrySAb5wg2zUF6"}, {"user_id": "7SOuf1gK2zWaC3P7"}]}, {"party_attributes": {"Toao0m5w8UOC7FLs": {}, "sOaiamcVCvu74505": {}, "pjVFfQxATWXL5HW5": {}}, "party_id": "0tBOXUtQcnyM6fWB", "party_members": [{"user_id": "5HxX1S8I3AmX9MvH"}, {"user_id": "P0SmDxf3VyBxBoxT"}, {"user_id": "R0LDUzPlx39136pb"}]}]}], "namespace": "qlXp4mI8wSUPxwX9", "notification_payload": {}, "pod_name": "fQR3GZFpBfGqrTeV", "region": "JOfpEBuaZwKTD0y3", "session_id": "8cuiqzmL0jnSR6G8"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateSession' test.out

#- 83 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"game_mode": "NFyrUBw44dM6Zexi", "matching_allies": [{"matching_parties": [{"party_attributes": {"oDTZZrR5c1VX4x3w": {}, "lBcYEevRXgiA6u1W": {}, "1k3ZSvLg0kmrT2DY": {}}, "party_id": "LXjqGFT9QumS2kq9", "party_members": [{"user_id": "HLMKRWJgxrMvJWa3"}, {"user_id": "5TlVaWJ2icDgZoQA"}, {"user_id": "wQ9Eb0j58MpLvyfn"}]}, {"party_attributes": {"8PLekRVPmyOrsfUd": {}, "ADYm3lElIbjS3bAT": {}, "u01KNFlPJWBgPCtF": {}}, "party_id": "gEpjaYWt6Sb9mTDe", "party_members": [{"user_id": "lwS8H1RXAWT9PhaE"}, {"user_id": "hfP1UFfltCEcZnWo"}, {"user_id": "apcu9tqDGxEdHhE8"}]}, {"party_attributes": {"ZqA5GaYuHeN2PAZO": {}, "g0QMH4r41xCxj2oC": {}, "qCO1S6H0LT6VDiIr": {}}, "party_id": "e1rUX5wPb62yokH7", "party_members": [{"user_id": "D3odCUGfMYegszXY"}, {"user_id": "2wISezEI9FaN9lFD"}, {"user_id": "IDVu4wj0SV5s6UZ2"}]}]}, {"matching_parties": [{"party_attributes": {"lsxCLfhVZsC3jG7r": {}, "WmbCt9BS4bC6Ywe0": {}, "LxsXAtg9ogflcjGs": {}}, "party_id": "nwWUp4HnL5Q6djz8", "party_members": [{"user_id": "upHCGfCND0QfVVPs"}, {"user_id": "ZsZXLwt7vusodr0i"}, {"user_id": "IgZIdZtJOo6AwPB3"}]}, {"party_attributes": {"RMXhoM4y25MzUtuE": {}, "wlNR541xdoIM90zv": {}, "VGjbmPhsrsELaViP": {}}, "party_id": "AIRkH2RLjvafEwOS", "party_members": [{"user_id": "VintZpGJrinQ2cRb"}, {"user_id": "drdAiVi1MZS9qMaZ"}, {"user_id": "R1RN5WNsZ9TWJGAJ"}]}, {"party_attributes": {"z4C4FILLyD3Xlz7X": {}, "Mjmf2mR35gBjNzXq": {}, "73MBiMGcJo7o6f9X": {}}, "party_id": "XADjmecNFbHP8KQO", "party_members": [{"user_id": "49woOF0LqwqUlHro"}, {"user_id": "rfHmbSEvC9NJGyDE"}, {"user_id": "5aYm11OYm0NNE1Rt"}]}]}, {"matching_parties": [{"party_attributes": {"mFz8KxVvtq2vnoRz": {}, "DTwiBNDr83yau7IV": {}, "RMTNzWm7S7wwIGVn": {}}, "party_id": "GgWdbcIFSU8pruPN", "party_members": [{"user_id": "uea5flkEELd4DWWI"}, {"user_id": "8aYznAw8onvZSPnc"}, {"user_id": "iGGCCCfDBsjJANg4"}]}, {"party_attributes": {"gtawSx3iWRuwdySj": {}, "mLKnoYlAZiPtsXA7": {}, "gXj5W73wE3HFSxJ5": {}}, "party_id": "wovDQoixtR3LOJcO", "party_members": [{"user_id": "IjdU7OJ8agKjP1oZ"}, {"user_id": "YFDQ1Vy735gzXGvv"}, {"user_id": "4VbwzCW2SGEAj9Qu"}]}, {"party_attributes": {"cRNoGg36PgGGPQAp": {}, "X1mxb0P3Jjy5SJkj": {}, "7dRI9FWQzOyWQWCp": {}}, "party_id": "p4a0Sv47bJSZMvgZ", "party_members": [{"user_id": "AJy7r80Vi5oeQw83"}, {"user_id": "VLiFXcdF5ZLHl5XK"}, {"user_id": "Y481oOdgD75C5gXU"}]}]}], "namespace": "t2rH3qQ3U8GHZt87", "notification_payload": {}, "session_id": "3WrhgbpMiLMP7Azq"}' \
    > test.out 2>&1
eval_tap $? 83 'ClaimServer' test.out

#- 84 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '0CrrHKKb0Ztl8N8r' \
    > test.out 2>&1
eval_tap $? 84 'GetSession' test.out

#- 85 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID '0HVtXoKzFgkYCZya' \
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
    --region 'Gu0yt27eqlPs5Ot6' \
    > test.out 2>&1
eval_tap $? 88 'ListProvidersByRegion' test.out

#- 89 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 89 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE