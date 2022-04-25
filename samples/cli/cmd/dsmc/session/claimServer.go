// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package session

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/session"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ClaimServerCmd represents the ClaimServer command
var ClaimServerCmd = &cobra.Command{
	Use:   "claimServer",
	Short: "Claim server",
	Long:  `Claim server`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionService := &dsmc.SessionService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dsmcclientmodels.ModelsClaimSessionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &session.ClaimServerParams{
			Body:      body,
			Namespace: namespace,
		}
		errInput := sessionService.ClaimServerShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	ClaimServerCmd.Flags().StringP("body", "", "", "Body")
	_ = ClaimServerCmd.MarkFlagRequired("body")
	ClaimServerCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = ClaimServerCmd.MarkFlagRequired("namespace")
}
