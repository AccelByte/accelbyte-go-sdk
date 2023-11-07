// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContentV2

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content_v2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetContentByShareCodeV2Cmd represents the PublicGetContentByShareCodeV2 command
var PublicGetContentByShareCodeV2Cmd = &cobra.Command{
	Use:   "publicGetContentByShareCodeV2",
	Short: "Public get content by share code V2",
	Long:  `Public get content by share code V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentV2Service := &ugc.PublicContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		shareCode, _ := cmd.Flags().GetString("shareCode")
		input := &public_content_v2.PublicGetContentByShareCodeV2Params{
			Namespace: namespace,
			ShareCode: shareCode,
		}
		ok, errOK := publicContentV2Service.PublicGetContentByShareCodeV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetContentByShareCodeV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetContentByShareCodeV2Cmd.MarkFlagRequired("namespace")
	PublicGetContentByShareCodeV2Cmd.Flags().String("shareCode", "", "Share code")
	_ = PublicGetContentByShareCodeV2Cmd.MarkFlagRequired("shareCode")
}
