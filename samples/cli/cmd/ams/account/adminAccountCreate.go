// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package account

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/account"
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminAccountCreateCmd represents the AdminAccountCreate command
var AdminAccountCreateCmd = &cobra.Command{
	Use:   "adminAccountCreate",
	Short: "Admin account create",
	Long:  `Admin account create`,
	RunE: func(cmd *cobra.Command, args []string) error {
		accountService := &ams.AccountService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *amsclientmodels.APIAccountCreateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &account.AdminAccountCreateParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := accountService.AdminAccountCreateShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminAccountCreateCmd.Flags().String("body", "", "Body")
	_ = AdminAccountCreateCmd.MarkFlagRequired("body")
	AdminAccountCreateCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminAccountCreateCmd.MarkFlagRequired("namespace")
}
