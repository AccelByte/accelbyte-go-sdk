// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dsmc

import (
	"github.com/AccelByte/sample-apps/cmd/dsmc/admin"
	"github.com/AccelByte/sample-apps/cmd/dsmc/config"
	"github.com/AccelByte/sample-apps/cmd/dsmc/deploymentConfig"
	"github.com/AccelByte/sample-apps/cmd/dsmc/dsmcOperations"
	"github.com/AccelByte/sample-apps/cmd/dsmc/imageConfig"
	"github.com/AccelByte/sample-apps/cmd/dsmc/podConfig"
	"github.com/AccelByte/sample-apps/cmd/dsmc/public"
	"github.com/AccelByte/sample-apps/cmd/dsmc/server"
	"github.com/AccelByte/sample-apps/cmd/dsmc/session"
	"github.com/spf13/cobra"
)

// DsmcCmd represents the service's child command
var DsmcCmd = &cobra.Command{
	Use:   "Dsmc",
	Short: "Dsmc to get all the commands",
}

func init() {
	DsmcCmd.AddCommand(config.ListConfigCmd)
	DsmcCmd.AddCommand(config.SaveConfigCmd)
	DsmcCmd.AddCommand(imageConfig.UpdateImageCmd)
	DsmcCmd.AddCommand(imageConfig.CreateImageCmd)
	DsmcCmd.AddCommand(imageConfig.ImportImagesCmd)
	DsmcCmd.AddCommand(imageConfig.CreateImagePatchCmd)
	DsmcCmd.AddCommand(config.GetConfigCmd)
	DsmcCmd.AddCommand(config.CreateConfigCmd)
	DsmcCmd.AddCommand(config.DeleteConfigCmd)
	DsmcCmd.AddCommand(config.UpdateConfigCmd)
	DsmcCmd.AddCommand(config.ClearCacheCmd)
	DsmcCmd.AddCommand(deploymentConfig.GetAllDeploymentCmd)
	DsmcCmd.AddCommand(deploymentConfig.GetDeploymentCmd)
	DsmcCmd.AddCommand(deploymentConfig.CreateDeploymentCmd)
	DsmcCmd.AddCommand(deploymentConfig.DeleteDeploymentCmd)
	DsmcCmd.AddCommand(deploymentConfig.UpdateDeploymentCmd)
	DsmcCmd.AddCommand(deploymentConfig.CreateRootRegionOverrideCmd)
	DsmcCmd.AddCommand(deploymentConfig.DeleteRootRegionOverrideCmd)
	DsmcCmd.AddCommand(deploymentConfig.UpdateRootRegionOverrideCmd)
	DsmcCmd.AddCommand(deploymentConfig.CreateDeploymentOverrideCmd)
	DsmcCmd.AddCommand(deploymentConfig.DeleteDeploymentOverrideCmd)
	DsmcCmd.AddCommand(deploymentConfig.UpdateDeploymentOverrideCmd)
	DsmcCmd.AddCommand(deploymentConfig.CreateOverrideRegionOverrideCmd)
	DsmcCmd.AddCommand(deploymentConfig.DeleteOverrideRegionOverrideCmd)
	DsmcCmd.AddCommand(deploymentConfig.UpdateOverrideRegionOverrideCmd)
	DsmcCmd.AddCommand(podConfig.GetAllPodConfigCmd)
	DsmcCmd.AddCommand(podConfig.GetPodConfigCmd)
	DsmcCmd.AddCommand(podConfig.CreatePodConfigCmd)
	DsmcCmd.AddCommand(podConfig.DeletePodConfigCmd)
	DsmcCmd.AddCommand(podConfig.UpdatePodConfigCmd)
	DsmcCmd.AddCommand(config.AddPortCmd)
	DsmcCmd.AddCommand(config.DeletePortCmd)
	DsmcCmd.AddCommand(config.UpdatePortCmd)
	DsmcCmd.AddCommand(imageConfig.ListImagesCmd)
	DsmcCmd.AddCommand(imageConfig.DeleteImageCmd)
	DsmcCmd.AddCommand(imageConfig.ExportImagesCmd)
	DsmcCmd.AddCommand(imageConfig.GetImageLimitCmd)
	DsmcCmd.AddCommand(imageConfig.DeleteImagePatchCmd)
	DsmcCmd.AddCommand(imageConfig.GetImageDetailCmd)
	DsmcCmd.AddCommand(imageConfig.GetImagePatchesCmd)
	DsmcCmd.AddCommand(imageConfig.GetImagePatchDetailCmd)
	DsmcCmd.AddCommand(admin.ListServerCmd)
	DsmcCmd.AddCommand(admin.CountServerCmd)
	DsmcCmd.AddCommand(admin.CountServerDetailedCmd)
	DsmcCmd.AddCommand(admin.ListLocalServerCmd)
	DsmcCmd.AddCommand(admin.DeleteLocalServerCmd)
	DsmcCmd.AddCommand(admin.GetServerCmd)
	DsmcCmd.AddCommand(admin.DeleteServerCmd)
	DsmcCmd.AddCommand(admin.GetServerLogsCmd)
	DsmcCmd.AddCommand(admin.ListSessionCmd)
	DsmcCmd.AddCommand(admin.CountSessionCmd)
	DsmcCmd.AddCommand(admin.DeleteSessionCmd)
	DsmcCmd.AddCommand(config.ExportConfigV1Cmd)
	DsmcCmd.AddCommand(config.ImportConfigV1Cmd)
	DsmcCmd.AddCommand(imageConfig.ImageLimitClientCmd)
	DsmcCmd.AddCommand(imageConfig.ImageDetailClientCmd)
	DsmcCmd.AddCommand(server.DeregisterLocalServerCmd)
	DsmcCmd.AddCommand(server.RegisterLocalServerCmd)
	DsmcCmd.AddCommand(server.RegisterServerCmd)
	DsmcCmd.AddCommand(server.ShutdownServerCmd)
	DsmcCmd.AddCommand(server.GetServerSessionCmd)
	DsmcCmd.AddCommand(session.CreateSessionCmd)
	DsmcCmd.AddCommand(session.ClaimServerCmd)
	DsmcCmd.AddCommand(session.GetSessionCmd)
	DsmcCmd.AddCommand(public.GetDefaultProviderCmd)
	DsmcCmd.AddCommand(public.ListProvidersCmd)
	DsmcCmd.AddCommand(public.ListProvidersByRegionCmd)
	DsmcCmd.AddCommand(dsmcOperations.PublicGetMessagesCmd)
}
