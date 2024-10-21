// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"
	"time"

	"github.com/go-openapi/strfmt"
	// "github.com/sirupsen/logrus"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"

	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclient/challenge_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclient/goal_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclientmodels"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/challenge"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	challengeCode		= "go-" + RandStringBytes(6) +  "-challenge"
	challengeName		= "Go Challenge Test"
	updateChallengeName	= challengeName + " UPDATED"
	goalCode			= "go-" + RandStringBytes(6) + "-goal"
	goalName			= "Go Goal Test"
	currentTime			= time.Now()
	aStartTime			= strfmt.DateTime(currentTime)
	assignmentRule		= challengeclientmodels.ModelCreateChallengeRequestAssignmentRuleFIXED
	goalsVisibility		= challengeclientmodels.ModelCreateChallengeRequestGoalsVisibilitySHOWALL
	rotation			= challengeclientmodels.ModelCreateChallengeRequestRotationDAILY
	predicateMatcher	= challengeclientmodels.ModelPredicateMatcherEQUAL
	predicateType		= challengeclientmodels.ModelPredicateParameterTypeUSERACCOUNT
	predicateName		= "userAccountVerified"
	requirementOp		= challengeclientmodels.ModelRequirementOperatorAND
	preTarget float64	= 1
	scheduleOrder int32	= 1


	challengeConfigSvc	= &challenge.ChallengeConfigurationService{
		Client:          factory.NewChallengeClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	goalConfigSvc		= &challenge.GoalConfigurationService{
		Client:          factory.NewChallengeClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}

	bodyNewChallenge	= &challengeclientmodels.ModelCreateChallengeRequest{
		Code: &challengeCode,
		Name: &challengeName,
		Description: "",
		AssignmentRule: &assignmentRule,
		GoalsVisibility: &goalsVisibility,
		Rotation: &rotation,
		StartDate: aStartTime,
	}
	bodyUpdateChallenge	= &challengeclientmodels.ModelUpdateChallengeRequest{
		Name: updateChallengeName,
	}

	goalPredicates		[]*challengeclientmodels.ModelPredicate
	goalPredicate		= &challengeclientmodels.ModelPredicate{
		ParameterType: &predicateType,
		ParameterName: &predicateName,
		Matcher: &predicateMatcher,
		TargetValue: &preTarget,
	}

	goalReqGroups		[]*challengeclientmodels.ModelRequirement
	goalReqGroup		= &challengeclientmodels.ModelRequirement{
		Operator: &requirementOp,
		Predicates: goalPredicates,
	}

	bodyNewGoal			= &challengeclientmodels.ModelCreateGoalRequest{
		Code: &goalCode,
		Name: &goalName,
		Description: "",
		Schedule: &challengeclientmodels.ModelGoalSchedule{
			StartTime: aStartTime,
			Order: &scheduleOrder,
		},
		RequirementGroups: goalReqGroups,
	}
)

func TestIntegrationChallenge(t *testing.T) {
	// Login User - Arrange
	Init()

	goalPredicates = append(goalPredicates, goalPredicate)
	goalReqGroups = append(goalReqGroups, goalReqGroup)

	// CASE Create a new challenge
	challengeCreateParams := &challenge_configuration.AdminCreateChallengeParams{
		Namespace	: integration.NamespaceTest,
		Body		: bodyNewChallenge,
	}

	created, errCreate := challengeConfigSvc.AdminCreateChallengeShort(challengeCreateParams)
	if errCreate != nil {
		assert.FailNow(t, errCreate.Error())
	}
	t.Logf("Challenge: %v created", created.Name)
	// ESAC

	// Assert
	assert.Nil(t, errCreate, "err should be nil")
	assert.NotNil(t, created, "response should not be nil")

	// CASE Get challenge
	getParam := &challenge_configuration.AdminGetChallengeParams{
		Namespace: integration.NamespaceTest,
		ChallengeCode: challengeCode,
	}

	challengeData, errGet := challengeConfigSvc.AdminGetChallengeShort(getParam)
	if errGet != nil {
		assert.FailNow(t, errGet.Error())
	}
	t.Logf("Challenge: %v", challengeData.Name)
	// ESAC

	// Assert
	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, challengeData, "response should not be nil")

	// CASE Update a challenge
	updateParam := &challenge_configuration.AdminUpdateChallengeParams{
		Namespace: integration.NamespaceTest,
		ChallengeCode: challengeCode,
		Body: bodyUpdateChallenge,
	}

	challengeUpdate, errUpdate := challengeConfigSvc.AdminUpdateChallengeShort(updateParam)
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	}
	t.Logf("Challenge: %v updated", challengeData.Name)
	// ESAC

	// Assert
	assert.Nil(t, errUpdate, "err should be nil")
	assert.NotNil(t, challengeUpdate, "response should not be nil")

	// CASE Create a new goal
	goalCreateParams := &goal_configuration.AdminCreateGoalParams{
		Namespace: integration.NamespaceTest,
		ChallengeCode: challengeCode,
		Body: bodyNewGoal,
	}

	newGoal, errCreate := goalConfigSvc.AdminCreateGoalShort(goalCreateParams)
	if errCreate != nil {
		assert.FailNow(t, errCreate.Error())
	}
	t.Logf("Goal: %v created", newGoal.Name)
	// ESAC

	// Assert
	assert.Nil(t, errCreate, "err should be nil")
	assert.NotNil(t, newGoal, "response should not be nil")

	// CASE Delete a goal
	goalDelParams := &goal_configuration.AdminDeleteGoalParams{
		Namespace: integration.NamespaceTest,
		ChallengeCode: challengeCode,
		Code: goalCode,
	}

	errDelete := goalConfigSvc.AdminDeleteGoalShort(goalDelParams)
	if errDelete != nil {
		assert.FailNow(t, errDelete.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errDelete, "err should be nil")	

	// CASE Delete a challenge
	delParams := &challenge_configuration.AdminDeleteChallengeParams{
		Namespace: integration.NamespaceTest,
		ChallengeCode: challengeCode,
	}

	errDelete = challengeConfigSvc.AdminDeleteChallengeShort(delParams)
	if errDelete != nil {
		assert.FailNow(t, errDelete.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errDelete, "err should be nil")	
}