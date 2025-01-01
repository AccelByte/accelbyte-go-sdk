// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package schedules

import (
	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclient/schedules"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/challenge"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminListSchedulesByGoalCmd represents the AdminListSchedulesByGoal command
var AdminListSchedulesByGoalCmd = &cobra.Command{
	Use:   "adminListSchedulesByGoal",
	Short: "Admin list schedules by goal",
	Long:  `Admin list schedules by goal`,
	RunE: func(cmd *cobra.Command, args []string) error {
		schedulesService := &challenge.SchedulesService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		code, _ := cmd.Flags().GetString("code")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		userId, _ := cmd.Flags().GetString("userId")
		input := &schedules.AdminListSchedulesByGoalParams{
			ChallengeCode: challengeCode,
			Code:          code,
			Namespace:     namespace,
			Limit:         &limit,
			Offset:        &offset,
			UserID:        &userId,
		}
		ok, errOK := schedulesService.AdminListSchedulesByGoalShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminListSchedulesByGoalCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminListSchedulesByGoalCmd.MarkFlagRequired("challengeCode")
	AdminListSchedulesByGoalCmd.Flags().String("code", "", "Code")
	_ = AdminListSchedulesByGoalCmd.MarkFlagRequired("code")
	AdminListSchedulesByGoalCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListSchedulesByGoalCmd.MarkFlagRequired("namespace")
	AdminListSchedulesByGoalCmd.Flags().Int64("limit", 20, "Limit")
	AdminListSchedulesByGoalCmd.Flags().Int64("offset", 0, "Offset")
	AdminListSchedulesByGoalCmd.Flags().String("userId", "", "User id")
}
