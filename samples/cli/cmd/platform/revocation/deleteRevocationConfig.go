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

// DeleteRevocationConfigCmd represents the DeleteRevocationConfig command
var DeleteRevocationConfigCmd = &cobra.Command{
	Use:   "deleteRevocationConfig",
	Short: "Delete revocation config",
	Long:  `Delete revocation config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		revocationService := &platform.RevocationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &revocation.DeleteRevocationConfigParams{
			Namespace: namespace,
		}
		errInput := revocationService.DeleteRevocationConfigShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteRevocationConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteRevocationConfigCmd.MarkFlagRequired("namespace")
}
