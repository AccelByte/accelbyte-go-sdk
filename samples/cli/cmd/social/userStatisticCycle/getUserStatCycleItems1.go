// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userStatisticCycle

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic_cycle"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserStatCycleItems1Cmd represents the GetUserStatCycleItems1 command
var GetUserStatCycleItems1Cmd = &cobra.Command{
	Use:   "getUserStatCycleItems1",
	Short: "Get user stat cycle items 1",
	Long:  `Get user stat cycle items 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticCycleService := &social.UserStatisticCycleService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		cycleId, _ := cmd.Flags().GetString("cycleId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		statCodes, _ := cmd.Flags().GetString("statCodes")
		input := &user_statistic_cycle.GetUserStatCycleItems1Params{
			CycleID:   cycleId,
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
			StatCodes: &statCodes,
		}
		ok, errOK := userStatisticCycleService.GetUserStatCycleItems1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserStatCycleItems1Cmd.Flags().String("cycleId", "", "Cycle id")
	_ = GetUserStatCycleItems1Cmd.MarkFlagRequired("cycleId")
	GetUserStatCycleItems1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserStatCycleItems1Cmd.MarkFlagRequired("namespace")
	GetUserStatCycleItems1Cmd.Flags().String("userId", "", "User id")
	_ = GetUserStatCycleItems1Cmd.MarkFlagRequired("userId")
	GetUserStatCycleItems1Cmd.Flags().Int32("limit", 20, "Limit")
	GetUserStatCycleItems1Cmd.Flags().Int32("offset", 0, "Offset")
	GetUserStatCycleItems1Cmd.Flags().String("statCodes", "", "Stat codes")
}
