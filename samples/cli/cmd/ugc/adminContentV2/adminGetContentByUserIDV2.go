// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminContentV2

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content_v2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetContentByUserIDV2Cmd represents the AdminGetContentByUserIDV2 command
var AdminGetContentByUserIDV2Cmd = &cobra.Command{
	Use:   "adminGetContentByUserIDV2",
	Short: "Admin get content by user IDV2",
	Long:  `Admin get content by user IDV2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentV2Service := &ugc.AdminContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &admin_content_v2.AdminGetContentByUserIDV2Params{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
		}
		ok, errOK := adminContentV2Service.AdminGetContentByUserIDV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetContentByUserIDV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetContentByUserIDV2Cmd.MarkFlagRequired("namespace")
	AdminGetContentByUserIDV2Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetContentByUserIDV2Cmd.MarkFlagRequired("userId")
	AdminGetContentByUserIDV2Cmd.Flags().Int64("limit", 20, "Limit")
	AdminGetContentByUserIDV2Cmd.Flags().Int64("offset", 0, "Offset")
	AdminGetContentByUserIDV2Cmd.Flags().String("sortBy", "", "Sort by")
}
