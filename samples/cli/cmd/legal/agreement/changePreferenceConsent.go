// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package agreement

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/agreement"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ChangePreferenceConsentCmd represents the ChangePreferenceConsent command
var ChangePreferenceConsentCmd = &cobra.Command{
	Use:   "changePreferenceConsent",
	Short: "Change preference consent",
	Long:  `Change preference consent`,
	RunE: func(cmd *cobra.Command, args []string) error {
		agreementService := &legal.AgreementService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body []*legalclientmodels.AcceptAgreementRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &agreement.ChangePreferenceConsentParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := agreementService.ChangePreferenceConsentShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	ChangePreferenceConsentCmd.Flags().StringP("body", "", "", "Body")
	ChangePreferenceConsentCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = ChangePreferenceConsentCmd.MarkFlagRequired("namespace")
	ChangePreferenceConsentCmd.Flags().StringP("userId", "", "", "User id")
	_ = ChangePreferenceConsentCmd.MarkFlagRequired("userId")
}
