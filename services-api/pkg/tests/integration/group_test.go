// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

//lint:ignore SA1019 Ignore the deprecation warnings

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
	bodyGroupUpdate = &groupclientmodels.ModelsUpdateGroupRequestV1{
		CustomAttributes: emptyInterface,
		GroupDescription: &groupDescription,
		GroupIcon:        &emptyString,
		GroupName:        &groupName,
		GroupRegion:      &groupRegion,
		GroupType:        &groupType,
	}
)

// TODO: migrate to test namespace, forbidden
func TestIntegrationGroup(t *testing.T) {
	t.Parallel()
	ruleDetails = append(ruleDetails, ruleDetail)
	groupPredefinedRules = append(groupPredefinedRules, groupPredefinedRule)

	// Creating a group
	// needs to use a token user who are not already joined a group
	inputCreate := &group_.CreateNewGroupPublicV1Params{
		Body:      bodyGroup,
		Namespace: integration.NamespaceTest,
	}
	created, errCreate := groupService.CreateNewGroupPublicV1(inputCreate)
	if errCreate != nil {
		assert.FailNow(t, errCreate.Error())
	}
	groupId := *created.GroupID
	t.Logf("GroupID: %v created", groupId)

	// Getting a single group
	inputGet := &group_.GetSingleGroupPublicV1Params{
		GroupID:   groupId,
		Namespace: integration.NamespaceTest,
	}
	get, errGet := groupService.GetSingleGroupPublicV1(inputGet)
	if errGet != nil {
		assert.FailNow(t, errGet.Error())
	}
	t.Logf("GroupID: %v get with name: %v", groupId, *created.GroupName)

	// Updating a group
	inputUpdate := &group_.UpdatePatchSingleGroupPublicV1Params{
		Body:      bodyGroupUpdate,
		GroupID:   groupId,
		Namespace: integration.NamespaceTest,
	}
	updated, errUpdate := groupService.UpdatePatchSingleGroupPublicV1(inputUpdate)
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	}
	t.Logf("GroupID: %v updated", groupId)

	// Deleting a group
	inputDelete := &group_.DeleteGroupPublicV1Params{
		GroupID:   groupId,
		Namespace: integration.NamespaceTest,
	}
	errDelete := groupService.DeleteGroupPublicV1(inputDelete)
	if errDelete != nil {
		assert.FailNow(t, errDelete.Error())
	}
	t.Logf("GroupID: %v deleted", groupId)

	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, get, "response should not be nil")
	assert.Nil(t, errCreate, "err should be nil")
	assert.NotNil(t, created, "response should not be nil")
	assert.Nil(t, errUpdate, "err should be nil")
	assert.NotNil(t, updated, "response should not be nil")
	assert.Nil(t, errDelete, "err should be nil")
}
