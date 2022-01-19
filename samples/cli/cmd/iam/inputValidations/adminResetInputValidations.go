// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/input_validations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminResetInputValidationsCmd represents the adminResetInputValidations command
var adminResetInputValidationsCmd = &cobra.Command{
	Use:   "adminResetInputValidations",
	Short: "Admin reset input validations",
	Long:  `Admin reset input validations`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inputValidationsService := &iam.InputValidationsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		field, _ := cmd.Flags().GetString("field")
		input := &input_validations.AdminResetInputValidationsParams{
			Field: field,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := inputValidationsService.AdminResetInputValidations(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminResetInputValidationsCmd)
	adminResetInputValidationsCmd.Flags().StringP("field", "f", " ", "Field")
	_ = adminResetInputValidationsCmd.MarkFlagRequired("field")
}
