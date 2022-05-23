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

// DeleteAllUserGroupCmd represents the DeleteAllUserGroup command
var DeleteAllUserGroupCmd = &cobra.Command{
	Use:   "deleteAllUserGroup",
	Short: "Delete all user group",
	Long:  `Delete all user group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &ugc.AnonymizationService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.DeleteAllUserGroupParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := anonymizationService.DeleteAllUserGroupShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteAllUserGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteAllUserGroupCmd.MarkFlagRequired("namespace")
	DeleteAllUserGroupCmd.Flags().String("userId", "", "User id")
	_ = DeleteAllUserGroupCmd.MarkFlagRequired("userId")
}
