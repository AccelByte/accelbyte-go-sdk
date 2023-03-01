// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20Extension

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RequestGameTokenCodeResponseV3Cmd represents the RequestGameTokenCodeResponseV3 command
var RequestGameTokenCodeResponseV3Cmd = &cobra.Command{
	Use:   "requestGameTokenCodeResponseV3",
	Short: "Request game token code response V3",
	Long:  `Request game token code response V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20ExtensionService := &iam.OAuth20ExtensionService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &o_auth2_0_extension.RequestGameTokenCodeResponseV3Params{
			ClientID:  clientId,
			Namespace: namespace,
		}
		ok, errOK := oAuth20ExtensionService.RequestGameTokenCodeResponseV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RequestGameTokenCodeResponseV3Cmd.Flags().String("clientId", "", "Client id")
	_ = RequestGameTokenCodeResponseV3Cmd.MarkFlagRequired("client_id")
	RequestGameTokenCodeResponseV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = RequestGameTokenCodeResponseV3Cmd.MarkFlagRequired("namespace")
}
