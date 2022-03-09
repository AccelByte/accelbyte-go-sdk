// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListAdminsV3Cmd represents the ListAdminsV3 command
var ListAdminsV3Cmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	ListAdminsV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = ListAdminsV3Cmd.MarkFlagRequired("namespace")
	ListAdminsV3Cmd.Flags().StringP("after", "", "0", "After")
	ListAdminsV3Cmd.Flags().StringP("before", "", "0", "Before")
	ListAdminsV3Cmd.Flags().Int64P("limit", "", 20, "Limit")
}
