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

// AdminGetNamespaceScopedInputValidationsCmd represents the AdminGetNamespaceScopedInputValidations command
var AdminGetNamespaceScopedInputValidationsCmd = &cobra.Command{
	Use:   "adminGetNamespaceScopedInputValidations",
	Short: "Admin get namespace scoped input validations",
	Long:  `Admin get namespace scoped input validations`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inputValidationsService := &iam.InputValidationsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &input_validations.AdminGetNamespaceScopedInputValidationsParams{
			Namespace: namespace,
		}
		ok, errOK := inputValidationsService.AdminGetNamespaceScopedInputValidationsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetNamespaceScopedInputValidationsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetNamespaceScopedInputValidationsCmd.MarkFlagRequired("namespace")
}
