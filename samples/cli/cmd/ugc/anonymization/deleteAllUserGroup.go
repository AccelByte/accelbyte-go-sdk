// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/anonymization"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteAllUserGroupCmd represents the deleteAllUserGroup command
var deleteAllUserGroupCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := anonymizationService.DeleteAllUserGroup(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteAllUserGroupCmd)
	deleteAllUserGroupCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteAllUserGroupCmd.MarkFlagRequired("namespace")
	deleteAllUserGroupCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = deleteAllUserGroupCmd.MarkFlagRequired("userId")
}