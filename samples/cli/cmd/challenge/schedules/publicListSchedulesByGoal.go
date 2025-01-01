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

// PublicListSchedulesByGoalCmd represents the PublicListSchedulesByGoal command
var PublicListSchedulesByGoalCmd = &cobra.Command{
	Use:   "publicListSchedulesByGoal",
	Short: "Public list schedules by goal",
	Long:  `Public list schedules by goal`,
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
		input := &schedules.PublicListSchedulesByGoalParams{
			ChallengeCode: challengeCode,
			Code:          code,
			Namespace:     namespace,
			Limit:         &limit,
			Offset:        &offset,
		}
		ok, errOK := schedulesService.PublicListSchedulesByGoalShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicListSchedulesByGoalCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = PublicListSchedulesByGoalCmd.MarkFlagRequired("challengeCode")
	PublicListSchedulesByGoalCmd.Flags().String("code", "", "Code")
	_ = PublicListSchedulesByGoalCmd.MarkFlagRequired("code")
	PublicListSchedulesByGoalCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListSchedulesByGoalCmd.MarkFlagRequired("namespace")
	PublicListSchedulesByGoalCmd.Flags().Int64("limit", 20, "Limit")
	PublicListSchedulesByGoalCmd.Flags().Int64("offset", 0, "Offset")
}
