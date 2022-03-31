#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_TOKEN="/tmp/justice-sample-apps/userData"
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=67

FINISHED_COUNT=0
SUCCESS_COUNT=0
FAILED_COUNT=0

export JUSTICE_BASE_URL="http://0.0.0.0:8080"
export APP_CLIENT_ID="admin"
export APP_CLIENT_SECRET="admin"

create_file() {
    touch $1
}

delete_file() {
    [ ! -e $1 ] || rm $1
}

update_status() {
    return_code=$1
    operation_name=$2

    FINISHED_COUNT=$(( $FINISHED_COUNT + 1 ))

    if [ $return_code == 0 ]
    then
        SUCCESS_COUNT=$(( $SUCCESS_COUNT + 1 ))
        echo "ok $FINISHED_COUNT $operation_name"
    else
        FAILED_COUNT=$(( $FAILED_COUNT + 1 ))
        echo "not ok $FINISHED_COUNT - $operation_name"
        echo '  ---'
        echo '  error: |-'
        while read line; do
          echo "    $line" | tr '\n' ' '
        echo $line
        done < $TEMP_FILE
    fi
}

create_file 'tmp.dat'

rm -f $TEMP_TOKEN
mkdir -p $(dirname $TEMP_TOKEN)
echo {"\"access_token"\":"\"foo"\"} >> $TEMP_TOKEN
echo "1..$OPERATIONS_COUNT"

#- 1 listConfig
samples/cli/sample-apps Dsmc listConfig \
    >$TEMP_FILE 2>&1
update_status $? 'listConfig'
delete_file $TEMP_FILE

#- 2 saveConfig
update_status 0 'saveConfig (skipped deprecated)'

#- 3 updateImage
samples/cli/sample-apps Dsmc updateImage \
    --body '{"artifactPath": "FtBxyZcD", "image": "XBpGlsQu", "namespace": "Ju8vMf0I", "persistent": true, "version": "JkTrd8ID"}' \
    >$TEMP_FILE 2>&1
update_status $? 'updateImage'
delete_file $TEMP_FILE

#- 4 createImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "cV2zXnTK", "dockerPath": "jXY1bPqa", "image": "miBxx9Cs", "namespace": "18EY84ek", "persistent": true, "version": "qRzHU1oh"}' \
    >$TEMP_FILE 2>&1
update_status $? 'createImage'
delete_file $TEMP_FILE

#- 5 importImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    >$TEMP_FILE 2>&1
update_status $? 'importImages'
delete_file $TEMP_FILE

#- 6 createImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "570KQBVa", "dockerPath": "ewc72krS", "image": "ha68n3Yn", "namespace": "ozp1C2Km", "patchVersion": "IQTuBdNE", "persistent": true, "version": "xFb8CJ17"}' \
    >$TEMP_FILE 2>&1
update_status $? 'createImagePatch'
delete_file $TEMP_FILE

#- 7 getConfig
samples/cli/sample-apps Dsmc getConfig \
    --namespace 'M7DJZaMS' \
    >$TEMP_FILE 2>&1
update_status $? 'getConfig'
delete_file $TEMP_FILE

#- 8 createConfig
samples/cli/sample-apps Dsmc createConfig \
    --body '{"claim_timeout": 47, "creation_timeout": 61, "default_version": "CbZbygyo", "port": 1, "ports": {"rORoeNHS": 2}, "protocol": "8Rh3kgs9", "providers": ["qqJbnQso"], "session_timeout": 54, "unreachable_timeout": 12}' \
    --namespace 'iVpP8Cm3' \
    >$TEMP_FILE 2>&1
update_status $? 'createConfig'
delete_file $TEMP_FILE

#- 9 deleteConfig
samples/cli/sample-apps Dsmc deleteConfig \
    --namespace 'yvASUoxd' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteConfig'
delete_file $TEMP_FILE

#- 10 updateConfig
samples/cli/sample-apps Dsmc updateConfig \
    --body '{"claim_timeout": 46, "creation_timeout": 46, "default_version": "FqmAGTJ8", "port": 68, "protocol": "EdagEtp4", "providers": ["w29KOu9c"], "session_timeout": 87, "unreachable_timeout": 98}' \
    --namespace 'DqWHkkP8' \
    >$TEMP_FILE 2>&1
update_status $? 'updateConfig'
delete_file $TEMP_FILE

#- 11 clearCache
samples/cli/sample-apps Dsmc clearCache \
    --namespace 'npLEKMfj' \
    >$TEMP_FILE 2>&1
update_status $? 'clearCache'
delete_file $TEMP_FILE

#- 12 getAllDeployment
samples/cli/sample-apps Dsmc getAllDeployment \
    --namespace 'iX7jpkVZ' \
    --count '21' \
    --offset '69' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllDeployment'
delete_file $TEMP_FILE

#- 13 getDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'aQYEmqGo' \
    --namespace 'dOEGt9gP' \
    >$TEMP_FILE 2>&1
update_status $? 'getDeployment'
delete_file $TEMP_FILE

#- 14 createDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --body '{"allow_version_override": false, "buffer_count": 5, "buffer_percent": 16, "configuration": "0JkvIas7", "enable_region_overrides": true, "game_version": "cYnFAJ3D", "max_count": 72, "min_count": 91, "overrides": {"4Eogg0Y3": {"buffer_count": 93, "buffer_percent": 29, "configuration": "Ylpv5bVA", "enable_region_overrides": false, "game_version": "tsDhUTDU", "max_count": 36, "min_count": 5, "name": "bQDjbTQu", "region_overrides": {"PMz2PTRl": {"buffer_count": 21, "buffer_percent": 49, "max_count": 93, "min_count": 82, "name": "Ow6zPFJ4", "use_buffer_percent": false}}, "regions": ["wmzBBSMN"], "use_buffer_percent": false}}, "region_overrides": {"oAAOjKNj": {"buffer_count": 11, "buffer_percent": 4, "max_count": 67, "min_count": 25, "name": "093aYgBU", "use_buffer_percent": true}}, "regions": ["qjyK0XH4"], "use_buffer_percent": false}' \
    --deployment 'RSOFQBtu' \
    --namespace '23REZ8hR' \
    >$TEMP_FILE 2>&1
update_status $? 'createDeployment'
delete_file $TEMP_FILE

#- 15 deleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'VX7LGOvD' \
    --namespace 'dYiQS9i7' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteDeployment'
delete_file $TEMP_FILE

#- 16 updateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --body '{"allow_version_override": false, "buffer_count": 94, "buffer_percent": 57, "configuration": "91pjG9gp", "enable_region_overrides": true, "game_version": "L6ycTQdv", "max_count": 22, "min_count": 26, "regions": ["2LAuSQWE"], "use_buffer_percent": true}' \
    --deployment 'E1YHo9m1' \
    --namespace '26ZWc8hH' \
    >$TEMP_FILE 2>&1
update_status $? 'updateDeployment'
delete_file $TEMP_FILE

#- 17 createRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --body '{"buffer_count": 38, "buffer_percent": 97, "max_count": 43, "min_count": 3, "use_buffer_percent": true}' \
    --deployment 'gUqslArF' \
    --namespace 'PiHUIvaC' \
    --region 'v8kU9dBB' \
    >$TEMP_FILE 2>&1
update_status $? 'createRootRegionOverride'
delete_file $TEMP_FILE

#- 18 deleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'pdsJLhsV' \
    --namespace 'yExrkxoo' \
    --region 't0B7WOfe' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteRootRegionOverride'
delete_file $TEMP_FILE

#- 19 updateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --body '{"buffer_count": 35, "buffer_percent": 4, "max_count": 7, "min_count": 31, "use_buffer_percent": false}' \
    --deployment 'i37Ds7YS' \
    --namespace 'fExaI3uz' \
    --region 'LteMbFAl' \
    >$TEMP_FILE 2>&1
update_status $? 'updateRootRegionOverride'
delete_file $TEMP_FILE

#- 20 createDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --body '{"buffer_count": 39, "buffer_percent": 14, "configuration": "r7HmOYiB", "enable_region_overrides": true, "game_version": "5ltAOXml", "max_count": 65, "min_count": 9, "region_overrides": {"h1dTdoTF": {"buffer_count": 31, "buffer_percent": 55, "max_count": 69, "min_count": 5, "name": "uC1dQY93", "use_buffer_percent": false}}, "regions": ["J6Te9vD8"], "use_buffer_percent": false}' \
    --deployment 'dz7Hu8AD' \
    --namespace '79kdWunv' \
    --version 'izU0q1pH' \
    >$TEMP_FILE 2>&1
update_status $? 'createDeploymentOverride'
delete_file $TEMP_FILE

#- 21 deleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'yhhERoGg' \
    --namespace 'drysMizB' \
    --version 'GSRdP2l7' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteDeploymentOverride'
delete_file $TEMP_FILE

#- 22 updateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --body '{"buffer_count": 59, "buffer_percent": 79, "configuration": "SZ8Aq0Xi", "enable_region_overrides": false, "game_version": "07ZddOGT", "max_count": 76, "min_count": 23, "regions": ["JjBwj9HJ"], "use_buffer_percent": true}' \
    --deployment 'eEdSXRDS' \
    --namespace 'vguauw1x' \
    --version 'T7eMwSl9' \
    >$TEMP_FILE 2>&1
update_status $? 'updateDeploymentOverride'
delete_file $TEMP_FILE

#- 23 createOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --body '{"buffer_count": 76, "buffer_percent": 75, "max_count": 66, "min_count": 79, "use_buffer_percent": false}' \
    --deployment 'TJ2ulNzB' \
    --namespace 'vwJaQa54' \
    --region '7JllvA8R' \
    --version 'WSpabUt7' \
    >$TEMP_FILE 2>&1
update_status $? 'createOverrideRegionOverride'
delete_file $TEMP_FILE

#- 24 deleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'xk6QxyWh' \
    --namespace 'fqoWfJw2' \
    --region 'o8oWUqvP' \
    --version 'CZ2HzT7N' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteOverrideRegionOverride'
delete_file $TEMP_FILE

#- 25 updateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --body '{"buffer_count": 99, "buffer_percent": 25, "max_count": 96, "min_count": 59, "use_buffer_percent": false}' \
    --deployment 'XsuNIdQJ' \
    --namespace 'R5lsNOlv' \
    --region 'kfwaSbns' \
    --version 'uLCgToxu' \
    >$TEMP_FILE 2>&1
update_status $? 'updateOverrideRegionOverride'
delete_file $TEMP_FILE

#- 26 getAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace 'VTekJgvg' \
    --count '15' \
    --offset '67' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllPodConfig'
delete_file $TEMP_FILE

#- 27 getPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'IpH0Dvip' \
    --namespace 'lEk4vj3L' \
    >$TEMP_FILE 2>&1
update_status $? 'getPodConfig'
delete_file $TEMP_FILE

#- 28 createPodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --body '{"cpu_limit": 59, "mem_limit": 30, "params": "4yqDt8QU"}' \
    --name 'ZDpxlHas' \
    --namespace 'inGcjrkm' \
    >$TEMP_FILE 2>&1
update_status $? 'createPodConfig'
delete_file $TEMP_FILE

#- 29 deletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'RMttgjDS' \
    --namespace 'aIVBmft3' \
    >$TEMP_FILE 2>&1
update_status $? 'deletePodConfig'
delete_file $TEMP_FILE

#- 30 updatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --body '{"cpu_limit": 93, "mem_limit": 6, "name": "g7p9PGmY", "params": "2H5kX4Ms"}' \
    --name 'isSX28nA' \
    --namespace 'RxWRpv5o' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePodConfig'
delete_file $TEMP_FILE

#- 31 addPort
samples/cli/sample-apps Dsmc addPort \
    --body '{"port": 40}' \
    --name '5xtvd28O' \
    --namespace 'UfCt8UJC' \
    >$TEMP_FILE 2>&1
update_status $? 'addPort'
delete_file $TEMP_FILE

#- 32 deletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '5flNyj6H' \
    --namespace 'sTtX8P3l' \
    >$TEMP_FILE 2>&1
update_status $? 'deletePort'
delete_file $TEMP_FILE

#- 33 updatePort
samples/cli/sample-apps Dsmc updatePort \
    --body '{"name": "lnaaS9lq", "port": 48}' \
    --name 'ygPcfkJI' \
    --namespace 'xfQZza8k' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePort'
delete_file $TEMP_FILE

#- 34 listImages
samples/cli/sample-apps Dsmc listImages \
    --namespace 'NVbDxVMq' \
    --count '67' \
    --offset '70' \
    --q 'k0F89xAc' \
    --sortBy 'version' \
    --sortDirection 'asc' \
    >$TEMP_FILE 2>&1
update_status $? 'listImages'
delete_file $TEMP_FILE

#- 35 deleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace 'aENtrl0p' \
    --imageURI 'TKZTXqzH' \
    --version 'uBMYQSA2' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteImage'
delete_file $TEMP_FILE

#- 36 exportImages
samples/cli/sample-apps Dsmc exportImages \
    --namespace 'jz1ZOpdO' \
    >$TEMP_FILE 2>&1
update_status $? 'exportImages'
delete_file $TEMP_FILE

#- 37 getImageLimit
samples/cli/sample-apps Dsmc getImageLimit \
    --namespace 'jSyMddB4' \
    >$TEMP_FILE 2>&1
update_status $? 'getImageLimit'
delete_file $TEMP_FILE

#- 38 deleteImagePatch
samples/cli/sample-apps Dsmc deleteImagePatch \
    --namespace '1JuMf7RU' \
    --imageURI 'yBHRj8Ii' \
    --version 'RimRllHT' \
    --versionPatch '6Dc40vFF' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteImagePatch'
delete_file $TEMP_FILE

#- 39 getImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace 'A6gpU7EW' \
    --version '3x1dCpm5' \
    >$TEMP_FILE 2>&1
update_status $? 'getImageDetail'
delete_file $TEMP_FILE

#- 40 getImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace '5gOeqQIq' \
    --version 'cJVKmBM1' \
    >$TEMP_FILE 2>&1
update_status $? 'getImagePatches'
delete_file $TEMP_FILE

#- 41 getImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace 'J1IbuTrr' \
    --version 'kbmuT1wh' \
    --versionPatch 'OqmEnDXI' \
    >$TEMP_FILE 2>&1
update_status $? 'getImagePatchDetail'
delete_file $TEMP_FILE

#- 42 listServer
samples/cli/sample-apps Dsmc listServer \
    --namespace 'WrBPlSay' \
    --count '24' \
    --offset '43' \
    --region '71BAZAOj' \
    >$TEMP_FILE 2>&1
update_status $? 'listServer'
delete_file $TEMP_FILE

#- 43 countServer
samples/cli/sample-apps Dsmc countServer \
    --namespace 'tFJ2vmTj' \
    >$TEMP_FILE 2>&1
update_status $? 'countServer'
delete_file $TEMP_FILE

#- 44 countServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace '7tT7TZHW' \
    --region 'DdCkIsZo' \
    >$TEMP_FILE 2>&1
update_status $? 'countServerDetailed'
delete_file $TEMP_FILE

#- 45 listLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace 'ArWwPHcy' \
    >$TEMP_FILE 2>&1
update_status $? 'listLocalServer'
delete_file $TEMP_FILE

#- 46 deleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'FAdAtYci' \
    --namespace 'LIgRwFRr' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteLocalServer'
delete_file $TEMP_FILE

#- 47 getServer
samples/cli/sample-apps Dsmc getServer \
    --namespace '0gwB9tz3' \
    --podName 'vp99XVlV' \
    >$TEMP_FILE 2>&1
update_status $? 'getServer'
delete_file $TEMP_FILE

#- 48 deleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace '8rK3tE6n' \
    --podName '0smip1tw' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteServer'
delete_file $TEMP_FILE

#- 49 getServerLogs
samples/cli/sample-apps Dsmc getServerLogs \
    --namespace '3L7cUd9p' \
    --podName 'qtv6JfPZ' \
    >$TEMP_FILE 2>&1
update_status $? 'getServerLogs'
delete_file $TEMP_FILE

#- 50 listSession
samples/cli/sample-apps Dsmc listSession \
    --namespace 'wcCVOXcV' \
    --count '1' \
    --offset '90' \
    --region 'mCwtD2lA' \
    --withServer 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'listSession'
delete_file $TEMP_FILE

#- 51 countSession
samples/cli/sample-apps Dsmc countSession \
    --namespace '6NdcBIgz' \
    --region 'rDyWpFBY' \
    >$TEMP_FILE 2>&1
update_status $? 'countSession'
delete_file $TEMP_FILE

#- 52 deleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace 'GmmBawMy' \
    --sessionID 'oKyNpdAa' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSession'
delete_file $TEMP_FILE

#- 53 exportConfigV1
samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace 'sm8xwUfz' \
    >$TEMP_FILE 2>&1
update_status $? 'exportConfigV1'
delete_file $TEMP_FILE

#- 54 importConfigV1
samples/cli/sample-apps Dsmc importConfigV1 \
    --file 'tmp.dat' \
    --namespace 'OlQiZY4N' \
    >$TEMP_FILE 2>&1
update_status $? 'importConfigV1'
delete_file $TEMP_FILE

#- 55 imageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace 'bOQXJ7uO' \
    --version 'TzNMvuq2' \
    >$TEMP_FILE 2>&1
update_status $? 'imageDetailClient'
delete_file $TEMP_FILE

#- 56 deregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --body '{"name": "tNl4CX4I"}' \
    --namespace 'jiK4DEUJ' \
    >$TEMP_FILE 2>&1
update_status $? 'deregisterLocalServer'
delete_file $TEMP_FILE

#- 57 registerLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --body '{"custom_attribute": "RVK3l9Eb", "ip": "0R1XRb0R", "name": "H8vS1sme", "port": 81}' \
    --namespace 'lngrdTXC' \
    >$TEMP_FILE 2>&1
update_status $? 'registerLocalServer'
delete_file $TEMP_FILE

#- 58 registerServer
samples/cli/sample-apps Dsmc registerServer \
    --body '{"custom_attribute": "zaPBtkZM", "pod_name": "io4wcyhl"}' \
    --namespace 'oVS3rYp8' \
    >$TEMP_FILE 2>&1
update_status $? 'registerServer'
delete_file $TEMP_FILE

#- 59 shutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --body '{"kill_me": true, "pod_name": "cEmCEVc7"}' \
    --namespace '5UfeypWj' \
    >$TEMP_FILE 2>&1
update_status $? 'shutdownServer'
delete_file $TEMP_FILE

#- 60 getServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace 'DNhzCL5s' \
    --podName 'WS2qwO76' \
    >$TEMP_FILE 2>&1
update_status $? 'getServerSession'
delete_file $TEMP_FILE

#- 61 createSession
samples/cli/sample-apps Dsmc createSession \
    --body '{"client_version": "3iEklkzL", "configuration": "m88LpLuY", "deployment": "RO3C55yH", "game_mode": "pwK2Jaqe", "matching_allies": [{"matching_parties": [{"party_attributes": {"nDGn7a2N": {}}, "party_id": "UplWiLjq", "party_members": [{"user_id": "06n6a0rW"}]}]}], "namespace": "8EfkpaXt", "notification_payload": {}, "pod_name": "wYZJaQ4W", "region": "bwNmsFYe", "session_id": "tjEurH8e"}' \
    --namespace 'loJzNKtR' \
    >$TEMP_FILE 2>&1
update_status $? 'createSession'
delete_file $TEMP_FILE

#- 62 claimServer
samples/cli/sample-apps Dsmc claimServer \
    --body '{"session_id": "UaTz1ETd"}' \
    --namespace 'smwzjkkn' \
    >$TEMP_FILE 2>&1
update_status $? 'claimServer'
delete_file $TEMP_FILE

#- 63 getSession
samples/cli/sample-apps Dsmc getSession \
    --namespace '9oiQl05g' \
    --sessionID '7cO3ZMb6' \
    >$TEMP_FILE 2>&1
update_status $? 'getSession'
delete_file $TEMP_FILE

#- 64 getDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    >$TEMP_FILE 2>&1
update_status $? 'getDefaultProvider'
delete_file $TEMP_FILE

#- 65 listProviders
samples/cli/sample-apps Dsmc listProviders \
    >$TEMP_FILE 2>&1
update_status $? 'listProviders'
delete_file $TEMP_FILE

#- 66 listProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region 'Ojlo6DMN' \
    >$TEMP_FILE 2>&1
update_status $? 'listProvidersByRegion'
delete_file $TEMP_FILE

#- 67 publicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMessages'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT