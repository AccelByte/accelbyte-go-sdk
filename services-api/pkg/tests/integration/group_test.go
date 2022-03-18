// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	group_ "github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	groupService = &group.GroupService{
		Client:          factory.NewGroupClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
	configurationCode = "group-test1"
	groupDescription  = "DESCRIPTION"
	groupMaxMember    = int32(1)
	groupName         = "Go SDK Group"
	groupRegion       = "us-west-1"
	groupType         = "PRIVATE"
	ruleCriteria      = "MINIMUM"
	ruleDetails       []*groupclientmodels.ModelsRuleInformation
	ruleDetail        = &groupclientmodels.ModelsRuleInformation{
		RuleAttribute: &emptyString,
		RuleCriteria:  &ruleCriteria,
		RuleValue:     &emptyFloat,
	}
	groupCustomRule      groupclientmodels.ModelsGroupRuleGroupCustomRule
	groupPredefinedRules []*groupclientmodels.ModelsRule
	groupPredefinedRule  = &groupclientmodels.ModelsRule{
		AllowedAction: nil,
		RuleDetail:    ruleDetails,
	}
	groupRules = &groupclientmodels.ModelsGroupRule{
		GroupCustomRule:      groupCustomRule,
		GroupPredefinedRules: groupPredefinedRules,
	}
	bodyGroup = &groupclientmodels.ModelsPublicCreateNewGroupRequestV1{
		ConfigurationCode: &configurationCode,
		CustomAttributes:  emptyInterface,
		GroupDescription:  &groupDescription,
		GroupIcon:         &emptyString,
		GroupMaxMember:    &groupMaxMember,
		GroupName:         &groupName,
		GroupRegion:       &groupRegion,
		GroupRules:        groupRules,
		GroupType:         &groupType,
	}
)

// Creating a group
// needs to use a token user who are not already joined a group
func TestIntegrationCreateNewGroupPublicV1(t *testing.T) {
	ruleDetails = append(ruleDetails, ruleDetail)
	groupPredefinedRules = append(groupPredefinedRules, groupPredefinedRule)
	inputGroup := &group_.CreateNewGroupPublicV1Params{
		Body:      bodyGroup,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := groupService.CreateNewGroupPublicV1(inputGroup)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Deleting a group
func TestIntegrationDeleteGroupPublicV1(t *testing.T) {
	inputGroupCreate := &group_.CreateNewGroupPublicV1Params{
		Body:      bodyGroup,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	okCreate, err := groupService.CreateNewGroupPublicV1(inputGroupCreate)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, okCreate, "response should not be nil")

	groupId := *okCreate.GroupID
	inputGroup := &group_.DeleteGroupPublicV1Params{
		GroupID:   groupId,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	err = groupService.DeleteGroupPublicV1(inputGroup)

	assert.Nil(t, err, "err should be nil")
}

// Getting a single group
func TestIntegrationGetSingleGroupPublicV1(t *testing.T) {
	inputGroupCreate := &group_.CreateNewGroupPublicV1Params{
		Body:      bodyGroup,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	okCreate, err := groupService.CreateNewGroupPublicV1(inputGroupCreate)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, okCreate, "response should not be nil")

	groupId := *okCreate.GroupID
	inputGroup := &group_.GetSingleGroupPublicV1Params{
		GroupID:   groupId,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, errOk := groupService.GetSingleGroupPublicV1(inputGroup)

	assert.Nil(t, errOk, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Updating a group
func TestIntegrationUpdatePatchSingleGroupPublicV1(t *testing.T) {
	inputGroupCreate := &group_.CreateNewGroupPublicV1Params{
		Body:      bodyGroup,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	okCreate, err := groupService.CreateNewGroupPublicV1(inputGroupCreate)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, okCreate, "response should not be nil")

	groupId := *okCreate.GroupID
	bodyGroupUpdate := &groupclientmodels.ModelsUpdateGroupRequestV1{
		CustomAttributes: emptyInterface,
		GroupDescription: &groupDescription,
		GroupIcon:        &emptyString,
		GroupName:        &groupName,
		GroupRegion:      &groupRegion,
		GroupType:        &groupType,
	}
	inputGroup := &group_.UpdatePatchSingleGroupPublicV1Params{
		Body:      bodyGroupUpdate,
		GroupID:   groupId,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, errOk := groupService.UpdatePatchSingleGroupPublicV1(inputGroup)

	assert.Nil(t, errOk, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}
