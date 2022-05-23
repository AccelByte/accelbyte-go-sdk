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

// GetPublisherUserCmd represents the GetPublisherUser command
var GetPublisherUserCmd = &cobra.Command{
	Use:   "getPublisherUser",
	Short: "Get publisher user",
	Long:  `Get publisher user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.GetPublisherUserParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := usersService.GetPublisherUserShort(input)
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
	GetPublisherUserCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPublisherUserCmd.MarkFlagRequired("namespace")
	GetPublisherUserCmd.Flags().String("userId", "", "User id")
	_ = GetPublisherUserCmd.MarkFlagRequired("userId")
}
