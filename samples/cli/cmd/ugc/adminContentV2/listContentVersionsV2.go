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

// ListContentVersionsV2Cmd represents the ListContentVersionsV2 command
var ListContentVersionsV2Cmd = &cobra.Command{
	Use:   "listContentVersionsV2",
	Short: "List content versions V2",
	Long:  `List content versions V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentV2Service := &ugc.AdminContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_content_v2.ListContentVersionsV2Params{
			ContentID: contentId,
			Namespace: namespace,
		}
		ok, errOK := adminContentV2Service.ListContentVersionsV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListContentVersionsV2Cmd.Flags().String("contentId", "", "Content id")
	_ = ListContentVersionsV2Cmd.MarkFlagRequired("contentId")
	ListContentVersionsV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = ListContentVersionsV2Cmd.MarkFlagRequired("namespace")
}
