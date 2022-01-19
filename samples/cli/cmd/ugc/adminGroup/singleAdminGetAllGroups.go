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

// singleAdminGetAllGroupsCmd represents the singleAdminGetAllGroups command
var singleAdminGetAllGroupsCmd = &cobra.Command{
	Use:   "singleAdminGetAllGroups",
	Short: "Single admin get all groups",
	Long:  `Single admin get all groups`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGroupService := &ugc.AdminGroupService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetString("limit")
		offset, _ := cmd.Flags().GetString("offset")
		input := &admin_group.SingleAdminGetAllGroupsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminGroupService.SingleAdminGetAllGroups(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(singleAdminGetAllGroupsCmd)
	singleAdminGetAllGroupsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = singleAdminGetAllGroupsCmd.MarkFlagRequired("namespace")
	singleAdminGetAllGroupsCmd.Flags().StringP("limit", "l", "20", "Limit")
	singleAdminGetAllGroupsCmd.Flags().StringP("offset", "o", "0", "Offset")
}
