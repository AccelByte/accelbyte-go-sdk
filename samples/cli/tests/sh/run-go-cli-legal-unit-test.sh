#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=41

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

#- 1 retrieveAcceptedAgreements
$ sample-apps Legal retrieveAcceptedAgreements -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAcceptedAgreements'
delete_file $TEMP_FILE

#- 2 retrieveAllUsersByPolicyVersion
$ sample-apps Legal retrieveAllUsersByPolicyVersion -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllUsersByPolicyVersion'
delete_file $TEMP_FILE

#- 3 retrieveAllLegalPolicies
$ sample-apps Legal retrieveAllLegalPolicies -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllLegalPolicies'
delete_file $TEMP_FILE

#- 4 createPolicy
$ sample-apps Legal createPolicy -h \
    >$TEMP_FILE 2>&1
update_status $? 'createPolicy'
delete_file $TEMP_FILE

#- 5 retrieveSinglePolicy
$ sample-apps Legal retrieveSinglePolicy -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveSinglePolicy'
delete_file $TEMP_FILE

#- 6 partialUpdatePolicy
$ sample-apps Legal partialUpdatePolicy -h \
    >$TEMP_FILE 2>&1
update_status $? 'partialUpdatePolicy'
delete_file $TEMP_FILE

#- 7 retrievePolicyCountry
$ sample-apps Legal retrievePolicyCountry -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrievePolicyCountry'
delete_file $TEMP_FILE

#- 8 retrieveLocalizedPolicyVersions
$ sample-apps Legal retrieveLocalizedPolicyVersions -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveLocalizedPolicyVersions'
delete_file $TEMP_FILE

#- 9 createLocalizedPolicyVersion
$ sample-apps Legal createLocalizedPolicyVersion -h \
    >$TEMP_FILE 2>&1
update_status $? 'createLocalizedPolicyVersion'
delete_file $TEMP_FILE

#- 10 retrieveSingleLocalizedPolicyVersion
$ sample-apps Legal retrieveSingleLocalizedPolicyVersion -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveSingleLocalizedPolicyVersion'
delete_file $TEMP_FILE

#- 11 updateLocalizedPolicyVersion
$ sample-apps Legal updateLocalizedPolicyVersion -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateLocalizedPolicyVersion'
delete_file $TEMP_FILE

#- 12 requestPresignedURL
$ sample-apps Legal requestPresignedURL -h \
    >$TEMP_FILE 2>&1
update_status $? 'requestPresignedURL'
delete_file $TEMP_FILE

#- 13 setDefaultPolicy
$ sample-apps Legal setDefaultPolicy -h \
    >$TEMP_FILE 2>&1
update_status $? 'setDefaultPolicy'
delete_file $TEMP_FILE

#- 14 indirectBulkAcceptVersionedPolicy
$ sample-apps Legal indirectBulkAcceptVersionedPolicy -h \
    >$TEMP_FILE 2>&1
update_status $? 'indirectBulkAcceptVersionedPolicy'
delete_file $TEMP_FILE

#- 15 adminRetrieveEligibilities
$ sample-apps Legal adminRetrieveEligibilities -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminRetrieveEligibilities'
delete_file $TEMP_FILE

#- 16 retrievePolicies
$ sample-apps Legal retrievePolicies -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrievePolicies'
delete_file $TEMP_FILE

#- 17 updatePolicyVersion
$ sample-apps Legal updatePolicyVersion -h \
    >$TEMP_FILE 2>&1
update_status $? 'updatePolicyVersion'
delete_file $TEMP_FILE

#- 18 publishPolicyVersion
$ sample-apps Legal publishPolicyVersion -h \
    >$TEMP_FILE 2>&1
update_status $? 'publishPolicyVersion'
delete_file $TEMP_FILE

#- 19 updatePolicy
$ sample-apps Legal updatePolicy -h \
    >$TEMP_FILE 2>&1
update_status $? 'updatePolicy'
delete_file $TEMP_FILE

#- 20 setDefaultPolicy1
$ sample-apps Legal setDefaultPolicy1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'setDefaultPolicy1'
delete_file $TEMP_FILE

