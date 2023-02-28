// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package section

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/section"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetSectionCmd represents the GetSection command
var GetSectionCmd = &cobra.Command{
	Use:   "getSection",
	Short: "Get section",
	Long:  `Get section`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sectionService := &platform.SectionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sectionId, _ := cmd.Flags().GetString("sectionId")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &section.GetSectionParams{
			Namespace: namespace,
			SectionID: sectionId,
			StoreID:   &storeId,
		}
		ok, errOK := sectionService.GetSectionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetSectionCmd.Flags().String("namespace", "", "Namespace")
	_ = GetSectionCmd.MarkFlagRequired("namespace")
	GetSectionCmd.Flags().String("sectionId", "", "Section id")
	_ = GetSectionCmd.MarkFlagRequired("sectionId")
	GetSectionCmd.Flags().String("storeId", "", "Store id")
}
