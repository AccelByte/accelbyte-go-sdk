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

// PublicGetMyEnabledFactorsV4Cmd represents the PublicGetMyEnabledFactorsV4 command
var PublicGetMyEnabledFactorsV4Cmd = &cobra.Command{
	Use:   "publicGetMyEnabledFactorsV4",
	Short: "Public get my enabled factors V4",
	Long:  `Public get my enabled factors V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users_v4.PublicGetMyEnabledFactorsV4Params{
			Namespace: namespace,
		}
		ok, errOK := usersV4Service.PublicGetMyEnabledFactorsV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetMyEnabledFactorsV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetMyEnabledFactorsV4Cmd.MarkFlagRequired("namespace")
}
