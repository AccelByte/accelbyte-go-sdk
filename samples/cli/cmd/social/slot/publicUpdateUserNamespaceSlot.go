// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package slot

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"net/http"
	"os"
)

// PublicUpdateUserNamespaceSlotCmd represents the PublicUpdateUserNamespaceSlot command
var PublicUpdateUserNamespaceSlotCmd = &cobra.Command{
	Use:   "publicUpdateUserNamespaceSlot",
	Short: "Public update user namespace slot",
	Long:  `Public update user namespace slot`,
	RunE: func(cmd *cobra.Command, args []string) error {
		slotService := &social.SlotService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		slotId, _ := cmd.Flags().GetString("slotId")
		userId, _ := cmd.Flags().GetString("userId")
		checksum, _ := cmd.Flags().GetString("checksum")
		customAttribute, _ := cmd.Flags().GetString("customAttribute")
		output := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", output)
		file, err := os.Open(output)
		if err != nil {
			return err
		}
		label, _ := cmd.Flags().GetString("label")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &slot.PublicUpdateUserNamespaceSlotParams{
			Checksum:        &checksum,
			CustomAttribute: &customAttribute,
			File:            file,
			Namespace:       namespace,
			SlotID:          slotId,
			UserID:          userId,
			Label:           &label,
			Tags:            tags,
			HTTPClient:      httpClient,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := slotService.PublicUpdateUserNamespaceSlot(input)
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
	PublicUpdateUserNamespaceSlotCmd.Flags().StringP("checksum", "", "", "Checksum")
	PublicUpdateUserNamespaceSlotCmd.Flags().StringP("customAttribute", "", "", "Custom attribute")
	PublicUpdateUserNamespaceSlotCmd.Flags().StringP("file", "", "", "File")
	PublicUpdateUserNamespaceSlotCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicUpdateUserNamespaceSlotCmd.MarkFlagRequired("namespace")
	PublicUpdateUserNamespaceSlotCmd.Flags().StringP("slotId", "", "", "Slot id")
	_ = PublicUpdateUserNamespaceSlotCmd.MarkFlagRequired("slotId")
	PublicUpdateUserNamespaceSlotCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicUpdateUserNamespaceSlotCmd.MarkFlagRequired("userId")
	PublicUpdateUserNamespaceSlotCmd.Flags().StringP("label", "", "", "Label")
	PublicUpdateUserNamespaceSlotCmd.Flags().StringP("tags", "", "", "Tags")
}
