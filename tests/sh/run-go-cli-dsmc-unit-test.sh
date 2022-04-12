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
    --name '3IaQYEmq' \
    --offset '64' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllDeployment'
delete_file $TEMP_FILE

#- 13 getDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'odOEGt9g' \
    --namespace 'POj0c6i0' \
    >$TEMP_FILE 2>&1
update_status $? 'getDeployment'
delete_file $TEMP_FILE

#- 14 createDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --body '{"allow_version_override": false, "buffer_count": 42, "buffer_percent": 69, "configuration": "as73ucYn", "enable_region_overrides": true, "game_version": "AJ3DK5T4", "max_count": 61, "min_count": 28, "overrides": {"gg0Y39Uo": {"buffer_count": 23, "buffer_percent": 31, "configuration": "v5bVAgts", "enable_region_overrides": true, "game_version": "hUTDUscb", "max_count": 85, "min_count": 59, "name": "jbTQuPMz", "region_overrides": {"2PTRlkyU": {"buffer_count": 82, "buffer_percent": 80, "max_count": 44, "min_count": 50, "name": "PFJ42cwm", "use_buffer_percent": true}}, "regions": ["BBSMNcoA"], "use_buffer_percent": true}}, "region_overrides": {"OjKNjfcY": {"buffer_count": 67, "buffer_percent": 25, "max_count": 0, "min_count": 100, "name": "gBU1sqjy", "use_buffer_percent": false}}, "regions": ["RSOFQBtu"], "use_buffer_percent": true}' \
    --deployment 'Z8hRVX7L' \
    --namespace 'GOvDdYiQ' \
    >$TEMP_FILE 2>&1
update_status $? 'createDeployment'
delete_file $TEMP_FILE

#- 15 deleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'S9i7mV1C' \
    --namespace '91pjG9gp' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteDeployment'
delete_file $TEMP_FILE

#- 16 updateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --body '{"allow_version_override": true, "buffer_count": 75, "buffer_percent": 48, "configuration": "cTQdvln2", "enable_region_overrides": true, "game_version": "uSQWEXL6", "max_count": 74, "min_count": 62, "regions": ["E1YHo9m1"], "use_buffer_percent": false}' \
    --deployment '8hHtWvbN' \
    --namespace 'YqgUqslA' \
    >$TEMP_FILE 2>&1
update_status $? 'updateDeployment'
delete_file $TEMP_FILE

#- 17 createRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --body '{"buffer_count": 34, "buffer_percent": 63, "max_count": 82, "min_count": 17, "use_buffer_percent": true}' \
    --deployment 'aCv8kU9d' \
    --namespace 'BBpdsJLh' \
    --region 'sVyExrkx' \
    >$TEMP_FILE 2>&1
update_status $? 'createRootRegionOverride'
delete_file $TEMP_FILE

#- 18 deleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'oot0B7WO' \
    --namespace 'fercZdpM' \
    --region 'ci37Ds7Y' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteRootRegionOverride'
delete_file $TEMP_FILE

#- 19 updateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --body '{"buffer_count": 88, "buffer_percent": 10, "max_count": 61, "min_count": 46, "use_buffer_percent": false}' \
    --deployment 'I3uzLteM' \
    --namespace 'bFAlt4hr' \
    --region '7HmOYiBA' \
    >$TEMP_FILE 2>&1
update_status $? 'updateRootRegionOverride'
delete_file $TEMP_FILE

#- 20 createDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --body '{"buffer_count": 22, "buffer_percent": 38, "configuration": "AOXmlG6e", "enable_region_overrides": false, "game_version": "1dTdoTFp", "max_count": 55, "min_count": 69, "region_overrides": {"cuC1dQY9": {"buffer_count": 80, "buffer_percent": 70, "max_count": 26, "min_count": 70, "name": "6Te9vD8l", "use_buffer_percent": false}}, "regions": ["z7Hu8AD7"], "use_buffer_percent": false}' \
    --deployment 'dWunvizU' \
    --namespace '0q1pHyhh' \
    --version 'ERoGgdry' \
    >$TEMP_FILE 2>&1
