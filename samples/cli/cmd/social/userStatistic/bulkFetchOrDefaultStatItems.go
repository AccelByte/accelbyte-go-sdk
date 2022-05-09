// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userStatistic

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// BulkFetchOrDefaultStatItemsCmd represents the BulkFetchOrDefaultStatItems command
var BulkFetchOrDefaultStatItemsCmd = &cobra.Command{
	Use:   "bulkFetchOrDefaultStatItems",
	Short: "Bulk fetch or default stat items",
	Long:  `Bulk fetch or default stat items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		userIdsString := cmd.Flag("userIds").Value.String()
		var userIds []string
		errUserIds := json.Unmarshal([]byte(userIdsString), &userIds)
		if errUserIds != nil {
			return errUserIds
		}
		input := &user_statistic.BulkFetchOrDefaultStatItemsParams{
			Namespace: namespace,
			StatCode:  statCode,
			UserIds:   userIds,
		}
		ok, err := userStatisticService.BulkFetchOrDefaultStatItemsShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	BulkFetchOrDefaultStatItemsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = BulkFetchOrDefaultStatItemsCmd.MarkFlagRequired("namespace")
	BulkFetchOrDefaultStatItemsCmd.Flags().StringP("statCode", "", "", "Stat code")
	_ = BulkFetchOrDefaultStatItemsCmd.MarkFlagRequired("statCode")
	BulkFetchOrDefaultStatItemsCmd.Flags().StringP("userIds", "", "", "User ids")
	_ = BulkFetchOrDefaultStatItemsCmd.MarkFlagRequired("userIds")
}
