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

// AdminDeleteUserLinkingRestrictionByPlatformIDV3Cmd represents the AdminDeleteUserLinkingRestrictionByPlatformIDV3 command
var AdminDeleteUserLinkingRestrictionByPlatformIDV3Cmd = &cobra.Command{
	Use:   "adminDeleteUserLinkingRestrictionByPlatformIDV3",
	Short: "Admin delete user linking restriction by platform IDV3",
	Long:  `Admin delete user linking restriction by platform IDV3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminDeleteUserLinkingRestrictionByPlatformIDV3Params{
			Namespace:  namespace,
			PlatformID: platformId,
			UserID:     userId,
		}
		errNoContent := usersService.AdminDeleteUserLinkingRestrictionByPlatformIDV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteUserLinkingRestrictionByPlatformIDV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteUserLinkingRestrictionByPlatformIDV3Cmd.MarkFlagRequired("namespace")
	AdminDeleteUserLinkingRestrictionByPlatformIDV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = AdminDeleteUserLinkingRestrictionByPlatformIDV3Cmd.MarkFlagRequired("platformId")
	AdminDeleteUserLinkingRestrictionByPlatformIDV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminDeleteUserLinkingRestrictionByPlatformIDV3Cmd.MarkFlagRequired("userId")
}
