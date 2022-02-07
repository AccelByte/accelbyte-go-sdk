#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=63

FINISHED_COUNT=0
SUCCESS_COUNT=0
FAILED_COUNT=0

export JUSTICE_BASE_URL="http://0.0.0.0:8080"
export APP_CLIENT_ID="admin"
export APP_CLIENT_SECRET="admin"
export NAMESPACE="test"

get_current_year() { echo $(date +'%Y'); }
get_adult_birthday() { echo "$(( $(get_current_year) - 22))-01-01"; }

get_random_int() { echo $(( $1 + ( RANDOM % (($2 - $1)) ) )); }
get_random_bool() { ( (( (RANDOM % 2) == 1)) && echo "true" ) || ( echo "false" ) }
get_random_element() { declare -a a=("$@"); r=$((RANDOM % ${#a[@]})); echo ${a[$r]}; }

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

echo 'TAP version 13'
echo "1..$OPERATIONS_COUNT"

#- 1 listConfig
$ sample-apps Dsmc listConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'listConfig'
delete_file $TEMP_FILE

#- 2 saveConfig
update_status 0 'saveConfig (skipped deprecated)'

#- 3 updateImage
$ sample-apps Dsmc updateImage -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateImage'
delete_file $TEMP_FILE

#- 4 createImage
$ sample-apps Dsmc createImage -h \
    >$TEMP_FILE 2>&1
update_status $? 'createImage'
delete_file $TEMP_FILE

#- 5 importImages
$ sample-apps Dsmc importImages -h \
    >$TEMP_FILE 2>&1
update_status $? 'importImages'
delete_file $TEMP_FILE

#- 6 getConfig
$ sample-apps Dsmc getConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getConfig'
delete_file $TEMP_FILE

#- 7 createConfig
$ sample-apps Dsmc createConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'createConfig'
delete_file $TEMP_FILE

#- 8 deleteConfig
$ sample-apps Dsmc deleteConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteConfig'
delete_file $TEMP_FILE

#- 9 updateConfig
$ sample-apps Dsmc updateConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateConfig'
delete_file $TEMP_FILE

#- 10 clearCache
$ sample-apps Dsmc clearCache -h \
    >$TEMP_FILE 2>&1
update_status $? 'clearCache'
delete_file $TEMP_FILE

#- 11 getAllDeployment
$ sample-apps Dsmc getAllDeployment -h \
    >$TEMP_FILE 2>&1
update_status $? 'getAllDeployment'
delete_file $TEMP_FILE

#- 12 getDeployment
$ sample-apps Dsmc getDeployment -h \
    >$TEMP_FILE 2>&1
update_status $? 'getDeployment'
delete_file $TEMP_FILE

#- 13 createDeployment
$ sample-apps Dsmc createDeployment -h \
    >$TEMP_FILE 2>&1
update_status $? 'createDeployment'
delete_file $TEMP_FILE

#- 14 deleteDeployment
$ sample-apps Dsmc deleteDeployment -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteDeployment'
delete_file $TEMP_FILE

#- 15 updateDeployment
$ sample-apps Dsmc updateDeployment -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateDeployment'
delete_file $TEMP_FILE

#- 16 createRootRegionOverride
$ sample-apps Dsmc createRootRegionOverride -h \
    >$TEMP_FILE 2>&1
update_status $? 'createRootRegionOverride'
delete_file $TEMP_FILE

#- 17 deleteRootRegionOverride
$ sample-apps Dsmc deleteRootRegionOverride -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteRootRegionOverride'
delete_file $TEMP_FILE

#- 18 updateRootRegionOverride
$ sample-apps Dsmc updateRootRegionOverride -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateRootRegionOverride'
delete_file $TEMP_FILE

#- 19 createDeploymentOverride
$ sample-apps Dsmc createDeploymentOverride -h \
    >$TEMP_FILE 2>&1
update_status $? 'createDeploymentOverride'
delete_file $TEMP_FILE

#- 20 deleteDeploymentOverride
$ sample-apps Dsmc deleteDeploymentOverride -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteDeploymentOverride'
delete_file $TEMP_FILE

#- 21 updateDeploymentOverride
$ sample-apps Dsmc updateDeploymentOverride -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateDeploymentOverride'
delete_file $TEMP_FILE

#- 22 createOverrideRegionOverride
$ sample-apps Dsmc createOverrideRegionOverride -h \
    >$TEMP_FILE 2>&1
update_status $? 'createOverrideRegionOverride'
delete_file $TEMP_FILE

#- 23 deleteOverrideRegionOverride
$ sample-apps Dsmc deleteOverrideRegionOverride -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteOverrideRegionOverride'
delete_file $TEMP_FILE

#- 24 updateOverrideRegionOverride
$ sample-apps Dsmc updateOverrideRegionOverride -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateOverrideRegionOverride'
delete_file $TEMP_FILE

#- 25 getAllPodConfig
$ sample-apps Dsmc getAllPodConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getAllPodConfig'
delete_file $TEMP_FILE

#- 26 getPodConfig
$ sample-apps Dsmc getPodConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getPodConfig'
delete_file $TEMP_FILE

#- 27 createPodConfig
$ sample-apps Dsmc createPodConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'createPodConfig'
delete_file $TEMP_FILE

#- 28 deletePodConfig
$ sample-apps Dsmc deletePodConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'deletePodConfig'
delete_file $TEMP_FILE

#- 29 updatePodConfig
$ sample-apps Dsmc updatePodConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updatePodConfig'
delete_file $TEMP_FILE

#- 30 addPort
$ sample-apps Dsmc addPort -h \
    >$TEMP_FILE 2>&1
update_status $? 'addPort'
delete_file $TEMP_FILE

#- 31 deletePort
$ sample-apps Dsmc deletePort -h \
    >$TEMP_FILE 2>&1
update_status $? 'deletePort'
delete_file $TEMP_FILE

#- 32 updatePort
$ sample-apps Dsmc updatePort -h \
    >$TEMP_FILE 2>&1
update_status $? 'updatePort'
delete_file $TEMP_FILE

#- 33 listImages
$ sample-apps Dsmc listImages -h \
    >$TEMP_FILE 2>&1
update_status $? 'listImages'
delete_file $TEMP_FILE

#- 34 deleteImage
$ sample-apps Dsmc deleteImage -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteImage'
delete_file $TEMP_FILE

#- 35 exportImages
$ sample-apps Dsmc exportImages -h \
    >$TEMP_FILE 2>&1
update_status $? 'exportImages'
delete_file $TEMP_FILE

#- 36 getImageLimit
$ sample-apps Dsmc getImageLimit -h \
    >$TEMP_FILE 2>&1
update_status $? 'getImageLimit'
delete_file $TEMP_FILE

#- 37 getImageDetail
$ sample-apps Dsmc getImageDetail -h \
    >$TEMP_FILE 2>&1
update_status $? 'getImageDetail'
delete_file $TEMP_FILE

#- 38 listServer
$ sample-apps Dsmc listServer -h \
    >$TEMP_FILE 2>&1
update_status $? 'listServer'
delete_file $TEMP_FILE

#- 39 countServer
$ sample-apps Dsmc countServer -h \
    >$TEMP_FILE 2>&1
update_status $? 'countServer'
delete_file $TEMP_FILE

#- 40 countServerDetailed
$ sample-apps Dsmc countServerDetailed -h \
    >$TEMP_FILE 2>&1
update_status $? 'countServerDetailed'
delete_file $TEMP_FILE

#- 41 listLocalServer
$ sample-apps Dsmc listLocalServer -h \
    >$TEMP_FILE 2>&1
update_status $? 'listLocalServer'
delete_file $TEMP_FILE

#- 42 deleteLocalServer
$ sample-apps Dsmc deleteLocalServer -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteLocalServer'
delete_file $TEMP_FILE

#- 43 getServer
$ sample-apps Dsmc getServer -h \
    >$TEMP_FILE 2>&1
update_status $? 'getServer'
delete_file $TEMP_FILE

#- 44 deleteServer
$ sample-apps Dsmc deleteServer -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteServer'
delete_file $TEMP_FILE

#- 45 getServerLogs
$ sample-apps Dsmc getServerLogs -h \
    >$TEMP_FILE 2>&1
update_status $? 'getServerLogs'
delete_file $TEMP_FILE

#- 46 listSession
$ sample-apps Dsmc listSession -h \
    >$TEMP_FILE 2>&1
update_status $? 'listSession'
delete_file $TEMP_FILE

#- 47 countSession
$ sample-apps Dsmc countSession -h \
    >$TEMP_FILE 2>&1
update_status $? 'countSession'
delete_file $TEMP_FILE

#- 48 deleteSession
$ sample-apps Dsmc deleteSession -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSession'
delete_file $TEMP_FILE

#- 49 exportConfigV1
$ sample-apps Dsmc exportConfigV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'exportConfigV1'
delete_file $TEMP_FILE

#- 50 importConfigV1
$ sample-apps Dsmc importConfigV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'importConfigV1'
delete_file $TEMP_FILE

#- 51 imageDetailClient
$ sample-apps Dsmc imageDetailClient -h \
    >$TEMP_FILE 2>&1
update_status $? 'imageDetailClient'
delete_file $TEMP_FILE

#- 52 deregisterLocalServer
$ sample-apps Dsmc deregisterLocalServer -h \
    >$TEMP_FILE 2>&1
update_status $? 'deregisterLocalServer'
delete_file $TEMP_FILE

#- 53 registerLocalServer
$ sample-apps Dsmc registerLocalServer -h \
    >$TEMP_FILE 2>&1
update_status $? 'registerLocalServer'
delete_file $TEMP_FILE

#- 54 registerServer
$ sample-apps Dsmc registerServer -h \
    >$TEMP_FILE 2>&1
update_status $? 'registerServer'
delete_file $TEMP_FILE

#- 55 shutdownServer
$ sample-apps Dsmc shutdownServer -h \
    >$TEMP_FILE 2>&1
update_status $? 'shutdownServer'
delete_file $TEMP_FILE

#- 56 getServerSession
$ sample-apps Dsmc getServerSession -h \
    >$TEMP_FILE 2>&1
update_status $? 'getServerSession'
delete_file $TEMP_FILE

#- 57 createSession
$ sample-apps Dsmc createSession -h \
    >$TEMP_FILE 2>&1
update_status $? 'createSession'
delete_file $TEMP_FILE

#- 58 claimServer
$ sample-apps Dsmc claimServer -h \
    >$TEMP_FILE 2>&1
update_status $? 'claimServer'
delete_file $TEMP_FILE

#- 59 getSession
$ sample-apps Dsmc getSession -h \
    >$TEMP_FILE 2>&1
update_status $? 'getSession'
delete_file $TEMP_FILE

#- 60 getDefaultProvider
$ sample-apps Dsmc getDefaultProvider -h \
    >$TEMP_FILE 2>&1
update_status $? 'getDefaultProvider'
delete_file $TEMP_FILE

#- 61 listProviders
$ sample-apps Dsmc listProviders -h \
    >$TEMP_FILE 2>&1
update_status $? 'listProviders'
delete_file $TEMP_FILE

#- 62 listProvidersByRegion
$ sample-apps Dsmc listProvidersByRegion -h \
    >$TEMP_FILE 2>&1
update_status $? 'listProvidersByRegion'
delete_file $TEMP_FILE

#- 63 publicGetMessages
$ sample-apps Dsmc publicGetMessages -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMessages'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT