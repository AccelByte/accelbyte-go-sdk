// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package bans

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/bans"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetBannedUsersV3Cmd represents the AdminGetBannedUsersV3 command
var AdminGetBannedUsersV3Cmd = &cobra.Command{
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
		ok, err := bansService.AdminGetBannedUsersV3Short(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	AdminGetBannedUsersV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminGetBannedUsersV3Cmd.MarkFlagRequired("namespace")
	AdminGetBannedUsersV3Cmd.Flags().BoolP("activeOnly", "", false, "Active only")
	AdminGetBannedUsersV3Cmd.Flags().StringP("banType", "", "", "Ban type")
	AdminGetBannedUsersV3Cmd.Flags().Int64P("limit", "", 20, "Limit")
	AdminGetBannedUsersV3Cmd.Flags().Int64P("offset", "", 0, "Offset")
}
