// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dlc

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/dlc"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetMyDLCContentCmd represents the PublicGetMyDLCContent command
var PublicGetMyDLCContentCmd = &cobra.Command{
	Use:   "publicGetMyDLCContent",
	Short: "Public get my DLC content",
	Long:  `Public get my DLC content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		type_, _ := cmd.Flags().GetString("type")
		includeAllNamespaces, _ := cmd.Flags().GetBool("includeAllNamespaces")
		input := &dlc.PublicGetMyDLCContentParams{
			IncludeAllNamespaces: &includeAllNamespaces,
			Type:                 type_,
		}
		ok, errOK := dlcService.PublicGetMyDLCContentShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetMyDLCContentCmd.Flags().Bool("includeAllNamespaces", false, "Include all namespaces")
	PublicGetMyDLCContentCmd.Flags().String("type", "", "Type")
	_ = PublicGetMyDLCContentCmd.MarkFlagRequired("type")
}
