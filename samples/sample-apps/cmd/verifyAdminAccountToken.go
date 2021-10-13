// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// verifyAdminAccountTokenCmd represents the verifyAdminAccountToken command
var verifyAdminAccountTokenCmd = &cobra.Command{
	Use:   "verifyAdminAccountToken",
	Short: "Verify admin account token",
	Long:  `Verify account by validating verification code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		code := cmd.Flag("code").Value.String()
		contactType := cmd.Flag("contactType").Value.String()
		languageTag := cmd.Flag("languageTag").Value.String()
		userService := &service.UserService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		err := userService.AdminVerifyAccountV3(namespace, userId, &code, &contactType, &languageTag)
		if err != nil {
			return err
		}
		logrus.Info("Operation succeed")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(verifyAdminAccountTokenCmd)
	verifyAdminAccountTokenCmd.Flags().StringP("namespace", "", "", "User namespace")
	verifyAdminAccountTokenCmd.MarkFlagRequired("namespace")
	verifyAdminAccountTokenCmd.Flags().StringP("userId", "u", "", "User ID")
	verifyAdminAccountTokenCmd.Flags().StringP("code", "c", "", "Code verification received by email")
	verifyAdminAccountTokenCmd.MarkFlagRequired("code")
	verifyAdminAccountTokenCmd.Flags().StringP("contactType", "", "email", "Contact type")
	verifyAdminAccountTokenCmd.Flags().StringP("languageTag", "l", "", "Language Tag")
}
