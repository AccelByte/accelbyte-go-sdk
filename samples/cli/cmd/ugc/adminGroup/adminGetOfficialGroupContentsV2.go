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

// AdminGetOfficialGroupContentsV2Cmd represents the AdminGetOfficialGroupContentsV2 command
var AdminGetOfficialGroupContentsV2Cmd = &cobra.Command{
	Use:   "adminGetOfficialGroupContentsV2",
	Short: "Admin get official group contents V2",
	Long:  `Admin get official group contents V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGroupService := &ugc.AdminGroupService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &admin_group.AdminGetOfficialGroupContentsV2Params{
			GroupID:   groupId,
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := adminGroupService.AdminGetOfficialGroupContentsV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetOfficialGroupContentsV2Cmd.Flags().String("groupId", "", "Group id")
	_ = AdminGetOfficialGroupContentsV2Cmd.MarkFlagRequired("groupId")
	AdminGetOfficialGroupContentsV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetOfficialGroupContentsV2Cmd.MarkFlagRequired("namespace")
	AdminGetOfficialGroupContentsV2Cmd.Flags().Int64("limit", 20, "Limit")
	AdminGetOfficialGroupContentsV2Cmd.Flags().Int64("offset", 0, "Offset")
}
