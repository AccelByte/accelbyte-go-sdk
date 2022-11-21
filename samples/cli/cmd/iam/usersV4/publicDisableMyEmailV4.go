// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicDisableMyEmailV4Cmd represents the PublicDisableMyEmailV4 command
var PublicDisableMyEmailV4Cmd = &cobra.Command{
	Use:   "publicDisableMyEmailV4",
	Short: "Public disable my email V4",
	Long:  `Public disable my email V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users_v4.PublicDisableMyEmailV4Params{
			Namespace: namespace,
		}
		errInput := usersV4Service.PublicDisableMyEmailV4Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PublicDisableMyEmailV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicDisableMyEmailV4Cmd.MarkFlagRequired("namespace")
}
