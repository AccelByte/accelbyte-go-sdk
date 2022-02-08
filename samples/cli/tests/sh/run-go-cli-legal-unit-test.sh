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
$ sample-apps Legal retrieveAcceptedAgreements \
    --userId 'FtBxyZcD' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAcceptedAgreements'
delete_file $TEMP_FILE

#- 2 retrieveAllUsersByPolicyVersion
$ sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'XBpGlsQu' \
    --limit '71' \
    --offset '41' \
    --policyVersionId '8vMf0IsJ' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllUsersByPolicyVersion'
delete_file $TEMP_FILE

#- 3 retrieveAllLegalPolicies
$ sample-apps Legal retrieveAllLegalPolicies \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllLegalPolicies'
delete_file $TEMP_FILE

#- 4 createPolicy
$ sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["kTrd8IDc"], "affectedCountries": ["V2zXnTKj"], "basePolicyName": "XY1bPqam", "description": "iBxx9Cs1", "namespace": "8EY84ekI", "tags": ["tqRzHU1o"], "typeId": "h570KQBV"}' \
    >$TEMP_FILE 2>&1
update_status $? 'createPolicy'
delete_file $TEMP_FILE

#- 5 retrieveSinglePolicy
$ sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'aewc72kr' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveSinglePolicy'
delete_file $TEMP_FILE

#- 6 partialUpdatePolicy
$ sample-apps Legal partialUpdatePolicy \
    --body '{"affectedClientIds": ["Sha68n3Y"], "affectedCountries": ["nozp1C2K"], "basePolicyName": "mIQTuBdN", "description": "EUsxFb8C", "namespace": "J17M7DJZ", "tags": ["aMSxECbZ"]}' \
    --basePolicyId 'bygyoarO' \
    >$TEMP_FILE 2>&1
update_status $? 'partialUpdatePolicy'
delete_file $TEMP_FILE

#- 7 retrievePolicyCountry
$ sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'RoeNHSb8' \
    --countryCode 'Rh3kgs9q' \
    >$TEMP_FILE 2>&1
update_status $? 'retrievePolicyCountry'
delete_file $TEMP_FILE

#- 8 retrieveLocalizedPolicyVersions
$ sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId 'qJbnQsoB' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveLocalizedPolicyVersions'
delete_file $TEMP_FILE

#- 9 createLocalizedPolicyVersion
$ sample-apps Legal createLocalizedPolicyVersion \
    --body '{"contentType": "giVpP8Cm", "description": "3yvASUox", "localeCode": "dxxFqmAG"}' \
    --policyVersionId 'TJ8IEdag' \
    >$TEMP_FILE 2>&1
update_status $? 'createLocalizedPolicyVersion'
delete_file $TEMP_FILE

#- 10 retrieveSingleLocalizedPolicyVersion
$ sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'Etp4w29K' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveSingleLocalizedPolicyVersion'
delete_file $TEMP_FILE

#- 11 updateLocalizedPolicyVersion
$ sample-apps Legal updateLocalizedPolicyVersion \
    --body '{"attachmentChecksum": "Ou9c19R6", "attachmentLocation": "XDqWHkkP", "attachmentVersionIdentifier": "8npLEKMf", "contentType": "jiX7jpkV", "description": "Zk3IaQYE"}' \
    --localizedPolicyVersionId 'mqGodOEG' \
    >$TEMP_FILE 2>&1
update_status $? 'updateLocalizedPolicyVersion'
delete_file $TEMP_FILE

#- 12 requestPresignedURL
$ sample-apps Legal requestPresignedURL \
    --body '{"contentMD5": "t9gPOj0c", "contentType": "6i0JkvIa"}' \
    --localizedPolicyVersionId 's73ucYnF' \
    >$TEMP_FILE 2>&1
update_status $? 'requestPresignedURL'
delete_file $TEMP_FILE

#- 13 setDefaultPolicy
$ sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'AJ3DK5T4' \
    >$TEMP_FILE 2>&1
update_status $? 'setDefaultPolicy'
delete_file $TEMP_FILE

