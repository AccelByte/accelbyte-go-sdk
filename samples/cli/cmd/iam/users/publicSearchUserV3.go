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

// PublicSearchUserV3Cmd represents the PublicSearchUserV3 command
var PublicSearchUserV3Cmd = &cobra.Command{
	Use:   "PublicSearchUserV3",
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
	PublicSearchUserV3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = PublicSearchUserV3Cmd.MarkFlagRequired("namespace")
	PublicSearchUserV3Cmd.Flags().StringP("by", "by", " ", "By")
	PublicSearchUserV3Cmd.Flags().StringP("query", "qy", " ", "Query")
}
