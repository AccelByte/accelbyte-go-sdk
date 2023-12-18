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
    --body '{"artifactPath": "CUyRwujyfvRTkqye", "coreDumpEnabled": false, "image": "PSEdO8Ve7jG67oJE", "imageReplicationsMap": {"DUU2z7UqFzIvMIrN": {"failure_code": "iUwq2jTRiuUj4MHV", "region": "3BkK0Qgxq8wi5rw9", "status": "UmVeUDZMcpF2L4kq", "uri": "yHDbrsxjeqQIg47K"}, "9x7yhk93072CDC5Y": {"failure_code": "Ew5KrdOTg7558qKl", "region": "VnCdHkEr7i7nnHka", "status": "Kt1Y76R5VDghAZY4", "uri": "K5igL3rzW0ee2etD"}, "wUXfm67XzoWniGQY": {"failure_code": "ZPGlAAlGSUYQzL6p", "region": "38iwYnydFmxjIwpV", "status": "BHVhEU6s4K14c4Mp", "uri": "7ZhmbX5trwfjAJca"}}, "namespace": "yJkbGEYSjb3KTeIH", "patchVersion": "k3TcFEnuGtYd5VED", "persistent": false, "version": "dOTcEfADxe9OCiCt"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "DjHEdS4M7ekcVWfN", "coreDumpEnabled": false, "dockerPath": "YfFihJkJmA04jTy8", "image": "yaox9XQyJ7I9W7Tw", "imageSize": 96, "namespace": "148ekHG8wf0oS5Zr", "persistent": false, "ulimitFileSize": 20, "version": "ANt32pUeEOUCRrPw"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "FKRj6pEqkoUeCD5R", "coreDumpEnabled": false, "dockerPath": "BZySOIbQ5rjWd7Bc", "image": "uvcWlZXeeTrnuRQ5", "imageSize": 57, "namespace": "UNWSBpdSH8hFhz6D", "patchVersion": "8pyfHgNoI4dlKhX1", "persistent": true, "ulimitFileSize": 78, "uploaderFlag": "jcfSTCIPUZm1ig4w", "version": "iEPbgRqkcMoLtIn9"}' \
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
    --body '{"claim_timeout": 22, "creation_timeout": 50, "default_version": "eaYTRcfSgsWPQ89n", "port": 99, "ports": {"xSRGtbJGQs79WM72": 43, "Bz2a0tLeL99cX5sy": 71, "0frqxeH3nRhVOXDQ": 13}, "protocol": "rqdNhVpUQuejJTL8", "providers": ["EJxq65ttnCl530uB", "wFtLwfuBF4foyMjg", "ojAGc8IAjipMwOTP"], "session_timeout": 86, "unreachable_timeout": 48}' \
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
    --body '{"claim_timeout": 78, "creation_timeout": 2, "default_version": "26u0hmg1vZg6QAWa", "port": 98, "protocol": "6vi0yYrdUMU94hkt", "providers": ["q9TmomhNIJwzOGBP", "GhFxmumGsdZgT5C0", "XqtuHY4bieJEBThI"], "session_timeout": 61, "unreachable_timeout": 77}' \
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
    --name 'Q507cOsO7HGRPBkq' \
    --count '55' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'OpuO1Im7QSdFsX9n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'gmNskTmnILReowi1' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 97, "buffer_percent": 49, "configuration": "PVVsySNV50vSvVnU", "enable_region_overrides": true, "extendable_session": false, "game_version": "xqqelhjkKL7UAqiJ", "max_count": 69, "min_count": 21, "overrides": {"OdhEQV9jJX7wZ6NE": {"buffer_count": 87, "buffer_percent": 16, "configuration": "hByoOp8vigLU8qLF", "enable_region_overrides": true, "extendable_session": false, "game_version": "ojxeJ5R73DH5xPA5", "max_count": 72, "min_count": 77, "name": "UPvzvBFKDZhtEl9b", "region_overrides": {"3jAtlPgFBAqu3iK0": {"buffer_count": 65, "buffer_percent": 89, "max_count": 2, "min_count": 93, "name": "lhP2GNFvaIOpCpIx", "unlimited": false, "use_buffer_percent": false}, "iSfEtMsrqT94uyVr": {"buffer_count": 99, "buffer_percent": 31, "max_count": 15, "min_count": 24, "name": "etN2HfWG7crNEFJC", "unlimited": true, "use_buffer_percent": true}, "FSbCba3OZHMJs004": {"buffer_count": 37, "buffer_percent": 44, "max_count": 87, "min_count": 52, "name": "I8vsxWRDtH7lSaBm", "unlimited": true, "use_buffer_percent": false}}, "regions": ["iAO47kVKawsmaBPb", "Owxlvys4lKoYH6L1", "BF0y1JksU7aRrGIn"], "session_timeout": 25, "unlimited": true, "use_buffer_percent": true}, "dgk3xi0kckIbjGZT": {"buffer_count": 79, "buffer_percent": 70, "configuration": "AxbcOlNjgHpYH8wu", "enable_region_overrides": true, "extendable_session": true, "game_version": "axGI5qB9vLv83Be3", "max_count": 23, "min_count": 88, "name": "dOcHbGnd3e81hjea", "region_overrides": {"5G7oWrvA8Pqdp8Vm": {"buffer_count": 41, "buffer_percent": 86, "max_count": 38, "min_count": 86, "name": "HjGaxhOyQGiMf5D9", "unlimited": true, "use_buffer_percent": true}, "IbRh4rCfcFEptRvq": {"buffer_count": 90, "buffer_percent": 45, "max_count": 8, "min_count": 29, "name": "5cUeSpZkZwSr7qEJ", "unlimited": false, "use_buffer_percent": true}, "ovtYqgDG8ll0oDlD": {"buffer_count": 36, "buffer_percent": 57, "max_count": 14, "min_count": 70, "name": "WNGnQF5dktiU4meV", "unlimited": true, "use_buffer_percent": false}}, "regions": ["Iv83LopOidhc0r7j", "yPXlV31IZCintHRx", "nSwdy4oQHNT0dz73"], "session_timeout": 93, "unlimited": true, "use_buffer_percent": true}, "V2WRgAfVmw7eyVoi": {"buffer_count": 86, "buffer_percent": 60, "configuration": "SzMBYrPhz910Z7Fs", "enable_region_overrides": false, "extendable_session": true, "game_version": "QOuiHPczZ72LhFUm", "max_count": 84, "min_count": 68, "name": "zcFs6MJspColiinA", "region_overrides": {"LDERYzgzwSFYo8WZ": {"buffer_count": 5, "buffer_percent": 13, "max_count": 89, "min_count": 53, "name": "OEEc8yN4L4kFRG4a", "unlimited": false, "use_buffer_percent": true}, "pxQHqeNnwY7EI7Zb": {"buffer_count": 24, "buffer_percent": 23, "max_count": 35, "min_count": 9, "name": "JSNgLhC19dPTu331", "unlimited": true, "use_buffer_percent": true}, "8bFyddqeVhqnOMPT": {"buffer_count": 37, "buffer_percent": 92, "max_count": 2, "min_count": 72, "name": "Va8Oz0tmtAGPW03l", "unlimited": false, "use_buffer_percent": true}}, "regions": ["dpy8KCKOXFSEV442", "uKvaAjjGKhPy2enC", "uJ6en05Od819xtAe"], "session_timeout": 0, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"bghODHNYcah8Umda": {"buffer_count": 90, "buffer_percent": 11, "max_count": 65, "min_count": 10, "name": "oFIALXrTOwxdtUNt", "unlimited": false, "use_buffer_percent": true}, "94IIeI9VcmEOJcZN": {"buffer_count": 90, "buffer_percent": 57, "max_count": 82, "min_count": 98, "name": "SlLGbVjmkqXbbivM", "unlimited": false, "use_buffer_percent": false}, "bZRUrMIpRjQkp1Ye": {"buffer_count": 76, "buffer_percent": 23, "max_count": 56, "min_count": 50, "name": "NIgkgtpuCIsKBKUm", "unlimited": true, "use_buffer_percent": false}}, "regions": ["wOTvRwm32BjKlVqC", "eAH1gECEZ377J8GJ", "Oc4GPt4L07Ni8BPT"], "session_timeout": 34, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment '3JCRNJ42JRhl8K8X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'kAxrRm362iGk0IeE' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 97, "buffer_percent": 48, "configuration": "NCFGxLtkyTHQztWx", "enable_region_overrides": false, "extendable_session": false, "game_version": "fq2sFhElHO4zHBiV", "max_count": 85, "min_count": 19, "regions": ["uhsyW5o9QM3Pkcru", "nOPi8NSt1mP5gR7w", "BQJ6BrkwBZ7HoTdG"], "session_timeout": 18, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'ykrzkdHA30dP8JNa' \
    --namespace $AB_NAMESPACE \
    --region 'QIYLopT1lrLRdLTd' \
    --body '{"buffer_count": 16, "buffer_percent": 43, "max_count": 21, "min_count": 90, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'YONNL89ZBOpNjqDh' \
    --namespace $AB_NAMESPACE \
    --region 'XqlO3mknEJD8fKK9' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'VYJt9HXWlQfuEXLx' \
    --namespace $AB_NAMESPACE \
    --region 'sZWDNGlsOIna5bpg' \
    --body '{"buffer_count": 59, "buffer_percent": 6, "max_count": 32, "min_count": 10, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'pI4ursurh78sCdyc' \
    --namespace $AB_NAMESPACE \
    --version 'lRg5hUbOO2YWo1yO' \
    --body '{"buffer_count": 66, "buffer_percent": 46, "configuration": "l5tzVcyxCa7oDqen", "enable_region_overrides": false, "extendable_session": false, "game_version": "ImFsqdbrsfLprGSi", "max_count": 13, "min_count": 5, "region_overrides": {"Y4OfxN7FSdeim4JJ": {"buffer_count": 50, "buffer_percent": 50, "max_count": 16, "min_count": 33, "name": "x5WU9Uu6asnlXchi", "unlimited": true, "use_buffer_percent": true}, "DaX7pfuH548Tpe3Q": {"buffer_count": 30, "buffer_percent": 11, "max_count": 23, "min_count": 84, "name": "l7o7g3fBmshRQkMi", "unlimited": false, "use_buffer_percent": true}, "zCWMZyYkAnA5WWAI": {"buffer_count": 43, "buffer_percent": 83, "max_count": 25, "min_count": 19, "name": "ATXeAogL3PKqoLca", "unlimited": true, "use_buffer_percent": false}}, "regions": ["VPrzCqJn07cUsefj", "cVSd7qBNLZIBtKx7", "t6Zv1SQyQM9E9RLg"], "session_timeout": 88, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'eObZScn1UdMHHVLH' \
    --namespace $AB_NAMESPACE \
    --version 'Jdg8OfB8J1O5ST5N' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'pilY9SbbMUDqFrru' \
    --namespace $AB_NAMESPACE \
    --version 'bh01ezWli5DfJiQU' \
    --body '{"buffer_count": 3, "buffer_percent": 42, "configuration": "tRvTKFdhPv3Ty7Dz", "enable_region_overrides": true, "game_version": "x8Pjw7pBM3IkdAJG", "max_count": 34, "min_count": 89, "regions": ["qhezYV21wVU0imGK", "RHE2eHKQrRlurbnq", "tO1Dob2PmCpf0yPU"], "session_timeout": 47, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment '9H9RpnhjmWIlOJOa' \
    --namespace $AB_NAMESPACE \
    --region 'lemP0ZcYjJuD2DIa' \
    --version 'ay0OB3lauixBirqj' \
    --body '{"buffer_count": 97, "buffer_percent": 45, "max_count": 71, "min_count": 74, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'GBZRsEw8lDDF3EAr' \
    --namespace $AB_NAMESPACE \
    --region '0keFD5C7LYcFxdyi' \
    --version 'CzPAv4iZ2nMs4noO' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'AFC8Gntpi076IzEP' \
    --namespace $AB_NAMESPACE \
    --region 'vLtnYsCHX5r8iiGT' \
    --version 'Vi6OCb27vsoAICpa' \
    --body '{"buffer_count": 3, "buffer_percent": 40, "max_count": 58, "min_count": 16, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '28' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name '3LOUJ72d9b0BXXR2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'efA4Joj1BxcuELO9' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 26, "mem_limit": 44, "params": "kekXhIqTKmQE5LTl"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'RpkSZaEGjKR9fEr7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'oWjkptDa1PJJUDo4' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 51, "mem_limit": 49, "name": "eMptupx5fdAekykB", "params": "A0gqxbmxpvNO4xkt"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'S7fxTyC4K4Pd5Uh3' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 87}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'WOWLre8y4Wnde6EF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name '6ebt8zwt3NTlXLhT' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "7bNJNFpLYgcSvyFt", "port": 16}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'F7UgcKfBxzau7AmO' \
    --sortBy 'updatedAt' \
    --sortDirection 'desc' \
    --count '5' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'Tkaf6Yg7WnW1Iln8' \
    --version 'jPiPIAsJz6JHAYOx' \
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
    --imageURI 'lMBcb1R71s0RoYet' \
    --version 'vmplaKPNzK12s6Nz' \
    --versionPatch 'HIGEAHgQY6OCNZ8i' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'iEtH6rgBjTQe6KkX' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'QIUyzbF23o7J2Ltp' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'MzBOZns8ox4pY564' \
    --versionPatch 'R68pH6nh7aWQTpeI' \
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
    --region 'lJLgBQzVETAIhCVJ' \
    --count '68' \
    --offset '92' \
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
    --region 'A5KyiAqVeQPXwFiM' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'fX0CzFRTuYJ0hQs5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'u2wzTy3Ph5Idz2RP' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'r6CwIlYpTdF3pS0t' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'TOrQkMJn6VlanYX5' \
    --withServer 'true' \
    --count '55' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'l9GageUL6w11zdac' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'mFk9jgKQ0jVHMakJ' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "jlF7kmmi3QOahBek", "repository": "4IGQtgYdAcvYDzJg"}' \
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
    --name 'ST6koq4MPeIp6ect' \
    --count '12' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'ioXAaQNkaE9rhGGR' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 51, "buffer_percent": 28, "configuration": "vYmTgVpc2FwaPM2b", "enable_region_overrides": true, "extendable_session": false, "game_version": "AgcPEzkYrfctDELw", "max_count": 78, "min_count": 28, "overrides": {"RbY4aanHJnM9Lf7A": {"buffer_count": 13, "buffer_percent": 4, "configuration": "9mqrZf3rBT2oq2nt", "enable_region_overrides": false, "extendable_session": true, "game_version": "t00jUl6a9A0gYkqm", "max_count": 96, "min_count": 3, "name": "SWWX4IvOYOTrRe6J", "region_overrides": {"elEw9S1RvK5IuZ09": {"buffer_count": 84, "buffer_percent": 62, "max_count": 77, "min_count": 14, "name": "BwofCzXrVqtBjxtK", "unlimited": true, "use_buffer_percent": true}, "Y8VKqpMKYqEINunQ": {"buffer_count": 63, "buffer_percent": 20, "max_count": 54, "min_count": 25, "name": "VrVu7y9yfHFIkU19", "unlimited": false, "use_buffer_percent": true}, "Wr1BDjocOLr6utJu": {"buffer_count": 3, "buffer_percent": 87, "max_count": 59, "min_count": 78, "name": "f2ynlsXmSA7kSXn3", "unlimited": true, "use_buffer_percent": true}}, "regions": ["IBrZA7RLCZTuXGW5", "6PWM3FwO9LWJ67yN", "efR7CwlahERiAl2Y"], "session_timeout": 82, "unlimited": false, "use_buffer_percent": true}, "XtisUIH66LCmbKxM": {"buffer_count": 83, "buffer_percent": 96, "configuration": "zZPK0n2YixShFW1m", "enable_region_overrides": false, "extendable_session": false, "game_version": "77P3EIqbWem2vqvB", "max_count": 92, "min_count": 21, "name": "fRNU9FTyo5yfcNgk", "region_overrides": {"54QCOuh3yFQ2U5Df": {"buffer_count": 95, "buffer_percent": 100, "max_count": 49, "min_count": 34, "name": "BtbrqJe5R9Gt3vY1", "unlimited": true, "use_buffer_percent": false}, "hJmtPYvFciNaSgRO": {"buffer_count": 91, "buffer_percent": 14, "max_count": 24, "min_count": 55, "name": "IqisJfzPFnYf8G2a", "unlimited": true, "use_buffer_percent": false}, "7igrG7QdavPGQxWR": {"buffer_count": 15, "buffer_percent": 7, "max_count": 85, "min_count": 61, "name": "VvNeRZ6gXpfoHhNP", "unlimited": false, "use_buffer_percent": false}}, "regions": ["kTjI0iQtAyop2ZnR", "pbIF6W7KpQ5jg7k2", "5ajoU5mTS3jmbG8J"], "session_timeout": 31, "unlimited": true, "use_buffer_percent": true}, "hy3VuQaQVkviCjQd": {"buffer_count": 12, "buffer_percent": 66, "configuration": "WIiXCjVDJrMrxANh", "enable_region_overrides": false, "extendable_session": true, "game_version": "9iPmLyzba2m9hHps", "max_count": 23, "min_count": 91, "name": "A4KiHUzNbhbHFBdI", "region_overrides": {"0GrK20bqDiyBPHMn": {"buffer_count": 13, "buffer_percent": 29, "max_count": 44, "min_count": 19, "name": "ImiDx06rkKl1zS2X", "unlimited": true, "use_buffer_percent": false}, "9b1RWWQgxiKrmsaN": {"buffer_count": 19, "buffer_percent": 48, "max_count": 35, "min_count": 30, "name": "WXeoykNYhvkJ3gWQ", "unlimited": true, "use_buffer_percent": false}, "cwg2DQ600QDbJA1T": {"buffer_count": 65, "buffer_percent": 40, "max_count": 35, "min_count": 70, "name": "u7HgpTvWx6oFKQeN", "unlimited": true, "use_buffer_percent": false}}, "regions": ["r5dj5RscZb52onDT", "aM06gWVDcFVgjyQS", "CHC9wBftyFjIxQBE"], "session_timeout": 81, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"i6XwdKzasJ5OZHtg": {"buffer_count": 51, "buffer_percent": 40, "max_count": 20, "min_count": 32, "name": "KU7AMOQuVmvqnqaL", "unlimited": false, "use_buffer_percent": false}, "XPb8kBkReX1OC2Fh": {"buffer_count": 44, "buffer_percent": 62, "max_count": 74, "min_count": 78, "name": "1521oxbRl2SJYdW0", "unlimited": true, "use_buffer_percent": false}, "oRwURHsRrXEA4zpL": {"buffer_count": 51, "buffer_percent": 69, "max_count": 54, "min_count": 43, "name": "QtKSfxUGVCpBlueq", "unlimited": true, "use_buffer_percent": true}}, "regions": ["KaZGLPq04SY9bzvL", "gEmmKtzVw7cLEhmj", "0lodkAxQLukGD4wS"], "session_timeout": 83, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'JKc27SadyHmLS0KJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '3' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name '1OesYAHCDlkQ8Q0b' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 97, "mem_limit": 35, "params": "CXvOGzcW3islgRKw"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'vRVY3FzSZQV7oUIa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '50' \
    --offset '86' \
    --q 'HAshIiKuVnPPpEC6' \
    --sortBy 'version' \
    --sortDirection 'desc' \
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
    --version '5v9Ad2Z8DpCsb10T' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'ifLFnSDlGOL9iP66' \
    --count '47' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "SZNMNnEUlYCgRxcM"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "U7Xd2lea6LKvtD4h"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "Od0eN7l6Sngrm44Q", "ip": "PiVfxRqzabIL3IIh", "name": "oNTNQny1wn3W351k", "port": 92}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "2vc8BUuSYRMSwp8g", "pod_name": "4eVRYUU64f66llLe"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "SDKG7Y8ALk5Eiuz6"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'H9TREbkymwOUe2Qx' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'aEeIHl3RilSX4MQq' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "4M4KQS7oKozN1n0u", "configuration": "5XAVmQBxpwHZGfdQ", "deployment": "LJl5aCBEKC1TGEyZ", "game_mode": "MIRq0bNekkojofqK", "matching_allies": [{"matching_parties": [{"party_attributes": {"QzEwCe8gz1FmDOIA": {}, "6K3VSAQJGzZglqQ6": {}, "EuIAUsh2N65I0giv": {}}, "party_id": "du6eRS14mfrqhO3E", "party_members": [{"user_id": "d6oN31LXKS2ki3id"}, {"user_id": "lQhhZeNqCIVoRnWG"}, {"user_id": "NBvOgpHlngAjx1eR"}]}, {"party_attributes": {"dzEaALdDlsWKiXSc": {}, "zmNqLEH36CCwO2DJ": {}, "VJ38gXoVy2Rj1RIK": {}}, "party_id": "s11UGJDTZkOnqtBR", "party_members": [{"user_id": "sIhoM3zSPM5kcGcB"}, {"user_id": "OkfHMubhfyBUJ7Vn"}, {"user_id": "W2J7nFqZdDnM3IW4"}]}, {"party_attributes": {"enoZpKEPMcE5nEtJ": {}, "d8rYUQlrGhfgN4NC": {}, "5ki6sx6rnAv9spuR": {}}, "party_id": "bJVgtV09wGMumJfM", "party_members": [{"user_id": "dRhlCt76y9l5gYLs"}, {"user_id": "Us56mz4m2EkjZa8J"}, {"user_id": "xYTTN3RfLIlZXE3C"}]}]}, {"matching_parties": [{"party_attributes": {"K71uscMMhuNR3ZND": {}, "DpW3WfxxffcEfjli": {}, "2zxfqft5aO8uFUyA": {}}, "party_id": "LWu4sM74KxKTmuR8", "party_members": [{"user_id": "P8OqRkUGJbmgdKAa"}, {"user_id": "Hz8OM9KXJzjSTp2Z"}, {"user_id": "M5qdnKwRplo3RYB1"}]}, {"party_attributes": {"FEC4D1JiLYmTNg8l": {}, "Byp2gBmW2pq4c49h": {}, "2ZnXYmnzhBWW8OI5": {}}, "party_id": "aWzO5cb9BhMYefDq", "party_members": [{"user_id": "6dMvbSjNDNTieLR4"}, {"user_id": "07W2O4TRTfEzfGAv"}, {"user_id": "j9xK1jzwp33coJWt"}]}, {"party_attributes": {"McxnSWlzScuhcrYJ": {}, "Caok9XykbJU1EO0v": {}, "Dum0O1XvLpOvpkjt": {}}, "party_id": "MldhN0zSHqc3kd2M", "party_members": [{"user_id": "gOe8T3522W7W6glR"}, {"user_id": "e6hlCv0DCxmlycYE"}, {"user_id": "0JEnjOarWvTMRqoX"}]}]}, {"matching_parties": [{"party_attributes": {"eQ2fFEcDya88mPPr": {}, "MCfVNHnEUWy1UhST": {}, "zn2FymKThDGfY2Hf": {}}, "party_id": "8ulMYd0K8GGm2OAG", "party_members": [{"user_id": "vxCGQq3F2B3g9GWr"}, {"user_id": "SgjGIMxmVmmF3zk5"}, {"user_id": "7On73pxsUSkOA9vg"}]}, {"party_attributes": {"hIn23wKDqOhrgEL6": {}, "isV5iUG7o38OGdzY": {}, "wr11ZGTx9rTf3JvS": {}}, "party_id": "QCXvavhtKXfLdwTT", "party_members": [{"user_id": "DI5mdGT6tLnbeVIX"}, {"user_id": "O6KLSh6SBoovoUx1"}, {"user_id": "ZfOClXggoDKKVNZD"}]}, {"party_attributes": {"DXRNKysppv4uh242": {}, "IavmIvBv62DHJCqL": {}, "YbuvfnXqqGsRDBnG": {}}, "party_id": "X7S4NpskLuPBjJ0e", "party_members": [{"user_id": "3qqGwCiWZDnBEiXP"}, {"user_id": "ZwJ3wFrro4tmGsyP"}, {"user_id": "f7JKL5xxDwNMmma4"}]}]}], "namespace": "aD0CbImeSRiWJC6q", "notification_payload": {}, "pod_name": "gqTomwIMYFcZhStL", "region": "2YzMhBCoEGX57ckR", "session_id": "2TGVPok9SJweWmFB"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "ey1IcwJM1KceEl2c"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'E1hA1aL3cJBhYjj9' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'FTDIoMoOs8g02aX9' \
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
    --region 'CAkG1iGSOo25Y5H0' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE