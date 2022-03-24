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

// SingleAdminGetAllGroupsCmd represents the SingleAdminGetAllGroups command
var SingleAdminGetAllGroupsCmd = &cobra.Command{
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
		ok, err := adminGroupService.SingleAdminGetAllGroupsShort(input)
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
	SingleAdminGetAllGroupsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = SingleAdminGetAllGroupsCmd.MarkFlagRequired("namespace")
	SingleAdminGetAllGroupsCmd.Flags().StringP("limit", "", "20", "Limit")
	SingleAdminGetAllGroupsCmd.Flags().StringP("offset", "", "0", "Offset")
}
