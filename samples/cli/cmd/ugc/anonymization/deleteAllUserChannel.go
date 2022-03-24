// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package anonymization

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/anonymization"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteAllUserChannelCmd represents the DeleteAllUserChannel command
var DeleteAllUserChannelCmd = &cobra.Command{
	Use:   "deleteAllUserChannel",
	Short: "Delete all user channel",
	Long:  `Delete all user channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &ugc.AnonymizationService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.DeleteAllUserChannelParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := anonymizationService.DeleteAllUserChannelShort(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	DeleteAllUserChannelCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteAllUserChannelCmd.MarkFlagRequired("namespace")
	DeleteAllUserChannelCmd.Flags().StringP("userId", "", "", "User id")
	_ = DeleteAllUserChannelCmd.MarkFlagRequired("userId")
}
