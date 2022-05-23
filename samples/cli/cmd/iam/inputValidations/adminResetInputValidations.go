// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inputValidations

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/input_validations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminResetInputValidationsCmd represents the AdminResetInputValidations command
var AdminResetInputValidationsCmd = &cobra.Command{
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
		errInput := inputValidationsService.AdminResetInputValidationsShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminResetInputValidationsCmd.Flags().String("field", "", "Field")
	_ = AdminResetInputValidationsCmd.MarkFlagRequired("field")
}