#- 14 indirectBulkAcceptVersionedPolicy
$ sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "localizedPolicyVersionId": "ogg0Y39U", "policyId": "oYlpv5bV", "policyVersionId": "AgtsDhUT"}]' \
    --namespace 'DUscbQDj' \
    --userId 'bTQuPMz2' \
    --publisherUserId 'PTRlkyU8' \
    --clientId '9ZPOw6zP' \
    --countryCode 'FJ42cwmz' \
    >$TEMP_FILE 2>&1
update_status $? 'indirectBulkAcceptVersionedPolicy'
delete_file $TEMP_FILE

#- 15 adminRetrieveEligibilities
$ sample-apps Legal adminRetrieveEligibilities \
    --namespace 'BBSMNcoA' \
    --userId 'AOjKNjfc' \
    --publisherUserId 'YHm093aY' \
    --clientId 'gBU1sqjy' \
    --countryCode 'K0XH45Pa' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRetrieveEligibilities'
delete_file $TEMP_FILE

#- 16 retrievePolicies
$ sample-apps Legal retrievePolicies \
    --countryCode 'RSOFQBtu' \
    >$TEMP_FILE 2>&1
update_status $? 'retrievePolicies'
delete_file $TEMP_FILE

#- 17 updatePolicyVersion
$ sample-apps Legal updatePolicyVersion \
    --body '{"description": "23REZ8hR", "displayVersion": "VX7LGOvD", "isCommitted": false}' \
    --policyVersionId 'YiQS9i7m' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePolicyVersion'
delete_file $TEMP_FILE

#- 18 publishPolicyVersion
$ sample-apps Legal publishPolicyVersion \
    --policyVersionId 'V1C91pjG' \
    --shouldNotify 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'publishPolicyVersion'
delete_file $TEMP_FILE

#- 19 updatePolicy
$ sample-apps Legal updatePolicy \
    --body '{"description": "pxL6ycTQ", "isDefaultOpted": false, "isMandatory": true, "policyName": "ln2LAuSQ", "readableId": "WEXL6LFE", "shouldNotifyOnUpdate": false}' \
    --policyId '9m126ZWc' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePolicy'
delete_file $TEMP_FILE

#- 20 setDefaultPolicy1
$ sample-apps Legal setDefaultPolicy1 \
    --policyId '8hHtWvbN' \
    >$TEMP_FILE 2>&1
update_status $? 'setDefaultPolicy1'
delete_file $TEMP_FILE

#- 21 retrieveSinglePolicyVersion
$ sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'YqgUqslA' \
    --versionId 'rFPiHUIv' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveSinglePolicyVersion'
delete_file $TEMP_FILE

#- 22 createPolicyVersion
$ sample-apps Legal createPolicyVersion \
    --body '{"description": "aCv8kU9d", "displayVersion": "BBpdsJLh", "isCommitted": true}' \
    --policyId 'VyExrkxo' \
    >$TEMP_FILE 2>&1
update_status $? 'createPolicyVersion'
delete_file $TEMP_FILE

#- 23 retrieveAllPolicyTypes
$ sample-apps Legal retrieveAllPolicyTypes \
    --offset '29' \
    --limit '39' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllPolicyTypes'
delete_file $TEMP_FILE

#- 24 getUserInfoStatus
$ sample-apps Legal getUserInfoStatus \
    --namespaces '0B7WOfer' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserInfoStatus'
delete_file $TEMP_FILE

#- 25 syncUserInfo
$ sample-apps Legal syncUserInfo \
    --namespace 'cZdpMci3' \
    >$TEMP_FILE 2>&1
update_status $? 'syncUserInfo'
delete_file $TEMP_FILE

#- 26 invalidateUserInfoCache
$ sample-apps Legal invalidateUserInfoCache \
    --namespace '7Ds7YSfE' \
    >$TEMP_FILE 2>&1
update_status $? 'invalidateUserInfoCache'
delete_file $TEMP_FILE

#- 27 anonymizeUserAgreement
$ sample-apps Legal anonymizeUserAgreement \
    --userId 'xaI3uzLt' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeUserAgreement'
delete_file $TEMP_FILE