update_status $? 'createDeploymentOverride'
delete_file $TEMP_FILE

#- 21 deleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'sMizBGSR' \
    --namespace 'dP2l7DNS' \
    --version 'Z8Aq0XiP' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteDeploymentOverride'
delete_file $TEMP_FILE

#- 22 updateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --body '{"buffer_count": 75, "buffer_percent": 85, "configuration": "XSe07Zdd", "enable_region_overrides": false, "game_version": "JjBwj9HJ", "max_count": 66, "min_count": 85, "regions": ["KseEdSXR"], "use_buffer_percent": true}' \
    --deployment 'Svguauw1' \
    --namespace 'xT7eMwSl' \
    --version '9MLH0NnT' \
    >$TEMP_FILE 2>&1
update_status $? 'updateDeploymentOverride'
delete_file $TEMP_FILE

#- 23 createOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --body '{"buffer_count": 70, "buffer_percent": 41, "max_count": 22, "min_count": 79, "use_buffer_percent": true}' \
    --deployment 'BvwJaQa5' \
    --namespace '47JllvA8' \
    --region 'RWSpabUt' \
    --version '7xk6QxyW' \
    >$TEMP_FILE 2>&1
update_status $? 'createOverrideRegionOverride'
delete_file $TEMP_FILE

#- 24 deleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'hfqoWfJw' \
    --namespace '2o8oWUqv' \
    --region 'PCZ2HzT7' \
    --version 'NXmWDlXs' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteOverrideRegionOverride'
delete_file $TEMP_FILE

#- 25 updateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --body '{"buffer_count": 41, "buffer_percent": 79, "max_count": 69, "min_count": 6, "use_buffer_percent": false}' \
    --deployment 'sNOlvkfw' \
    --namespace 'aSbnsuLC' \
    --region 'gToxuVTe' \
    --version 'kJgvg6h5' \
    >$TEMP_FILE 2>&1
update_status $? 'updateOverrideRegionOverride'
delete_file $TEMP_FILE

#- 26 getAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace 'HIpH0Dvi' \
    --count '31' \
    --offset '23' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllPodConfig'
delete_file $TEMP_FILE

#- 27 getPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'Ek4vj3LD' \
    --namespace 'p4yqDt8Q' \
    >$TEMP_FILE 2>&1
update_status $? 'getPodConfig'
delete_file $TEMP_FILE

#- 28 createPodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --body '{"cpu_limit": 92, "mem_limit": 59, "params": "pxlHasin"}' \
    --name 'GcjrkmRM' \
    --namespace 'ttgjDSaI' \
    >$TEMP_FILE 2>&1
update_status $? 'createPodConfig'
delete_file $TEMP_FILE

#- 29 deletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'VBmft3Ud' \
    --namespace 'g7p9PGmY' \
    >$TEMP_FILE 2>&1
update_status $? 'deletePodConfig'
delete_file $TEMP_FILE

#- 30 updatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --body '{"cpu_limit": 67, "mem_limit": 20, "name": "X4MsisSX", "params": "28nARxWR"}' \
    --name 'pv5ou5xt' \
    --namespace 'vd28OUfC' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePodConfig'
delete_file $TEMP_FILE

#- 31 addPort
samples/cli/sample-apps Dsmc addPort \
    --body '{"port": 38}' \
    --name '8UJC5flN' \
    --namespace 'yj6HsTtX' \
    >$TEMP_FILE 2>&1
update_status $? 'addPort'
delete_file $TEMP_FILE

#- 32 deletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '8P3llnaa' \
    --namespace 'S9lqyygP' \
    >$TEMP_FILE 2>&1
update_status $? 'deletePort'
delete_file $TEMP_FILE

#- 33 updatePort
samples/cli/sample-apps Dsmc updatePort \
    --body '{"name": "cfkJIxfQ", "port": 51}' \
    --name 'a8kNVbDx' \
    --namespace 'VMq7HJk0' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePort'
