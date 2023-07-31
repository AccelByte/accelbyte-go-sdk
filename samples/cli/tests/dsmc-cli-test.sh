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
    --body '{"artifactPath": "g9GVVBDcWvHPdEUv", "image": "F5j64eaH6E3rCyg3", "namespace": "6S5dpUrktNfn7Dqh", "persistent": false, "version": "Texu38bznHx0Gx2w"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "b4D9gvsc5MqAC4hs", "dockerPath": "wWkNDeLe6amjSzYS", "image": "Zzd4dQci1yC1xDxS", "imageSize": 9, "namespace": "47fwfjjevzC19dg0", "persistent": false, "version": "iAAtOjf0VdcZhsUQ"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "QNUIBXJZRrfDTWxK", "dockerPath": "ceazHeZve1GcydMU", "image": "wEEMWFst8BJBYeW2", "imageSize": 51, "namespace": "jg1krQGApnAJUbMM", "patchVersion": "12zIYVkPHUDtRfMV", "persistent": true, "uploaderFlags": [{"name": "SxXUntrlqP5VIzum", "shorthand": "BGwwcEGLUnQqYoz9", "value": "ZLB1yiBUYAV95rxh"}, {"name": "1YYQrju0Sn7JfDfP", "shorthand": "8YSQQqIi2AuNML8I", "value": "nvsXvfVwQPl7D25z"}, {"name": "hwoS0Kqk8ySEXSZM", "shorthand": "TDlGrapwXhWIjEiy", "value": "bZlGz63RGQCFPlDQ"}], "version": "Ryr1RegmREPggbhb"}' \
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
    --body '{"claim_timeout": 34, "creation_timeout": 60, "default_version": "KAPGQDv5YWPLthPp", "port": 84, "ports": {"Ivfu2nuKTT22U1kZ": 94, "QAEQPGKzfNN7dCIQ": 99, "zDRY4NvubnxbEuW7": 14}, "protocol": "k5bEYaAm8edcdQ6Y", "providers": ["q302G6eOOn45ocwS", "KyZOxroVBBqxWfPt", "C8NRCKwAtcuTvV25"], "session_timeout": 47, "unreachable_timeout": 83}' \
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
    --body '{"claim_timeout": 37, "creation_timeout": 22, "default_version": "2oZdz7HSbyTb6P7I", "port": 69, "protocol": "JLYPyzmY63w8Ytp9", "providers": ["Z3cNVDBzxOte9w56", "57p9K6iS8ZImrxHc", "1hxvw4ShYIIeUu7V"], "session_timeout": 80, "unreachable_timeout": 73}' \
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
    --name 'LYTiBfKXZ9vnoXsG' \
    --count '31' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'azwe7BTODO6ArpD1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'V2YYVjmflAuTRaEX' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 69, "buffer_percent": 67, "configuration": "2ia25BYlxsrj5MCI", "enable_region_overrides": false, "extendable_session": true, "game_version": "iEy4rGaSQ1ZG5L6v", "max_count": 23, "min_count": 46, "overrides": {"lhYfMcTivDpfqzWI": {"buffer_count": 95, "buffer_percent": 42, "configuration": "6BjaerGIXhwq8vDR", "enable_region_overrides": true, "extendable_session": false, "game_version": "rdpQ29Vlr9LxDCqw", "max_count": 60, "min_count": 17, "name": "I3yUDeFpZk0g2LMm", "region_overrides": {"CjG6c8gqtTBdJfZQ": {"buffer_count": 18, "buffer_percent": 37, "max_count": 73, "min_count": 84, "name": "RINXHgS3QJezH0d0", "unlimited": false, "use_buffer_percent": false}, "9ACyCMh1klrFSacQ": {"buffer_count": 58, "buffer_percent": 65, "max_count": 38, "min_count": 88, "name": "x6G3rTdtwwZN9uvp", "unlimited": false, "use_buffer_percent": false}, "DASvEgRfH61TNQvc": {"buffer_count": 67, "buffer_percent": 68, "max_count": 56, "min_count": 50, "name": "qqCU7zA4Qf6Bp1zV", "unlimited": true, "use_buffer_percent": false}}, "regions": ["jVpWP12miNH1hqtF", "To9cuKgx7uXp4EYR", "k0kBMnByGlrc5Rmu"], "session_timeout": 84, "unlimited": true, "use_buffer_percent": true}, "wA2x5b4hZryJnTlI": {"buffer_count": 56, "buffer_percent": 59, "configuration": "KeehOepZ5BnzSpQp", "enable_region_overrides": false, "extendable_session": true, "game_version": "LiYd62zfhB11tjVY", "max_count": 11, "min_count": 33, "name": "kjxK5cgt8WbrdohG", "region_overrides": {"bvrcGgONYhflh411": {"buffer_count": 87, "buffer_percent": 48, "max_count": 29, "min_count": 78, "name": "aPbAQ0uQdVb2rXvW", "unlimited": false, "use_buffer_percent": false}, "trimEyGAstSsPop5": {"buffer_count": 6, "buffer_percent": 26, "max_count": 91, "min_count": 26, "name": "TEFEAM49nVFOV8Pp", "unlimited": true, "use_buffer_percent": true}, "Yd4Jw2PK6Y6yEcmy": {"buffer_count": 84, "buffer_percent": 22, "max_count": 22, "min_count": 83, "name": "HcgHnPIzAhCd2G8y", "unlimited": false, "use_buffer_percent": false}}, "regions": ["RMtUiIJaTADYpb3j", "KuUegVwjEeJ0ip7W", "XYivjefpW5aFhZX2"], "session_timeout": 0, "unlimited": false, "use_buffer_percent": true}, "c5FXwsZPMMSVae7P": {"buffer_count": 37, "buffer_percent": 57, "configuration": "8PQthNAFbZy0ZvE3", "enable_region_overrides": false, "extendable_session": true, "game_version": "tlUTVNGv8Ph8tcXd", "max_count": 69, "min_count": 45, "name": "Gg9R9D1HZnF7EpbI", "region_overrides": {"kYZmZ5ss07ISMYLd": {"buffer_count": 82, "buffer_percent": 25, "max_count": 9, "min_count": 84, "name": "jC6NX2HYuuicZOKi", "unlimited": false, "use_buffer_percent": true}, "1lbbNqXybP2pSb4I": {"buffer_count": 7, "buffer_percent": 87, "max_count": 64, "min_count": 12, "name": "Lb0xY5Sv0fF2f7SF", "unlimited": true, "use_buffer_percent": false}, "ve2Dl2IuNq1oEVrP": {"buffer_count": 52, "buffer_percent": 23, "max_count": 95, "min_count": 82, "name": "4V5grrVtLuDEKNmv", "unlimited": true, "use_buffer_percent": false}}, "regions": ["CvxYJqtZROhV5xe4", "WaWE0JMVH8KV2X18", "FzZey3KDbeYe4vIF"], "session_timeout": 97, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"COOYSCPLxcLKAfU4": {"buffer_count": 66, "buffer_percent": 22, "max_count": 37, "min_count": 13, "name": "kJQ3OSucfNIhT9Mz", "unlimited": true, "use_buffer_percent": true}, "tGfOhxwFzlCkwBai": {"buffer_count": 87, "buffer_percent": 63, "max_count": 49, "min_count": 26, "name": "ZsxSN8w5w6tm1A1V", "unlimited": false, "use_buffer_percent": true}, "GMTsqAwqVjkKHi8y": {"buffer_count": 69, "buffer_percent": 18, "max_count": 66, "min_count": 19, "name": "u8xYhO7Qn44Qdrr8", "unlimited": true, "use_buffer_percent": true}}, "regions": ["TmiLhO4p6YaocdKR", "iePagGHNUfZcfsH3", "mt5cUsSW8y7YI2e2"], "session_timeout": 61, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'MKMEaS47Aug9YeN2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'af6kqwdVcLi69kob' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 40, "buffer_percent": 45, "configuration": "KRCzYcHtANKOynvj", "enable_region_overrides": false, "extendable_session": false, "game_version": "UH7yhY9nTmwz4beW", "max_count": 44, "min_count": 95, "regions": ["aSGO3xpGJKEoKpnE", "J6fEIrRlbGkMyOwp", "6SeEyC7Cr0cDUZuM"], "session_timeout": 59, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment '9aTfXLtVNEgXhUBc' \
    --namespace $AB_NAMESPACE \
    --region 'Wt6ZFDRmKHUDen2X' \
    --body '{"buffer_count": 94, "buffer_percent": 13, "max_count": 32, "min_count": 20, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'Z9t0nqTfoE4W1DbG' \
    --namespace $AB_NAMESPACE \
    --region 'iKFybkcy2iyk9k53' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment '1SPSec5zMoCnh2I1' \
    --namespace $AB_NAMESPACE \
    --region 'kjKIqsHCa1IEnm8b' \
    --body '{"buffer_count": 56, "buffer_percent": 81, "max_count": 5, "min_count": 35, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'ZHcXwl1yAU6neRqQ' \
    --namespace $AB_NAMESPACE \
    --version 'saYJfgJKN77kwj2m' \
    --body '{"buffer_count": 58, "buffer_percent": 36, "configuration": "otDhr6DDTXVryOqE", "enable_region_overrides": false, "extendable_session": true, "game_version": "ZLu0pzTTl8ybWtIb", "max_count": 78, "min_count": 48, "region_overrides": {"aAxlP6mJ5pdksL9G": {"buffer_count": 65, "buffer_percent": 14, "max_count": 22, "min_count": 63, "name": "KjFVfkgyTRAbolAR", "unlimited": false, "use_buffer_percent": false}, "E0VFJQj5TMKzRewc": {"buffer_count": 39, "buffer_percent": 17, "max_count": 29, "min_count": 87, "name": "XuxKwVJgY7u3JY0n", "unlimited": true, "use_buffer_percent": false}, "v7TzHSA9dp7TkN5h": {"buffer_count": 81, "buffer_percent": 32, "max_count": 51, "min_count": 47, "name": "Jifc85fxVgDFaz8V", "unlimited": false, "use_buffer_percent": true}}, "regions": ["tLVcs9Ac8Wp2Lxwt", "Eu6F7shajnMzZxEp", "6LD66NeBwzWiNZjD"], "session_timeout": 99, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment '7S61OeV48HQTshHQ' \
    --namespace $AB_NAMESPACE \
    --version '4N0zFit5IBC2qsPM' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'rBwwugIRieuKCGHv' \
    --namespace $AB_NAMESPACE \
    --version 'ZzBdwV0Kkl7GYoxj' \
    --body '{"buffer_count": 50, "buffer_percent": 34, "configuration": "0a3H7oCE27LCjl3n", "enable_region_overrides": true, "game_version": "ZlmC04yHzAMU47nT", "max_count": 34, "min_count": 100, "regions": ["k6PNoUsxW2l90yzt", "jLgLDNDQryzgYIT2", "5s50TiaBgD4QPM64"], "session_timeout": 61, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'X6D5mjPprEaWcN8C' \
    --namespace $AB_NAMESPACE \
    --region 'a1QVz2SBMS68KGAZ' \
    --version 'cJ3JmjGC4XjIIfZB' \
    --body '{"buffer_count": 85, "buffer_percent": 15, "max_count": 12, "min_count": 62, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'VMW1mTD5E1IwdfMb' \
    --namespace $AB_NAMESPACE \
    --region 'JmGOgmWGrgXz2gwr' \
    --version 'GvJShyKZKogDc2PI' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'zmhoJHplKh2pCInL' \
    --namespace $AB_NAMESPACE \
    --region 'lPziSO30vckQUOMS' \
    --version 'hRQztcLwZK2cHP6r' \
    --body '{"buffer_count": 78, "buffer_percent": 30, "max_count": 78, "min_count": 52, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '87' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'kHZfTSeJAtNXPijS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'yNpWzBcOMdt25v2o' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 18, "mem_limit": 92, "params": "uDph3QmCpNdoW7LL"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'eGi40e8c1tkJYgC8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'Ft0vlK8uDejfKPEn' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 39, "mem_limit": 38, "name": "HtTKI8JxXC0rYXaO", "params": "fqSNV8bZWiOStFzw"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '6kNH5QW6aUmbpqoZ' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 11}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'ie9coViH3wtgENbC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'NhG7yKfdiQcdjePM' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "XqJ4mm1fD63dTwA2", "port": 81}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'KoKe591l6XbRsAH8' \
    --sortBy 'version' \
    --sortDirection 'desc' \
    --count '67' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'hrD3pzNwFlpeRvFp' \
    --version 'Zdo8zgsTheTBHyyY' \
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
    --imageURI 'GcncXLNjt6fujfaS' \
    --version 'BMoQrx8K4VoZ737K' \
    --versionPatch 'lNlRODdUS3dcB3j1' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'YMBXV9DTd3QkZCAr' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'LuFR6cn3A16p4FZx' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'JpVwLCDiBeRi2yHq' \
    --versionPatch 'CqxxUbquQ7tEen4r' \
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
    --region '9aftOfhrbNP2IP6X' \
    --count '66' \
    --offset '63' \
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
    --region 'RnW8HpE3gWX33Cgl' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'KvUVD9YDmqLgqoBR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'WMSDyH7FHbx7dWOT' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'aVQWgPb8eTK3hWiU' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region '5z1s6ZtsjzZop8aT' \
    --withServer 'false' \
    --count '76' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'ojA9IDjb0o4bsPR6' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'qQhw7f7yDw68JWNQ' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "56gZ0s2mMd6pxMwD", "repository": "PsbRjSjKvirVwLls"}' \
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
    --name 'GgHygC9zNInzpdiW' \
    --count '61' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'qHqVgAptVOVn145x' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 69, "buffer_percent": 44, "configuration": "LasIIWYAiOY6pV0F", "enable_region_overrides": true, "extendable_session": true, "game_version": "kminz2K5JXYW5GRt", "max_count": 27, "min_count": 13, "overrides": {"DG4QAt0HtOIdUC28": {"buffer_count": 51, "buffer_percent": 79, "configuration": "Q35IhPn30BNLOAIz", "enable_region_overrides": true, "extendable_session": false, "game_version": "GDv6YlavZEAFB5nR", "max_count": 53, "min_count": 77, "name": "GoGHuBPwcbkrAkMU", "region_overrides": {"W8XHhwzwbPWn7q6q": {"buffer_count": 97, "buffer_percent": 73, "max_count": 84, "min_count": 58, "name": "8tOdwOgRv1iNLmpd", "unlimited": false, "use_buffer_percent": true}, "xDcvawulKDYqlg0n": {"buffer_count": 47, "buffer_percent": 46, "max_count": 5, "min_count": 64, "name": "vAE83rp1M68u3hDP", "unlimited": false, "use_buffer_percent": false}, "gHIdUkWRxlFFasKZ": {"buffer_count": 81, "buffer_percent": 22, "max_count": 93, "min_count": 7, "name": "zQKFjEmsMXQIhikQ", "unlimited": false, "use_buffer_percent": false}}, "regions": ["eYr9KBna96PqfbFE", "0WndCxF353uPAyN3", "qCO3DzRAzWnsuYw4"], "session_timeout": 46, "unlimited": true, "use_buffer_percent": true}, "eHufeOgMXgINy2hH": {"buffer_count": 15, "buffer_percent": 5, "configuration": "DIzM8TuHxJaanxDX", "enable_region_overrides": false, "extendable_session": true, "game_version": "mXlEdHiEmMiHu3Q0", "max_count": 46, "min_count": 7, "name": "rOi3xZtaD9VXxdZE", "region_overrides": {"G1ypp0K0SDu6fvfJ": {"buffer_count": 25, "buffer_percent": 62, "max_count": 53, "min_count": 67, "name": "twKc1wMCIP65EWgm", "unlimited": false, "use_buffer_percent": false}, "gIOgYMc8ImAMGdPp": {"buffer_count": 55, "buffer_percent": 55, "max_count": 99, "min_count": 56, "name": "0Dr9oHGExcGhYgD3", "unlimited": true, "use_buffer_percent": true}, "EHZZuVrjvl9BCXqN": {"buffer_count": 94, "buffer_percent": 59, "max_count": 63, "min_count": 22, "name": "VJ8ywC5SzI6i2Q8V", "unlimited": true, "use_buffer_percent": true}}, "regions": ["BOs9MZzYfhaqoWeh", "wQIOPMsnECmyMcQ5", "JkS6RoNN3hD5SpUe"], "session_timeout": 28, "unlimited": true, "use_buffer_percent": false}, "8MYtYT9VlHJ7dBSw": {"buffer_count": 45, "buffer_percent": 18, "configuration": "e0RnMe5YZG0p4miP", "enable_region_overrides": false, "extendable_session": false, "game_version": "HD5XRJ3LRL2s7n5j", "max_count": 67, "min_count": 92, "name": "SVsGXBHvF7GtRGx8", "region_overrides": {"dnRT8kmQIZnmXpFl": {"buffer_count": 97, "buffer_percent": 2, "max_count": 20, "min_count": 72, "name": "yKm6D9H3NoFkeZ5x", "unlimited": true, "use_buffer_percent": true}, "4VB4i5lHEDjtvvL1": {"buffer_count": 50, "buffer_percent": 21, "max_count": 34, "min_count": 14, "name": "JrEdDNkva5t4sEjE", "unlimited": false, "use_buffer_percent": false}, "lhCk4iPLT7yEgENe": {"buffer_count": 57, "buffer_percent": 21, "max_count": 44, "min_count": 70, "name": "37U8sFWeayVwVUH9", "unlimited": true, "use_buffer_percent": true}}, "regions": ["SnDIXRtzqoFnU9Cv", "hrlCOEFqLxWbDGTH", "e2BsIKlcgnylqjLq"], "session_timeout": 93, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"QCvGxmXNhYvbuf9S": {"buffer_count": 31, "buffer_percent": 35, "max_count": 2, "min_count": 1, "name": "pgIcntTUMe0VUzBt", "unlimited": false, "use_buffer_percent": false}, "ldax3cleMYTU982f": {"buffer_count": 22, "buffer_percent": 46, "max_count": 9, "min_count": 39, "name": "obcd6HAOxpNxQYDV", "unlimited": false, "use_buffer_percent": false}, "FCcrbOPX3G46m4nq": {"buffer_count": 92, "buffer_percent": 42, "max_count": 92, "min_count": 14, "name": "p1xG1MQIJyvKN5MY", "unlimited": false, "use_buffer_percent": true}}, "regions": ["ENcFGMVKz9cM9PrH", "cJ3XmpVYS9shbTBG", "JHTJIdMKjmB4DJrc"], "session_timeout": 12, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'Mlj5lXY08cQRVhs1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '68' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'hktR47A4sKcKkgHM' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 83, "mem_limit": 37, "params": "319rYLCDdLwNthcH"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'GeQnMXmQ6ejAzgeE' \
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
    --version 'J0HztsmROUmxKJvw' \
    > test.out 2>&1
eval_tap $? 65 'ImageDetailClient' test.out

#- 66 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region '3ZXJ79qxGeFbFIVh' \
    --count '20' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 66 'ListServerClient' test.out

#- 67 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "5JjjLH4LAV7Mqlla"}' \
    > test.out 2>&1
eval_tap $? 67 'ServerHeartbeat' test.out

#- 68 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "l1LomOnMYlkFFvat"}' \
    > test.out 2>&1
eval_tap $? 68 'DeregisterLocalServer' test.out

#- 69 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "Q7yiEcqxomvgux0B", "ip": "cgiTCY1WTaFsPSsn", "name": "PxqscdghnIx0um9p", "port": 4}' \
    > test.out 2>&1
eval_tap $? 69 'RegisterLocalServer' test.out

#- 70 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "DWmgVUcMWN9xLGLS", "pod_name": "xIUzsYtHaWubwNsF"}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterServer' test.out

#- 71 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "CvN9vhLChgA8tD8V"}' \
    > test.out 2>&1
eval_tap $? 71 'ShutdownServer' test.out

#- 72 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'UgseU99QvWy4bszF' \
    > test.out 2>&1
eval_tap $? 72 'GetServerSessionTimeout' test.out

#- 73 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'BzgQQxRFxcbRCjHu' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSession' test.out

#- 74 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "nLKSeqR5mJ63a8aA", "configuration": "ap88kDUvQMfrSbsI", "deployment": "dp6rx4oi5LMpEYo5", "game_mode": "B9qF3LUhnXKIWh4w", "matching_allies": [{"matching_parties": [{"party_attributes": {"p7m40xowKTBd2Yr2": {}, "aIFexSbhqTZJ2mUc": {}, "HJqmONHbENMPRWfy": {}}, "party_id": "TCc8dzPoPXftOgDJ", "party_members": [{"user_id": "KH2jwSwxEItj2fZp"}, {"user_id": "GSSIuqxvMrYA0Hfi"}, {"user_id": "VrLV2hzQx1M0y4sE"}]}, {"party_attributes": {"uLmGlcf3XYhqKX2Q": {}, "Xc9DP1YJi9mWsOAS": {}, "7owJtREJVEh9ITaA": {}}, "party_id": "W6wvy7Np3j85BYcZ", "party_members": [{"user_id": "ThMHkHxJZ8yf2AqR"}, {"user_id": "Nmp8SJ0U5aeDkUR2"}, {"user_id": "VInFcQXx1BxBeHbB"}]}, {"party_attributes": {"OrTEHrYMZ3sFx8W5": {}, "RgRGyLUI6gWaEbbp": {}, "9AubcgeFdZh2hksB": {}}, "party_id": "v2pL9sMoNUjHnl2W", "party_members": [{"user_id": "2Ht8wFBJvrx7Z5Qa"}, {"user_id": "NaOvJ3DvNNhm8d0d"}, {"user_id": "kO4wbbb0si4tsNHs"}]}]}, {"matching_parties": [{"party_attributes": {"9eHIjkrLdRXVomu8": {}, "OgvXcsvstImoU8Sq": {}, "fNT7RiYgeauyJURM": {}}, "party_id": "PMVXnvcbfVleimf9", "party_members": [{"user_id": "qyI0AZDC4uK8sKNU"}, {"user_id": "VTNrcfYofcIToQhM"}, {"user_id": "nnnrTFqac3cbOMr2"}]}, {"party_attributes": {"9imI9JYMm6IHr8RV": {}, "rmMVdBGcQvU17aKo": {}, "OylmrgSUq1OmcuY3": {}}, "party_id": "UYyRYVb7tI0tvjAk", "party_members": [{"user_id": "rjFo2aXXCVmWvV5t"}, {"user_id": "l3Yg1I5wlEUkUixY"}, {"user_id": "FZCTMEugiPmUR1n9"}]}, {"party_attributes": {"Lh6x2GGQvta0r4Ja": {}, "s6ueVQoSu1TFHutP": {}, "2w1SBCnTeNezBMkW": {}}, "party_id": "Vf7c7oepZ37i91v0", "party_members": [{"user_id": "JCAK8EEKAOGnTmNA"}, {"user_id": "HhAGlyK39oN7Eu4t"}, {"user_id": "rVAClr5eBq0h51WJ"}]}]}, {"matching_parties": [{"party_attributes": {"gFWzUujffLj6xebE": {}, "q7LVpaUbBhhraBF2": {}, "qzGtCk5MltivqHRd": {}}, "party_id": "qmOltqV8JEzdyTwc", "party_members": [{"user_id": "QwejDP4ab4UeS3Qz"}, {"user_id": "CO7UlVTy92AHaWtm"}, {"user_id": "dUgZutDPfS8fbp16"}]}, {"party_attributes": {"Vmmroky2wrBVQMG4": {}, "V4y50yGJEVGiQbZe": {}, "h8A1kLvGJvFi6CZl": {}}, "party_id": "PwC76ZVng0Sf4zdP", "party_members": [{"user_id": "AOjHucbiJFDnCbik"}, {"user_id": "rP7quXrEXbScnmSo"}, {"user_id": "ZC437SaIJXSWYN0V"}]}, {"party_attributes": {"eBSDU7FAd5uJSRbA": {}, "NQQ4fEAZUmcZc3cH": {}, "rAs4fy6Tp2tdvqkN": {}}, "party_id": "8R7FFkUzko1kw6xl", "party_members": [{"user_id": "Zao3mzCtI0UAI6df"}, {"user_id": "PHhg5QMIPVd7kMfz"}, {"user_id": "fVTdczyeXgKqpPAB"}]}]}], "namespace": "S2PItRMINiX1Jx9l", "notification_payload": {}, "pod_name": "NIpMM2SyywO0aP7X", "region": "wdajFdwUsqqKQLjm", "session_id": "ZwQIXavrUnildIC1"}' \
    > test.out 2>&1
eval_tap $? 74 'CreateSession' test.out

#- 75 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "u8VH9lAtiR4gRWth"}' \
    > test.out 2>&1
eval_tap $? 75 'ClaimServer' test.out

#- 76 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'J2izPjAJ3MYscF37' \
    > test.out 2>&1
eval_tap $? 76 'GetSession' test.out

#- 77 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'IHEiCOcbMbIFb4Xi' \
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
    --region 'SvBhzMaeCuQmeOZO' \
    > test.out 2>&1
eval_tap $? 80 'ListProvidersByRegion' test.out

#- 81 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 81 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE