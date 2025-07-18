// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/sirupsen/logrus"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/configuration"
	group_ "github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group_member"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	configurationService = &group.ConfigurationService{
		Client:          factory.NewGroupClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	groupService = &group.GroupService{
		Client:          factory.NewGroupClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	groupMemberService = &group.GroupMemberService{
		Client:          factory.NewGroupClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	configurationCode = "initialConfigurationCode"
	groupDescription  = "DESCRIPTION"
	groupMaxMember    = int32(1)
	groupName         = "Go SDK Group"
	groupRegion       = "us-west-1"
	groupType         = "PRIVATE"
	ruleCriteria      = groupclientmodels.ModelsRuleInformationRuleCriteriaMINIMUM
	ruleDetails       []*groupclientmodels.ModelsRuleInformation
	ruleDetail        = &groupclientmodels.ModelsRuleInformation{
		RuleAttribute: &integration.EmptyString,
		RuleCriteria:  &ruleCriteria,
		RuleValue:     &integration.EmptyFloat,
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
		CustomAttributes:  integration.EmptyInterface,
		GroupDescription:  &groupDescription,
		GroupIcon:         &integration.EmptyString,
		GroupMaxMember:    &groupMaxMember,
		GroupName:         &groupName,
		GroupRegion:       &groupRegion,
		GroupRules:        groupRules,
		GroupType:         &groupType,
	}
	bodyGroupUpdate = &groupclientmodels.ModelsUpdateGroupRequestV1{
		CustomAttributes: integration.EmptyInterface,
		GroupDescription: &groupDescription,
		GroupIcon:        &integration.EmptyString,
		GroupName:        &groupName,
		GroupRegion:      &groupRegion,
		GroupType:        &groupType,
	}
)

func TestIntegrationGroup(t *testing.T) {
	// Login User - Arrange
	Init()

	ruleDetails = append(ruleDetails, ruleDetail)
	groupPredefinedRules = append(groupPredefinedRules, groupPredefinedRule)

	configurationCode = checkGlobalConfig()

	inputGetUserGroup := &group_member.GetUserGroupInformationPublicV2Params{
		Namespace: namespace,
		Limit:     &integration.Limit,
		Offset:    &offset,
	}
	getUserGroup, errGetUserGroup := groupMemberService.GetUserGroupInformationPublicV2Short(inputGetUserGroup)

	if errGetUserGroup == nil {
		for _, data := range getUserGroup.Data {
			inputLeave := &group_member.LeaveGroupPublicV2Params{
				GroupID:   *data.GroupID,
				Namespace: namespace,
			}
			_, leaveGroupErr := groupMemberService.LeaveGroupPublicV2Short(inputLeave)
			if leaveGroupErr != nil {
				assert.FailNow(t, leaveGroupErr.Error())
			}
		}
	}

	// CASE Create a group
	// needs to use a token user who are not already joined a group
	inputCreate := &group_.CreateNewGroupPublicV1Params{
		Body:      bodyGroup,
		Namespace: integration.NamespaceTest,
	}

	created, errCreate := groupService.CreateNewGroupPublicV1Short(inputCreate)
	if errCreate != nil {
		assert.FailNow(t, errCreate.Error())
	}
	groupID := *created.GroupID
	t.Logf("GroupID: %v created", groupID)
	// ESAC

	// Assert
	assert.Nil(t, errCreate, "err should be nil")
	assert.NotNil(t, created, "response should not be nil")

	// CASE Get a single group
	inputGet := &group_.GetSingleGroupPublicV1Params{
		GroupID:   groupID,
		Namespace: integration.NamespaceTest,
	}

	get, errGet := groupService.GetSingleGroupPublicV1Short(inputGet)
	if errGet != nil {
		assert.FailNow(t, errGet.Error())
	}
	t.Logf("GroupID: %v get with name: %v", groupID, *created.GroupName)
	// ESAC

	// Assert
	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, get, "response should not be nil")

	// CASE Update a group
	inputUpdate := &group_.UpdatePatchSingleGroupPublicV1Params{
		Body:      bodyGroupUpdate,
		GroupID:   groupID,
		Namespace: integration.NamespaceTest,
	}

	updated, errUpdate := groupService.UpdatePatchSingleGroupPublicV1Short(inputUpdate)
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	}

	// ESAC

	// Assert
	assert.Nil(t, errUpdate, "err should be nil")
	assert.NotNil(t, updated, "response should not be nil")

	// CASE Delete a group
	inputDelete := &group_.DeleteGroupPublicV1Params{
		GroupID:   groupID,
		Namespace: integration.NamespaceTest,
	}

	errDelete := groupService.DeleteGroupPublicV1Short(inputDelete)
	if errDelete != nil {
		assert.FailNow(t, errDelete.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errDelete, "err should be nil")
}

// helper
func checkGlobalConfig() string {
	inputGet := &configuration.GetGroupConfigurationAdminV1Params{
		ConfigurationCode: configurationCode,
		Namespace:         integration.NamespaceTest,
	}

	// check if global config is existed
	get, errGet := configurationService.GetGroupConfigurationAdminV1Short(inputGet)
	if errGet != nil {
		logrus.Error(errGet.Error())
		logrus.Infof("Initializing a new global configuration...")

		// if global config not exist, we just have to initiate the default config
		inputCreate := &configuration.InitiateGroupConfigurationAdminV1Params{
			Namespace: integration.NamespaceTest,
		}
		create, errCreate := configurationService.InitiateGroupConfigurationAdminV1Short(inputCreate)
		if errCreate != nil {
			logrus.Error(errCreate)
		}
		logrus.Infof("Configuration has been initiated with Role Admin: %v, Role Member: %v", *create.GroupAdminRoleID, *create.GroupMemberRoleID)

		return *create.ConfigurationCode
	}
	logrus.Infof("Configuration with Role Admin: %v, Role Member: %v", *get.GroupAdminRoleID, *get.GroupMemberRoleID)

	return *get.ConfigurationCode
}
