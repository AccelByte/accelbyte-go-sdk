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

// PublicGetUserProfileInfoCmd represents the PublicGetUserProfileInfo command
var PublicGetUserProfileInfoCmd = &cobra.Command{
	Use:   "publicGetUserProfileInfo",
	Short: "Public get user profile info",
	Long:  `Public get user profile info`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_profile.PublicGetUserProfileInfoParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := userProfileService.PublicGetUserProfileInfoShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetUserProfileInfoCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserProfileInfoCmd.MarkFlagRequired("namespace")
	PublicGetUserProfileInfoCmd.Flags().String("userId", "", "User id")
	_ = PublicGetUserProfileInfoCmd.MarkFlagRequired("userId")
}
