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

// SearchUserCmd represents the SearchUser command
var SearchUserCmd = &cobra.Command{
	Use:   "SearchUser",
	Short: "Search user",
	Long:  `Search user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		query, _ := cmd.Flags().GetString("query")
		input := &users.SearchUserParams{
			Namespace: namespace,
			Query:     &query,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.SearchUser(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	SearchUserCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = SearchUserCmd.MarkFlagRequired("namespace")
	SearchUserCmd.Flags().StringP("query", "qy", " ", "Query")
}
