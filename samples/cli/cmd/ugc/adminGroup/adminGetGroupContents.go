// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminGroup

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetGroupContentsCmd represents the AdminGetGroupContents command
var AdminGetGroupContentsCmd = &cobra.Command{
	Use:   "adminGetGroupContents",
	Short: "Admin get group contents",
	Long:  `Admin get group contents`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGroupService := &ugc.AdminGroupService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetString("limit")
		offset, _ := cmd.Flags().GetString("offset")
		input := &admin_group.AdminGetGroupContentsParams{
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminGroupService.AdminGetGroupContents(input)
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
	AdminGetGroupContentsCmd.Flags().StringP("groupId", "", "", "Group id")
	_ = AdminGetGroupContentsCmd.MarkFlagRequired("groupId")
	AdminGetGroupContentsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminGetGroupContentsCmd.MarkFlagRequired("namespace")
	AdminGetGroupContentsCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminGetGroupContentsCmd.MarkFlagRequired("userId")
	AdminGetGroupContentsCmd.Flags().StringP("limit", "", "20", "Limit")
	AdminGetGroupContentsCmd.Flags().StringP("offset", "", "0", "Offset")
}
