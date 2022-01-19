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

// adminDeleteAllUserContentsCmd represents the adminDeleteAllUserContents command
var adminDeleteAllUserContentsCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := anonymizationService.AdminDeleteAllUserContents(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminDeleteAllUserContentsCmd)
	adminDeleteAllUserContentsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminDeleteAllUserContentsCmd.MarkFlagRequired("namespace")
	adminDeleteAllUserContentsCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminDeleteAllUserContentsCmd.MarkFlagRequired("userId")
}
