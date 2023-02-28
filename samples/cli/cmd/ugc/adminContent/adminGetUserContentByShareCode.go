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

// AdminGetUserContentByShareCodeCmd represents the AdminGetUserContentByShareCode command
var AdminGetUserContentByShareCodeCmd = &cobra.Command{
	Use:   "adminGetUserContentByShareCode",
	Short: "Admin get user content by share code",
	Long:  `Admin get user content by share code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		shareCode, _ := cmd.Flags().GetString("shareCode")
		input := &admin_content.AdminGetUserContentByShareCodeParams{
			Namespace: namespace,
			ShareCode: shareCode,
		}
		ok, errOK := adminContentService.AdminGetUserContentByShareCodeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetUserContentByShareCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserContentByShareCodeCmd.MarkFlagRequired("namespace")
	AdminGetUserContentByShareCodeCmd.Flags().String("shareCode", "", "Share code")
	_ = AdminGetUserContentByShareCodeCmd.MarkFlagRequired("shareCode")
}
