// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package party

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/party"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteBulkPartiesCmd represents the AdminDeleteBulkParties command
var AdminDeleteBulkPartiesCmd = &cobra.Command{
	Use:   "adminDeleteBulkParties",
	Short: "Admin delete bulk parties",
	Long:  `Admin delete bulk parties`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &session.PartyService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsDeleteBulkPartySessionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &party.AdminDeleteBulkPartiesParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := partyService.AdminDeleteBulkPartiesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminDeleteBulkPartiesCmd.Flags().String("body", "", "Body")
	_ = AdminDeleteBulkPartiesCmd.MarkFlagRequired("body")
	AdminDeleteBulkPartiesCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteBulkPartiesCmd.MarkFlagRequired("namespace")
}
