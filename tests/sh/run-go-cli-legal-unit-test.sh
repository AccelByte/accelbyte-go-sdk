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

OPERATIONS_COUNT=42

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

#- 1 changePreferenceConsent
samples/cli/sample-apps Legal changePreferenceConsent \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "BxyZcDXB", "policyId": "pGlsQuJu", "policyVersionId": "8vMf0IsJ"}]' \
    --namespace 'kTrd8IDc' \
    --userId 'V2zXnTKj' \
    >$TEMP_FILE 2>&1
update_status $? 'changePreferenceConsent'
delete_file $TEMP_FILE

#- 2 retrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'XY1bPqam' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAcceptedAgreements'
delete_file $TEMP_FILE

#- 3 retrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'iBxx9Cs1' \
    --limit '61' \
    --offset '100' \
    --policyVersionId '84ekItqR' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllUsersByPolicyVersion'
delete_file $TEMP_FILE

#- 4 retrieveAllLegalPolicies
samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllLegalPolicies'
delete_file $TEMP_FILE

#- 5 createPolicy
samples/cli/sample-apps Legal createPolicy \
    --body '{"affectedClientIds": ["zHU1oh57"], "affectedCountries": ["0KQBVaew"], "basePolicyName": "c72krSha", "description": "68n3Ynoz", "namespace": "p1C2KmIQ", "tags": ["TuBdNEUs"], "typeId": "xFb8CJ17"}' \
    >$TEMP_FILE 2>&1
update_status $? 'createPolicy'
delete_file $TEMP_FILE

#- 6 retrieveSinglePolicy
samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'M7DJZaMS' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveSinglePolicy'
delete_file $TEMP_FILE

#- 7 partialUpdatePolicy
samples/cli/sample-apps Legal partialUpdatePolicy \
    --body '{"affectedClientIds": ["xECbZbyg"], "affectedCountries": ["yoarORoe"], "basePolicyName": "NHSb8Rh3", "description": "kgs9qqJb", "namespace": "nQsoBgiV", "tags": ["pP8Cm3yv"]}' \
    --basePolicyId 'ASUoxdxx' \
    >$TEMP_FILE 2>&1
update_status $? 'partialUpdatePolicy'
delete_file $TEMP_FILE

#- 8 retrievePolicyCountry
samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'FqmAGTJ8' \
    --countryCode 'IEdagEtp' \
    >$TEMP_FILE 2>&1
update_status $? 'retrievePolicyCountry'
delete_file $TEMP_FILE

#- 9 retrieveLocalizedPolicyVersions
samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --policyVersionId '4w29KOu9' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveLocalizedPolicyVersions'
delete_file $TEMP_FILE

#- 10 createLocalizedPolicyVersion
samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --body '{"contentType": "c19R6XDq", "description": "WHkkP8np", "localeCode": "LEKMfjiX"}' \
    --policyVersionId '7jpkVZk3' \
    >$TEMP_FILE 2>&1
update_status $? 'createLocalizedPolicyVersion'
delete_file $TEMP_FILE

#- 11 retrieveSingleLocalizedPolicyVersion
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'IaQYEmqG' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveSingleLocalizedPolicyVersion'
delete_file $TEMP_FILE

#- 12 updateLocalizedPolicyVersion
samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --body '{"attachmentChecksum": "odOEGt9g", "attachmentLocation": "POj0c6i0", "attachmentVersionIdentifier": "JkvIas73", "contentType": "ucYnFAJ3", "description": "DK5T4Eog"}' \
    --localizedPolicyVersionId 'g0Y39UoY' \
    >$TEMP_FILE 2>&1
update_status $? 'updateLocalizedPolicyVersion'
delete_file $TEMP_FILE

#- 13 requestPresignedURL
samples/cli/sample-apps Legal requestPresignedURL \
    --body '{"contentMD5": "lpv5bVAg", "contentType": "tsDhUTDU"}' \
    --localizedPolicyVersionId 'scbQDjbT' \
    >$TEMP_FILE 2>&1
update_status $? 'requestPresignedURL'
delete_file $TEMP_FILE

#- 14 setDefaultPolicy
samples/cli/sample-apps Legal setDefaultPolicy \
    --localizedPolicyVersionId 'QuPMz2PT' \
    >$TEMP_FILE 2>&1
update_status $? 'setDefaultPolicy'
delete_file $TEMP_FILE

#- 15 indirectBulkAcceptVersionedPolicy
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "yU89ZPOw", "policyId": "6zPFJ42c", "policyVersionId": "wmzBBSMN"}]' \
    --namespace 'coAAOjKN' \
    --userId 'jfcYHm09' \
    --publisherUserId '3aYgBU1s' \
    --clientId 'qjyK0XH4' \
    --countryCode '5PaRSOFQ' \
    >$TEMP_FILE 2>&1
update_status $? 'indirectBulkAcceptVersionedPolicy'
delete_file $TEMP_FILE

#- 16 adminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace 'Btu23REZ' \
    --userId '8hRVX7LG' \
    --publisherUserId 'OvDdYiQS' \
    --clientId '9i7mV1C9' \
    --countryCode '1pjG9gpx' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRetrieveEligibilities'
delete_file $TEMP_FILE

#- 17 retrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'L6ycTQdv' \
    >$TEMP_FILE 2>&1
update_status $? 'retrievePolicies'
delete_file $TEMP_FILE

