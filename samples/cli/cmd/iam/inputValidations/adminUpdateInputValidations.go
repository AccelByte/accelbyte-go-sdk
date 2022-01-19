// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/input_validations"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminUpdateInputValidationsCmd represents the adminUpdateInputValidations command
var adminUpdateInputValidationsCmd = &cobra.Command{
	Use:   "adminUpdateInputValidations",
	Short: "Admin update input validations",
	Long:  `Admin update input validations`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inputValidationsService := &iam.InputValidationsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*iamclientmodels.ModelInputValidationUpdatePayload
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &input_validations.AdminUpdateInputValidationsParams{
			Body: body,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := inputValidationsService.AdminUpdateInputValidations(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpdateInputValidationsCmd)
	adminUpdateInputValidationsCmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminUpdateInputValidationsCmd.MarkFlagRequired("body")
}
