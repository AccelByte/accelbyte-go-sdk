// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package artifacts

import (
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/artifacts"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ArtifactGetCmd represents the ArtifactGet command
var ArtifactGetCmd = &cobra.Command{
	Use:   "artifactGet",
	Short: "Artifact get",
	Long:  `Artifact get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		artifactsService := &ams.ArtifactsService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		artifactType, _ := cmd.Flags().GetString("artifactType")
		count, _ := cmd.Flags().GetInt64("count")
		endDate, _ := cmd.Flags().GetString("endDate")
		fleetID, _ := cmd.Flags().GetString("fleetID")
		imageID, _ := cmd.Flags().GetString("imageID")
		maxSize, _ := cmd.Flags().GetInt64("maxSize")
		minSize, _ := cmd.Flags().GetInt64("minSize")
		offset, _ := cmd.Flags().GetInt64("offset")
		region, _ := cmd.Flags().GetString("region")
		serverId, _ := cmd.Flags().GetString("serverId")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		sortDirection, _ := cmd.Flags().GetString("sortDirection")
		startDate, _ := cmd.Flags().GetString("startDate")
		status, _ := cmd.Flags().GetString("status")
		input := &artifacts.ArtifactGetParams{
			Namespace:     namespace,
			ArtifactType:  &artifactType,
			Count:         &count,
			EndDate:       &endDate,
			FleetID:       &fleetID,
			ImageID:       &imageID,
			MaxSize:       &maxSize,
			MinSize:       &minSize,
			Offset:        &offset,
			Region:        &region,
			ServerID:      &serverId,
			SortBy:        &sortBy,
			SortDirection: &sortDirection,
			StartDate:     &startDate,
			Status:        &status,
		}
		ok, errOK := artifactsService.ArtifactGetShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ArtifactGetCmd.Flags().String("namespace", "", "Namespace")
	_ = ArtifactGetCmd.MarkFlagRequired("namespace")
	ArtifactGetCmd.Flags().String("artifactType", "", "Artifact type")
	ArtifactGetCmd.Flags().Int64("count", 1, "Count")
	ArtifactGetCmd.Flags().String("endDate", "", "End date")
	ArtifactGetCmd.Flags().String("fleetID", "", "Fleet ID")
	ArtifactGetCmd.Flags().String("imageID", "", "Image ID")
	ArtifactGetCmd.Flags().Int64("maxSize", 20, "Max size")
	ArtifactGetCmd.Flags().Int64("minSize", 0, "Min size")
	ArtifactGetCmd.Flags().Int64("offset", 0, "Offset")
	ArtifactGetCmd.Flags().String("region", "", "Region")
	ArtifactGetCmd.Flags().String("serverId", "", "Server id")
	ArtifactGetCmd.Flags().String("sortBy", "", "Sort by")
	ArtifactGetCmd.Flags().String("sortDirection", "", "Sort direction")
	ArtifactGetCmd.Flags().String("startDate", "", "Start date")
	ArtifactGetCmd.Flags().String("status", "", "Status")
}
