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

// singleAdminGetGroupContentsCmd represents the singleAdminGetGroupContents command
var singleAdminGetGroupContentsCmd = &cobra.Command{
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
		limit, _ := cmd.Flags().GetString("limit")
		offset, _ := cmd.Flags().GetString("offset")
		input := &admin_group.SingleAdminGetGroupContentsParams{
			GroupID:   groupId,
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminGroupService.SingleAdminGetGroupContents(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(singleAdminGetGroupContentsCmd)
	singleAdminGetGroupContentsCmd.Flags().StringP("groupId", "gd", " ", "Group id")
	_ = singleAdminGetGroupContentsCmd.MarkFlagRequired("groupId")
	singleAdminGetGroupContentsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = singleAdminGetGroupContentsCmd.MarkFlagRequired("namespace")
	singleAdminGetGroupContentsCmd.Flags().StringP("limit", "lt", "20", "Limit")
	singleAdminGetGroupContentsCmd.Flags().StringP("offset", "ot", "0", "Offset")
}
