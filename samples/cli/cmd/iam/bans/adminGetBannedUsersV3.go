// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package bans

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/bans"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetBannedUsersV3Cmd represents the adminGetBannedUsersV3 command
var adminGetBannedUsersV3Cmd = &cobra.Command{
	Use:   "adminGetBannedUsersV3",
	Short: "Admin get banned users V3",
	Long:  `Admin get banned users V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		bansService := &iam.BansService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		banType, _ := cmd.Flags().GetString("banType")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &bans.AdminGetBannedUsersV3Params{
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			BanType:    &banType,
			Limit:      &limit,
			Offset:     &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := bansService.AdminGetBannedUsersV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetBannedUsersV3Cmd)
	adminGetBannedUsersV3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminGetBannedUsersV3Cmd.MarkFlagRequired("namespace")
	adminGetBannedUsersV3Cmd.Flags().BoolP("activeOnly", "ay", false, "Active only")
	adminGetBannedUsersV3Cmd.Flags().StringP("banType", "be", " ", "Ban type")
	adminGetBannedUsersV3Cmd.Flags().Int64P("limit", "lt", 20, "Limit")
	adminGetBannedUsersV3Cmd.Flags().Int64P("offset", "ot", 0, "Offset")
}
