// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profileUpdateStrategy

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/profile_update_strategy"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetProfileUpdateStrategyV3Cmd represents the AdminGetProfileUpdateStrategyV3 command
var AdminGetProfileUpdateStrategyV3Cmd = &cobra.Command{
	Use:   "adminGetProfileUpdateStrategyV3",
	Short: "Admin get profile update strategy V3",
	Long:  `Admin get profile update strategy V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profileUpdateStrategyService := &iam.ProfileUpdateStrategyService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		field, _ := cmd.Flags().GetString("field")
		input := &profile_update_strategy.AdminGetProfileUpdateStrategyV3Params{
			Namespace: namespace,
			Field:     &field,
		}
		ok, errOK := profileUpdateStrategyService.AdminGetProfileUpdateStrategyV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetProfileUpdateStrategyV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetProfileUpdateStrategyV3Cmd.MarkFlagRequired("namespace")
	AdminGetProfileUpdateStrategyV3Cmd.Flags().String("field", "", "Field")
}
