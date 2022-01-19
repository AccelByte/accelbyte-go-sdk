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

// publicSearchUserV3Cmd represents the publicSearchUserV3 command
var publicSearchUserV3Cmd = &cobra.Command{
	Use:   "publicSearchUserV3",
	Short: "Public search user V3",
	Long:  `Public search user V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		by, _ := cmd.Flags().GetString("by")
		query, _ := cmd.Flags().GetString("query")
		input := &users.PublicSearchUserV3Params{
			Namespace: namespace,
			By:        &by,
			Query:     &query,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.PublicSearchUserV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicSearchUserV3Cmd)
	publicSearchUserV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicSearchUserV3Cmd.MarkFlagRequired("namespace")
	publicSearchUserV3Cmd.Flags().StringP("by", "b", " ", "By")
	publicSearchUserV3Cmd.Flags().StringP("query", "q", " ", "Query")
}
