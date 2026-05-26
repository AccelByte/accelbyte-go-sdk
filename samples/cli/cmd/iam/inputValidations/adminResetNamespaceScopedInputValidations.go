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

// AdminResetNamespaceScopedInputValidationsCmd represents the AdminResetNamespaceScopedInputValidations command
var AdminResetNamespaceScopedInputValidationsCmd = &cobra.Command{
	Use:   "adminResetNamespaceScopedInputValidations",
	Short: "Admin reset namespace scoped input validations",
	Long:  `Admin reset namespace scoped input validations`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inputValidationsService := &iam.InputValidationsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		field, _ := cmd.Flags().GetString("field")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &input_validations.AdminResetNamespaceScopedInputValidationsParams{
			Field:     field,
			Namespace: namespace,
		}
		errNoContent := inputValidationsService.AdminResetNamespaceScopedInputValidationsShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminResetNamespaceScopedInputValidationsCmd.Flags().String("field", "", "Field")
	_ = AdminResetNamespaceScopedInputValidationsCmd.MarkFlagRequired("field")
	AdminResetNamespaceScopedInputValidationsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminResetNamespaceScopedInputValidationsCmd.MarkFlagRequired("namespace")
}
