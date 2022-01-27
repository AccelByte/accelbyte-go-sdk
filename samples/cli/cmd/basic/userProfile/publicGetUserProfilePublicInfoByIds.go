// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package userProfile

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetUserProfilePublicInfoByIdsCmd represents the publicGetUserProfilePublicInfoByIds command
var publicGetUserProfilePublicInfoByIdsCmd = &cobra.Command{
	Use:   "publicGetUserProfilePublicInfoByIds",
	Short: "Public get user profile public info by ids",
	Long:  `Public get user profile public info by ids`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userIds, _ := cmd.Flags().GetString("userIds")
		input := &user_profile.PublicGetUserProfilePublicInfoByIdsParams{
			Namespace: namespace,
			UserIds:   userIds,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userProfileService.PublicGetUserProfilePublicInfoByIds(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetUserProfilePublicInfoByIdsCmd)
	publicGetUserProfilePublicInfoByIdsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicGetUserProfilePublicInfoByIdsCmd.MarkFlagRequired("namespace")
	publicGetUserProfilePublicInfoByIdsCmd.Flags().StringP("userIds", "us", " ", "User ids")
	_ = publicGetUserProfilePublicInfoByIdsCmd.MarkFlagRequired("userIds")
}
