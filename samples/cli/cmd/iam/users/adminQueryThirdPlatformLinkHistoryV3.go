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

// AdminQueryThirdPlatformLinkHistoryV3Cmd represents the AdminQueryThirdPlatformLinkHistoryV3 command
var AdminQueryThirdPlatformLinkHistoryV3Cmd = &cobra.Command{
	Use:   "adminQueryThirdPlatformLinkHistoryV3",
	Short: "Admin query third platform link history V3",
	Long:  `Admin query third platform link history V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		platformUserId, _ := cmd.Flags().GetString("platformUserId")
		input := &users.AdminQueryThirdPlatformLinkHistoryV3Params{
			Namespace:      namespace,
			Limit:          &limit,
			Offset:         &offset,
			PlatformUserID: &platformUserId,
			PlatformID:     platformId,
		}
		ok, err := usersService.AdminQueryThirdPlatformLinkHistoryV3Short(input)
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
	AdminQueryThirdPlatformLinkHistoryV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminQueryThirdPlatformLinkHistoryV3Cmd.MarkFlagRequired("namespace")
	AdminQueryThirdPlatformLinkHistoryV3Cmd.Flags().Int64("limit", 20, "Limit")
	AdminQueryThirdPlatformLinkHistoryV3Cmd.Flags().Int64("offset", 0, "Offset")
	AdminQueryThirdPlatformLinkHistoryV3Cmd.Flags().String("platformUserId", "", "Platform user id")
	AdminQueryThirdPlatformLinkHistoryV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = AdminQueryThirdPlatformLinkHistoryV3Cmd.MarkFlagRequired("platformId")
}
