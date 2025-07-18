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
		includeTotal, _ := cmd.Flags().GetBool("includeTotal")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		platformBy, _ := cmd.Flags().GetString("platformBy")
		platformId, _ := cmd.Flags().GetString("platformId")
		query, _ := cmd.Flags().GetString("query")
		roleIds, _ := cmd.Flags().GetString("roleIds")
		selectedFields, _ := cmd.Flags().GetString("selectedFields")
		skipLoginQueue, _ := cmd.Flags().GetBool("skipLoginQueue")
		startDate, _ := cmd.Flags().GetString("startDate")
		tagIds, _ := cmd.Flags().GetString("tagIds")
		testAccount, _ := cmd.Flags().GetBool("testAccount")
		input := &users.AdminSearchUserV3Params{
			Namespace:      namespace,
			By:             &by,
			EndDate:        &endDate,
			IncludeTotal:   &includeTotal,
			Limit:          &limit,
			Offset:         &offset,
			PlatformBy:     &platformBy,
			PlatformID:     &platformId,
			Query:          &query,
			RoleIds:        &roleIds,
			SelectedFields: &selectedFields,
			SkipLoginQueue: &skipLoginQueue,
			StartDate:      &startDate,
			TagIds:         &tagIds,
			TestAccount:    &testAccount,
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
	AdminSearchUserV3Cmd.Flags().Bool("includeTotal", false, "Include total")
	AdminSearchUserV3Cmd.Flags().Int64("limit", 20, "Limit")
	AdminSearchUserV3Cmd.Flags().Int64("offset", 0, "Offset")
	AdminSearchUserV3Cmd.Flags().String("platformBy", "", "Platform by")
	AdminSearchUserV3Cmd.Flags().String("platformId", "", "Platform id")
	AdminSearchUserV3Cmd.Flags().String("query", "", "Query")
	AdminSearchUserV3Cmd.Flags().String("roleIds", "", "Role ids")
	AdminSearchUserV3Cmd.Flags().String("selectedFields", "", "Selected fields")
	AdminSearchUserV3Cmd.Flags().Bool("skipLoginQueue", false, "Skip login queue")
	AdminSearchUserV3Cmd.Flags().String("startDate", "", "Start date")
	AdminSearchUserV3Cmd.Flags().String("tagIds", "", "Tag ids")
	AdminSearchUserV3Cmd.Flags().Bool("testAccount", false, "Test account")
}
