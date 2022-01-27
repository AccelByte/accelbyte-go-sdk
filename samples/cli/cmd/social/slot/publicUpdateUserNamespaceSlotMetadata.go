// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package slot

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicUpdateUserNamespaceSlotMetadataCmd represents the publicUpdateUserNamespaceSlotMetadata command
var publicUpdateUserNamespaceSlotMetadataCmd = &cobra.Command{
	Use:   "publicUpdateUserNamespaceSlotMetadata",
	Short: "Public update user namespace slot metadata",
	Long:  `Public update user namespace slot metadata`,
	RunE: func(cmd *cobra.Command, args []string) error {
		slotService := &social.SlotService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		slotId, _ := cmd.Flags().GetString("slotId")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *socialclientmodels.SlotMetadataUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &slot.PublicUpdateUserNamespaceSlotMetadataParams{
			Body:      body,
			Namespace: namespace,
			SlotID:    slotId,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := slotService.PublicUpdateUserNamespaceSlotMetadata(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicUpdateUserNamespaceSlotMetadataCmd)
	publicUpdateUserNamespaceSlotMetadataCmd.Flags().StringP("body", "by", " ", "Body")
	publicUpdateUserNamespaceSlotMetadataCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicUpdateUserNamespaceSlotMetadataCmd.MarkFlagRequired("namespace")
	publicUpdateUserNamespaceSlotMetadataCmd.Flags().StringP("slotId", "sd", " ", "Slot id")
	_ = publicUpdateUserNamespaceSlotMetadataCmd.MarkFlagRequired("slotId")
	publicUpdateUserNamespaceSlotMetadataCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicUpdateUserNamespaceSlotMetadataCmd.MarkFlagRequired("userId")
}
