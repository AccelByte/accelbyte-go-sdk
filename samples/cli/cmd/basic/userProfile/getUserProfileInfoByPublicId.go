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

// GetUserProfileInfoByPublicIdCmd represents the GetUserProfileInfoByPublicId command
var GetUserProfileInfoByPublicIdCmd = &cobra.Command{
	Use:   "getUserProfileInfoByPublicId",
	Short: "Get user profile info by public id",
	Long:  `Get user profile info by public id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		publicId, _ := cmd.Flags().GetString("publicId")
		input := &user_profile.GetUserProfileInfoByPublicIDParams{
			Namespace: namespace,
			PublicID:  publicId,
		}
		ok, errOK := userProfileService.GetUserProfileInfoByPublicIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserProfileInfoByPublicIdCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserProfileInfoByPublicIdCmd.MarkFlagRequired("namespace")
	GetUserProfileInfoByPublicIdCmd.Flags().String("publicId", "", "Public id")
	_ = GetUserProfileInfoByPublicIdCmd.MarkFlagRequired("publicId")
}
