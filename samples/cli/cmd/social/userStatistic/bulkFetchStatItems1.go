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

// BulkFetchStatItems1Cmd represents the BulkFetchStatItems1 command
var BulkFetchStatItems1Cmd = &cobra.Command{
	Use:   "bulkFetchStatItems1",
	Short: "Bulk fetch stat items 1",
	Long:  `Bulk fetch stat items 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		userIds, _ := cmd.Flags().GetString("userIds")
		input := &user_statistic.BulkFetchStatItems1Params{
			Namespace: namespace,
			StatCode:  statCode,
			UserIds:   userIds,
		}
		ok, errOK := userStatisticService.BulkFetchStatItems1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkFetchStatItems1Cmd.Flags().String("namespace", "", "Namespace")
	_ = BulkFetchStatItems1Cmd.MarkFlagRequired("namespace")
	BulkFetchStatItems1Cmd.Flags().String("statCode", "", "Stat code")
	_ = BulkFetchStatItems1Cmd.MarkFlagRequired("statCode")
	BulkFetchStatItems1Cmd.Flags().String("userIds", "", "User ids")
	_ = BulkFetchStatItems1Cmd.MarkFlagRequired("userIds")
}
