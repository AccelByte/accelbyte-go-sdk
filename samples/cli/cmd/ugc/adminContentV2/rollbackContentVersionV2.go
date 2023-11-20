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

// RollbackContentVersionV2Cmd represents the RollbackContentVersionV2 command
var RollbackContentVersionV2Cmd = &cobra.Command{
	Use:   "rollbackContentVersionV2",
	Short: "Rollback content version V2",
	Long:  `Rollback content version V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentV2Service := &ugc.AdminContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		versionId, _ := cmd.Flags().GetString("versionId")
		input := &admin_content_v2.RollbackContentVersionV2Params{
			ContentID: contentId,
			Namespace: namespace,
			VersionID: versionId,
		}
		ok, errOK := adminContentV2Service.RollbackContentVersionV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RollbackContentVersionV2Cmd.Flags().String("contentId", "", "Content id")
	_ = RollbackContentVersionV2Cmd.MarkFlagRequired("contentId")
	RollbackContentVersionV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = RollbackContentVersionV2Cmd.MarkFlagRequired("namespace")
	RollbackContentVersionV2Cmd.Flags().String("versionId", "", "Version id")
	_ = RollbackContentVersionV2Cmd.MarkFlagRequired("versionId")
}
