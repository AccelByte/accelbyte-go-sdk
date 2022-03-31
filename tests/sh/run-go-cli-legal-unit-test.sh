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
    --body '[{"isAccepted": true, "localizedPolicyVersionId": "tBxyZcDX", "policyId": "BpGlsQuJ", "policyVersionId": "u8vMf0Is"}]' \
    --namespace 'JkTrd8ID' \
    --userId 'cV2zXnTK' \
    >$TEMP_FILE 2>&1
update_status $? 'changePreferenceConsent'
delete_file $TEMP_FILE

#- 2 retrieveAcceptedAgreements
samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --userId 'jXY1bPqa' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAcceptedAgreements'
delete_file $TEMP_FILE

#- 3 retrieveAllUsersByPolicyVersion
samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --keyword 'miBxx9Cs' \
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
    --body '[{"isAccepted": false, "localizedPolicyVersionId": "kyU89ZPO", "policyId": "w6zPFJ42", "policyVersionId": "cwmzBBSM"}]' \
    --namespace 'NcoAAOjK' \
    --userId 'NjfcYHm0' \
    --publisherUserId '93aYgBU1' \
    --clientId 'sqjyK0XH' \
    --countryCode '45PaRSOF' \
    >$TEMP_FILE 2>&1
update_status $? 'indirectBulkAcceptVersionedPolicy'
delete_file $TEMP_FILE

#- 16 adminRetrieveEligibilities
samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace 'QBtu23RE' \
    --userId 'Z8hRVX7L' \
    --publisherUserId 'GOvDdYiQ' \
    --clientId 'S9i7mV1C' \
    --countryCode '91pjG9gp' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRetrieveEligibilities'
delete_file $TEMP_FILE

#- 17 retrievePolicies
samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'xL6ycTQd' \
    >$TEMP_FILE 2>&1
update_status $? 'retrievePolicies'
delete_file $TEMP_FILE

#- 18 updatePolicyVersion
samples/cli/sample-apps Legal updatePolicyVersion \
    --body '{"description": "vln2LAuS", "displayVersion": "QWEXL6LF", "isCommitted": true}' \
    --policyVersionId '1YHo9m12' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePolicyVersion'
delete_file $TEMP_FILE

#- 19 publishPolicyVersion
samples/cli/sample-apps Legal publishPolicyVersion \
    --policyVersionId '6ZWc8hHt' \
    --shouldNotify 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'publishPolicyVersion'
delete_file $TEMP_FILE

#- 20 updatePolicy
samples/cli/sample-apps Legal updatePolicy \
    --body '{"description": "bNYqgUqs", "isDefaultOpted": false, "isMandatory": true, "policyName": "rFPiHUIv", "readableId": "aCv8kU9d", "shouldNotifyOnUpdate": true}' \
    --policyId 'BpdsJLhs' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePolicy'
delete_file $TEMP_FILE

#- 21 setDefaultPolicy1
samples/cli/sample-apps Legal setDefaultPolicy1 \
    --policyId 'VyExrkxo' \
    >$TEMP_FILE 2>&1
update_status $? 'setDefaultPolicy1'
delete_file $TEMP_FILE

#- 22 retrieveSinglePolicyVersion
samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --policyId 'ot0B7WOf' \
    --versionId 'ercZdpMc' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveSinglePolicyVersion'
delete_file $TEMP_FILE

#- 23 createPolicyVersion
samples/cli/sample-apps Legal createPolicyVersion \
    --body '{"description": "i37Ds7YS", "displayVersion": "fExaI3uz", "isCommitted": true}' \
    --policyId 'eMbFAlt4' \
    >$TEMP_FILE 2>&1
update_status $? 'createPolicyVersion'
delete_file $TEMP_FILE

#- 24 retrieveAllPolicyTypes
samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --offset '14' \
    --limit '35' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllPolicyTypes'
delete_file $TEMP_FILE

#- 25 getUserInfoStatus
samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces '7HmOYiBA' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserInfoStatus'
delete_file $TEMP_FILE

#- 26 syncUserInfo
samples/cli/sample-apps Legal syncUserInfo \
    --namespace '5ltAOXml' \
    >$TEMP_FILE 2>&1
update_status $? 'syncUserInfo'
delete_file $TEMP_FILE

