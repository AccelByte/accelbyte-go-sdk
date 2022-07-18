// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clientsDeprecated

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/clients_deprecated"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateClientCmd represents the UpdateClient command
var UpdateClientCmd = &cobra.Command{
	Use:   "updateClient",
	Short: "Update client",
	Long:  `Update client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsDeprecatedService := &iam.ClientsDeprecatedService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ClientmodelClientUpdateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		input := &clients_deprecated.UpdateClientParams{
			Body:     body,
			ClientID: clientId,
		}
		ok, err := clientsDeprecatedService.UpdateClientShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	UpdateClientCmd.Flags().String("body", "", "Body")
	_ = UpdateClientCmd.MarkFlagRequired("body")
	UpdateClientCmd.Flags().String("clientId", "", "Client id")
	_ = UpdateClientCmd.MarkFlagRequired("clientId")
}
