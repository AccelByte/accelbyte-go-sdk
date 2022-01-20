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

// adminGetAgeRestrictionStatusV2Cmd represents the adminGetAgeRestrictionStatusV2 command
var adminGetAgeRestrictionStatusV2Cmd = &cobra.Command{
	Use:   "adminGetAgeRestrictionStatusV2",
	Short: "Admin get age restriction status V2",
	Long:  `Admin get age restriction status V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.AdminGetAgeRestrictionStatusV2Params{
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminGetAgeRestrictionStatusV2(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetAgeRestrictionStatusV2Cmd)
	adminGetAgeRestrictionStatusV2Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminGetAgeRestrictionStatusV2Cmd.MarkFlagRequired("namespace")
}