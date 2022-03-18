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
	configurationCode    = "group-test1"
	groupDescription     = "DESCRIPTION"
	groupMaxMember       = int32(1)
	groupName            = "GROUP_NAME"
	groupRegion          = "us-west-1"
	groupType            = "PRIVATE"
	groupCustomRule      groupclientmodels.ModelsGroupRuleGroupCustomRule
	groupPredefinedRules []*groupclientmodels.ModelsRule
	groupRules           = &groupclientmodels.ModelsGroupRule{
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
func TestIntegrationCreateNewGroupPublicV1(t *testing.T) {
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
	inputGroup := &group_.DeleteGroupPublicV1Params{
		GroupID:   "",
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	err := groupService.DeleteGroupPublicV1(inputGroup)

	assert.Nil(t, err, "err should be nil")
}

// Getting a single group
func TestIntegrationGetSingleGroupPublicV1(t *testing.T) {
	inputGroup := &group_.GetSingleGroupPublicV1Params{
		GroupID:   "",
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := groupService.GetSingleGroupPublicV1(inputGroup)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Updating a group
func TestIntegrationUpdatePatchSingleGroupPublicV1(t *testing.T) {
	bodyGroupUpdate := &groupclientmodels.ModelsUpdateGroupRequestV1{
		CustomAttributes: nil,
		GroupDescription: nil,
		GroupIcon:        nil,
		GroupName:        nil,
		GroupRegion:      nil,
		GroupType:        nil,
	}
	inputGroup := &group_.UpdatePatchSingleGroupPublicV1Params{
		Body:      bodyGroupUpdate,
		GroupID:   "",
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := groupService.UpdatePatchSingleGroupPublicV1(inputGroup)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}
