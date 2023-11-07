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

// AdminGetContentByShareCodeV2Cmd represents the AdminGetContentByShareCodeV2 command
var AdminGetContentByShareCodeV2Cmd = &cobra.Command{
	Use:   "adminGetContentByShareCodeV2",
	Short: "Admin get content by share code V2",
	Long:  `Admin get content by share code V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentV2Service := &ugc.AdminContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		shareCode, _ := cmd.Flags().GetString("shareCode")
		input := &admin_content_v2.AdminGetContentByShareCodeV2Params{
			Namespace: namespace,
			ShareCode: shareCode,
		}
		ok, errOK := adminContentV2Service.AdminGetContentByShareCodeV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetContentByShareCodeV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetContentByShareCodeV2Cmd.MarkFlagRequired("namespace")
	AdminGetContentByShareCodeV2Cmd.Flags().String("shareCode", "", "Share code")
	_ = AdminGetContentByShareCodeV2Cmd.MarkFlagRequired("shareCode")
}
