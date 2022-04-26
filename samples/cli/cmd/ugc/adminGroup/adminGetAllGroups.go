// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminGroup

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetAllGroupsCmd represents the AdminGetAllGroups command
var AdminGetAllGroupsCmd = &cobra.Command{
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
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &admin_group.AdminGetAllGroupsParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, err := adminGroupService.AdminGetAllGroupsShort(input)
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
	AdminGetAllGroupsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminGetAllGroupsCmd.MarkFlagRequired("namespace")
	AdminGetAllGroupsCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminGetAllGroupsCmd.MarkFlagRequired("userId")
	AdminGetAllGroupsCmd.Flags().Int64P("limit", "", 20, "Limit")
	AdminGetAllGroupsCmd.Flags().Int64P("offset", "", 0, "Offset")
}
