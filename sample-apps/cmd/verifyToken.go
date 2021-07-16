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

// verifyTokenCmd represents the verifyToken command
var verifyTokenCmd = &cobra.Command{
	Use:   "verifyToken",
	Short: "Verify user registration token",
	Long:  `Verify user token for admin and non user admin.`,
	RunE: func(cmd *cobra.Command, args []string) error {
		token := cmd.Flag("token").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		contactType := cmd.Flag("contactType").Value.String()
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
		err := userService.VerifyToken(token, contactType, namespace)
		if err != nil {
			return err
		}
		err = userService.CreateProfile(namespace)
		if err != nil {
			return err
		}
		return nil
	},
}

func init() {
	rootCmd.AddCommand(verifyTokenCmd)
	verifyTokenCmd.Flags().StringP("token", "t", "", "Token received by email")
	verifyTokenCmd.MarkFlagRequired("token")
	verifyTokenCmd.Flags().StringP("namespace", "", "", "User namespace")
	verifyTokenCmd.MarkFlagRequired("namespace")
	verifyTokenCmd.Flags().StringP("contactType", "", "email", "Contact type")
}
