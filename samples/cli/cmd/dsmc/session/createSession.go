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

// CreateSessionCmd represents the CreateSession command
var CreateSessionCmd = &cobra.Command{
	Use:   "createSession",
	Short: "Create session",
	Long:  `Create session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionService := &dsmc.SessionService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dsmcclientmodels.ModelsCreateSessionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &session.CreateSessionParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := sessionService.CreateSessionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	CreateSessionCmd.Flags().String("body", "", "Body")
	_ = CreateSessionCmd.MarkFlagRequired("body")
	CreateSessionCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateSessionCmd.MarkFlagRequired("namespace")
}