#- 28 changePreferenceConsent
$ sample-apps Legal changePreferenceConsent \
    --body '[{"isAccepted": false, "localizedPolicyVersionId": "MbFAlt4h", "policyId": "r7HmOYiB", "policyVersionId": "A5ltAOXm"}]' \
    >$TEMP_FILE 2>&1
update_status $? 'changePreferenceConsent'
delete_file $TEMP_FILE

#- 29 acceptVersionedPolicy
$ sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'lG6eh1dT' \
    >$TEMP_FILE 2>&1
update_status $? 'acceptVersionedPolicy'
delete_file $TEMP_FILE

#- 30 retrieveAgreementsPublic
$ sample-apps Legal retrieveAgreementsPublic \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAgreementsPublic'
delete_file $TEMP_FILE

#- 31 bulkAcceptVersionedPolicy
$ sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "localizedPolicyVersionId": "oTFpBIcu", "policyId": "C1dQY93O", "policyVersionId": "JnJ6Te9v"}]' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkAcceptVersionedPolicy'
delete_file $TEMP_FILE

#- 32 indirectBulkAcceptVersionedPolicyV2
$ sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --body '[{"isAccepted": true, "localizedPolicyVersionId": "8ldz7Hu8", "policyId": "AD79kdWu", "policyVersionId": "nvizU0q1"}]' \
    --clientId 'pHyhhERo' \
    --countryCode 'GgdrysMi' \
    --namespace 'zBGSRdP2' \
    --userId 'l7DNSZ8A' \
    >$TEMP_FILE 2>&1
update_status $? 'indirectBulkAcceptVersionedPolicyV2'
delete_file $TEMP_FILE

#- 33 indirectBulkAcceptVersionedPolicy1
$ sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --body '[{"isAccepted": true, "localizedPolicyVersionId": "0XiPLQXS", "policyId": "e07ZddOG", "policyVersionId": "TMlJjBwj"}]' \
    --userId '9HJHQKse' \
    >$TEMP_FILE 2>&1
update_status $? 'indirectBulkAcceptVersionedPolicy1'
delete_file $TEMP_FILE

#- 34 retrieveEligibilitiesPublic
$ sample-apps Legal retrieveEligibilitiesPublic \
    --namespace 'EdSXRDSv' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveEligibilitiesPublic'
delete_file $TEMP_FILE

#- 35 retrieveEligibilitiesPublicIndirect
$ sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'guauw1xT' \
    --countryCode '7eMwSl9M' \
    --namespace 'LH0NnTJ2' \
    --userId 'ulNzBvwJ' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveEligibilitiesPublicIndirect'
delete_file $TEMP_FILE

#- 36 retrieveSingleLocalizedPolicyVersion1
$ sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'aQa547Jl' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveSingleLocalizedPolicyVersion1'
delete_file $TEMP_FILE

#- 37 retrievePolicyVersions
$ sample-apps Legal retrievePolicyVersions \
    --basePolicyId 'lvA8RWSp' \
    --localeId 'abUt7xk6' \
    --namespace 'QxyWhfqo' \
    >$TEMP_FILE 2>&1
update_status $? 'retrievePolicyVersions'
delete_file $TEMP_FILE

#- 38 retrieveLatestPolicies
$ sample-apps Legal retrieveLatestPolicies \
    --countryCode 'WfJw2o8o' \
    --defaultOnEmpty 'True' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'PCZ2HzT7' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveLatestPolicies'
delete_file $TEMP_FILE

#- 39 retrieveLatestPoliciesPublic
$ sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace 'NXmWDlXs' \
    --alwaysIncludeDefault 'True' \
    --defaultOnEmpty 'False' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'sNOlvkfw' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveLatestPoliciesPublic'
delete_file $TEMP_FILE

#- 40 retrieveLatestPoliciesByNamespaceAndCountryPublic
$ sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'aSbnsuLC' \
    --namespace 'gToxuVTe' \
    --alwaysIncludeDefault 'False' \
    --defaultOnEmpty 'False' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'g6h5HIpH' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveLatestPoliciesByNamespaceAndCountryPublic'
delete_file $TEMP_FILE

#- 41 checkReadiness
$ sample-apps Legal checkReadiness \
    >$TEMP_FILE 2>&1
update_status $? 'checkReadiness'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT