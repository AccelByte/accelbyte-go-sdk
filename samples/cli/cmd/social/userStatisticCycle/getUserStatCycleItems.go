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

// GetUserStatCycleItemsCmd represents the GetUserStatCycleItems command
var GetUserStatCycleItemsCmd = &cobra.Command{
	Use:   "getUserStatCycleItems",
	Short: "Get user stat cycle items",
	Long:  `Get user stat cycle items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticCycleService := &social.UserStatisticCycleService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		cycleId, _ := cmd.Flags().GetString("cycleId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		isPublic, _ := cmd.Flags().GetBool("isPublic")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		statCodes, _ := cmd.Flags().GetString("statCodes")
		input := &user_statistic_cycle.GetUserStatCycleItemsParams{
			CycleID:   cycleId,
			Namespace: namespace,
			UserID:    userId,
			IsPublic:  &isPublic,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
			StatCodes: &statCodes,
		}
		ok, errOK := userStatisticCycleService.GetUserStatCycleItemsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserStatCycleItemsCmd.Flags().String("cycleId", "", "Cycle id")
	_ = GetUserStatCycleItemsCmd.MarkFlagRequired("cycleId")
	GetUserStatCycleItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserStatCycleItemsCmd.MarkFlagRequired("namespace")
	GetUserStatCycleItemsCmd.Flags().String("userId", "", "User id")
	_ = GetUserStatCycleItemsCmd.MarkFlagRequired("userId")
	GetUserStatCycleItemsCmd.Flags().Bool("isPublic", false, "Is public")
	GetUserStatCycleItemsCmd.Flags().Int32("limit", 20, "Limit")
	GetUserStatCycleItemsCmd.Flags().Int32("offset", 0, "Offset")
	GetUserStatCycleItemsCmd.Flags().String("sortBy", "", "Sort by")
	GetUserStatCycleItemsCmd.Flags().String("statCodes", "", "Stat codes")
}
