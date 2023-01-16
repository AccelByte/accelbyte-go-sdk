// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package section

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/section"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateSectionCmd represents the UpdateSection command
var UpdateSectionCmd = &cobra.Command{
	Use:   "updateSection",
	Short: "Update section",
	Long:  `Update section`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sectionService := &platform.SectionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sectionId, _ := cmd.Flags().GetString("sectionId")
		storeId, _ := cmd.Flags().GetString("storeId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.SectionUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &section.UpdateSectionParams{
			Body:      body,
			Namespace: namespace,
			SectionID: sectionId,
			StoreID:   storeId,
		}
		ok, err := sectionService.UpdateSectionShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	UpdateSectionCmd.Flags().String("body", "", "Body")
	UpdateSectionCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateSectionCmd.MarkFlagRequired("namespace")
	UpdateSectionCmd.Flags().String("sectionId", "", "Section id")
	_ = UpdateSectionCmd.MarkFlagRequired("sectionId")
	UpdateSectionCmd.Flags().String("storeId", "", "Store id")
	_ = UpdateSectionCmd.MarkFlagRequired("storeId")
}
