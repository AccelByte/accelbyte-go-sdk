// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userProfile

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetUserProfilePublicInfoCmd represents the PublicGetUserProfilePublicInfo command
var PublicGetUserProfilePublicInfoCmd = &cobra.Command{
	Use:   "publicGetUserProfilePublicInfo",
	Short: "Public get user profile public info",
	Long:  `Public get user profile public info`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_profile.PublicGetUserProfilePublicInfoParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := userProfileService.PublicGetUserProfilePublicInfoShort(input)
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
	PublicGetUserProfilePublicInfoCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserProfilePublicInfoCmd.MarkFlagRequired("namespace")
	PublicGetUserProfilePublicInfoCmd.Flags().String("userId", "", "User id")
	_ = PublicGetUserProfilePublicInfoCmd.MarkFlagRequired("userId")
}
