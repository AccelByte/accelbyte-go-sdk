// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminContent

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetContentCmd represents the AdminGetContent command
var AdminGetContentCmd = &cobra.Command{
	Use:   "adminGetContent",
	Short: "Admin get content",
	Long:  `Admin get content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &admin_content.AdminGetContentParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, err := adminContentService.AdminGetContentShort(input)
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
	AdminGetContentCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminGetContentCmd.MarkFlagRequired("namespace")
	AdminGetContentCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminGetContentCmd.MarkFlagRequired("userId")
	AdminGetContentCmd.Flags().Int64P("limit", "", 20, "Limit")
	AdminGetContentCmd.Flags().Int64P("offset", "", 0, "Offset")
}
