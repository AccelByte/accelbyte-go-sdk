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

// PurgeExpiredSectionCmd represents the PurgeExpiredSection command
var PurgeExpiredSectionCmd = &cobra.Command{
	Use:   "purgeExpiredSection",
	Short: "Purge expired section",
	Long:  `Purge expired section`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sectionService := &platform.SectionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &section.PurgeExpiredSectionParams{
			Namespace: namespace,
			StoreID:   storeId,
		}
		errInput := sectionService.PurgeExpiredSectionShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PurgeExpiredSectionCmd.Flags().String("namespace", "", "Namespace")
	_ = PurgeExpiredSectionCmd.MarkFlagRequired("namespace")
	PurgeExpiredSectionCmd.Flags().String("storeId", "", "Store id")
	_ = PurgeExpiredSectionCmd.MarkFlagRequired("storeId")
}
