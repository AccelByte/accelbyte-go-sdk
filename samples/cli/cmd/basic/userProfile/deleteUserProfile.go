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

// DeleteUserProfileCmd represents the DeleteUserProfile command
var DeleteUserProfileCmd = &cobra.Command{
	Use:   "deleteUserProfile",
	Short: "Delete user profile",
	Long:  `Delete user profile`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_profile.DeleteUserProfileParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := userProfileService.DeleteUserProfileShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	DeleteUserProfileCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteUserProfileCmd.MarkFlagRequired("namespace")
	DeleteUserProfileCmd.Flags().String("userId", "", "User id")
	_ = DeleteUserProfileCmd.MarkFlagRequired("userId")
}