delete_file $TEMP_FILE

#- 34 listImages
samples/cli/sample-apps Dsmc listImages \
    --namespace 'F89xAc3Y' \
    --count '95' \
    --offset '11' \
    --q 'aENtrl0p' \
    --sortBy 'version' \
    --sortDirection 'desc' \
    >$TEMP_FILE 2>&1
update_status $? 'listImages'
delete_file $TEMP_FILE

#- 35 deleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace 'zHuBMYQS' \
    --imageURI 'A2jz1ZOp' \
    --version 'dOjSyMdd' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteImage'
delete_file $TEMP_FILE

#- 36 exportImages
samples/cli/sample-apps Dsmc exportImages \
    --namespace 'B41JuMf7' \
    >$TEMP_FILE 2>&1
update_status $? 'exportImages'
delete_file $TEMP_FILE

#- 37 getImageLimit
samples/cli/sample-apps Dsmc getImageLimit \
    --namespace 'RUyBHRj8' \
    >$TEMP_FILE 2>&1
update_status $? 'getImageLimit'
delete_file $TEMP_FILE

#- 38 deleteImagePatch
samples/cli/sample-apps Dsmc deleteImagePatch \
    --namespace 'IiRimRll' \
    --imageURI 'HT6Dc40v' \
    --version 'FFA6gpU7' \
    --versionPatch 'EW3x1dCp' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteImagePatch'
delete_file $TEMP_FILE

#- 39 getImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace 'm55gOeqQ' \
    --version 'IqcJVKmB' \
    >$TEMP_FILE 2>&1
update_status $? 'getImageDetail'
delete_file $TEMP_FILE

#- 40 getImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace 'M1J1IbuT' \
    --version 'rrkbmuT1' \
    >$TEMP_FILE 2>&1
update_status $? 'getImagePatches'
delete_file $TEMP_FILE

#- 41 getImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace 'whOqmEnD' \
    --version 'XIWrBPlS' \
    --versionPatch 'ay46mv71' \
    >$TEMP_FILE 2>&1
update_status $? 'getImagePatchDetail'
delete_file $TEMP_FILE

#- 42 listServer
samples/cli/sample-apps Dsmc listServer \
    --namespace 'BAZAOjtF' \
    --count '70' \
    --offset '42' \
    --region 'mTj7tT7T' \
    >$TEMP_FILE 2>&1
update_status $? 'listServer'
delete_file $TEMP_FILE

#- 43 countServer
samples/cli/sample-apps Dsmc countServer \
    --namespace 'ZHWDdCkI' \
    >$TEMP_FILE 2>&1
update_status $? 'countServer'
delete_file $TEMP_FILE

#- 44 countServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace 'sZoArWwP' \
    --region 'HcyFAdAt' \
    >$TEMP_FILE 2>&1
update_status $? 'countServerDetailed'
delete_file $TEMP_FILE

#- 45 listLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace 'YciLIgRw' \
    >$TEMP_FILE 2>&1
update_status $? 'listLocalServer'
delete_file $TEMP_FILE

#- 46 deleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'FRr0gwB9' \
    --namespace 'tz3vp99X' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteLocalServer'
delete_file $TEMP_FILE

#- 47 getServer
samples/cli/sample-apps Dsmc getServer \
    --namespace 'VlV8rK3t' \
    --podName 'E6n0smip' \
    >$TEMP_FILE 2>&1
update_status $? 'getServer'
delete_file $TEMP_FILE

#- 48 deleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace '1tw3L7cU' \
    --podName 'd9pqtv6J' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteServer'
delete_file $TEMP_FILE

#- 49 getServerLogs
samples/cli/sample-apps Dsmc getServerLogs \
    --namespace 'fPZwcCVO' \
    --podName 'XcVa80Tm' \
    >$TEMP_FILE 2>&1
update_status $? 'getServerLogs'
delete_file $TEMP_FILE

