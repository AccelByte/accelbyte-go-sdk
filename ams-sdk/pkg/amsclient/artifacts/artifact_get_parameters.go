// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package artifacts

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewArtifactGetParams creates a new ArtifactGetParams object
// with the default values initialized.
func NewArtifactGetParams() *ArtifactGetParams {
	var (
		countDefault  = int64(100)
		offsetDefault = int64(0)
	)
	return &ArtifactGetParams{
		Count:  &countDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewArtifactGetParamsWithTimeout creates a new ArtifactGetParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewArtifactGetParamsWithTimeout(timeout time.Duration) *ArtifactGetParams {
	var (
		countDefault  = int64(100)
		offsetDefault = int64(0)
	)
	return &ArtifactGetParams{
		Count:  &countDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewArtifactGetParamsWithContext creates a new ArtifactGetParams object
// with the default values initialized, and the ability to set a context for a request
func NewArtifactGetParamsWithContext(ctx context.Context) *ArtifactGetParams {
	var (
		countDefault  = int64(100)
		offsetDefault = int64(0)
	)
	return &ArtifactGetParams{
		Count:  &countDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewArtifactGetParamsWithHTTPClient creates a new ArtifactGetParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewArtifactGetParamsWithHTTPClient(client *http.Client) *ArtifactGetParams {
	var (
		countDefault  = int64(100)
		offsetDefault = int64(0)
	)
	return &ArtifactGetParams{
		Count:      &countDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*ArtifactGetParams contains all the parameters to send to the API endpoint
for the artifact get operation typically these are written to a http.Request
*/
type ArtifactGetParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*ArtifactType
	  One of: logs, coredump

	*/
	ArtifactType *string
	/*Count
	  Defines the maximum number of records returned in one page.

	*/
	Count *int64
	/*EndDate
	  omit artifacts with collection dates newer than

	*/
	EndDate *string
	/*FleetID
	  id of the fleet where the artifact was collected

	*/
	FleetID *string
	/*ImageID
	  id of the image being used on the server when artifact was collected

	*/
	ImageID *string
	/*MaxSize
	  maximum artifact size in bytes

	*/
	MaxSize *int64
	/*MinSize
	  minimum artifact size in bytes

	*/
	MinSize *int64
	/*Offset
	  Specifies the start index for the records returned. Useful for implementing pagination.

	*/
	Offset *int64
	/*Region
	  region of the server where the artifact was collected

	*/
	Region *string
	/*ServerID
	  id of the server (ds) where the artifact was collected

	*/
	ServerID *string
	/*StartDate
	  omit artifacts with collection dates older than

	*/
	StartDate *string
	/*Status
	  One of: success, skip_sample, skip_usage, failed, deleted

	*/
	Status *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the artifact get params
func (o *ArtifactGetParams) WithTimeout(timeout time.Duration) *ArtifactGetParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the artifact get params
func (o *ArtifactGetParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the artifact get params
func (o *ArtifactGetParams) WithContext(ctx context.Context) *ArtifactGetParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the artifact get params
func (o *ArtifactGetParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the artifact get params
func (o *ArtifactGetParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the artifact get params
func (o *ArtifactGetParams) WithHTTPClient(client *http.Client) *ArtifactGetParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the artifact get params
func (o *ArtifactGetParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the artifact get params
func (o *ArtifactGetParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the artifact get params
func (o *ArtifactGetParams) WithNamespace(namespace string) *ArtifactGetParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the artifact get params
func (o *ArtifactGetParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithArtifactType adds the artifactType to the artifact get params
func (o *ArtifactGetParams) WithArtifactType(artifactType *string) *ArtifactGetParams {
	o.SetArtifactType(artifactType)
	return o
}

// SetArtifactType adds the artifactType to the artifact get params
func (o *ArtifactGetParams) SetArtifactType(artifactType *string) {
	o.ArtifactType = artifactType
}

// WithCount adds the count to the artifact get params
func (o *ArtifactGetParams) WithCount(count *int64) *ArtifactGetParams {
	o.SetCount(count)
	return o
}

// SetCount adds the count to the artifact get params
func (o *ArtifactGetParams) SetCount(count *int64) {
	o.Count = count
}

// WithEndDate adds the endDate to the artifact get params
func (o *ArtifactGetParams) WithEndDate(endDate *string) *ArtifactGetParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the artifact get params
func (o *ArtifactGetParams) SetEndDate(endDate *string) {
	o.EndDate = endDate
}

// WithFleetID adds the fleetID to the artifact get params
func (o *ArtifactGetParams) WithFleetID(fleetID *string) *ArtifactGetParams {
	o.SetFleetID(fleetID)
	return o
}

// SetFleetID adds the fleetId to the artifact get params
func (o *ArtifactGetParams) SetFleetID(fleetID *string) {
	o.FleetID = fleetID
}

// WithImageID adds the imageID to the artifact get params
func (o *ArtifactGetParams) WithImageID(imageID *string) *ArtifactGetParams {
	o.SetImageID(imageID)
	return o
}

// SetImageID adds the imageId to the artifact get params
func (o *ArtifactGetParams) SetImageID(imageID *string) {
	o.ImageID = imageID
}

// WithMaxSize adds the maxSize to the artifact get params
func (o *ArtifactGetParams) WithMaxSize(maxSize *int64) *ArtifactGetParams {
	o.SetMaxSize(maxSize)
	return o
}

// SetMaxSize adds the maxSize to the artifact get params
func (o *ArtifactGetParams) SetMaxSize(maxSize *int64) {
	o.MaxSize = maxSize
}

// WithMinSize adds the minSize to the artifact get params
func (o *ArtifactGetParams) WithMinSize(minSize *int64) *ArtifactGetParams {
	o.SetMinSize(minSize)
	return o
}

// SetMinSize adds the minSize to the artifact get params
func (o *ArtifactGetParams) SetMinSize(minSize *int64) {
	o.MinSize = minSize
}

// WithOffset adds the offset to the artifact get params
func (o *ArtifactGetParams) WithOffset(offset *int64) *ArtifactGetParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the artifact get params
func (o *ArtifactGetParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithRegion adds the region to the artifact get params
func (o *ArtifactGetParams) WithRegion(region *string) *ArtifactGetParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the artifact get params
func (o *ArtifactGetParams) SetRegion(region *string) {
	o.Region = region
}

// WithServerID adds the serverID to the artifact get params
func (o *ArtifactGetParams) WithServerID(serverID *string) *ArtifactGetParams {
	o.SetServerID(serverID)
	return o
}

// SetServerID adds the serverId to the artifact get params
func (o *ArtifactGetParams) SetServerID(serverID *string) {
	o.ServerID = serverID
}

// WithStartDate adds the startDate to the artifact get params
func (o *ArtifactGetParams) WithStartDate(startDate *string) *ArtifactGetParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the artifact get params
func (o *ArtifactGetParams) SetStartDate(startDate *string) {
	o.StartDate = startDate
}

// WithStatus adds the status to the artifact get params
func (o *ArtifactGetParams) WithStatus(status *string) *ArtifactGetParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the artifact get params
func (o *ArtifactGetParams) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *ArtifactGetParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ArtifactType != nil {

		// query param artifactType
		var qrArtifactType string
		if o.ArtifactType != nil {
			qrArtifactType = *o.ArtifactType
		}
		qArtifactType := qrArtifactType
		if qArtifactType != "" {
			if err := r.SetQueryParam("artifactType", qArtifactType); err != nil {
				return err
			}
		}

	}

	if o.Count != nil {

		// query param count
		var qrCount int64
		if o.Count != nil {
			qrCount = *o.Count
		}
		qCount := swag.FormatInt64(qrCount)
		if qCount != "" {
			if err := r.SetQueryParam("count", qCount); err != nil {
				return err
			}
		}

	}

	if o.EndDate != nil {

		// query param endDate
		var qrEndDate string
		if o.EndDate != nil {
			qrEndDate = *o.EndDate
		}
		qEndDate := qrEndDate
		if qEndDate != "" {
			if err := r.SetQueryParam("endDate", qEndDate); err != nil {
				return err
			}
		}

	}

	if o.FleetID != nil {

		// query param fleetID
		var qrFleetID string
		if o.FleetID != nil {
			qrFleetID = *o.FleetID
		}
		qFleetID := qrFleetID
		if qFleetID != "" {
			if err := r.SetQueryParam("fleetID", qFleetID); err != nil {
				return err
			}
		}

	}

	if o.ImageID != nil {

		// query param imageID
		var qrImageID string
		if o.ImageID != nil {
			qrImageID = *o.ImageID
		}
		qImageID := qrImageID
		if qImageID != "" {
			if err := r.SetQueryParam("imageID", qImageID); err != nil {
				return err
			}
		}

	}

	if o.MaxSize != nil {

		// query param maxSize
		var qrMaxSize int64
		if o.MaxSize != nil {
			qrMaxSize = *o.MaxSize
		}
		qMaxSize := swag.FormatInt64(qrMaxSize)
		if qMaxSize != "" {
			if err := r.SetQueryParam("maxSize", qMaxSize); err != nil {
				return err
			}
		}

	}

	if o.MinSize != nil {

		// query param minSize
		var qrMinSize int64
		if o.MinSize != nil {
			qrMinSize = *o.MinSize
		}
		qMinSize := swag.FormatInt64(qrMinSize)
		if qMinSize != "" {
			if err := r.SetQueryParam("minSize", qMinSize); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.Region != nil {

		// query param region
		var qrRegion string
		if o.Region != nil {
			qrRegion = *o.Region
		}
		qRegion := qrRegion
		if qRegion != "" {
			if err := r.SetQueryParam("region", qRegion); err != nil {
				return err
			}
		}

	}

	if o.ServerID != nil {

		// query param serverId
		var qrServerID string
		if o.ServerID != nil {
			qrServerID = *o.ServerID
		}
		qServerID := qrServerID
		if qServerID != "" {
			if err := r.SetQueryParam("serverId", qServerID); err != nil {
				return err
			}
		}

	}

	if o.StartDate != nil {

		// query param startDate
		var qrStartDate string
		if o.StartDate != nil {
			qrStartDate = *o.StartDate
		}
		qStartDate := qrStartDate
		if qStartDate != "" {
			if err := r.SetQueryParam("startDate", qStartDate); err != nil {
				return err
			}
		}

	}

	if o.Status != nil {

		// query param status
		var qrStatus string
		if o.Status != nil {
			qrStatus = *o.Status
		}
		qStatus := qrStatus
		if qStatus != "" {
			if err := r.SetQueryParam("status", qStatus); err != nil {
				return err
			}
		}

	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
