// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package revocation

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/revocation"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetRevocationConfigCmd represents the GetRevocationConfig command
var GetRevocationConfigCmd = &cobra.Command{
	Use:   "getRevocationConfig",
	Short: "Get revocation config",
	Long:  `Get revocation config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		revocationService := &platform.RevocationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &revocation.GetRevocationConfigParams{
			Namespace: namespace,
		}
		ok, errOK := revocationService.GetRevocationConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetRevocationConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetRevocationConfigCmd.MarkFlagRequired("namespace")
}
