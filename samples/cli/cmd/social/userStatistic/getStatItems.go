// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userStatistic

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetStatItemsCmd represents the GetStatItems command
var GetStatItemsCmd = &cobra.Command{
	Use:   "getStatItems",
	Short: "Get stat items",
	Long:  `Get stat items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &user_statistic.GetStatItemsParams{
			Namespace: namespace,
			StatCode:  statCode,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
		}
		ok, errOK := userStatisticService.GetStatItemsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetStatItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetStatItemsCmd.MarkFlagRequired("namespace")
	GetStatItemsCmd.Flags().String("statCode", "", "Stat code")
	_ = GetStatItemsCmd.MarkFlagRequired("statCode")
	GetStatItemsCmd.Flags().Int32("limit", 20, "Limit")
	GetStatItemsCmd.Flags().Int32("offset", 0, "Offset")
	GetStatItemsCmd.Flags().String("sortBy", "", "Sort by")
}
