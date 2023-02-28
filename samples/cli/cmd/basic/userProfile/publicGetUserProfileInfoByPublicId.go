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

// PublicGetUserProfileInfoByPublicIdCmd represents the PublicGetUserProfileInfoByPublicId command
var PublicGetUserProfileInfoByPublicIdCmd = &cobra.Command{
	Use:   "publicGetUserProfileInfoByPublicId",
	Short: "Public get user profile info by public id",
	Long:  `Public get user profile info by public id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		publicId, _ := cmd.Flags().GetString("publicId")
		input := &user_profile.PublicGetUserProfileInfoByPublicIDParams{
			Namespace: namespace,
			PublicID:  publicId,
		}
		ok, errOK := userProfileService.PublicGetUserProfileInfoByPublicIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetUserProfileInfoByPublicIdCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserProfileInfoByPublicIdCmd.MarkFlagRequired("namespace")
	PublicGetUserProfileInfoByPublicIdCmd.Flags().String("publicId", "", "Public id")
	_ = PublicGetUserProfileInfoByPublicIdCmd.MarkFlagRequired("publicId")
}
