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

// PublicCreateJusticeUserCmd represents the PublicCreateJusticeUser command
var PublicCreateJusticeUserCmd = &cobra.Command{
	Use:   "publicCreateJusticeUser",
	Short: "Public create justice user",
	Long:  `Public create justice user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		targetNamespace, _ := cmd.Flags().GetString("targetNamespace")
		input := &users.PublicCreateJusticeUserParams{
			Namespace:       namespace,
			TargetNamespace: targetNamespace,
		}
		created, errCreated := usersService.PublicCreateJusticeUserShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	PublicCreateJusticeUserCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicCreateJusticeUserCmd.MarkFlagRequired("namespace")
	PublicCreateJusticeUserCmd.Flags().String("targetNamespace", "", "Target namespace")
	_ = PublicCreateJusticeUserCmd.MarkFlagRequired("targetNamespace")
}
