// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platformAccountClosureHistory

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/platform_account_closure_history"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetUserPlatformAccountClosureHistoriesCmd represents the AdminGetUserPlatformAccountClosureHistories command
var AdminGetUserPlatformAccountClosureHistoriesCmd = &cobra.Command{
	Use:   "adminGetUserPlatformAccountClosureHistories",
	Short: "Admin get user platform account closure histories",
	Long:  `Admin get user platform account closure histories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		platformAccountClosureHistoryService := &gdpr.PlatformAccountClosureHistoryService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		platform, _ := cmd.Flags().GetString("platform")
		userId, _ := cmd.Flags().GetString("userId")
		input := &platform_account_closure_history.AdminGetUserPlatformAccountClosureHistoriesParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Platform:  &platform,
			UserID:    &userId,
		}
		ok, errOK := platformAccountClosureHistoryService.AdminGetUserPlatformAccountClosureHistoriesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetUserPlatformAccountClosureHistoriesCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserPlatformAccountClosureHistoriesCmd.MarkFlagRequired("namespace")
	AdminGetUserPlatformAccountClosureHistoriesCmd.Flags().Int64("limit", 20, "Limit")
	AdminGetUserPlatformAccountClosureHistoriesCmd.Flags().Int64("offset", 0, "Offset")
	AdminGetUserPlatformAccountClosureHistoriesCmd.Flags().String("platform", "", "Platform")
	AdminGetUserPlatformAccountClosureHistoriesCmd.Flags().String("userId", "", "User id")
}
