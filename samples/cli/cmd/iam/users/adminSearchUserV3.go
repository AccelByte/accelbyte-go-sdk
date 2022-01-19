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

// adminSearchUserV3Cmd represents the adminSearchUserV3 command
var adminSearchUserV3Cmd = &cobra.Command{
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
		offset, _ := cmd.Flags().GetString("offset")
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminSearchUserV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminSearchUserV3Cmd)
	adminSearchUserV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminSearchUserV3Cmd.MarkFlagRequired("namespace")
	adminSearchUserV3Cmd.Flags().StringP("by", "b", " ", "By")
	adminSearchUserV3Cmd.Flags().StringP("endDate", "e", " ", "End date")
	adminSearchUserV3Cmd.Flags().Int64P("limit", "l", 20, "Limit")
	adminSearchUserV3Cmd.Flags().StringP("offset", "o", "0", "Offset")
	adminSearchUserV3Cmd.Flags().StringP("platformBy", "p", " ", "Platform by")
	adminSearchUserV3Cmd.Flags().StringP("platformId", "p", " ", "Platform id")
	adminSearchUserV3Cmd.Flags().StringP("query", "q", " ", "Query")
	adminSearchUserV3Cmd.Flags().StringP("startDate", "s", " ", "Start date")
}
