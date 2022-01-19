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

// listAdminsV3Cmd represents the listAdminsV3 command
var listAdminsV3Cmd = &cobra.Command{
	Use:   "listAdminsV3",
	Short: "List admins V3",
	Long:  `List admins V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &users.ListAdminsV3Params{
			Namespace: namespace,
			After:     &after,
			Before:    &before,
			Limit:     &limit,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.ListAdminsV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(listAdminsV3Cmd)
	listAdminsV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = listAdminsV3Cmd.MarkFlagRequired("namespace")
	listAdminsV3Cmd.Flags().StringP("after", "a", "0", "After")
	listAdminsV3Cmd.Flags().StringP("before", "b", "0", "Before")
	listAdminsV3Cmd.Flags().Int64P("limit", "l", 20, "Limit")
}
