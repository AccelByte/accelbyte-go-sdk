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

// BulkFetchOrDefaultStatItems1Cmd represents the BulkFetchOrDefaultStatItems1 command
var BulkFetchOrDefaultStatItems1Cmd = &cobra.Command{
	Use:   "bulkFetchOrDefaultStatItems1",
	Short: "Bulk fetch or default stat items 1",
	Long:  `Bulk fetch or default stat items 1`,
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
		additionalKey, _ := cmd.Flags().GetString("additionalKey")
		input := &user_statistic.BulkFetchOrDefaultStatItems1Params{
			Namespace:     namespace,
			AdditionalKey: &additionalKey,
			StatCode:      statCode,
			UserIds:       userIds,
		}
		ok, errOK := userStatisticService.BulkFetchOrDefaultStatItems1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkFetchOrDefaultStatItems1Cmd.Flags().String("namespace", "", "Namespace")
	_ = BulkFetchOrDefaultStatItems1Cmd.MarkFlagRequired("namespace")
	BulkFetchOrDefaultStatItems1Cmd.Flags().String("additionalKey", "", "Additional key")
	BulkFetchOrDefaultStatItems1Cmd.Flags().String("statCode", "", "Stat code")
	_ = BulkFetchOrDefaultStatItems1Cmd.MarkFlagRequired("statCode")
	BulkFetchOrDefaultStatItems1Cmd.Flags().String("userIds", "", "User ids")
	_ = BulkFetchOrDefaultStatItems1Cmd.MarkFlagRequired("userIds")
}
