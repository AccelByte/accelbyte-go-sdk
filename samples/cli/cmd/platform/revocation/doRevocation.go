// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package revocation

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/revocation"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DoRevocationCmd represents the DoRevocation command
var DoRevocationCmd = &cobra.Command{
	Use:   "doRevocation",
	Short: "Do revocation",
	Long:  `Do revocation`,
	RunE: func(cmd *cobra.Command, args []string) error {
		revocationService := &platform.RevocationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.RevocationRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &revocation.DoRevocationParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := revocationService.DoRevocationShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	DoRevocationCmd.Flags().String("body", "", "Body")
	DoRevocationCmd.Flags().String("namespace", "", "Namespace")
	_ = DoRevocationCmd.MarkFlagRequired("namespace")
	DoRevocationCmd.Flags().String("userId", "", "User id")
	_ = DoRevocationCmd.MarkFlagRequired("userId")
}
