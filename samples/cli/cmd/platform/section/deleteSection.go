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

// DeleteSectionCmd represents the DeleteSection command
var DeleteSectionCmd = &cobra.Command{
	Use:   "deleteSection",
	Short: "Delete section",
	Long:  `Delete section`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sectionService := &platform.SectionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sectionId, _ := cmd.Flags().GetString("sectionId")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &section.DeleteSectionParams{
			Namespace: namespace,
			SectionID: sectionId,
			StoreID:   storeId,
		}
		errInput := sectionService.DeleteSectionShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteSectionCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteSectionCmd.MarkFlagRequired("namespace")
	DeleteSectionCmd.Flags().String("sectionId", "", "Section id")
	_ = DeleteSectionCmd.MarkFlagRequired("sectionId")
	DeleteSectionCmd.Flags().String("storeId", "", "Store id")
	_ = DeleteSectionCmd.MarkFlagRequired("storeId")
}
