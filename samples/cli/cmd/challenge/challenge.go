// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challenge

import (
	"github.com/AccelByte/sample-apps/cmd/challenge/challengeConfiguration"
	"github.com/AccelByte/sample-apps/cmd/challenge/challengeList"
	"github.com/AccelByte/sample-apps/cmd/challenge/challengeProgression"
	"github.com/AccelByte/sample-apps/cmd/challenge/goalConfiguration"
	"github.com/AccelByte/sample-apps/cmd/challenge/playerReward"
	"github.com/spf13/cobra"
)

// ChallengeCmd represents the service's child command
var ChallengeCmd = &cobra.Command{
	Use:   "Challenge",
	Short: "Challenge to get all the commands",
}

func init() {
	ChallengeCmd.AddCommand(challengeConfiguration.AdminGetChallengesCmd)
	ChallengeCmd.AddCommand(challengeConfiguration.AdminCreateChallengeCmd)
	ChallengeCmd.AddCommand(challengeConfiguration.AdminGetChallengeCmd)
	ChallengeCmd.AddCommand(challengeConfiguration.AdminUpdateChallengeCmd)
	ChallengeCmd.AddCommand(challengeConfiguration.AdminDeleteChallengeCmd)
	ChallengeCmd.AddCommand(goalConfiguration.AdminGetGoalsCmd)
	ChallengeCmd.AddCommand(goalConfiguration.AdminCreateGoalCmd)
	ChallengeCmd.AddCommand(goalConfiguration.AdminGetGoalCmd)
	ChallengeCmd.AddCommand(goalConfiguration.AdminUpdateGoalsCmd)
	ChallengeCmd.AddCommand(goalConfiguration.AdminDeleteGoalCmd)
	ChallengeCmd.AddCommand(challengeConfiguration.AdminGetPeriodsCmd)
	ChallengeCmd.AddCommand(challengeConfiguration.AdminRandomizeChallengeCmd)
	ChallengeCmd.AddCommand(challengeConfiguration.AdminDeleteTiedChallengeCmd)
	ChallengeCmd.AddCommand(challengeProgression.AdminEvaluateProgressCmd)
	ChallengeCmd.AddCommand(playerReward.AdminClaimUsersRewardsCmd)
	ChallengeCmd.AddCommand(playerReward.AdminGetUserRewardsCmd)
	ChallengeCmd.AddCommand(playerReward.AdminClaimUserRewardsCmd)
	ChallengeCmd.AddCommand(challengeList.GetChallengesCmd)
	ChallengeCmd.AddCommand(challengeList.PublicGetScheduledGoalsCmd)
	ChallengeCmd.AddCommand(challengeProgression.EvaluateMyProgressCmd)
	ChallengeCmd.AddCommand(challengeProgression.PublicGetUserProgressionCmd)
	ChallengeCmd.AddCommand(challengeProgression.PublicGetPastUserProgressionCmd)
	ChallengeCmd.AddCommand(playerReward.PublicGetUserRewardsCmd)
	ChallengeCmd.AddCommand(playerReward.PublicClaimUserRewardsCmd)
}