#- 27 invalidateUserInfoCache
samples/cli/sample-apps Legal invalidateUserInfoCache \
    --namespace 'G6eh1dTd' \
    >$TEMP_FILE 2>&1
update_status $? 'invalidateUserInfoCache'
delete_file $TEMP_FILE

#- 28 anonymizeUserAgreement
samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'oTFpBIcu' \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeUserAgreement'
delete_file $TEMP_FILE

#- 29 changePreferenceConsent1
samples/cli/sample-apps Legal changePreferenceConsent1 \
    --body '[{"isAccepted": true, "localizedPolicyVersionId": "1dQY93OJ", "policyId": "nJ6Te9vD", "policyVersionId": "8ldz7Hu8"}]' \
    >$TEMP_FILE 2>&1
update_status $? 'changePreferenceConsent1'
delete_file $TEMP_FILE

#- 30 acceptVersionedPolicy
samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'AD79kdWu' \
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
    --body '[{"isAccepted": false, "localizedPolicyVersionId": "vizU0q1p", "policyId": "HyhhERoG", "policyVersionId": "gdrysMiz"}]' \
    >$TEMP_FILE 2>&1
update_status $? 'bulkAcceptVersionedPolicy'
delete_file $TEMP_FILE

#- 33 indirectBulkAcceptVersionedPolicyV2
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicyV2 \
    --body '[{"isAccepted": true, "localizedPolicyVersionId": "GSRdP2l7", "policyId": "DNSZ8Aq0", "policyVersionId": "XiPLQXSe"}]' \
    --clientId '07ZddOGT' \
    --countryCode 'MlJjBwj9' \
    --namespace 'HJHQKseE' \
    --userId 'dSXRDSvg' \
    >$TEMP_FILE 2>&1
update_status $? 'indirectBulkAcceptVersionedPolicyV2'
delete_file $TEMP_FILE

#- 34 indirectBulkAcceptVersionedPolicy1
samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy1 \
    --body '[{"isAccepted": true, "localizedPolicyVersionId": "auw1xT7e", "policyId": "MwSl9MLH", "policyVersionId": "0NnTJ2ul"}]' \
    --userId 'NzBvwJaQ' \
    >$TEMP_FILE 2>&1
update_status $? 'indirectBulkAcceptVersionedPolicy1'
delete_file $TEMP_FILE

#- 35 retrieveEligibilitiesPublic
samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace 'a547Jllv' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveEligibilitiesPublic'
delete_file $TEMP_FILE

#- 36 retrieveEligibilitiesPublicIndirect
samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'A8RWSpab' \
    --countryCode 'Ut7xk6Qx' \
    --namespace 'yWhfqoWf' \
    --userId 'Jw2o8oWU' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveEligibilitiesPublicIndirect'
delete_file $TEMP_FILE

#- 37 retrieveSingleLocalizedPolicyVersion1
samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion1 \
    --localizedPolicyVersionId 'qvPCZ2Hz' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveSingleLocalizedPolicyVersion1'
delete_file $TEMP_FILE

#- 38 retrievePolicyVersions
samples/cli/sample-apps Legal retrievePolicyVersions \
    --basePolicyId 'T7NXmWDl' \
    --localeId 'XsuNIdQJ' \
    --namespace 'R5lsNOlv' \
    >$TEMP_FILE 2>&1
update_status $? 'retrievePolicyVersions'
delete_file $TEMP_FILE

#- 39 retrieveLatestPolicies
samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'kfwaSbns' \
    --defaultOnEmpty 'True' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'gToxuVTe' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveLatestPolicies'
delete_file $TEMP_FILE

#- 40 retrieveLatestPoliciesPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace 'kJgvg6h5' \
    --alwaysIncludeDefault 'False' \
    --defaultOnEmpty 'True' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'iplEk4vj' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveLatestPoliciesPublic'
delete_file $TEMP_FILE

#- 41 retrieveLatestPoliciesByNamespaceAndCountryPublic
samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode '3LDp4yqD' \
    --namespace 't8QUZDpx' \
    --alwaysIncludeDefault 'False' \
    --defaultOnEmpty 'False' \
    --policyType 'MARKETING_PREFERENCE_TYPE' \
    --tags 'inGcjrkm' \
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