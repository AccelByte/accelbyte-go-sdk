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

// GetUserJusticePlatformAccountCmd represents the GetUserJusticePlatformAccount command
var GetUserJusticePlatformAccountCmd = &cobra.Command{
	Use:   "getUserJusticePlatformAccount",
	Short: "Get user justice platform account",
	Long:  `Get user justice platform account`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		targetNamespace, _ := cmd.Flags().GetString("targetNamespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.GetUserJusticePlatformAccountParams{
			Namespace:       namespace,
			TargetNamespace: targetNamespace,
			UserID:          userId,
		}
		ok, errOK := usersService.GetUserJusticePlatformAccountShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserJusticePlatformAccountCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserJusticePlatformAccountCmd.MarkFlagRequired("namespace")
	GetUserJusticePlatformAccountCmd.Flags().String("targetNamespace", "", "Target namespace")
	_ = GetUserJusticePlatformAccountCmd.MarkFlagRequired("targetNamespace")
	GetUserJusticePlatformAccountCmd.Flags().String("userId", "", "User id")
	_ = GetUserJusticePlatformAccountCmd.MarkFlagRequired("userId")
}
