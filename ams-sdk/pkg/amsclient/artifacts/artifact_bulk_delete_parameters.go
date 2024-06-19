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
)

// NewArtifactBulkDeleteParams creates a new ArtifactBulkDeleteParams object
// with the default values initialized.
func NewArtifactBulkDeleteParams() *ArtifactBulkDeleteParams {
	var ()
	return &ArtifactBulkDeleteParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewArtifactBulkDeleteParamsWithTimeout creates a new ArtifactBulkDeleteParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewArtifactBulkDeleteParamsWithTimeout(timeout time.Duration) *ArtifactBulkDeleteParams {
	var ()
	return &ArtifactBulkDeleteParams{

		timeout: timeout,
	}
}

// NewArtifactBulkDeleteParamsWithContext creates a new ArtifactBulkDeleteParams object
// with the default values initialized, and the ability to set a context for a request
func NewArtifactBulkDeleteParamsWithContext(ctx context.Context) *ArtifactBulkDeleteParams {
	var ()
	return &ArtifactBulkDeleteParams{

		Context: ctx,
	}
}

// NewArtifactBulkDeleteParamsWithHTTPClient creates a new ArtifactBulkDeleteParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewArtifactBulkDeleteParamsWithHTTPClient(client *http.Client) *ArtifactBulkDeleteParams {
	var ()
	return &ArtifactBulkDeleteParams{
		HTTPClient: client,
	}
}

/*ArtifactBulkDeleteParams contains all the parameters to send to the API endpoint
for the artifact bulk delete operation typically these are written to a http.Request
*/
type ArtifactBulkDeleteParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*ArtifactType
	  artifact type (can be repeated)

	*/
	ArtifactType *string
	/*FleetID
	  fleet ID (can be repeated)

	*/
	FleetID *string
	/*UploadedBefore
	  uploaded before date

	*/
	UploadedBefore *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the artifact bulk delete params
func (o *ArtifactBulkDeleteParams) WithTimeout(timeout time.Duration) *ArtifactBulkDeleteParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the artifact bulk delete params
func (o *ArtifactBulkDeleteParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the artifact bulk delete params
func (o *ArtifactBulkDeleteParams) WithContext(ctx context.Context) *ArtifactBulkDeleteParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the artifact bulk delete params
func (o *ArtifactBulkDeleteParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the artifact bulk delete params
func (o *ArtifactBulkDeleteParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the artifact bulk delete params
func (o *ArtifactBulkDeleteParams) WithHTTPClient(client *http.Client) *ArtifactBulkDeleteParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the artifact bulk delete params
func (o *ArtifactBulkDeleteParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the artifact bulk delete params
func (o *ArtifactBulkDeleteParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ArtifactBulkDeleteParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the artifact bulk delete params
func (o *ArtifactBulkDeleteParams) WithNamespace(namespace string) *ArtifactBulkDeleteParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the artifact bulk delete params
func (o *ArtifactBulkDeleteParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithArtifactType adds the artifactType to the artifact bulk delete params
func (o *ArtifactBulkDeleteParams) WithArtifactType(artifactType *string) *ArtifactBulkDeleteParams {
	o.SetArtifactType(artifactType)
	return o
}

// SetArtifactType adds the artifactType to the artifact bulk delete params
func (o *ArtifactBulkDeleteParams) SetArtifactType(artifactType *string) {
	o.ArtifactType = artifactType
}

// WithFleetID adds the fleetID to the artifact bulk delete params
func (o *ArtifactBulkDeleteParams) WithFleetID(fleetID *string) *ArtifactBulkDeleteParams {
	o.SetFleetID(fleetID)
	return o
}

// SetFleetID adds the fleetId to the artifact bulk delete params
func (o *ArtifactBulkDeleteParams) SetFleetID(fleetID *string) {
	o.FleetID = fleetID
}

// WithUploadedBefore adds the uploadedBefore to the artifact bulk delete params
func (o *ArtifactBulkDeleteParams) WithUploadedBefore(uploadedBefore *string) *ArtifactBulkDeleteParams {
	o.SetUploadedBefore(uploadedBefore)
	return o
}

// SetUploadedBefore adds the uploadedBefore to the artifact bulk delete params
func (o *ArtifactBulkDeleteParams) SetUploadedBefore(uploadedBefore *string) {
	o.UploadedBefore = uploadedBefore
}

// WriteToRequest writes these params to a swagger request
func (o *ArtifactBulkDeleteParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.FleetID != nil {

		// query param fleetId
		var qrFleetID string
		if o.FleetID != nil {
			qrFleetID = *o.FleetID
		}
		qFleetID := qrFleetID
		if qFleetID != "" {
			if err := r.SetQueryParam("fleetId", qFleetID); err != nil {
				return err
			}
		}

	}

	if o.UploadedBefore != nil {

		// query param uploadedBefore
		var qrUploadedBefore string
		if o.UploadedBefore != nil {
			qrUploadedBefore = *o.UploadedBefore
		}
		qUploadedBefore := qrUploadedBefore
		if qUploadedBefore != "" {
			if err := r.SetQueryParam("uploadedBefore", qUploadedBefore); err != nil {
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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
