// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteUserLinkingHistoryByPlatformIDV3Cmd represents the AdminDeleteUserLinkingHistoryByPlatformIDV3 command
var AdminDeleteUserLinkingHistoryByPlatformIDV3Cmd = &cobra.Command{
	Use:   "adminDeleteUserLinkingHistoryByPlatformIDV3",
	Short: "Admin delete user linking history by platform IDV3",
	Long:  `Admin delete user linking history by platform IDV3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminDeleteUserLinkingHistoryByPlatformIDV3Params{
			Namespace:  namespace,
			PlatformID: platformId,
			UserID:     userId,
		}
		errNoContent := usersService.AdminDeleteUserLinkingHistoryByPlatformIDV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteUserLinkingHistoryByPlatformIDV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteUserLinkingHistoryByPlatformIDV3Cmd.MarkFlagRequired("namespace")
	AdminDeleteUserLinkingHistoryByPlatformIDV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = AdminDeleteUserLinkingHistoryByPlatformIDV3Cmd.MarkFlagRequired("platformId")
	AdminDeleteUserLinkingHistoryByPlatformIDV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminDeleteUserLinkingHistoryByPlatformIDV3Cmd.MarkFlagRequired("userId")
}