#- 21 retrieveSinglePolicyVersion
$ sample-apps Legal retrieveSinglePolicyVersion -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveSinglePolicyVersion'
delete_file $TEMP_FILE

#- 22 createPolicyVersion
$ sample-apps Legal createPolicyVersion -h \
    >$TEMP_FILE 2>&1
update_status $? 'createPolicyVersion'
delete_file $TEMP_FILE

#- 23 retrieveAllPolicyTypes
$ sample-apps Legal retrieveAllPolicyTypes -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllPolicyTypes'
delete_file $TEMP_FILE

#- 24 getUserInfoStatus
$ sample-apps Legal getUserInfoStatus -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserInfoStatus'
delete_file $TEMP_FILE

#- 25 syncUserInfo
$ sample-apps Legal syncUserInfo -h \
    >$TEMP_FILE 2>&1
update_status $? 'syncUserInfo'
delete_file $TEMP_FILE

#- 26 invalidateUserInfoCache
$ sample-apps Legal invalidateUserInfoCache -h \
    >$TEMP_FILE 2>&1
update_status $? 'invalidateUserInfoCache'
delete_file $TEMP_FILE

#- 27 anonymizeUserAgreement
$ sample-apps Legal anonymizeUserAgreement -h \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeUserAgreement'
delete_file $TEMP_FILE

#- 28 changePreferenceConsent
$ sample-apps Legal changePreferenceConsent -h \
    >$TEMP_FILE 2>&1
update_status $? 'changePreferenceConsent'
delete_file $TEMP_FILE

#- 29 acceptVersionedPolicy
$ sample-apps Legal acceptVersionedPolicy -h \
    >$TEMP_FILE 2>&1
update_status $? 'acceptVersionedPolicy'
delete_file $TEMP_FILE

#- 30 retrieveAgreementsPublic
$ sample-apps Legal retrieveAgreementsPublic -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAgreementsPublic'
delete_file $TEMP_FILE

#- 31 bulkAcceptVersionedPolicy
$ sample-apps Legal bulkAcceptVersionedPolicy -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkAcceptVersionedPolicy'
delete_file $TEMP_FILE

#- 32 indirectBulkAcceptVersionedPolicyV2
$ sample-apps Legal indirectBulkAcceptVersionedPolicyV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'indirectBulkAcceptVersionedPolicyV2'
delete_file $TEMP_FILE

#- 33 indirectBulkAcceptVersionedPolicy1
$ sample-apps Legal indirectBulkAcceptVersionedPolicy1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'indirectBulkAcceptVersionedPolicy1'
delete_file $TEMP_FILE

#- 34 retrieveEligibilitiesPublic
$ sample-apps Legal retrieveEligibilitiesPublic -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveEligibilitiesPublic'
delete_file $TEMP_FILE

#- 35 retrieveEligibilitiesPublicIndirect
$ sample-apps Legal retrieveEligibilitiesPublicIndirect -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveEligibilitiesPublicIndirect'
delete_file $TEMP_FILE

#- 36 retrieveSingleLocalizedPolicyVersion1
$ sample-apps Legal retrieveSingleLocalizedPolicyVersion1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveSingleLocalizedPolicyVersion1'
delete_file $TEMP_FILE

#- 37 retrievePolicyVersions
$ sample-apps Legal retrievePolicyVersions -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrievePolicyVersions'
delete_file $TEMP_FILE

#- 38 retrieveLatestPolicies
$ sample-apps Legal retrieveLatestPolicies -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveLatestPolicies'
delete_file $TEMP_FILE

#- 39 retrieveLatestPoliciesPublic
$ sample-apps Legal retrieveLatestPoliciesPublic -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveLatestPoliciesPublic'
delete_file $TEMP_FILE

#- 40 retrieveLatestPoliciesByNamespaceAndCountryPublic
$ sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveLatestPoliciesByNamespaceAndCountryPublic'
delete_file $TEMP_FILE

#- 41 checkReadiness
$ sample-apps Legal checkReadiness -h \
    >$TEMP_FILE 2>&1
update_status $? 'checkReadiness'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT