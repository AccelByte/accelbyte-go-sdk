// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userStatisticCycle

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic_cycle"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicListMyStatCycleItemsCmd represents the PublicListMyStatCycleItems command
var PublicListMyStatCycleItemsCmd = &cobra.Command{
	Use:   "publicListMyStatCycleItems",
	Short: "Public list my stat cycle items",
	Long:  `Public list my stat cycle items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticCycleService := &social.UserStatisticCycleService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		cycleId, _ := cmd.Flags().GetString("cycleId")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		statCodesString := cmd.Flag("statCodes").Value.String()
		var statCodes []string
		errStatCodes := json.Unmarshal([]byte(statCodesString), &statCodes)
		if errStatCodes != nil {
			return errStatCodes
		}
		input := &user_statistic_cycle.PublicListMyStatCycleItemsParams{
			CycleID:   cycleId,
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
			StatCodes: statCodes,
		}
		ok, errOK := userStatisticCycleService.PublicListMyStatCycleItemsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicListMyStatCycleItemsCmd.Flags().String("cycleId", "", "Cycle id")
	_ = PublicListMyStatCycleItemsCmd.MarkFlagRequired("cycleId")
	PublicListMyStatCycleItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListMyStatCycleItemsCmd.MarkFlagRequired("namespace")
	PublicListMyStatCycleItemsCmd.Flags().Int32("limit", 20, "Limit")
	PublicListMyStatCycleItemsCmd.Flags().Int32("offset", 0, "Offset")
	PublicListMyStatCycleItemsCmd.Flags().String("sortBy", "", "Sort by")
	PublicListMyStatCycleItemsCmd.Flags().String("statCodes", "", "Stat codes")
}
