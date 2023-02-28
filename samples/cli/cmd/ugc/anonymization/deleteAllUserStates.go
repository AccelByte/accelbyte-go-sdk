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

// DeleteAllUserStatesCmd represents the DeleteAllUserStates command
var DeleteAllUserStatesCmd = &cobra.Command{
	Use:   "deleteAllUserStates",
	Short: "Delete all user states",
	Long:  `Delete all user states`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &ugc.AnonymizationService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.DeleteAllUserStatesParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := anonymizationService.DeleteAllUserStatesShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteAllUserStatesCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteAllUserStatesCmd.MarkFlagRequired("namespace")
	DeleteAllUserStatesCmd.Flags().String("userId", "", "User id")
	_ = DeleteAllUserStatesCmd.MarkFlagRequired("userId")
}
