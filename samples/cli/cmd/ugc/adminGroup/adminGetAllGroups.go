// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminGroup

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetAllGroupsCmd represents the adminGetAllGroups command
var adminGetAllGroupsCmd = &cobra.Command{
	Use:   "adminGetAllGroups",
	Short: "Admin get all groups",
	Long:  `Admin get all groups`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGroupService := &ugc.AdminGroupService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetString("limit")
		offset, _ := cmd.Flags().GetString("offset")
		input := &admin_group.AdminGetAllGroupsParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminGroupService.AdminGetAllGroups(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetAllGroupsCmd)
	adminGetAllGroupsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminGetAllGroupsCmd.MarkFlagRequired("namespace")
	adminGetAllGroupsCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = adminGetAllGroupsCmd.MarkFlagRequired("userId")
	adminGetAllGroupsCmd.Flags().StringP("limit", "lt", "20", "Limit")
	adminGetAllGroupsCmd.Flags().StringP("offset", "ot", "0", "Offset")
}