#- 50 listSession
samples/cli/sample-apps Dsmc listSession \
    --namespace 'CwtD2lAH' \
    --count '29' \
    --offset '79' \
    --region 'dcBIgzrD' \
    --withServer 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'listSession'
delete_file $TEMP_FILE

#- 51 countSession
samples/cli/sample-apps Dsmc countSession \
    --namespace 'WpFBYGmm' \
    --region 'BawMyoKy' \
    >$TEMP_FILE 2>&1
update_status $? 'countSession'
delete_file $TEMP_FILE

#- 52 deleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace 'NpdAasm8' \
    --sessionID 'xwUfzOlQ' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSession'
delete_file $TEMP_FILE

#- 53 exportConfigV1
samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace 'iZY4NbOQ' \
    >$TEMP_FILE 2>&1
update_status $? 'exportConfigV1'
delete_file $TEMP_FILE

#- 54 importConfigV1
samples/cli/sample-apps Dsmc importConfigV1 \
    --file 'tmp.dat' \
    --namespace 'XJ7uOTzN' \
    >$TEMP_FILE 2>&1
update_status $? 'importConfigV1'
delete_file $TEMP_FILE

#- 55 imageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace 'Mvuq2tNl' \
    --version '4CX4IjiK' \
    >$TEMP_FILE 2>&1
update_status $? 'imageDetailClient'
delete_file $TEMP_FILE

#- 56 deregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --body '{"name": "4DEUJRVK"}' \
    --namespace '3l9Eb0R1' \
    >$TEMP_FILE 2>&1
update_status $? 'deregisterLocalServer'
delete_file $TEMP_FILE

#- 57 registerLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --body '{"custom_attribute": "XRb0RH8v", "ip": "S1smeOln", "name": "grdTXCza", "port": 82}' \
    --namespace 'BtkZMio4' \
    >$TEMP_FILE 2>&1
update_status $? 'registerLocalServer'
delete_file $TEMP_FILE

#- 58 registerServer
samples/cli/sample-apps Dsmc registerServer \
    --body '{"custom_attribute": "wcyhloVS", "pod_name": "3rYp8Qtc"}' \
    --namespace 'EmCEVc75' \
    >$TEMP_FILE 2>&1
update_status $? 'registerServer'
delete_file $TEMP_FILE

#- 59 shutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --body '{"kill_me": false, "pod_name": "eypWjDNh"}' \
    --namespace 'zCL5sWS2' \
    >$TEMP_FILE 2>&1
update_status $? 'shutdownServer'
delete_file $TEMP_FILE

#- 60 getServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace 'qwO763iE' \
    --podName 'klkzLm88' \
    >$TEMP_FILE 2>&1
update_status $? 'getServerSession'
delete_file $TEMP_FILE

#- 61 createSession
samples/cli/sample-apps Dsmc createSession \
    --body '{"client_version": "LpLuYRO3", "configuration": "C55yHpwK", "deployment": "2JaqenDG", "game_mode": "n7a2NUpl", "matching_allies": [{"matching_parties": [{"party_attributes": {"WiLjq06n": {}}, "party_id": "6a0rW8Ef", "party_members": [{"user_id": "kpaXtwYZ"}]}]}], "namespace": "JaQ4WbwN", "notification_payload": {}, "pod_name": "msFYetjE", "region": "urH8eloJ", "session_id": "zNKtRUaT"}' \
    --namespace 'z1ETdsmw' \
    >$TEMP_FILE 2>&1
update_status $? 'createSession'
delete_file $TEMP_FILE

#- 62 claimServer
samples/cli/sample-apps Dsmc claimServer \
    --body '{"session_id": "zjkkn9oi"}' \
    --namespace 'Ql05g7cO' \
    >$TEMP_FILE 2>&1
update_status $? 'claimServer'
delete_file $TEMP_FILE

#- 63 getSession
samples/cli/sample-apps Dsmc getSession \
    --namespace '3ZMb6Ojl' \
    --sessionID 'o6DMNpP2' \
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
    --region 'qMrTQ1Up' \
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