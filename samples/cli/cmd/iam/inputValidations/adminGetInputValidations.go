// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package inputValidations

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/input_validations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetInputValidationsCmd represents the AdminGetInputValidations command
var AdminGetInputValidationsCmd = &cobra.Command{
	Use:   "adminGetInputValidations",
	Short: "Admin get input validations",
	Long:  `Admin get input validations`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inputValidationsService := &iam.InputValidationsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &input_validations.AdminGetInputValidationsParams{}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := inputValidationsService.AdminGetInputValidations(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
}
