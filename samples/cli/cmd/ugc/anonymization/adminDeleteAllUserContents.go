// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/anonymization"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteAllUserContentsCmd represents the AdminDeleteAllUserContents command
var AdminDeleteAllUserContentsCmd = &cobra.Command{
	Use:   "adminDeleteAllUserContents",
	Short: "Admin delete all user contents",
	Long:  `Admin delete all user contents`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &ugc.AnonymizationService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.AdminDeleteAllUserContentsParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := anonymizationService.AdminDeleteAllUserContentsShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteAllUserContentsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteAllUserContentsCmd.MarkFlagRequired("namespace")
	AdminDeleteAllUserContentsCmd.Flags().String("userId", "", "User id")
	_ = AdminDeleteAllUserContentsCmd.MarkFlagRequired("userId")
}
