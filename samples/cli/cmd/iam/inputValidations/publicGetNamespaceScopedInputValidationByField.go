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

// PublicGetNamespaceScopedInputValidationByFieldCmd represents the PublicGetNamespaceScopedInputValidationByField command
var PublicGetNamespaceScopedInputValidationByFieldCmd = &cobra.Command{
	Use:   "publicGetNamespaceScopedInputValidationByField",
	Short: "Public get namespace scoped input validation by field",
	Long:  `Public get namespace scoped input validation by field`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inputValidationsService := &iam.InputValidationsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		field, _ := cmd.Flags().GetString("field")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &input_validations.PublicGetNamespaceScopedInputValidationByFieldParams{
			Field:     field,
			Namespace: namespace,
		}
		ok, errOK := inputValidationsService.PublicGetNamespaceScopedInputValidationByFieldShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetNamespaceScopedInputValidationByFieldCmd.Flags().String("field", "", "Field")
	_ = PublicGetNamespaceScopedInputValidationByFieldCmd.MarkFlagRequired("field")
	PublicGetNamespaceScopedInputValidationByFieldCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetNamespaceScopedInputValidationByFieldCmd.MarkFlagRequired("namespace")
}
