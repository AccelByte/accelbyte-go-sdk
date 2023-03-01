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

// AdminSearchUserV3Cmd represents the AdminSearchUserV3 command
var AdminSearchUserV3Cmd = &cobra.Command{
	Use:   "adminSearchUserV3",
	Short: "Admin search user V3",
	Long:  `Admin search user V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		by, _ := cmd.Flags().GetString("by")
		endDate, _ := cmd.Flags().GetString("endDate")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		platformBy, _ := cmd.Flags().GetString("platformBy")
		platformId, _ := cmd.Flags().GetString("platformId")
		query, _ := cmd.Flags().GetString("query")
		startDate, _ := cmd.Flags().GetString("startDate")
		input := &users.AdminSearchUserV3Params{
			Namespace:  namespace,
			By:         &by,
			EndDate:    &endDate,
			Limit:      &limit,
			Offset:     &offset,
			PlatformBy: &platformBy,
			PlatformID: &platformId,
			Query:      &query,
			StartDate:  &startDate,
		}
		ok, errOK := usersService.AdminSearchUserV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminSearchUserV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSearchUserV3Cmd.MarkFlagRequired("namespace")
	AdminSearchUserV3Cmd.Flags().String("by", "", "By")
	AdminSearchUserV3Cmd.Flags().String("endDate", "", "End date")
	AdminSearchUserV3Cmd.Flags().Int64("limit", 20, "Limit")
	AdminSearchUserV3Cmd.Flags().Int64("offset", 0, "Offset")
	AdminSearchUserV3Cmd.Flags().String("platformBy", "", "Platform by")
	AdminSearchUserV3Cmd.Flags().String("platformId", "", "Platform id")
	AdminSearchUserV3Cmd.Flags().String("query", "", "Query")
	AdminSearchUserV3Cmd.Flags().String("startDate", "", "Start date")
}
