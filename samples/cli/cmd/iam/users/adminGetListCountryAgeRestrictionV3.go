// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetListCountryAgeRestrictionV3Cmd represents the adminGetListCountryAgeRestrictionV3 command
var adminGetListCountryAgeRestrictionV3Cmd = &cobra.Command{
	Use:   "adminGetListCountryAgeRestrictionV3",
	Short: "Admin get list country age restriction V3",
	Long:  `Admin get list country age restriction V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.AdminGetListCountryAgeRestrictionV3Params{
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminGetListCountryAgeRestrictionV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetListCountryAgeRestrictionV3Cmd)
	adminGetListCountryAgeRestrictionV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminGetListCountryAgeRestrictionV3Cmd.MarkFlagRequired("namespace")
}
