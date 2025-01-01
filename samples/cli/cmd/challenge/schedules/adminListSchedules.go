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

// AdminListSchedulesCmd represents the AdminListSchedules command
var AdminListSchedulesCmd = &cobra.Command{
	Use:   "adminListSchedules",
	Short: "Admin list schedules",
	Long:  `Admin list schedules`,
	RunE: func(cmd *cobra.Command, args []string) error {
		schedulesService := &challenge.SchedulesService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		dateTime, _ := cmd.Flags().GetString("dateTime")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		userId, _ := cmd.Flags().GetString("userId")
		input := &schedules.AdminListSchedulesParams{
			ChallengeCode: challengeCode,
			Namespace:     namespace,
			DateTime:      &dateTime,
			Limit:         &limit,
			Offset:        &offset,
			UserID:        &userId,
		}
		ok, errOK := schedulesService.AdminListSchedulesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminListSchedulesCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminListSchedulesCmd.MarkFlagRequired("challengeCode")
	AdminListSchedulesCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListSchedulesCmd.MarkFlagRequired("namespace")
	AdminListSchedulesCmd.Flags().String("dateTime", "", "Date time")
	AdminListSchedulesCmd.Flags().Int64("limit", 20, "Limit")
	AdminListSchedulesCmd.Flags().Int64("offset", 0, "Offset")
	AdminListSchedulesCmd.Flags().String("userId", "", "User id")
}
