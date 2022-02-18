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

// PublicGetInputValidationsCmd represents the PublicGetInputValidations command
var PublicGetInputValidationsCmd = &cobra.Command{
	Use:   "publicGetInputValidations",
	Short: "Public get input validations",
	Long:  `Public get input validations`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inputValidationsService := &iam.InputValidationsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		defaultOnEmpty, _ := cmd.Flags().GetBool("defaultOnEmpty")
		languageCode, _ := cmd.Flags().GetString("languageCode")
		input := &input_validations.PublicGetInputValidationsParams{
			DefaultOnEmpty: &defaultOnEmpty,
			LanguageCode:   &languageCode,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := inputValidationsService.PublicGetInputValidations(input)
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
	PublicGetInputValidationsCmd.Flags().BoolP("defaultOnEmpty", "", false, "Default on empty")
	PublicGetInputValidationsCmd.Flags().StringP("languageCode", "", "", "Language code")
}
