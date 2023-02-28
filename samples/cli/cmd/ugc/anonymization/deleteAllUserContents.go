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

// DeleteAllUserContentsCmd represents the DeleteAllUserContents command
var DeleteAllUserContentsCmd = &cobra.Command{
	Use:   "deleteAllUserContents",
	Short: "Delete all user contents",
	Long:  `Delete all user contents`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &ugc.AnonymizationService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.DeleteAllUserContentsParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := anonymizationService.DeleteAllUserContentsShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteAllUserContentsCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteAllUserContentsCmd.MarkFlagRequired("namespace")
	DeleteAllUserContentsCmd.Flags().String("userId", "", "User id")
	_ = DeleteAllUserContentsCmd.MarkFlagRequired("userId")
}
