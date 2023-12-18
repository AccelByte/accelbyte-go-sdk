// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		platformBy, _ := cmd.Flags().GetString("platformBy")
		platformId, _ := cmd.Flags().GetString("platformId")
		query, _ := cmd.Flags().GetString("query")
		input := &users.PublicSearchUserV3Params{
			Namespace:  namespace,
			By:         &by,
			Limit:      &limit,
			Offset:     &offset,
			PlatformBy: &platformBy,
			PlatformID: &platformId,
			Query:      &query,
		}
		ok, errOK := usersService.PublicSearchUserV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicSearchUserV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicSearchUserV3Cmd.MarkFlagRequired("namespace")
	PublicSearchUserV3Cmd.Flags().String("by", "", "By")
	PublicSearchUserV3Cmd.Flags().Int64("limit", 20, "Limit")
	PublicSearchUserV3Cmd.Flags().Int64("offset", 0, "Offset")
	PublicSearchUserV3Cmd.Flags().String("platformBy", "", "Platform by")
	PublicSearchUserV3Cmd.Flags().String("platformId", "", "Platform id")
	PublicSearchUserV3Cmd.Flags().String("query", "", "Query")
}
