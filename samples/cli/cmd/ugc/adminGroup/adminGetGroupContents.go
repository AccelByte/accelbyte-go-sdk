// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetGroupContentsCmd represents the adminGetGroupContents command
var adminGetGroupContentsCmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetGroupContentsCmd)
	adminGetGroupContentsCmd.Flags().StringP("groupId", "g", " ", "Group id")
	_ = adminGetGroupContentsCmd.MarkFlagRequired("groupId")
	adminGetGroupContentsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminGetGroupContentsCmd.MarkFlagRequired("namespace")
	adminGetGroupContentsCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminGetGroupContentsCmd.MarkFlagRequired("userId")
	adminGetGroupContentsCmd.Flags().StringP("limit", "l", "20", "Limit")
	adminGetGroupContentsCmd.Flags().StringP("offset", "o", "0", "Offset")
}
