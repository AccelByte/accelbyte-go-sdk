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

// SingleAdminGetGroupContentsCmd represents the SingleAdminGetGroupContents command
var SingleAdminGetGroupContentsCmd = &cobra.Command{
	Use:   "singleAdminGetGroupContents",
	Short: "Single admin get group contents",
	Long:  `Single admin get group contents`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGroupService := &ugc.AdminGroupService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &admin_group.SingleAdminGetGroupContentsParams{
			GroupID:   groupId,
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, err := adminGroupService.SingleAdminGetGroupContentsShort(input)
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
	SingleAdminGetGroupContentsCmd.Flags().StringP("groupId", "", "", "Group id")
	_ = SingleAdminGetGroupContentsCmd.MarkFlagRequired("groupId")
	SingleAdminGetGroupContentsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = SingleAdminGetGroupContentsCmd.MarkFlagRequired("namespace")
	SingleAdminGetGroupContentsCmd.Flags().Int64P("limit", "", 20, "Limit")
	SingleAdminGetGroupContentsCmd.Flags().Int64P("offset", "", 0, "Offset")
}
