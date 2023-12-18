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

// PublicListActiveSectionsCmd represents the PublicListActiveSections command
var PublicListActiveSectionsCmd = &cobra.Command{
	Use:   "publicListActiveSections",
	Short: "Public list active sections",
	Long:  `Public list active sections`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sectionService := &platform.SectionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		autoCalcEstimatedPrice, _ := cmd.Flags().GetBool("autoCalcEstimatedPrice")
		language, _ := cmd.Flags().GetString("language")
		region, _ := cmd.Flags().GetString("region")
		storeId, _ := cmd.Flags().GetString("storeId")
		viewId, _ := cmd.Flags().GetString("viewId")
		input := &section.PublicListActiveSectionsParams{
			Namespace:              namespace,
			UserID:                 userId,
			AutoCalcEstimatedPrice: &autoCalcEstimatedPrice,
			Language:               &language,
			Region:                 &region,
			StoreID:                &storeId,
			ViewID:                 &viewId,
		}
		ok, errOK := sectionService.PublicListActiveSectionsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicListActiveSectionsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListActiveSectionsCmd.MarkFlagRequired("namespace")
	PublicListActiveSectionsCmd.Flags().String("userId", "", "User id")
	_ = PublicListActiveSectionsCmd.MarkFlagRequired("userId")
	PublicListActiveSectionsCmd.Flags().Bool("autoCalcEstimatedPrice", false, "Auto calc estimated price")
	PublicListActiveSectionsCmd.Flags().String("language", "", "Language")
	PublicListActiveSectionsCmd.Flags().String("region", "", "Region")
	PublicListActiveSectionsCmd.Flags().String("storeId", "", "Store id")
	PublicListActiveSectionsCmd.Flags().String("viewId", "", "View id")
}
