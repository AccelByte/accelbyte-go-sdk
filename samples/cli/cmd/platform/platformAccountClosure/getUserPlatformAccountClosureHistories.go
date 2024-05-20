// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platformAccountClosure

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/platform_account_closure"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserPlatformAccountClosureHistoriesCmd represents the GetUserPlatformAccountClosureHistories command
var GetUserPlatformAccountClosureHistoriesCmd = &cobra.Command{
	Use:   "getUserPlatformAccountClosureHistories",
	Short: "Get user platform account closure histories",
	Long:  `Get user platform account closure histories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		platformAccountClosureService := &platform.PlatformAccountClosureService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &platform_account_closure.GetUserPlatformAccountClosureHistoriesParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := platformAccountClosureService.GetUserPlatformAccountClosureHistoriesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserPlatformAccountClosureHistoriesCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserPlatformAccountClosureHistoriesCmd.MarkFlagRequired("namespace")
	GetUserPlatformAccountClosureHistoriesCmd.Flags().String("userId", "", "User id")
	_ = GetUserPlatformAccountClosureHistoriesCmd.MarkFlagRequired("userId")
}
