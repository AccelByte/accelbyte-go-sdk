// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// verifyUserCmd represents the verifyUser command
var verifyUserCmd = &cobra.Command{
	Use:   "verifyUser",
	Short: "Verify user id",
	Long:  `Verify user id without verification code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userId := cmd.Flag("userId").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		userService := &service.UserService{
			IamService:   factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			BasicService: factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			OauthService: &service.OauthService{
				IamService:       factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
				ConfigRepository: &repository.ConfigRepositoryImpl{},
				TokenRepository:  &repository.TokenRepositoryImpl{},
			},
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		err := userService.AdminVerifyUserWithoutVerificationCodeV3(namespace, userId)
		if err != nil {
			return err
		}
		return nil
	},
}

func init() {
	rootCmd.AddCommand(verifyUserCmd)
	verifyUserCmd.Flags().StringP("userId", "u", "", "User ID")
	verifyUserCmd.MarkFlagRequired("userId")
	verifyUserCmd.Flags().StringP("namespace", "", "", "User namespace")
	verifyUserCmd.MarkFlagRequired("namespace")
}