#- 18 updatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --body '{"description": "ln2LAuSQ", "displayVersion": "WEXL6LFE", "isCommitted": false}' \
    --policyVersionId '9m126ZWc' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePolicyVersion'
delete_file $TEMP_FILE

#- 19 publishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId '8hHtWvbN' \
    --shouldNotify 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'publishPolicyVersion'
delete_file $TEMP_FILE

#- 20 updatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --body '{"description": "gUqslArF", "isDefaultOpted": false, "isMandatory": true, "policyName": "aCv8kU9d", "readableId": "BBpdsJLh", "shouldNotifyOnUpdate": true}' \
    --policyId 'VyExrkxo' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePolicy'
delete_file $TEMP_FILE

#- 21 setDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --policyId 'ot0B7WOf' \
    >$TEMP_FILE 2>&1
update_status $? 'setDefaultPolicy1'
delete_file $TEMP_FILE

#- 22 retrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'ercZdpMc' \
    --versionId 'i37Ds7YS' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveSinglePolicyVersion'
delete_file $TEMP_FILE

#- 23 createPolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --body '{"description": "fExaI3uz", "displayVersion": "LteMbFAl", "isCommitted": true}' \
    --policyId '4hr7HmOY' \
    >$TEMP_FILE 2>&1
update_status $? 'createPolicyVersion'
delete_file $TEMP_FILE

#- 24 retrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '16' \
    --limit '55' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllPolicyTypes'
delete_file $TEMP_FILE

#- 25 getUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'A5ltAOXm' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserInfoStatus'
delete_file $TEMP_FILE

#- 26 syncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace 'lG6eh1dT' \
    >$TEMP_FILE 2>&1
update_status $? 'syncUserInfo'
delete_file $TEMP_FILE

#- 27 invalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace 'doTFpBIc' \
    >$TEMP_FILE 2>&1
update_status $? 'invalidateUserInfoCache'
delete_file $TEMP_FILE

#- 28 anonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'uC1dQY93' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeUserAgreement'
delete_file $TEMP_FILE

#- 29 changePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "9vD8ldz7", "policyId": "Hu8AD79k", "policyVersionId": "dWunvizU"}]' \
    >$TEMP_FILE 2>&1
update_status $? 'changePreferenceConsent1'
delete_file $TEMP_FILE

#- 30 acceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId '0q1pHyhh' \
    >$TEMP_FILE 2>&1
update_status $? 'acceptVersionedPolicy'
delete_file $TEMP_FILE

#- 31 retrieveAgreementsPublic
samples/cli/sample-apps Legal retrieveAgreementsPublic \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAgreementsPublic'
delete_file $TEMP_FILE

#- 32 bulkAcceptVersionedPolicy
samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "GgdrysMi", "policyId": "zBGSRdP2", "policyVersionId": "l7DNSZ8A"}]' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkAcceptVersionedPolicy'
delete_file $TEMP_FILE

#- 33 indirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "PLQXSe07", "policyId": "ZddOGTMl", "policyVersionId": "JjBwj9HJ"}]' \
    --clientId 'HQKseEdS' \
    --countryCode 'XRDSvgua' \
    --namespace 'uw1xT7eM' \
    --userId 'wSl9MLH0' \
    >$TEMP_FILE 2>&1
update_status $? 'indirectBulkAcceptVersionedPolicyV2'
delete_file $TEMP_FILE

#- 34 indirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "lNzBvwJa", "policyId": "Qa547Jll", "policyVersionId": "vA8RWSpa"}]' \
    --userId 'bUt7xk6Q' \
    >$TEMP_FILE 2>&1
update_status $? 'indirectBulkAcceptVersionedPolicy1'
delete_file $TEMP_FILE

#- 35 retrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace 'xyWhfqoW' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveEligibilitiesPublic'
delete_file $TEMP_FILE

#- 36 retrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'fJw2o8oW' \
    --countryCode 'UqvPCZ2H' \
    --namespace 'zT7NXmWD' \
    --userId 'lXsuNIdQ' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveEligibilitiesPublicIndirect'
delete_file $TEMP_FILE

#- 37 retrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'JR5lsNOl' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveSingleLocalizedPolicyVersion1'
delete_file $TEMP_FILE

#- 38 retrievePolicyVersions
samples/cli/sample-apps Legal retrievePolicyVersions \
    --basePolicyId 'vkfwaSbn' \
    --localeId 'suLCgTox' \
    --namespace 'uVTekJgv' \
    >$TEMP_FILE 2>&1
update_status $? 'retrievePolicyVersions'
delete_file $TEMP_FILE

#- 39 retrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'g6h5HIpH' \
    --defaultOnEmpty 'True' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'iplEk4vj' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveLatestPolicies'
delete_file $TEMP_FILE

#- 40 retrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace '3LDp4yqD' \
    --alwaysIncludeDefault 'True' \
    --defaultOnEmpty 'True' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'xlHasinG' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveLatestPoliciesPublic'
delete_file $TEMP_FILE

#- 41 retrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'cjrkmRMt' \
    --namespace 'tgjDSaIV' \
    --alwaysIncludeDefault 'True' \
    --defaultOnEmpty 'False' \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 't3Udg7p9' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveLatestPoliciesByNamespaceAndCountryPublic'
delete_file $TEMP_FILE

#- 42 checkReadiness
samples/cli/sample-apps Legal checkReadiness \
    >$TEMP_FILE 2>&1
update_status $? 'checkReadiness'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT