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

// PublicGetContentByIDV2Cmd represents the PublicGetContentByIDV2 command
var PublicGetContentByIDV2Cmd = &cobra.Command{
	Use:   "publicGetContentByIDV2",
	Short: "Public get content by IDV2",
	Long:  `Public get content by IDV2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentV2Service := &ugc.PublicContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_content_v2.PublicGetContentByIDV2Params{
			ContentID: contentId,
			Namespace: namespace,
		}
		ok, errOK := publicContentV2Service.PublicGetContentByIDV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetContentByIDV2Cmd.Flags().String("contentId", "", "Content id")
	_ = PublicGetContentByIDV2Cmd.MarkFlagRequired("contentId")
	PublicGetContentByIDV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetContentByIDV2Cmd.MarkFlagRequired("namespace")
}
